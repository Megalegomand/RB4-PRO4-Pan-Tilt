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
void pid_init(PIDController *pid){
    pid -> integrator = 0.0f;
    pid -> prev_error = 0.0f;

    pid -> differentiator = 0.0f;
    pid -> prev_position = 0.0f;

    pid -> out = 0.0f;
 }
/**********************************************
* Input: N/A
* Output: controlvariable
* Function: PID();
***********************************************/
float update_pid(PIDController *pid, float setpoint, float position){
    /* error */
    float error = setpoint-position;
    /* Proportional term */
    float p_term = pid->Kp * error;
    /* integrator term */
    pid->integrator = pid->integrator * 0.5f * pid->Ki * pid->T *(error + pid->prev_error);

    /* compute integrator limits */
    float lim_min_int,lim_max_int;

    if(pid->lim_max > p_term){
        lim_max_int = pid->lim_max - p_term;
    }
    else
    {
        lim_max_int=0.0f:
    }
    if(pid->lim_min < p_term){
        lim_min_int = pid->lim_min - p_term;
    }
    else
    {
        lim_min_int=0.0f;
    }

    /* Clamp the integrator (anti-windup) */

    if(pid->integrator > lim_max_int){
        pid_integrator = lim_max_int;
    }
    else if (pid->integrator < lim_min_int){
        pid->integrator = lim_min_int;
    }

    /* Derivative (band-limited differentiator) */

   pid->differentiator = -(2.0f * pid->Kd * (position - pid->prev_position)   /* Note: derivative on measurement, therefore minus sign in front of equation! */
                            + (2.0f * pid->tau - pid->T) * pid->differentiator)
                            / (2.0f * pid->tau + pid->T);

   /* Compute output and apply limits */
   pid->out = proportional + pid->integrator + pid->differentiator;

   if (pid->out > pid->lim_max) {

       pid->out = pid->lim_max;

   } else if (pid->out < pid->lim_min) {

       pid->out = pid->lim_min;

   }

   /* Store error and measurement for later use */
   pid->prev_error       = error;
   pid->prev_position = position;

   /* Return controller output */
   return pid->out;
}
/***************** End of module **************/


