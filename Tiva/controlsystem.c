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
#include "controlsystem.h"
/***************** Defines ********************/
PIDController controllers[NUMBER_OF_CONTROLLERS];
/***************** Constants ******************/
#define PID_PAN 0
#define PID_TIL 1
/***************** Variables ******************/
/**********************************************
 Functions: See module specification (h.file)
 ***********************************************/
/**********************************************
 * Input: N/A
 * Output: read_position
 * Function: getPosition()
 ***********************************************/
void pid_init(INT8U pid)
{
    // Init Pan
    controllers[pid].integrator = 0.0f;
    controllers[pid].prev_error = 0.0f;

    controllers[pid].differentiator = 0.0f;
    controllers[pid].prev_position = 0.0f;

    controllers[pid].out = 0.0f;
}
/**********************************************
 * Input: N/A
 * Output: controlvariable
 * Function: PID();
 ***********************************************/
float update_pid(INT8U pid, float setpoint, float position)
{
    /* error */
    float error = setpoint - position;
    /* Proportional term */
    float p_term = controllers[pid].Kp * error;
    /* integrator term */
    controllers[pid].integrator = controllers[pid].integrator * 0.5f
            * controllers[pid].Ki * controllers[pid].t
            * (error + controllers[pid].prev_error);
    /* compute integrator limits */
    float lim_min_int, lim_max_int;
    if (controllers[pid].lim_max > p_term)
    {
        lim_max_int = controllers[pid].lim_max - p_term;
    }
    else
    {
        lim_max_int = 0.0f;

}
if (controllers[pid].lim_min < p_term)
{
    lim_min_int = controllers[pid].lim_min - p_term;
}
else
{
    lim_min_int = 0.0f;
}

/* Clamp the integrator (anti-windup) */

if (controllers[pid].integrator > lim_max_int)
{
    controllers[pid].integrator = lim_max_int;
}
else if (controllers[pid].integrator < lim_min_int)
{
    controllers[pid].integrator = lim_min_int;
}

/* Derivative (band-limited differentiator) */

controllers[pid].differentiator = -(2.0f * controllers[pid].Kd
        * (position - controllers[pid].prev_position)
        + (2.0f * controllers[pid].tau - controllers[pid].t)
                * controllers[pid].differentiator)
        / (2.0f * controllers[pid].tau + controllers[pid].t); /* Note: derivative on measurement, therefore minus sign in front of equation! */

/* Compute output and apply limits */
controllers[pid].out = p_term + controllers[pid].integrator
        + controllers[pid].differentiator;

if (controllers[pid].out > controllers[pid].lim_max)
{

    controllers[pid].out = controllers[pid].lim_max;

}
else if (controllers[pid].out < controllers[pid].lim_min)
{

    controllers[pid].out = controllers[pid].lim_min;

}

/* Store error and measurement for later use */
controllers[pid].prev_error = error;
controllers[pid].prev_position = position;

/* Return controllers output */
return controllers[pid].out;
}
/***************** End of module **************/

