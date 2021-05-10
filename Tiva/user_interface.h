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
/***************** Defines ********************/ 
#ifndef USER_INTERFACE_H_
#define USER_INTERFACE_H_

#define ASCII_ESC 27

/***************** Variables ******************/ 
typedef enum ui_menus{MAIN, DEBUG} ui_menus;
extern QueueHandle_t uart0_rx_queue;
/***************** Functions ******************/
void ui_clear_screen();
/********************************************** 
* Input: 
* Output: 
* Function: 
***********************************************/ 

void ui_task(void* pvParameters);
ui_menus ui_main_menu();

#endif /* USER_INTERFACE_H_ */
/***************** End of module **************/
