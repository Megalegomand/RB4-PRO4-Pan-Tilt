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
/***************** Functions ******************/

void ui_clear_screen()
{
    char buffer[5];
    uprintf(buffer, "%c[2J", ASCII_ESC); // Clear screen
    uprintf(buffer, "%c[H", ASCII_ESC); // Reset cursor
}

void ui_task(void* pvParameters)
{
    char buf[40];
    ui_clear_screen();
    uprintf(buf, "Program start\n\r");

    UI_MENUS current_menu;
    while (1)
    {
        switch (current_menu)
        {
        case MAIN:
            current_menu = ui_main_menu(buf);
            break;
        case DEBUG:
            current_menu = ui_debug_menu(buf);
            break;
        }
    }
}

UI_MENUS ui_main_menu(char* buf)
{
    ui_clear_screen();
    uprintf(buf, "------------------------\n\r");
    uprintf(buf, "Select menu\n\r");
    uprintf(buf, "1. Debug view\n\r");
    uprintf(buf, "------------------------\n\r");

    char msg;
    while (1)
    {
        xQueueReceive(uart0_rx_queue, &msg, portMAX_DELAY);
        switch (msg)
        {
        case '1':
            return DEBUG;
        default:
            uprintf(buf, "%c\n\rIncorrect input\n\r", msg);
            break;
        }
    }
}

UI_MENUS ui_debug_menu(char* buf)
{
    configASSERT(xSemaphoreTake(debug_enabled, portMAX_DELAY));

    ui_clear_screen();

    uprintf(buf, "pos_pan, pos_tilt, raw_pos_pan, raw_pos_tilt\n\r");

    PID_DEBUG pid_debug;
    while (1)
    {
        // Obtain data
        xQueueReceive(pid_debug_queue, &pid_debug, portMAX_DELAY);
        uprintf(buf, "%f, %f, %i, %i\n\r", pid_debug.pos[PID_PAN],
                pid_debug.pos[PID_TILT], pid_debug.raw_pos[PID_PAN],
                pid_debug.raw_pos[PID_TILT]);

        // For controlling the menu
        INT8U msg = uart0_get_char(0);
        if (msg)
        {
            switch (msg)
            {
            case 's': // Stop output until any key is pressed
                uart0_get_char(portMAX_DELAY);
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
