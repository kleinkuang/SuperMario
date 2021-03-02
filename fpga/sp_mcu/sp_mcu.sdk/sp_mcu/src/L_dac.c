// File:    L_dac.c
// Author:  Lei Kuang
// Date:    11th February 2021
// @ Imperial College London

#include "L_dac.h"

XGpio VREF_GPIO;
XGpio VPN_GPIO;
XGpio VBI_GPIO;

void L_DAC_Init()
{
    // SPI for DAC7562
    XGpio_Initialize(&VREF_GPIO, XPAR_GPIO_1_DEVICE_ID);
    XGpio_SetDataDirection(&VREF_GPIO, 1, 0x00);
    XGpio_SetDataDirection(&VREF_GPIO, 2, 0x01);
    XGpio_DiscreteWrite(&VREF_GPIO, 1, 0x00);

    // SPI for MCP4822
    XGpio_Initialize(&VPN_GPIO, XPAR_GPIO_2_DEVICE_ID);
    XGpio_SetDataDirection(&VPN_GPIO, 1, 0x00);
    XGpio_SetDataDirection(&VPN_GPIO, 2, 0x01);
    XGpio_DiscreteWrite(&VPN_GPIO, 1, 0x00);

    // SPI for MCP4822
    XGpio_Initialize(&VBI_GPIO, XPAR_GPIO_3_DEVICE_ID);
    XGpio_SetDataDirection(&VBI_GPIO, 1, 0x00);
    XGpio_SetDataDirection(&VBI_GPIO, 2, 0x01);
    XGpio_DiscreteWrite(&VBI_GPIO, 1, 0x00);
}

void L_DAC_Reset()
{
    // DAC7562
    // - https://www.ti.com/lit/ds/symlink/dac7562.pdf?&ts=1589492935801
    L_DAC_VREF_Cmd(0x280001);   // dac_vref_cmd 0b00101000 0x0001 // Reset all registers and update all DACs (Power-on-reset update)
    L_DAC_VREF_Cmd(0x380001);   // dac_vref_cmd 0b00111000 0x0001 // Enable internal reference and reset DACs to gain = 2
    L_DAC_VREF_Cmd(0x300003);   // dac_vref_cmd 0b00110000 0x0003 // LDAC pin inactive for DAC-B and DAC-A
    L_DAC_VREF_Cmd(0x020000);   // dac_vref_cmd 0b00000010 0x0000 // Gain: DAC-B gain = 2, DAC-A gain = 2 (default with internal VREF)
    L_DAC_VREF_Cmd(0x200001);   // dac_vref_cmd 0b00100000 0x0001 // Power up DAC-A
    L_DAC_VREF_Cmd(0x187FF0);   // dac_vref_cmd 0b00011000 0x7FF0 // Write to DAC-A input register and update DAC-A
    // MCP4822
    // - https://ww1.microchip.com/downloads/en/DeviceDoc/20002249B.pdf
    L_DAC_VP_Set(0);
    L_DAC_VN_Set(0);
    L_DAC_VB_Set(0);
    L_DAC_VI_Set(0);
}

// -------------------------------------------------------------------------------------------------------------------------------
// DAC7562 For Reference Electrode
// -------------------------------------------------------------------------------------------------------------------------------
void L_DAC_VREF_Cmd(uint32_t cmd)
{
    cmd = cmd & 0xFFFFFF;
    // Cmd
    XGpio_DiscreteWrite(&VREF_GPIO, 1, (cmd<<1) | 0x00);
    // Enable
    XGpio_DiscreteWrite(&VREF_GPIO, 1, (cmd<<1) | 0x01);
    // Wait
    while(~XGpio_DiscreteRead(&VREF_GPIO, 2)&0x1)
        ;
    // Clear
    XGpio_DiscreteWrite(&VREF_GPIO, 1,0x00);
}

void L_DAC_VREF_Set(uint16_t val)
{
    val = val << 4;
    L_DAC_VREF_Cmd(0x180000 | val);
}

// -------------------------------------------------------------------------------------------------------------------------------
// MCP4822 For Vref_p and Vref_n
// -------------------------------------------------------------------------------------------------------------------------------
void L_DAC_VPN_Cmd(uint16_t cmd)
{
    // Cmd
    XGpio_DiscreteWrite(&VPN_GPIO, 1, (cmd<<1) | 0x00);
    // Enable
    XGpio_DiscreteWrite(&VPN_GPIO, 1, (cmd<<1) | 0x01);
    // Wait
    while(~XGpio_DiscreteRead(&VPN_GPIO, 2)&0x1)
        ;
    // Clear
    XGpio_DiscreteWrite(&VPN_GPIO, 1,0x00);
}

void L_DAC_VP_Set(uint16_t val)
{
    val = val & 0xFFF;
    L_DAC_VPN_Cmd((0b0011<<12) | val);
}

void L_DAC_VN_Set(uint16_t val)
{
    val = val & 0xFFF;
    L_DAC_VPN_Cmd((0b1011<<12) | val);
}

// -------------------------------------------------------------------------------------------------------------------------------
// MCP4822 For Bias_Pixel and Vref_Integrate
// -------------------------------------------------------------------------------------------------------------------------------
void L_DAC_VBI_Cmd(uint16_t cmd)
{
    // Cmd
    XGpio_DiscreteWrite(&VBI_GPIO, 1, (cmd<<1) | 0x00);
    // Enable
    XGpio_DiscreteWrite(&VBI_GPIO, 1, (cmd<<1) | 0x01);
    // Wait
    while(~XGpio_DiscreteRead(&VBI_GPIO, 2)&0x1)
        ;
    // Clear
    XGpio_DiscreteWrite(&VBI_GPIO, 1,0x00);
}

void L_DAC_VB_Set(uint16_t val)
{
    val = val & 0xFFF;
    L_DAC_VBI_Cmd((0b0011<<12) | val);
}

void L_DAC_VI_Set(uint16_t val)
{
    val = val & 0xFFF;
    L_DAC_VBI_Cmd((0b1011<<12) | val);
}




