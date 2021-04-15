/***************** Include files **************/
#include <stdint.h>
#include "tm4c123gh6pm.h"
#include "emp_type.h"
#include "spi.h"
/**
 * main.c
 */
int main(void)
{
    /* PWM TEST */
    int dummy;

    SYSCTL_DC2_R = SYSCTL_DC2_TIMER0; // Enable timer capability
    SYSCTL_RCGC1_R = SYSCTL_RCGC1_TIMER0; // Enable timer registers
    SYSCTL_RCGC2_R = SYSCTL_RCGC2_GPIOF; // Enable GPIO port F

    dummy = SYSCTL_RCGC2_R; // Time delay

    GPIO_PORTF_DIR_R = 0x0E; // RGB Output, others input
    GPIO_PORTF_DEN_R = 0x1E; // Enable pins
    GPIO_PORTF_PUR_R = 0x10; // Pull-up input

    GPIO_PORTF_IS_R = 0x00; // Edge triggered
    GPIO_PORTF_IBE_R = 0x00; // Single edge
    GPIO_PORTF_IEV_R = 0x00; // Falling edge

    //GPIO_PORTF_IM_R = 0x10; // Interrupt mask

    GPIO_PORTF_DIR_R = 0x01; // RGB Output, others input
    GPIO_PORTF_DEN_R = 0x01; // Enable pins
    GPIO_PORTF_AFSEL_R = 0x01;
    GPIO_PORTF_PCTL_R = GPIO_PCTL_PF0_T0CCP0;

    TIMER0_CFG_R = TIMER_CFG_16_BIT;
    TIMER0_TAMR_R |= TIMER_TAMR_TAAMS | TIMER_TAMR_TAMR_PERIOD; // Timer 0, One-shot counting up
    //TIMER0_TAMR_R &= ~(TIMER_TAMR_TACMR);

    TIMER0_CTL_R = TIMER_CTL_TAEN; // Clear timer config
    TIMER0_TAILR_R = 0xFF00;
    /* END PWM TEST */

    //while (1) {

    //}

    spi_init();
    while(1) {
        spi_write(0b01010101);

        while(!(SSI0_SR_R & (1<<1))){

        }
        for (int i = 0; i < 10; i++) {
            for (int x = 0; x < 50; x++) {
                while(!(SSI0_SR_R & (1<<1))){

                        }
            }
        }
        //SSI0_CR1_R &= ~SSI_CR1_SSE;
    }
    return(0);
}
