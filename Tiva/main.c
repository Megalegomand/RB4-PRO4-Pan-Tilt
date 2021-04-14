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

int main(void)
{
    // Initialzation
    spi_init();
    uart0_init(9600, 8, 1, 0);
    // Create tasks
    // SPI to UART task
    xTaskCreate(vSpi2UART, "SPI2UART", configMINIMAL_STACK_SIZE, NULL, 0,
                NULL);

// UART to SPI task
    xTaskCreate(vUART2spi, "UART2SPI", configMINIMAL_STACK_SIZE, NULL, 0,
                NULL);

    //Start scheduler
    //
    vTaskStartScheduler();

    //while(1) {
    //spi_write(0b11101000);

    //}
    return (0);
}
