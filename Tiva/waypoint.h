/***************** Header *********************/
/***************** Include files **************/
#include "tm4c123gh6pm.h"
#include <stdint.h>
#include "emp_type.h"
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "semphr.h"
/***************** Defines ********************/
#ifndef WAYPOINT_H_
#define WAYPOINT_H_
#define TICK_TIME     0.01f
typedef struct
{
    FFP32 Tilt_point;

    FFP32 Pan_point;

    FFP32 T;

    BOOLEAN Active;

}Waypoint;

#endif /* WAYPOINT_H_ */
/***************** Variables ******************/
Waypoint Waypoints [10];
/***************** Functions ******************/
void waypoint_task (void* pvParameters);
/**********************************************
 * Input: N/A
 * Output: readPosition
 * Function: getPosition()
 ***********************************************/
