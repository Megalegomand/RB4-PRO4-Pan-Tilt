/***************** Include files **************/
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include "tm4c123gh6pm.h"
#include "emp_type.h"
#include "spi.h"
#include "FreeRTOS.h"
#include "task.h"
#include "uart0.h"
#include "systick_frt.h"
#include "pid.h"

/*****************************************************************************
 *   Input    : -
 *   Output   : -
 *   Function : SSI0 FIFO Full. Send to UART TX
 ******************************************************************************/
void vSPI2UART(void * pvParameters)
{
    char str[10] = "          ";
    while (1)
    {
        /*if (uart0_tx_rdy())
         {
         //uart0_putc('A');
         //uart0_sendstring("123", 3);
         uart0_sendstring("123", 3);
         }*/
        if (SSI0_SR_R & SSI_SR_RNE)
        {
            if (uart0_tx_rdy())
            {
                INT8S i = 0;//spi_read();
                int l = sprintf(str, "E: %d\r", i);
                //uart0_sendstring(str, l);

                //uart0_putc(spi_read());
            }
        }
    }
}

/*****************************************************************************
 *   Input    : -
 *   Output   : -
 *   Function : UART has data, send to SPI
 ******************************************************************************/
void vUART2SPI(void * pvParameters)
{
    while (1)
    {
        if (uart0_rx_rdy())
        {
            char c = uart0_getc();
            spi_write(c);
        }
    }
}

void vAssertCalled( const char * pcFile, unsigned long ulLine )
{
    static portBASE_TYPE xPrinted = pdFALSE;
    volatile uint32_t ulSetToNonZeroInDebuggerToContinue = 0;

    /* Parameters are not used. */
    //(void) ulLine;
    //(void) pcFileName;

    //taskENTER_CRITICAL_FROM_ISR();
    {
        /* You can step out of this function to debug the assertion by using
         the debugger to set ulSetToNonZeroInDebuggerToContinue to a non-zero
         value. */
        while (ulSetToNonZeroInDebuggerToContinue == 0)
        {
        }
    }
    //uart0_sendstring(pcFile,1);
    //uart0_sendstring(ulLine,1);
    taskEXIT_CRITICAL();
}



extern QueueHandle_t spi_tx_queue;
void test_task(void * pvParameters) {
    while (1) {
        FP32 msg = 10.0f;
        //xQueueReceive(uart0_rx_queue, &msg, portMAX_DELAY);
        //xQueueSendToBack(uart0_tx_queue, &msg, portMAX_DELAY);
        xQueueSendToBack(setpoint_queues[PID_PAN], &msg, portMAX_DELAY);
    }
}

extern QueueHandle_t spi_rx_queue;
void test_task2(void * pvParameters) {
    while (1) {
        INT8U msg = 10.0f;
        xQueueSendToBack(setpoint_queues[PID_TILT], &msg, portMAX_DELAY);
    }
}

#define PRIORITY_HIGH 3
#define PRIORITY_MEDIUM 1
#define PRIORITY_LOW 1
#define PRIORITY_IDLE 0

int main(void)
{
    spi_init();
    uart0_init(19200, 8, 1, 0);
    //uart0_sendstring("Program Start\n\r",15);

    // PID, Kp, Ki, Kd, N, setpoint queue
    pid_init(PID_PAN, 1.0f, 1.0f, 0.0f, 10);
    pid_init(PID_TILT, 1.0f, 1.0f, 0.0f, 10);

    // Create tasks
    //xTaskCreate(pid_task, "PID controller", configMINIMAL_STACK_SIZE+100, NULL, PRIORITY_HIGH, NULL);
    xTaskCreate(spi_write_task, "SPI write task", configMINIMAL_STACK_SIZE+100,
                NULL, PRIORITY_HIGH, NULL);

    xTaskCreate(pid_task, "PID task", configMINIMAL_STACK_SIZE+100,
                NULL, PRIORITY_MEDIUM, NULL);

    xTaskCreate(uart0_write_task, "UART write task", configMINIMAL_STACK_SIZE+100, NULL, PRIORITY_LOW, NULL);

    //xTaskCreate(test_task, "Test", configMINIMAL_STACK_SIZE+100,
    //            NULL, PRIORITY_IDLE, NULL);
    //xTaskCreate(test_task2, "Test2", configMINIMAL_STACK_SIZE+100,
    //                NULL, PRIORITY_IDLE, NULL);

    // SPI to UART task
    //xTaskCreate(vSPI2UART, "SPI2UART", configMINIMAL_STACK_SIZE+100, &ucParameterToPass, 0, &xHandle);

    // UART to SPI task
    //xTaskCreate(vUART2SPI, "UART2SPI", configMINIMAL_STACK_SIZE, NULL, 0,NULL);

    //Start scheduler
    vTaskStartScheduler();

    return (0);
}
