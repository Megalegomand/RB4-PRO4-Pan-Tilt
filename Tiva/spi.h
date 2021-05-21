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
#define SPI_PAN 0b11
/***************** Variables ******************/ 
extern QueueHandle_t spi_rx_queue;
extern QueueHandle_t spi_tx_queue;
/***************** Functions ******************/
char spi_read(); // Read from the SPI register
void spi_write(INT16U data); // Write to the SPI register
void spi_init(); // Initialize shared clock

void spi_write_task(void * pvParameters);
void spi_read_isr();

INT16S spi_transmission(INT16S data, INT8U data_id, INT8U next_id);
INT8U redundant_bits(INT16U transmission);

/********************************************** 
* Input: 
* Output: 
* Function: 
***********************************************/ 
/***************** End of module **************/
#endif /* SPI_H_ */

