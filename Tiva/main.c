/***************** Include files **************/
#include <stdint.h>
#include <stdio.h>
#include "tm4c123gh6pm.h"
#include "emp_type.h"
#include "spi.h"
#include "FreeRTOS.h"
#include "task.h"
#include "uart0.h"
#include "systick_frt.h"


void uart0_sendstring(char* c, INT8U length)
{
    for (int i = 0; i < length; i++)
    {
        while (!uart0_tx_rdy())
        {
        }
        uart0_putc(c[i]);
    }
}

/*****************************************************************************
 *   Input    : -
 *   Output   : -
 *   Function : SSI0 FIFO Full. Send to UART TX
 ******************************************************************************/
void vSPI2UART( void * pvParameters )
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
                INT8S i = spi_read();
                int l = sprintf(str, "E: %d\r", i);
                uart0_sendstring(str, l);

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
void vUART2SPI( void * pvParameters )
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

#define PRIORITY_HIGH 3
#define PRIORITY_LOW 1
#define PRIORITY_IDLE 0

int main(void)
{
    // Initialzation
    spi_init();
    uart0_init(19200, 8, 1, 0);
    uart0_sendstring("Program start\r", 15);

    // Create tasks
    // SPI to UART task
    static unsigned char ucParameterToPass;
    xTaskHandle xHandle;

    xTaskCreate(vSPI2UART, "SPI2UART", configMINIMAL_STACK_SIZE+100, &ucParameterToPass, 0, &xHandle);


    // UART to SPI task
    xTaskCreate(vUART2SPI, "UART2SPI", configMINIMAL_STACK_SIZE, NULL, 0,NULL);

    //Start scheduler
    //
    vTaskStartScheduler();

    //while(1) {
    //spi_write(0b11101000);

    //}
    return (0);
}
