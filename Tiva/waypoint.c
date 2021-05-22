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
/**********************************************
 Functions: See module specification (h.file)
 ***********************************************/
void waypoint_task(void* pvParameters)
/**********************************************
 * Input: N/A
 * Output: readPosition
 * Function: getPosition()
 ***********************************************/
{
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
    for (int i; i < number_of_waypoint; i++)
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

