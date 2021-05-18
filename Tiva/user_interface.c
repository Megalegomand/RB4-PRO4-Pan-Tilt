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
    uprintf("%c[2J", ASCII_ESC); // Clear screen
    uprintf("%c[H", ASCII_ESC); // Reset cursor
}

void ui_task(void* pvParameters)
{
    ui_clear_screen();
    uprintf("Program start\n\r");

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
    uprintf("------------------------\n\r");
    uprintf("Select menu\n\r");
    uprintf("1. Debug view\n\r");
    uprintf("------------------------\n\r");

    while (1)
    {
        uart0_getchar(&msg, portMAX_DELAY);

        switch (msg)
        {
        case '1':
            return DEBUG;
        default:
            msg++;
            uprintf("%c\n\rIncorrect input\n\r", msg);
            break;
        }
    }
}

UI_MENUS ui_debug_menu()
{
    configASSERT(xSemaphoreTake(debug_enabled, portMAX_DELAY));

    ui_clear_screen();

    uprintf("pos_pan | pos_tilt | raw_pos_pan | raw_pos_tilt\n\r");

    PID_DEBUG pid_debug;

    while (1)
    {
        // Obtain data
        xQueueReceive(pid_debug_queue, &pid_debug, portMAX_DELAY);
        uprintf("%-7f | %-8f | %-11i | %i\n\r", pid_debug.pos[PID_PAN],
                pid_debug.pos[PID_TILT], pid_debug.raw_pos[PID_PAN],
                pid_debug.raw_pos[PID_TILT]);

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

/***************** End of module **************/
