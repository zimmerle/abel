
#include <string.h>
#include <stdlib.h>

#include "rpi-gpio.h"

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
    int loop = 0;

    RPI_SetGpioInput(RPI_GPIO4);
    RPI_SetGpioOutput(RPI_GPIO20);
    RPI_SetGpioLo(RPI_GPIO20);

    while (1) {
        rpi_gpio_value_t value = RPI_GetGpioValue(RPI_GPIO4);
        if (value == 0) {
            loop = 1;
        }

        if (loop) {
            RPI_SetGpioHi(RPI_GPIO20);
            wait_ms(2000000);
            RPI_SetGpioLo(RPI_GPIO20);
            wait_ms(2000000);
        }
    }
}
