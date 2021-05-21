/********************************************** 
 * Univeristy of Southern Denmark
 * Embedded Programming (EMP)
 *
 * MODULENAME: spi
 * PROJECT: spi
 * DESCRIPTION: See module specification file (.h-file)
 * Change log:
 **********************************************
 * Date Ud Change
 * YYMMDD
 * ----------------
 * 3. mar. 2021 PO Module created.
 *
 ***********************************************/

/***************** Header *********************/
/***************** Include files **************/
#include "spi.h"
/***************** Defines ********************/
/***************** Constants ******************/

/***************** Variables ******************/
QueueHandle_t spi_rx_queue;
QueueHandle_t spi_tx_queue;
/**********************************************
 Functions: See module specification (h.file)
 ***********************************************/

/**********************************************
 * Input:
 * Output:
 * Function:
 ***********************************************/
void spi_init()
{
    int dummy = 0;

    // Setup of system control
    SYSCTL_RCGCGPIO_R |= SYSCTL_RCGCGPIO_R0; //Enable the clock to the appropiate GPIO model
    SYSCTL_RCGCSSI_R |= SYSCTL_RCGCSSI_R0; //The RCGCSSI register provides software the capability to enable and disable the SSI modules in Run mode.
    //SYSCTL_PRGPIO_R = SYSCTL_PRGPIO_R0; // GPIO can be accessed by software
    //SYSCTL_SRSSI_R = SYSCTL_SRSSI_R0; //The SRSSI register provides software the capability to reset the available SSI modules
    //SYSCTL_PRSSI_R = SYSCTL_PRSSI_R0; //The PRSSI register indicates whether the SSI modules are ready to be accessed by software following a change in status of power, Run mode clocking, or reset

    dummy = SYSCTL_RCGC2_R; // Time delay

    // Setup of SSI format
    SSI0_CR0_R =
    SSI_CR0_FRF_MOTO | SSI_CR0_DSS_16 | SSI_CR0_SPH/* | SSI_CR0_SPO*/; // Setting up Freescale SPI
    SSI0_CR1_R |= SSI_CR1_EOT;
    SSI0_CC_R = 0;
    SSI0_CPSR_R = 1;

    // Setup of GPIO ports
    GPIO_PORTA_DEN_R |= 0x3C; //Digital enable pins 2-5 of Port A
    GPIO_PORTA_AFSEL_R |= 0x3C; // enable alternate function
    //GPIO_PORTA_AMSEL_R |= 0x3C; // enable analog functionality
    GPIO_PORTA_PCTL_R |= GPIO_PCTL_PA5_SSI0TX | GPIO_PCTL_PA4_SSI0RX
            | GPIO_PCTL_PA3_SSI0FSS | GPIO_PCTL_PA2_SSI0CLK; //SSI Port A

    // End of transmission interrupt
    SSI0_IM_R |= SSI_IM_TXIM;

    // NVIC Enable interrupt 7 (SSI0)
    NVIC_EN0_R |= (1 << 7);
    // Set highest priority (lowest numberical value) allowed by FreeRTOS
    NVIC_PRI1_R |= (101 << 29);

    // Setup rx and tx queues
    spi_rx_queue = xQueueCreate(SPI_QUEUE_LENGTH, SPI_ITEM_SIZE);
    configASSERT(spi_rx_queue);

    spi_tx_queue = xQueueCreate(SPI_QUEUE_LENGTH, SPI_ITEM_SIZE);
    configASSERT(spi_tx_queue);

    // Fill transmit queues with 0
    INT16U value = 0;
    xQueueSendToBack(spi_tx_queue, &value, 0);
}
/********************************************** 
 * Input: Data
 * Output: N/A
 * Function: spi_write
 ***********************************************/
void spi_write(INT16U data)
{
    SSI0_CR1_R |= SSI_CR1_SSE; // Enable SPI
    while (!(SSI0_SR_R & SSI_SR_TNF))
    { // Wait for ready
    }
    SSI0_DR_R = data; // Send data
    SSI0_CR1_R |= SSI_CR1_SSE; // Enable SPI
}

void spi_write_task(void * pvParameters)
{
    // Periodic tasks definitions
//    const TickType_t xPeriod = pdMS_TO_TICKS(PID_SAMPLE_TIME * 1000.0f);
//    TickType_t xLastWakeTime = xTaskGetTickCount();
//    TickType_t xLastWakeTime_prev;

    while (1)
    {

        // Write
//        taskENTER_CRITICAL(); // Has to happen at exactly the same time
        INT16U msg;
//        xLastWakeTime_prev = xLastWakeTime; // To counteract queue effect
        xQueueReceive(spi_tx_queue, &msg, 0);
//        xLastWakeTime = xLastWakeTime_prev;
        spi_write(msg);
//        taskEXIT_CRITICAL();
//
//        // Wait
//        vTaskDelayUntil(&xLastWakeTime, xPeriod);
    }
}

void spi_read_isr()
{
    if (!(SSI0_SR_R & SSI_SR_BSY))
    { // Check for end of transmission with not busy
      // Check SPI recieved
        configASSERT(SSI0_SR_R & SSI_SR_RNE);

        // Store data
        INT16U data = SSI0_DR_R;
        xQueueSendToBackFromISR(spi_rx_queue, &data, NULL);
    }
}

INT16S spi_transmission(INT16S data, INT8U data_id, INT8U next_id)
{
    INT16U transmission;
    while (1)
    {
        transmission = data << 8;
        transmission |= (data_id & 0x03) << 6;
        transmission |= (next_id & 0x03) << 4;

        transmission |= redundant_bits(transmission);

        xQueueSendToBack(spi_tx_queue, &transmission, portMAX_DELAY);
    }
}

INT8U redundant_bits(INT16U transmission)
{
    INT8U ret = 0;
    INT8U p = 0;
    for (INT8U i = 9; i < 16; i++)
    {
        p ^= (transmission << i) & 0x0001;
    }
    ret |= p << 3;

    p = 0;
    for (INT8U i = 3; i < 9; i++)
    {
        p ^= (transmission << i) & 0x0001;
    }
    ret |= p << 2;

    ret |= (~p & 0x01);

    return ret;
}

/***************** End of module **************/
