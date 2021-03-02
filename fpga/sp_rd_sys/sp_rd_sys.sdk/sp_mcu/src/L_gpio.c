// File:    L_gpio.c
// Author:  Lei Kuang
// Date:    11th February 2021
// @ Imperial College London

#include "L_gpio.h"

XGpio Gpio;

void L_GPIO_Init()
{
    // GPIO for chip enable
    XGpio_Initialize(&Gpio, XPAR_GPIO_0_DEVICE_ID);
    XGpio_SetDataDirection(&Gpio, 1, 0x00);
    XGpio_SetDataDirection(&Gpio, 2, 0x00);

    L_GPIO_Write(1, 0x00);
    L_GPIO_Write(2, 0x00);
}

void L_GPIO_Write(uint8_t cha, uint8_t val)
{
    XGpio_DiscreteWrite(&Gpio, cha, val);
}

void L_PWR_En(uint8_t en)
{
    uint8_t seq = en ? 0x00 : 0x3F;

    for(int i=0; i<6; i++)
    {
        seq = en ? ((seq<<1) | 0x1) : (seq>>1);
        XGpio_DiscreteWrite(&Gpio, 1, seq);
        xil_printf("%s\n", en ? "ON" : "OFF");
        Delay(5);
    }
}

void Delay(uint32_t cnt)
{
    for(int loop=1; loop<=cnt; loop++)
    {
        for(int i=0; i<1000000; i++)
            ;
    }
}

/*uint8_t Get_GPIO()
{
	return XGpio_DiscreteRead(&Gpio, 1) & 0xFF;
}

void Set_GPIO(uint8_t mask)
{
	XGpio_DiscreteWrite(&Gpio, 1, mask);
}

uint8_t Get_GPIO_Bit(uint8_t pos)
{
	return (Get_GPIO() >> pos) & 0x1;
}

void Set_GPIO_Bit(uint8_t pos, uint8_t val)
{
	val = val & 0x1;
	uint32_t mask = 1 << pos;
	uint8_t  data = Get_GPIO();
	data = (data & (~mask)) | (val << pos);
	Set_GPIO(data);
}

void Set_Delay (uint8_t val)
{
	XGpio_DiscreteWrite(&Gpio, 2, val&0xF);
}

uint8_t Get_Delay()
{
    return XGpio_DiscreteRead(&Gpio, 2) & 0xF;
}*/
