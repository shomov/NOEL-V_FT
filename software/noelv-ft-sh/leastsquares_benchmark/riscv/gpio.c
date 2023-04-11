/*
	Copyright  2023 Mikhail Shomov

*/

#include "gpio.h"
#include <stdarg.h>


static volatile struct gpio_regs *gpio = 0xfc083000;

uint32_t gpio_out = 0;

void set_gpio (uint32_t data){
    gpio->direction = 0xFFFFFFFF;
    gpio_out = gpio_out | data;
    gpio->d_out = gpio_out;
}

void reset_gpio (){
    gpio->direction = 1;
    gpio->d_out = 0;
}

