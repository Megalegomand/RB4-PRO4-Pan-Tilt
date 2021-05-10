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
extern QueueHandle_t uart0_rx_queue;
/***************** Functions ******************/

void ui_clear_screen()
{
    char buffer[4];
    uprintf(buffer, "%c[2J", ASCII_ESC); // Clear screen
    uprintf(buffer, "%c[H", ASCII_ESC); // Reset cursor
}

void ui_task(void* pvParameters)
{
    ui_menus current_menu;
    while(1) {
        switch (current_menu) {
        case MAIN:
            current_menu = ui_main_menu();
            break;
        }
    }
}

ui_menus ui_main_menu() {
    char buf[40];
    char msg;
    uprintf(buf, "------------------------");
    uprintf(buf, "Select menu");
    uprintf(buf, "1. Debug view");
    uprintf(buf, "------------------------");
    while(1) {
        xQueueReceive(uart0_rx_queue, &msg, portMAX_DELAY);
        switch(msg) {
        case 1:
            return DEBUG;
        default:
            uprintf(buf, "Incorrect input");
            break;
        }
    }
}

/***************** End of module **************/
