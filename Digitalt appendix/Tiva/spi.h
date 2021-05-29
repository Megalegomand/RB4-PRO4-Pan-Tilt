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
#include <stdint.h>
#include "tm4c123gh6pm.h"
#include "stdint.h"
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "pid.h"
/***************** Defines ********************/ 
#ifndef SPI_H_
#define SPI_H_

#define SPI_QUEUE_LENGTH 1
#define SPI_ITEM_SIZE    sizeof(INT16U)

#define SPI_PAN 0b00
#define SPI_TILT 0b11
/***************** Variables ******************/ 
extern QueueHandle_t spi_rx_queue;
extern QueueHandle_t spi_tx_queue;
/***************** Functions ******************/

void spi_write(INT16U data);
/**********************************************
 * Input: Data
 * Output: N/A
 * Function: write data to SPI
 ***********************************************/
void spi_init();
/**********************************************
 * Input: N/A
 * Output: N/A
 * Function: Initialize SPI
 ***********************************************/
void spi_write_task(void * pvParameters);
/**********************************************
 * Input: pvParameters
 * Output: N/A
 * Function: FreeRTOS spi_write task
 ***********************************************/
void spi_read_isr();
/**********************************************
 * Input: N/A
 * Output: N/A
 * Function: SPI read interrupt service routine
 ***********************************************/

INT16S spi_transmission(INT8U data_rx_id, INT16S data, INT8U data_tx_id);
/**********************************************
 * Input: Recieved data ID, Transmission, Transmission data ID
 * Output: Recieved data
 * Function: Checks package to ensure data consistency
 ***********************************************/

INT16U spi_transmit(INT16S tx_data, INT8U data_tx_id, INT8U next_id);
/**********************************************
 * Input: Transmission data, Transmission ID, Next ID
 * Output: Data frame
 * Function: spi_write
 ***********************************************/

INT8U redundant_bits(INT16U transmission);
/********************************************** 
 * Input: Transmission data
 * Output: Redundant bits
 * Function: find redundant bits
 ***********************************************/

/***************** End of module **************/
#endif /* SPI_H_ */

