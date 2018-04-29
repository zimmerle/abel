
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

#define LEDS 8

rpi_gpio_pin_t leds[LEDS] = { RPI_GPIO20, RPI_GPIO16, RPI_GPIO12,  RPI_GPIO7, RPI_GPIO8, RPI_GPIO25, RPI_GPIO24, RPI_GPIO23 };

void kernel_main( unsigned int r0, unsigned int r1, unsigned int atags )
{
    int loop = 0;
    int i;
    int z = 0;


    RPI_SetGpioInput(RPI_GPIO4);

    for (i = 0; i < LEDS; i++) {
        RPI_SetGpioOutput(leds[i]);
    }


    while (1) {
        rpi_gpio_value_t value = RPI_GetGpioValue(RPI_GPIO4);
        if (value == 0) {
            loop = 1;
        }

        if (loop) {
            for (i = 0; i < LEDS; i++) {
                if (z <= i) {
                    RPI_SetGpioLo(leds[i]);
                } else {
                    RPI_SetGpioHi(leds[i]);
                }
            }
            if (z % 2 == 0) {
                // Buzzer
            }
            if (z == 7) {
                z = 0;
            } else {
                z++;
            }
            wait_ms(1000000);
        }
    }
}
