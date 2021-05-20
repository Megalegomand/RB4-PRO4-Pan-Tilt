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
void waypoint_task (void* pvParameters)
/**********************************************
 * Input: N/A
 * Output: readPosition
 * Function: getPosition()
 ***********************************************/
{
        FFP32 Degree_pr_Tick_p = (Waypoints[i].Pan_point.T/TICK_TIME)/Waypoints[i].Pan_point;
        FFP32 Degree_pr_Tick_t = (Waypoints[i].Tilt_point.T/TICK_TIME)/Waypoints[i].Tilt_point;
        FFP32 Temp_pos_p;
        FFP32 Temp_pos_t;
        INT16U Tick_counter;
        INT16U i;

    while(1)
    {

        if(Temp_pos_p =< Waypoints[i].Pan_point && Temp_pos_t =< Waypoints[i].Tilt_point ){
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
