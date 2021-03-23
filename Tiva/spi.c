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

/**********************************************
* Input:
* Output:
* Function:
***********************************************/
void spi_init(){
    // Setup of system control
    SYSCTL_RCGCGPIO_R = SYSCTL_RCGCGPIO_R0; //Enable the clock to the appropiate GPIO model
    SYSCTL_RCGCSSI_R = SYSCTL_RCGCSSI_R0; //The RCGCSSI register provides software the capability to enable and disable the SSI modules in Run mode.
    //SYSCTL_PRGPIO_R = SYSCTL_PRGPIO_R0; // GPIO can be accessed by software
    //SYSCTL_SRSSI_R = SYSCTL_SRSSI_R0; //The SRSSI register provides software the capability to reset the available SSI modules
    //SYSCTL_PRSSI_R = SYSCTL_PRSSI_R0; //The PRSSI register indicates whether the SSI modules are ready to be accessed by software following a change in status of power, Run mode clocking, or reset

    // Setup of SSI format
    SSI0_CR0_R = SSI_CR0_FRF_MOTO | SSI_CR0_DSS_8 | SSI_CR0_SPH /*| SSI_CR0_SPO*/; // Setting up Freescale SPI
    SSI0_CC_R=0;
    SSI0_CPSR_R=1;

    // Setup of GPIO ports
    GPIO_PORTA_DEN_R |= 0x3C; //Digital enable pins 2-5 of Port A
    GPIO_PORTA_AFSEL_R |= 0x3C; // enable alternate function
    //GPIO_PORTA_AMSEL_R |= 0x3C; // enable analog functionality
    GPIO_PORTA_PCTL_R = GPIO_PCTL_PA5_SSI0TX | GPIO_PCTL_PA4_SSI0RX | GPIO_PCTL_PA3_SSI0FSS | GPIO_PCTL_PA2_SSI0CLK; //SSI Port A


}
/********************************************** 
* Input: Data
* Output: N/A
* Function: spi_write
***********************************************/ 
void spi_write(char data){

    while((SSI0_SR_R & (1<<1))){
        SSI0_DR_R = data;
    }

}
/**********************************************
* Input: N/A
* Output: data
* Function: spi_read
***********************************************/
char spi_read(){
    char data_in;
    while((SSI0_SR_R & (2<<1))){
       data_in=SSI0_DR_R;
    }
    return data_in;
}


/***************** End of module **************/
