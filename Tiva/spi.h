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
/***************** Defines ********************/ 
#ifndef SPI_H_
#define SPI_H_
/***************** Variables ******************/ 
/***************** Functions ******************/
void spi_read(); // Read from the SPI register
void spi_write(); // Write to the SPI register
void spi_init(); // Initialize shared clock
void spi_sel(); // Select slave
/********************************************** 
* Input: 
* Output: 
* Function: 
***********************************************/ 

#endif /* SPI_H_ */
/***************** End of module **************/
