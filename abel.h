
#include "soc_AM335x.h"
#include "beaglebone.h"
#include "gpio_v2.h"
#include "hw_types.h"      // For HWREG(...) macro
#include "hw_cm_per.h"
#include "watchdog.h"
#include "uart_irda_cir.h"
#include "consoleUtils.h"
#include <stdint.h>

#define LED_GPIO_BASE           (SOC_GPIO_1_REGS)
#define LED0_PIN (21)
#define LED1_PIN (22)
#define LED2_PIN (23)
#define LED3_PIN (24)

#define LED_MASK ((1<<LED0_PIN) | (1<<LED1_PIN) | (1<<LED2_PIN) | (1<<LED3_PIN))


#define DELAY_TIME 0x4000000 
#define BUTTON_GPIO_BASE     (SOC_GPIO_2_REGS)
#define BUTTON_PIN           (8)

static void init_leds(void) {
    /* Enabling functional clocks for GPIO1 instance. */
    GPIO1ModuleClkConfig();

    /* Selecting GPIO1[23] pin for use. */
    //GPIO1Pin23PinMuxSetup();

    /* Enabling the GPIO module. */
    GPIOModuleEnable(LED_GPIO_BASE);

    /* Resetting the GPIO module. */
    GPIOModuleReset(LED_GPIO_BASE);

    /* Setting the GPIO pin as an output pin. */
    GPIODirModeSet(LED_GPIO_BASE, LED0_PIN, GPIO_DIR_OUTPUT);
    GPIODirModeSet(LED_GPIO_BASE, LED1_PIN, GPIO_DIR_OUTPUT);
    GPIODirModeSet(LED_GPIO_BASE, LED2_PIN, GPIO_DIR_OUTPUT);
    GPIODirModeSet(LED_GPIO_BASE, LED3_PIN, GPIO_DIR_OUTPUT);
}


static _Bool read_button(void) {
	return GPIOPinRead(BUTTON_GPIO_BASE, BUTTON_PIN) == 1;
}


void GPIO2ModuleClkConfig(void) {
    /* Writing to MODULEMODE field of CM_PER_GPIO2_CLKCTRL register. */
    HWREG(SOC_CM_PER_REGS + CM_PER_GPIO2_CLKCTRL) |=
	CM_PER_GPIO2_CLKCTRL_MODULEMODE_ENABLE;
 
    /* Waiting for MODULEMODE field to reflect the written value. */
    while (CM_PER_GPIO2_CLKCTRL_MODULEMODE_ENABLE != (HWREG(SOC_CM_PER_REGS + CM_PER_GPIO2_CLKCTRL) & CM_PER_GPIO2_CLKCTRL_MODULEMODE));
 
    /*
    ** Writing to OPTFCLKEN_GPIO_2_GDBCLK bit in CM_PER_GPIO2_CLKCTRL
    ** register.
    */
    HWREG(SOC_CM_PER_REGS + CM_PER_GPIO2_CLKCTRL) |=
		CM_PER_GPIO2_CLKCTRL_OPTFCLKEN_GPIO_2_GDBCLK;
 
    /*
    ** Waiting for OPTFCLKEN_GPIO_2_GDBCLK bit to reflect the desired
    ** value.
    */
    while (CM_PER_GPIO2_CLKCTRL_OPTFCLKEN_GPIO_2_GDBCLK != (HWREG(SOC_CM_PER_REGS + CM_PER_GPIO2_CLKCTRL) & CM_PER_GPIO2_CLKCTRL_OPTFCLKEN_GPIO_2_GDBCLK));
 
    /*
    ** Waiting for IDLEST field in CM_PER_GPIO2_CLKCTRL register to attain the
    ** desired value.
    */
    while ((CM_PER_GPIO2_CLKCTRL_IDLEST_FUNC << CM_PER_GPIO2_CLKCTRL_IDLEST_SHIFT) != (HWREG(SOC_CM_PER_REGS + CM_PER_GPIO2_CLKCTRL) &     CM_PER_GPIO2_CLKCTRL_IDLEST));
 
    /*
    ** Waiting for CLKACTIVITY_GPIO_2_GDBCLK bit in CM_PER_L4LS_CLKSTCTRL
    ** register to attain desired value.
    */
    while (CM_PER_L4LS_CLKSTCTRL_CLKACTIVITY_GPIO_2_GDBCLK != (HWREG(SOC_CM_PER_REGS + CM_PER_L4LS_CLKSTCTRL) & CM_PER_L4LS_CLKSTCTRL_CLKACTIVITY_GPIO_2_GDBCLK));
}


static void init_btns(void) {
    /* Enabling functional clocks for GPIO2 instance. */
    GPIO2ModuleClkConfig();

    /* Enabling the GPIO module. */
    GPIOModuleEnable(BUTTON_GPIO_BASE);

    /* Resetting the GPIO module. */
    GPIOModuleReset(BUTTON_GPIO_BASE);

    /* Setting the GPIO pin as an input pin. */
    GPIODirModeSet(BUTTON_GPIO_BASE, BUTTON_PIN, GPIO_DIR_INPUT);
}


static void busy_wait(volatile unsigned int count)
{
    while (count--) { /* nop */ };
}
