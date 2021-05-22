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
    FP32 time;
} Waypoint_Container;

#endif /* WAYPOINT_H_ */
/***************** Constants ******************/
/***************** Variables ******************/
Waypoint_Container waypoints[WAYPOINT_LENGTH];
/***************** Functions ******************/
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
