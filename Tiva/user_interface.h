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
#include "tm4c123gh6pm.h"
#include "emp_type.h"
#include <stdint.h>
#include "FreeRTOS.h"
#include "queue.h"
#include "task.h"
#include "uart0.h"
#include "pid.h"
#include "semphr.h"
/***************** Defines ********************/ 
#ifndef USER_INTERFACE_H_
#define USER_INTERFACE_H_

#define ASCII_ESC 27

/***************** Variables ******************/ 
typedef enum UI_MENUS{MAIN, DEBUG} UI_MENUS;
extern QueueHandle_t uart0_rx_queue;

extern QueueHandle_t pid_debug_queue;
extern SemaphoreHandle_t debug_enabled;
/***************** Functions ******************/
void ui_clear_screen();
/********************************************** 
* Input: 
* Output: 
* Function: 
***********************************************/ 

void ui_task(void* pvParameters);
UI_MENUS ui_main_menu();
UI_MENUS ui_debug_menu();

#endif /* USER_INTERFACE_H_ */
/***************** End of module **************/
