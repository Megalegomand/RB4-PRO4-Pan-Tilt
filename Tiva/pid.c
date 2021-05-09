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
pid_container pid_controllers[PID_CONTROLLERS_LENGTH];
/***************** Constants ******************/
/***************** Variables ******************/
/**********************************************
 Functions: See module specification (h.file)
 ***********************************************/
/**********************************************
 * Input: N/A
 * Output: read_position
 * Function: getPosition()
 ***********************************************/
void pid_init(INT8U pid, FP32 Kp, FP32 Ki, FP32 Kd, INT16U N, FP32 T,
              FP32 lim_min, FP32 lim_max)
{
    // Controller params
    pid_controllers[pid].Kp = Kp;
    pid_controllers[pid].Ki = Ki;
    pid_controllers[pid].Kd = Kd;

    // Low-pass filter coefficient
    pid_controllers[pid].N = N;

    // Sample time
    pid_controllers[pid].T = T;

    // Limits
    pid_controllers[pid].lim_min = lim_min;
    pid_controllers[pid].lim_max = lim_max;

    // Reset values
    pid_controllers[pid].integrator = 0.0f;
    pid_controllers[pid].differentiator = 0.0f;

    pid_controllers[pid].prev_error = 0.0f;

    pid_controllers[pid].saturated = 0;
}
/**********************************************
 * Input: N/A
 * Output: controlvariable
 * Function: PID();
 ***********************************************/
float pid_update(INT8U pid, float setpoint, float position)
{
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
    INT16U msg;

    while (1)
    {
        xQueueReceive(spi_rx_queue, &msg, portMAX_DELAY);

        INT8S raw_pos_pan  = msg & (0x00FF);
        INT8S raw_pos_tilt = msg >> 8;

        FP32 pos_pan  = raw_pos_pan  * POS_MULTIPLIER;
        FP32 pos_tilt = raw_pos_tilt * POS_MULTIPLIER;

        INT8U sp = 1;

        FP32 pwm_pan  = pid_update(PID_PAN, sp, pos_pan);
        FP32 pwm_tilt = pid_update(PID_PAN, sp, pos_tilt);

        INT8S raw_pwm_pan  = pwm_pan  * PWM_MULTIPLIER;
        INT8S raw_pwm_tilt = pwm_tilt * PWM_MULTIPLIER;

        msg = (raw_pwm_tilt << 8) | raw_pwm_pan;

        configASSERT(xQueueSendToBack(spi_tx_queue, &msg, 0));
    }
}
/***************** End of module **************/

