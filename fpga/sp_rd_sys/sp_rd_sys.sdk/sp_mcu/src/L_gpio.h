// File:    L_gpio.h
// Author:  Lei Kuang
// Date:    11th February 2021
// @ Imperial College London

#include "xparameters.h"
#include "xgpio.h"

void    L_GPIO_Init     (void);
void    L_GPIO_Write    (uint8_t, uint8_t);

void    L_PWR_En        (uint8_t);

void    Delay           (uint32_t);
