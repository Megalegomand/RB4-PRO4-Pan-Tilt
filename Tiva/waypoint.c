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
#include <waypoint.h>
/***************** Defines ********************/
/***************** Constants ******************/
/***************** Variables ******************/
Waypoint_Container waypoints[WAYPOINT_LENGTH];
SemaphoreHandle_t waypoints_mutex;
/**********************************************
 Functions: See module specification (h.file)
 ***********************************************/

void waypoint_init()
{
    waypoints_mutex = xSemaphoreCreateMutex();
    configASSERT(waypoints_mutex);

    Waypoint_Container wp0;
    wp0.active = 1;
    wp0.tilt_point = 0.0f;
    wp0.pan_point = 0.0f;
    wp0.time = 5000.0f;
    waypoints[0] = wp0;

    Waypoint_Container wp1;
    wp1.active = 1;
    wp1.tilt_point = 45.0f;
    wp1.pan_point = 45.0f;
    wp1.time = 5000.0f;
    waypoints[0] = wp1;

    xSemaphoreGive(waypoints_mutex); // Init mutex
}

void waypoint_task(void* pvParameters)
/**********************************************
 * Input: N/A
 * Output: readPosition
 * Function: getPosition()
 ***********************************************/
{
    Waypoint_Container current_waypoint;
    INT8U current_waypoint_i = 0;

    INT16U i;

    FP32 Degree_pr_Tick_p = (waypoints[i].time / PID_SAMPLE_TIME_MS)
            / waypoints[i].pan_point;
    FP32 Degree_pr_Tick_t = (waypoints[i].time / PID_SAMPLE_TIME_MS)
            / waypoints[i].tilt_point;
    FP32 Temp_pos_p;
    FP32 Temp_pos_t;
    INT16U Tick_counter;

    while (1)
    {
        do
        {
            current_waypoint = waypoint_get(current_waypoint_i++);
        }
        while (!current_waypoint.active);

        if (Temp_pos_p <= waypoints[i].pan_point
                && Temp_pos_t <= waypoints[i].tilt_point)
        {
            //set setpoint for pan til temp pos
            Temp_pos_p = Tick_counter * Degree_pr_Tick_p;
            //set setpoint for pan til temp pos
            Temp_pos_t = Tick_counter * Degree_pr_Tick_t;
        }
        {
            i++;
        }

    }
}

void waypoint_list()
/**********************************************
 * Input: N/A
 * Output: readPosition
 * Function: getPosition()
 ***********************************************/
{
    ui_clear_screen();
    for (int i; i < WAYPOINT_LENGTH; i++)
    {
        printf("Pan: %2f | Tilt: %2f \n\r", waypoints[i].pan_point,
               waypoints[i].tilt_point);
    }
}

void waypoint_edit()
/**********************************************
 * Input: N/A
 * Output: readPosition
 * Function: getPosition()
 ***********************************************/
{
    int i;
    while (1)
    {
        ui_clear_screen();
        printf("------------------------\n\r");
        printf("Select menu\n\r");
        printf("Insert pan position: \n\r");
        printf("------------------------\n\r");
        int i;
        char msg;

        uart0_getchar(&msg, portMAX_DELAY);
        waypoints[i].pan_point = msg;

        ui_clear_screen();
        printf("------------------------\n\r");
        printf("Select menu\n\r");
        printf("Insert tilt position: \n\r");
        printf("------------------------\n\r");

        uart0_getchar(&msg, portMAX_DELAY);
        waypoints[i].tilt_point = msg;

        ui_clear_screen();
        printf("------------------------\n\r");
        printf("Select menu\n\r");
        printf("Insert time to complete: \n\r");
        printf("------------------------\n\r");

        uart0_getchar(&msg, portMAX_DELAY);
        waypoints[i].time = msg;
        i++;
    }
}

Waypoint_Container waypoint_get(INT8U index)
{
    xSemaphoreTake(waypoints_mutex, portMAX_DELAY);
    Waypoint_Container ret = waypoints[index];
    xSemaphoreGive(waypoints_mutex);
    return ret;
}

void waypoint_set(INT8U index, Waypoint_Container wp)
{
    xSemaphoreTake(waypoints_mutex, portMAX_DELAY);
    waypoints[index] = wp;
    xSemaphoreGive(waypoints_mutex);
}
