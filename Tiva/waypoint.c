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
static Waypoint waypoints[WAYPOINT_LENGTH];
static SemaphoreHandle_t waypoints_mutex;

static Waypoint current_waypoint;
static INT8U current_waypoint_i = 0;

static Waypoint_Container wp_cont[PID_CONTROLLERS_LENGTH];
/**********************************************
 Functions: See module specification (h.file)
 ***********************************************/

void waypoint_init()
{
    waypoints_mutex = xSemaphoreCreateMutex();
    configASSERT(waypoints_mutex);

    Waypoint wp0;
    wp0.active = 1;
    wp0.tilt_point = 0.0f;
    wp0.pan_point = 0.0f;
    wp0.time_ms = 10000;
    waypoints[0] = wp0;

    Waypoint wp1;
    wp1.active = 1;
    wp1.tilt_point = 100.0f;
    wp1.pan_point = 100.0f;
    wp1.time_ms = 10000;
    waypoints[1] = wp1;

    xSemaphoreGive(waypoints_mutex); // Init mutex
}

FP32 waypoint_next_setpoint(INT8U pid, FP32 pos)
/**********************************************
 * Input: N/A
 * Output: readPosition
 * Function: getPosition()
 ***********************************************/
{
    FP32 ret = 0.0f;

    if (wp_cont[pid].current_tick >= wp_cont[pid].ticks)
    {
        if (pid == PID_TILT)
        {
            waypoint_next(wp_cont[PID_PAN].start_pos, pos);
            ret = wp_cont[pid].start_pos;
        }
        else if (pid == PID_PAN)
        {
            wp_cont[pid].start_pos = pos; // For updating next waypoint
            ret = wp_cont[pid].end_pos;
        }
    }
    else
    {
        ret = wp_cont[pid].start_pos
                + wp_cont[pid].tick_increment * wp_cont[pid].current_tick;

        wp_cont[pid].current_tick++;
    }

    return ret;
}

void waypoint_next(FP32 pos_pan, FP32 pos_tilt)
{
    do {
        current_waypoint = waypoint_get(current_waypoint_i);
        current_waypoint_i++;
        if (current_waypoint_i >= WAYPOINT_LENGTH) {
            current_waypoint_i = 0;
        }
    } while (!current_waypoint.active);

    for (INT8U i = 0; i < PID_CONTROLLERS_LENGTH; i++)
    {
        if (i == PID_PAN)
        {
            wp_cont[i].start_pos = pos_pan;
            wp_cont[i].end_pos = current_waypoint.pan_point;
        }
        else if (i == PID_TILT)
        {
            wp_cont[i].start_pos = pos_tilt;
            wp_cont[i].end_pos = current_waypoint.tilt_point;
        }

        wp_cont[i].current_tick = 0;

        wp_cont[i].ticks = (INT32U) current_waypoint.time_ms
                / PID_SAMPLE_TIME_MS;

        wp_cont[i].tick_increment = (wp_cont[i].end_pos - wp_cont[i].start_pos)
                / wp_cont[i].ticks;
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
        waypoints[i].time_ms = msg;
        i++;
    }
}

Waypoint waypoint_get(INT8U index)
{
    xSemaphoreTake(waypoints_mutex, portMAX_DELAY);
    Waypoint ret = waypoints[index];
    xSemaphoreGive(waypoints_mutex);
    return ret;
}

void waypoint_set(INT8U index, Waypoint wp)
{
    xSemaphoreTake(waypoints_mutex, portMAX_DELAY);
    waypoints[index] = wp;
    xSemaphoreGive(waypoints_mutex);
}
