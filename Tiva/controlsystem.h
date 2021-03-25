/**********************************************
* Univeristy of Southern Denmark
* Embedded Programming (EMP)
*
* MODULENAME: controlsystem.h
* PROJECT: controlsystem
* DESCRIPTION: See module specification file (.h-file)
* Change log:
**********************************************
* Date Ud Change
* 25032021
* ----------------
* 25. mar. 2021 PO Module created.
*
***********************************************/

/***************** Header *********************/
/***************** Include files **************/
#include"tm4c123gh6pm.h"
#include <stdint.h>
#include"emp_type.h"
#include"spi.h"
/***************** Defines ********************/
#ifndef CONTROLSYSTEM_H_
#define CONTROLSYSTEM_H_
typedef struct{
    float Kp;
    float Ki;
    float Kd;

    float tau;

    float lim_min;
    float lim_max;

    float t;

    float integrator;
    float prev_error;
    float differentiatior;
    float prev_position;

    float out;
} PIDController;

};

/***************** Variables ******************/
/***************** Functions ******************/
void pid_int(PIDController *pid);
/**********************************************
* Input: N/A
* Output: readPosition
* Function: getPosition()
***********************************************/
float update_pid(PIDController *pid, float setpoint, float position);
/**********************************************
* Input: N/A
* Output: N/A
* Function: PID()
***********************************************/

/**********************************************
* Input: N/A
* Output: N/A
* Function: adjustPWM()
***********************************************/
/***************** End of module **************/
#endif /* CONTROLSYSTEM_H_ */
