/***************** Header *********************/
#ifndef CONTROLSYSTEM_H_
#define CONTROLSYSTEM_H_
/***************** Include files **************/
#include "tm4c123gh6pm.h"
#include <stdint.h>
#include <stdlib.h>
#include <math.h>
#include "emp_type.h"
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "semphr.h"
#include "spi.h"
#include "waypoint.h"
/***************** Defines ********************/

typedef struct
{
    FP32 Kp;
    FP32 Ki;
    FP32 Kd;

    INT16U N;

    FP32 T;

    FP32 lim_min;
    FP32 lim_max;

    FP32 integrator;
    FP32 differentiator;

    FP32 prev_error;

    BOOLEAN saturated;

    QueueHandle_t* setpoint_queue;
} PID_Container;

#define PI 3.14159265359f

#define PID_CONTROLLERS_LENGTH 2
#define PID_PAN             0
#define PID_TILT            1

#define PID_SAMPLE_TIME_MS  5
#define PID_LIM_MIN         -12.0f
#define PID_LIM_MAX         12.0f

#define PID_TOLERANCE 0.05f

#define POS_MULTIPLIER (PI / 2.0f) / 134.4f // Rotation / encoder ticks
#define PWM_MULTIPLIER 255.0f / 12.0f

#define SETPOINT_QUEUE_LENGTH 1
#define SETPOINT_QUEUE_WIDTH sizeof(FP32)

#define DEBUG_QUEUE_LENGTH 1
#define DEBUG_QUEUE_WIDTH sizeof(PID_Control)

typedef struct
{
    INT32U tick;
    INT16S raw_pos[PID_CONTROLLERS_LENGTH];
    FP32 pos[PID_CONTROLLERS_LENGTH];
    FP32 pwm[PID_CONTROLLERS_LENGTH];
    FP32 setpoint[PID_CONTROLLERS_LENGTH];
    INT16S raw_pwm[PID_CONTROLLERS_LENGTH];
} PID_Control;

/***************** Variables ******************/
extern QueueHandle_t spi_rx_queue;
extern QueueHandle_t spi_tx_queue;

extern QueueHandle_t setpoint_queues[PID_CONTROLLERS_LENGTH];

extern QueueHandle_t pid_debug_queue;
extern SemaphoreHandle_t debug_enabled;
/***************** Functions ******************/
void pid_init(INT8U pid, FP32 Kp, FP32 Ki, FP32 Kd, INT16U N);
/**********************************************
 * Input: N/A
 * Output: readPosition
 * Function: getPosition()
 ***********************************************/
float pid_update(INT8U pid, FP32 position, FP32 setpoint);
/**********************************************
 * Input: N/A
 * Output: N/A
 * Function: PID()
 ***********************************************/

void pid_task(void * pvParameters);
/**********************************************
 * Input: N/A
 * Output: N/A
 * Function: adjustPWM()
 ***********************************************/

void pid_reset(INT8U pid);

void pid_stop();
void pid_start();
/***************** End of module **************/
#endif /* CONTROLSYSTEM_H_ */
