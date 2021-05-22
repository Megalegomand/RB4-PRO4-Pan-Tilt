/***************** Header *********************/
/***************** Include files **************/
#include "tm4c123gh6pm.h"
#include <stdint.h>
#include "emp_type.h"
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "semphr.h"
#include "pid.h"
/***************** Defines ********************/
#ifndef WAYPOINT_H_
#define WAYPOINT_H_

#define WAYPOINT_LENGTH 10

typedef struct
{
    BOOLEAN active;
    FP32 tilt_point;
    FP32 pan_point;
    FP32 time_ms;
} Waypoint_Container;

/***************** Constants ******************/
/***************** Variables ******************/
/***************** Functions ******************/
void waypoint_init();

void waypoint_task (void* pvParameters);
/**********************************************
 * Input: N/A
 * Output: readPosition
 * Function: getPosition()
 ***********************************************/
void waypoint_list();
/**********************************************
 * Input: N/A
 * Output: readPosition
 * Function: getPosition()
 ***********************************************/
void waypoint_edit();
/**********************************************
 * Input: N/A
 * Output: readPosition
 * Function: getPosition()
 ***********************************************/

Waypoint_Container waypoint_get(INT8U index);
void waypoint_set(INT8U index, Waypoint_Container wp);

#endif /* WAYPOINT_H_ */
