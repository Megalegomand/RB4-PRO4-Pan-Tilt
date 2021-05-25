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
#include "user_interface.h"

void vAssertCalled(const char * pcFile, unsigned long ulLine)
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
void test_task(void * pvParameters)
{
    while (1)
    {
        FP32 msg = 10.0f;
        //xQueueReceive(uart0_rx_queue, &msg, portMAX_DELAY);
        //xQueueSendToBack(uart0_tx_queue, &msg, portMAX_DELAY);
        //xQueueSendToBack(setpoint_queues[PID_PAN], &msg, portMAX_DELAY);
    }
}

extern QueueHandle_t spi_rx_queue;
void test_task2(void * pvParameters)
{
    while (1)
    {
        //spi_transmission(0b101010101, 0b00, 0b00, 0b00);
    }
}

#define PRIORITY_HIGH 3
#define PRIORITY_MEDIUM 1
#define PRIORITY_LOW 1
#define PRIORITY_IDLE 0

int main(void)
{
    spi_init();
    uart0_init(115200, 8, 1, 0);
    init_systick();
    waypoint_init();

    // PID, Kp, Ki, Kd, N, setpoint queue
    pid_init(PID_PAN, 10.03f, 9.09f, 2.16f, 1000);
    pid_init(PID_TILT, 2.689f, 4.366f, 0.4139f, 1000);

    // Create tasks
    xTaskCreate(pid_task, "PID controller", configMINIMAL_STACK_SIZE + 100,
                NULL, PRIORITY_HIGH, NULL);

    xTaskCreate(spi_write_task, "SPI write task",
    configMINIMAL_STACK_SIZE + 50,
                NULL, PRIORITY_HIGH, NULL);

    xTaskCreate(uart0_write_task, "UART write task",
    configMINIMAL_STACK_SIZE + 50,
                NULL, PRIORITY_LOW, NULL);

    xTaskCreate(ui_task, "User interface task",
    configMINIMAL_STACK_SIZE + 150,
                NULL, PRIORITY_IDLE, NULL);

//    xTaskCreate(test_task, "Test", configMINIMAL_STACK_SIZE+100,
//                NULL, PRIORITY_IDLE, NULL);
//    xTaskCreate(test_task2, "Test2", configMINIMAL_STACK_SIZE+100,
//                    NULL, PRIORITY_IDLE, NULL);

    //Start scheduler
    vTaskStartScheduler();

    return (0);
}
