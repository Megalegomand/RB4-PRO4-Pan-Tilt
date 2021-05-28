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
#include "printf.h"
/***************** Defines ********************/
#ifndef WAYPOINT_H_
#define WAYPOINT_H_

#define WAYPOINT_LENGTH 10

typedef struct
{
    BOOLEAN active;
    FP32 tilt_point;
    FP32 pan_point;
    INT32U time_ms;
} Waypoint;

typedef struct
{
    INT32U ticks;
    INT32U current_tick;
    FP32 tick_increment;
    FP32 start_pos;
    FP32 end_pos;
} Waypoint_Container;
/***************** Constants ******************/
/***************** Variables ******************/
/***************** Functions ******************/
void waypoint_init();
/**********************************************
 * Input: N/A
 * Output: N/A
 * Function: Initialize waypoint
 ***********************************************/

FP32 waypoint_next_setpoint(INT8U pid, FP32 pos);
/**********************************************
 * Input: Designated PID, desired position
 * Output: waypoint
 * Function: set waypoint as reference
 ***********************************************/

void waypoint_next(FP32 pos_pan, FP32 pos_tilt);
/**********************************************
 * Input: Desired pan position, desired tilt position
 * Output: waypoint
 * Function: Add waypoint
 ***********************************************/

void waypoint_list();
/**********************************************
 * Input: N/A
 * Output: N/A
 * Function: Print the current waitpoint list to UI
 ***********************************************/
void waypoint_edit();
/**********************************************
 * Input: N/A
 * Output: N/A
 * Function: Edit waypoint
 ***********************************************/

Waypoint waypoint_get(INT8U index);
/**********************************************
 * Input: Index for waypoint list
 * Output: Desired waypoint
 * Function: Get waypoint
 ***********************************************/

void waypoint_set(INT8U index, Waypoint wp);
/**********************************************
 * Input: List index, Added waypoint
 * Output: N/A
 * Function: Set waypoint at index
 ***********************************************/
/***************** End of module **************/

#endif /* WAYPOINT_H_ */
