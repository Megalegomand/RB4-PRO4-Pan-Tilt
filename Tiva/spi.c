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
/**********************************************
Functions: See module specification (h.file)
***********************************************/
void spi_read(){

}

void spi_init(){
    SYSCTL_RCGC2_R = 0x01;
    GPIO_PORTA_PCTL_R = GPIO_PCTL_PA5_SSI0TX | GPIO_PCTL_PA4_SSI0RX | GPIO_PCTL_PA3_SSI0FSS | GPIO_PCTL_PA2_SSI0CLK;
    SSI0_CR0_R = SSI_CR0_FRF_MOTO | SSI_CR0_DSS_8 | SSI_CR0_SPH | SSI_CR0_SPO;
}
/********************************************** 
* Input: 
* Output: 
* Function: 
***********************************************/ 

/***************** End of module **************/
