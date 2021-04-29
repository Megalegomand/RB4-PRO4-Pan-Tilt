/***************** Include files **************/
#include <stdint.h>
#include "tm4c123gh6pm.h"
#include "emp_type.h"
#include "spi.h"
#include "FreeRTOS.h"
#include "task.h"
#include "uart.h"
#include "systick_frt.h"
/*****************************************************************************
 *   Input    : -
 *   Output   : -
 *   Function : SSI0 FIFO Full. Send to UART TX
 ******************************************************************************/
void vSpi2UART()
{
    while (1)
    {
        if (SSI0_SR_R & SSI_SR_RNE)
        {
            if (uart0_tx_rdy())
            {
                uart0_putc(spi_read());
            }
        }
    }
}

/*****************************************************************************
 *   Input    : -
 *   Output   : -
 *   Function : UART has data, send to SPI
 ******************************************************************************/
void vUART2spi()
{
    while (1)
    {
        if (uart0_rx_rdy())
        {
            spi_write(uart0_getc());
        }
    }
}
/*****************************************************************************
 *   Input    : -
 *   Output   : -
 *   Function : UART has data, send to SPI
 ******************************************************************************/
static void setupHardware(void)
{
    spi_init();
    uart0_init(9600, 8, 1, 0);
void pid_int(0);
void pid_int(1);
}
/*****************************************************************************
 *   Input    : -
 *   Output   : -
 *   Function : UART has data, send to SPI
 ******************************************************************************/
void PIDtask(void p*)
{
while(1)
{
    update_pid((INT8U*) p, (float*) setpoint, (float*) position);
}
}
/*****************************************************************************
 *   Input    : -
 *   Output   : -
 *   Function : UART has data, send to SPI
 ******************************************************************************/
void SPIWriteTask(void p*){
    while(1){
        spi_write();
    }

}
/*****************************************************************************
 *   Input    : -
 *   Output   : -
 *   Function : UART has data, send to SPI
 ******************************************************************************/
void SPIReadTask(void p*){
    while(1){
        spi_read();
    }

}
int main(void)
{
// Initialzation
setupHardware();

portBASE_TYPE return_value = pdTRUE;
// Create tasks
// SPI to UART task
return_value &= xTaskCreate(vSpi2UART, "SPI2UART", configMINIMAL_STACK_SIZE,
                            LOW_PRIO, 0, NULL);
// UART to SPI task
return_value &= xTaskCreate(vUART2spi, "UART2SPI", configMINIMAL_STACK_SIZE,
                            LOW_PRIO, 0, NULL);
// SPI RTOS
return_value &= xTaskCreate(SPIReadTask, "SPI_READ",
configMINIMAL_STACK_SIZE,
                            NULL, LOW_PRIO, NULL);
return_value &= xTaskCreate(SPIWriteTask, (signed portCHAR *) "SPI_WRITE",
configMINIMAL_STACK_SIZE,
                            NULL, LOW_PRIO, NULL);
// PID task
return_value &= xTaskCreate(PIDtask, "UPADTE_PID",
configMINIMAL_STACK_SIZE,
                            NULL, LOW_PRIO, NULL);
// Check if the task were created correctly
if (return_value != pdTRUE)
{
    while (1)
        ;  // cold not create one or more tasks.
}
//Start scheduler
//
vTaskStartScheduler();

return (1);
}
