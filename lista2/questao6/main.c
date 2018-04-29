
#include <string.h>
#include <stdlib.h>
#include <stdio.h>

#include "rpi-gpio.h"
#include "rpi-aux.h"

#ifdef RPI2
	#define RPI_SYSTIMER_BASE       0x3f003000
#else
	#define RPI_SYSTIMER_BASE       0x20003000
#endif


typedef struct {
    volatile uint32_t control_status;
    volatile uint32_t counter_lo;
    volatile uint32_t counter_hi;
    volatile uint32_t compare0;
    volatile uint32_t compare1;
    volatile uint32_t compare2;
    volatile uint32_t compare3;
} rpi_sys_timer_t;


static rpi_sys_timer_t* rpiSystemTimer = (rpi_sys_timer_t*)RPI_SYSTIMER_BASE;

void wait_ms (uint32_t us) {
    volatile uint32_t ts = rpiSystemTimer->counter_lo;

    while ((rpiSystemTimer->counter_lo - ts) < us) { }
}


void kernel_main( unsigned int r0, unsigned int r1, unsigned int atags )
{
    RPI_SetGpioInput(RPI_GPIO4);

    RPI_AuxMiniUartInit( 115200, 8 );

    rpi_gpio_value_t old_value = 5;

    while (1) {
        rpi_gpio_value_t value = RPI_GetGpioValue(RPI_GPIO4);
        if (value != old_value) {
            if (value == 0) {
                printf("apertado\n");
            } else {
                printf("livre\n");
            }
            old_value = value;
        }
    }
}
