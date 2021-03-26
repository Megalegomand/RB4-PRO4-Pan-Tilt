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
    spi_init();
    while(1) {
        spi_write(0b11101000);
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
