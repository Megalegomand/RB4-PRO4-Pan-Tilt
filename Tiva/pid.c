/**********************************************
 * Univeristy of Southern Denmark
 * Embedded Programming (EMP)
 *
 * MODULENAME: spi
 * PROJECT: spi
 * DESCRIPTION: See module specification file (.h-file)
 * Change log:
 **********************************************
 * Date Ud Change
 * YYMMDD
 * ----------------
 * 3. mar. 2021 PO Module created.
 *
 ***********************************************/

/***************** Header *********************/
/***************** Include files **************/
#include <pid.h>
/***************** Defines ********************/
/***************** Constants ******************/
/***************** Variables ******************/
PID_Container pid_controllers[PID_CONTROLLERS_LENGTH];

QueueHandle_t setpoint_queues[PID_CONTROLLERS_LENGTH];

extern QueueHandle_t spi_rx_queue;
extern QueueHandle_t spi_tx_queue;

SemaphoreHandle_t debug_enabled;
QueueHandle_t pid_debug_queue;
/**********************************************
 Functions: See module specification (h.file)
 ***********************************************/
/**********************************************
 * Input: N/A
 * Output: read_position
 * Function: getPosition()
 ***********************************************/
void pid_init(INT8U pid, FP32 Kp, FP32 Ki, FP32 Kd, INT16U N)
{
    // Controller params
    pid_controllers[pid].Kp = Kp;
    pid_controllers[pid].Ki = Ki;
    pid_controllers[pid].Kd = Kd;

    // Low-pass filter coefficient
    pid_controllers[pid].N = N;

    // Sample time
    pid_controllers[pid].T = PID_SAMPLE_TIME_MS / 1000.0f;

    // Limits
    pid_controllers[pid].lim_min = PID_LIM_MIN;
    pid_controllers[pid].lim_max = PID_LIM_MAX;

    // Reset values
    pid_controllers[pid].integrator = 0.0f;
    pid_controllers[pid].differentiator = 0.0f;

    pid_controllers[pid].prev_error = 0.0f;

    pid_controllers[pid].saturated = 0;

    // Queue
    setpoint_queues[pid] = xQueueCreate(SETPOINT_QUEUE_LENGTH,
                                        SETPOINT_QUEUE_WIDTH);
    configASSERT(setpoint_queues[pid]);

    pid_debug_queue = xQueueCreate(DEBUG_QUEUE_LENGTH, DEBUG_QUEUE_WIDTH);
    configASSERT(pid_debug_queue);

    debug_enabled = xSemaphoreCreateBinary();
    configASSERT(debug_enabled);
    xSemaphoreGive(debug_enabled);
}
/**********************************************
 * Input: N/A
 * Output: controlvariable
 * Function: PID();
 ***********************************************/
float pid_update(INT8U pid, FP32 position)
{
    // Get setpoint
    FP32 setpoint;
    //configASSERT(xQueueReceive(setpoint_queues[pid], &setpoint, 0));
    xQueueReceive(setpoint_queues[pid], &setpoint, 0);

    // Add start value
    FP32 msg = 0.0f;
    xQueueSendToBack(setpoint_queues[pid], &msg, portMAX_DELAY);

    // Error
    FP32 error = setpoint - position;

    // Proportional term
    FP32 p_term = pid_controllers[pid].Kp * error;

    // Integrator term with anti windup
    if (!pid_controllers[pid].saturated)
    {
        pid_controllers[pid].integrator = pid_controllers[pid].integrator
                + pid_controllers[pid].Ki * pid_controllers[pid].T * 0.5f
                        * (error + pid_controllers[pid].prev_error);
    }

    // Differentiator with low-pass filter
    pid_controllers[pid].differentiator = (2.0f * pid_controllers[pid].Kd
            * pid_controllers[pid].N * (error - pid_controllers[pid].prev_error)
            - pid_controllers[pid].differentiator
                    * (pid_controllers[pid].N * pid_controllers[pid].T - 2.0f))
            / (1 + pid_controllers[pid].N + pid_controllers[pid].T);

    // Compute output and apply limits
    FP32 out = p_term + pid_controllers[pid].integrator
            + pid_controllers[pid].differentiator;

    if (out > pid_controllers[pid].lim_max)
    {
        pid_controllers[pid].saturated = 1;
        out = pid_controllers[pid].lim_max;
    }
    else if (out < pid_controllers[pid].lim_min)
    {
        pid_controllers[pid].saturated = 1;
        out = pid_controllers[pid].lim_min;
    }
    else
    {
        pid_controllers[pid].saturated = 0;
    }

    // Store error
    pid_controllers[pid].prev_error = error;

    /* Return pid_controllers output */
    return out;
}

void pid_task(void * pvParameters)
{
    // Periodic tasks definitions
    const TickType_t xPeriod = pdMS_TO_TICKS(PID_SAMPLE_TIME_MS / 2);
    TickType_t xLastWakeTime = xTaskGetTickCount();
    TickType_t xLastWakeTime_prev;

    PID_Debug pid_debug;

    INT16S raw_pwm_pan = 0;
    INT16S raw_pwm_tilt = 0;

    INT16S raw_pos_pan = 0;
    INT16S raw_pos_tilt = 0;

    INT8U pantilt = PID_PAN; //

    while (1)
    {
        xLastWakeTime_prev = xLastWakeTime; // To counteract queue effect

        if (pantilt == PID_PAN)
        {
            raw_pos_pan = spi_transmission(SPI_PAN, raw_pwm_tilt, SPI_TILT);
            FP32 pos_pan = raw_pos_pan * POS_MULTIPLIER;
            FP32 pwm_pan = pid_update(PID_PAN, pos_pan);
            raw_pwm_pan = pwm_pan * PWM_MULTIPLIER;
            spi_transmit(raw_pwm_pan, SPI_PAN, SPI_TILT);
        }
        else
        {
            raw_pos_tilt = spi_transmission(SPI_TILT, raw_pwm_pan, SPI_PAN);
            FP32 pos_tilt = raw_pos_tilt * POS_MULTIPLIER;
            FP32 pwm_tilt = pid_update(PID_TILT, pos_tilt);
            raw_pwm_tilt = pwm_tilt * PWM_MULTIPLIER;
            spi_transmit(raw_pwm_tilt, SPI_TILT, SPI_PAN);
        }

        // Debug struct update
        if (uxSemaphoreGetCount(debug_enabled) == 0 && pantilt == PID_TILT)
        {
            pid_debug.raw_pos[PID_PAN] = raw_pos_pan;
            pid_debug.raw_pos[PID_TILT] = raw_pos_tilt;

            pid_debug.raw_pwm[PID_PAN] = raw_pwm_pan;
            pid_debug.raw_pwm[PID_TILT] = raw_pwm_tilt;

            // Dataloss is not important
            // Remove from queue if full
            if (xQueueIsQueueFullFromISR(pid_debug_queue))
            {
                INT8U remmsg;
                xQueueReceiveFromISR(pid_debug_queue, &remmsg, NULL);
            }
            xQueueSendToBack(pid_debug_queue, &pid_debug, 0);
        }

        if (pantilt == PID_PAN)
        {
            pantilt = PID_TILT;
        }
        else
        {
            pantilt = PID_PAN;
        }

        xLastWakeTime = xLastWakeTime_prev;

        vTaskDelayUntil(&xLastWakeTime, xPeriod);
    }
}
/***************** End of module **************/

