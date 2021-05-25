/********************************************** 
 * Univeristy of Southern Denmark
 * Embedded Programming (EMP)
 *
 * MODULENAME: user_interface
 * PROJECT: user_interface
 * DESCRIPTION: See module specification file (.h-file)
 * Change log:
 **********************************************
 * Date Ud Change
 * YYMMDD
 * ----------------
 * 10 May 2021 PO Module created.
 *
 ***********************************************/

/***************** Header *********************/
/***************** Include files **************/
#include "user_interface.h"
/***************** Defines ********************/
/***************** Constants ******************/
/***************** Variables ******************/
extern QueueHandle_t pid_debug_queue;
extern SemaphoreHandle_t debug_enabled;

static INT8U msg;

/***************** Functions ******************/

void ui_clear_screen()
{
    printf("%c[2J", ASCII_ESC); // Clear screen
    printf("%c[H", ASCII_ESC); // Reset cursor
}

void ui_task(void* pvParameters)
{
    ui_clear_screen();
    printf("Program start\n\r");

    UI_MENUS current_menu = MAIN;
    while (1)
    {
        switch (current_menu)
        {
        case MAIN:
            current_menu = ui_main_menu();
            break;
        case DEBUG:
            current_menu = ui_debug_menu();
            break;
        }
    }
}

UI_MENUS ui_main_menu()
{
    ui_clear_screen();
    printf("------------------------\n\r");
    printf("Select menu\n\r");
    printf("1. Debug view\n\r");
    printf("2. SPI test\n\r");
    printf("------------------------\n\r");

    while (1)
    {
        uart0_getchar(&msg, portMAX_DELAY);

        switch (msg)
        {
        case '1':
            return DEBUG;
        case '2':
            return SPI_TEST;
        default:
            msg++;
            printf("%c\n\rIncorrect input\n\r", msg);
            break;
        }
    }
}

UI_MENUS ui_debug_menu()
{
    configASSERT(xSemaphoreTake(debug_enabled, portMAX_DELAY));

    ui_clear_screen();

    printf("current_tick, time , raw_pos_pan , raw_pos_tilt , raw_pwm_pan , raw_pwm_tilt , pos_pan  , pos_tilt  , setpoint_pan , setpoint_tilt\n\r");

    PID_Control pid_debug;

    while (1)
    {
        // Obtain data
        xQueueReceive(pid_debug_queue, &pid_debug, portMAX_DELAY);

        printf("%-12i , %f , %-11i , %-12i , %-11i , %-12i , %-8f , %-8f , %-12f , %-13f \n\r",
               pid_debug.tick, pid_debug.tick * 0.05f,
               pid_debug.raw_pos[PID_PAN], pid_debug.raw_pos[PID_TILT],
               pid_debug.raw_pwm[PID_PAN], pid_debug.raw_pwm[PID_TILT],
               pid_debug.pos[PID_PAN], pid_debug.pos[PID_TILT],
               pid_debug.setpoint[PID_PAN], pid_debug.setpoint[PID_TILT]);

        // For controlling the menu
        uart0_getchar(&msg, 0);
        if (msg)
        {
            switch (msg)
            {
            case 's': // Stop output until any key is pressed
                uart0_getchar(&msg, portMAX_DELAY);
                break;
            case 'q':
                xSemaphoreGive(debug_enabled);
                return MAIN;
            default:
                break;
            }
        }
    }
}

UI_MENUS ui_spi_test()
{

}

UI_MENUS ui_waypoint_menu(char* buf)
{
    ui_clear_screen();
    printf("------------------------\n\r");
    printf("Waypoint menu\n\r");
    printf("1.Waypoint list \n\r");
    printf("2.Add waypoint: \n\r");
    printf("------------------------\n\r");

    char msg;
    while (1)
    {
        //xQueueReceive(uart0_rx_queue, &msg, portMAX_DELAY);
        switch (msg)
        {
        case '1':
            return DEBUG;
        default:
            printf("%c\n\rIncorrect input\n\r", msg);
            break;
        }
    }
}


/***************** End of module **************/
