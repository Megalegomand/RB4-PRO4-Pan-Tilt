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

extern QueueHandle_t spi_rx_queue;
extern QueueHandle_t spi_tx_queue;

SemaphoreHandle_t debug_enabled;
QueueHandle_t pid_debug_queue;

static TaskHandle_t pid_task_handle;
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
    pid_reset(pid);

    pid_debug_queue = xQueueCreate(DEBUG_QUEUE_LENGTH, DEBUG_QUEUE_WIDTH);
    configASSERT(pid_debug_queue);

    debug_enabled = xSemaphoreCreateBinary();
    configASSERT(debug_enabled);
    xSemaphoreGive(debug_enabled);

    // Setup pin for validation
    GPIO_PORTA_DEN_R |= 0x40;
    GPIO_PORTA_DIR_R |= 0x40;
    GPIO_PORTA_DATA_R &= ~(0x40);
}
/**********************************************
 * Input: N/A
 * Output: controlvariable
 * Function: PID();
 ***********************************************/
float pid_update(INT8U pid, FP32 position, FP32 setpoint)
{
    // Error
    FP32 error = setpoint - position;

    if (fabs(error) <= PID_TOLERANCE)
    {
        error = 0.0f;
    }

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

    if (fabs(error) <= PID_TOLERANCE)
    {
        out = 0.0f;
    }

    /* Return pid_controllers output */
    return out;
}

void pid_task(void * pvParameters)
{
    pid_task_handle = xTaskGetCurrentTaskHandle();

    // Periodic tasks definitions
    const TickType_t xPeriod = pdMS_TO_TICKS(PID_SAMPLE_TIME_MS * 0.5f);
    TickType_t xLastWakeTime = xTaskGetTickCount();
    TickType_t xLastWakeTime_prev;

    PID_Control pid_c;

    INT8U pantilt = PID_PAN; //

    pid_c.setpoint[0] = 0.0f;
    pid_c.setpoint[1] = 0.0f;

    while (1)
    {
        xLastWakeTime_prev = xLastWakeTime; // To counteract queue effect

        if (pantilt == PID_PAN)
        {
            pid_c.raw_pos[PID_PAN] = spi_transmission(SPI_PAN,
                                                      pid_c.raw_pwm[PID_TILT],
                                                      SPI_TILT);
            GPIO_PORTA_DATA_R |= 0x40;
        }
        else if (pantilt == PID_TILT)
        {
            pid_c.tick++;
            pid_c.raw_pos[PID_TILT] = spi_transmission(SPI_TILT,
                                                       pid_c.raw_pwm[PID_PAN],
                                                       SPI_PAN);
            GPIO_PORTA_DATA_R &= ~(0x40);
        }

        pid_c.pos[pantilt] = pid_c.raw_pos[pantilt] * POS_MULTIPLIER;
        pid_c.pwm[pantilt] = pid_update(pantilt, pid_c.pos[pantilt],
                                        pid_c.setpoint[pantilt]);
        pid_c.raw_pwm[pantilt] = pid_c.pwm[pantilt] * PWM_MULTIPLIER;

        spi_transmit(pid_c.raw_pwm[pantilt], pantilt,
                     (pantilt == PID_PAN ? SPI_PAN : SPI_TILT));

        // Update setpoint
        pid_c.setpoint[pantilt] = waypoint_next_setpoint(pantilt,
                                                         pid_c.pos[pantilt]);

        // Debug struct update
        if (uxSemaphoreGetCount(debug_enabled) == 0 && pantilt == PID_TILT)
        {
            // Dataloss is not important
            xQueueSendToBack(pid_debug_queue, &pid_c, 0);
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

void pid_reset(INT8U pid)
{
    pid_controllers[pid].integrator = 0.0f;
    pid_controllers[pid].differentiator = 0.0f;

    pid_controllers[pid].prev_error = 0.0f;

    pid_controllers[pid].saturated = 0;
}

void pid_stop()
{
    vTaskSuspend(pid_task_handle);

    spi_transmission(SPI_TILT, 0, SPI_PAN);
    spi_transmission(SPI_PAN, 0, SPI_PAN);
}
void pid_start()
{
    pid_reset(PID_PAN);
    pid_reset(PID_TILT);

    vTaskResume(pid_task_handle);
}
/***************** End of module **************/

