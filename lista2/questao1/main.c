
#include "soc_AM335x.h"
#include "beaglebone.h"
#include "gpio_v2.h"
#include "hw_types.h"
#include "watchdog.h"
#include "abel.h"


#define SECS 250000 

int main() {
    _Bool started = 0;
    int lstate = 0;
    int cnt = 0;

    init_leds();
    init_btns();

    while (1) {
        _Bool a = read_button();

	if (a && started) {
	    started = 0;
	} else if (a) {
	    started = 1;
        }

	if (!started && lstate != 0) {
            GPIOPinWrite(LED_GPIO_BASE, LED0_PIN, GPIO_PIN_LOW);
            lstate = 0;
        }

	if (!started) continue;

	cnt++;
 
        if (cnt < SECS) continue;
	 
	cnt = 0;
   
        if (lstate == 0) {
            GPIOPinWrite(LED_GPIO_BASE, LED0_PIN, GPIO_PIN_HIGH);
	    lstate = 1;
        } else {
            GPIOPinWrite(LED_GPIO_BASE, LED0_PIN, GPIO_PIN_LOW);
	    lstate = 0;
	}
    }
busy_wait(1);
} 

