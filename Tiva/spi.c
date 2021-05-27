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

INT8U expected_id = 0;

INT16U transmissions = 0;
INT16U failed = 0;
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
    NVIC_PRI1_R |= (0b101 << 29);

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

    while (1)
    {
        // Write
        INT16U msg;
        xQueueReceive(spi_tx_queue, &msg, portMAX_DELAY);
        spi_write(msg);
    }
}

void spi_read_isr()
{
    BaseType_t xHigherPriorityTaskWoken = pdFALSE;

    while (SSI0_SR_R & SSI_SR_RNE)
    { // Check for end of transmission with not busy
      // Check SPI recieved
        // Store data
        INT16U data = SSI0_DR_R;
        xQueueSendToBackFromISR(spi_rx_queue, &data,  &xHigherPriorityTaskWoken);
        portYIELD_FROM_ISR(xHigherPriorityTaskWoken);
    }
}

INT16S spi_transmission(INT8U data_rx_id, INT16S tx_data, INT8U data_tx_id)
{
    INT16U receive;

    INT16S rx_data;

    BOOLEAN redundant_correct;
    BOOLEAN tx_correct;
    while (1)
    {
        receive = spi_transmit(tx_data, data_tx_id, data_rx_id); // Next id, same as receive to prevent looping

        if (((receive >> 5) & 0x0003) == data_rx_id)
        { // Correct data recieved
            tx_correct = ((receive >> 3) & 0x0003) == 0b10;

            redundant_correct = redundant_bits(receive)
                    == (((INT8U) receive) & 0x07);

            if (tx_correct && redundant_correct)
            {
                rx_data = receive >> 7;
                if (rx_data & 0x100)
                { // Value is negative
                    rx_data |= 0xFE00;
                }

                break;
            }
            failed++;
        }
    }

    return rx_data;
}

INT16U spi_transmit(INT16S tx_data, INT8U data_tx_id, INT8U next_id)
{
    transmissions++;

    INT16U transmit;

    transmit = tx_data << 7;
    transmit |= (data_tx_id & 0x03) << 5;
    transmit |= (next_id & 0x03) << 3;

    transmit |= redundant_bits(transmit);

    xQueueSendToBack(spi_tx_queue, &transmit, portMAX_DELAY);

    INT16U ret;
    xQueueReceive(spi_rx_queue, &ret, portMAX_DELAY);
    return ret;
}

INT8U redundant_bits(INT16U transmission)
{
    INT8U ret = 0;
    for (INT8U i = 3; i < 16; i++)
    {
        ret += (transmission >> i) & 0x0001;
    }
    ret = ret & 0x0007;

    return ret;
}

/***************** End of module **************/
