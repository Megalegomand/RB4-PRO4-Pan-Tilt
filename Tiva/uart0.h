/*****************************************************************************
* University of Southern Denmark
* Embedded Programming (EMP)
*
* MODULENAME.: uart.h
*
* PROJECT....: EMP
*
* DESCRIPTION: Test. screen /dev/ttyACM? 115200
*
* Change Log:
******************************************************************************
* Date    Id    Change
* YYMMDD
* --------------------
* 150228  MoH   Module created.
*
*****************************************************************************/

#ifndef _UART_H
#define _UART_H

/***************************** Include files *******************************/
#include "tm4c123gh6pm.h"
#include "emp_type.h"
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <stdarg.h>
#include "FreeRTOS.h"
#include "queue.h"
#include "task.h"
/*****************************    Defines    *******************************/
#define UART_QUEUE_LENGTH 16
#define UART_ITEM_SIZE    sizeof(INT8U)
/***************** Variables ******************/
/*****************************   Functions   *******************************/

BOOLEAN uart0_rx_rdy();
/*****************************************************************************
*   Input    : -
*   Output   : -
*   Function : Character ready at uart0 RX
******************************************************************************/

INT8U uart0_getc();
/*****************************************************************************
*   Input    : -
*   Output   : -
*   Function : Get character from uart0 RX
******************************************************************************/

BOOLEAN uart0_tx_rdy();
/*****************************************************************************
*   Input    : -
*   Output   : -
*   Function : uart0 TX buffer ready
******************************************************************************/

void uart0_putc( INT8U );
/*****************************************************************************
*   Input    : -
*   Output   : -
*   Function : Put character to uart0 TX
******************************************************************************/

void uart0_init( INT32U, INT8U, INT8U, INT8U );
/*****************************************************************************
*   Input    : -
*   Output   : -
*   Function : Initialize uart 0
******************************************************************************/

void uart0_read_isr();
/*****************************************************************************
*   Input    : N/A
*   Output   : N/A
*   Function : Uart read interrupt service routine
******************************************************************************/
void uart0_write_task(void* pvParameters);
/*****************************************************************************
*   Input    : -
*   Output   : -
*   Function : uart0 FreeRTOS task
******************************************************************************/
void uart0_sendstring(char* c, INT8U length);
/*****************************************************************************
 *   Input    : Char, Length of string
 *   Output   : -
 *   Function : uart0 send string
 ******************************************************************************/
void uart0_sendchar(char c);
/*****************************************************************************
*   Input    : Char
*   Output   : -
*   Function : uart0 send char
******************************************************************************/
BaseType_t uart0_getchar(INT8U* msg, TickType_t xTicksToWait);
/*****************************************************************************
*   Input    : message pointer, ticks to wait
*   Output   : -
*   Function : uart0 get char
******************************************************************************/
void _putchar(char c);
/*****************************************************************************
*   Input    : char
*   Output   : -
*   Function : uart0 put char in queue
******************************************************************************/

/****************************** End Of Module *******************************/
#endif

