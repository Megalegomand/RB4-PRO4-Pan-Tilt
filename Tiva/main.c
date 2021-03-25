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
    }
    return(0);
}
