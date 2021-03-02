// File:    main.c
// Author:  Lei Kuang
// Date:    11th February 2021
// @ Imperial College London

/* Includes ------------------------------------------------------------------*/
#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"

#include "L_gpio.h"
#include "L_dac.h"

/* Private function prototypes -----------------------------------------------*/
void Error_Handler  ();

void Rec_cmd        ();
void Exe_cmd        ();
void Print_Error    ();

/* Private variables ---------------------------------------------------------*/
uint16_t    func = 0x00;
uint16_t    par1 = 0x00;
uint16_t    par2 = 0x00;

int main()
{
    init_platform();

    // Peripherals
    L_GPIO_Init();
    L_DAC_Init();
    Delay(10);

    while(1)
    {
        Rec_cmd();
        Exe_cmd();
    }

    cleanup_platform();
    return 0;
}

/* Private  function implementations -----------------------------------------*/
void Exe_cmd()
{
    uint32_t temp_u;

    switch(func)
    {
        // ----------------------------------------------------------------
        // - "get_version"
        case 0x0000:    xil_printf("M: Firmware for SuperMario\n");
                        xil_printf("   Ver:   17th February 2021\n$%d#", 20200823);
                        break;

        // ----------------------------------------------------------------
        // - "gpio_set"
        case 0x2100:    if(par1==0)
                        {
                            xil_printf("M: Cha must be either 1 or 2\n$#");
                        }
                        else
                        {
                            L_GPIO_Write(par1, par2);
                            xil_printf("M: GPIO Set\n");
                            xil_printf("   Cha:   %d",   par1);
                            xil_printf("   Val:   0x%X\n$#", par2);
                        }
                        break;

        // - "power_en"
        case 0x1100:    xil_printf("M: Power %s\n", par1 ? "ON" : "OFF");
                        if(par1==0) L_DAC_Reset();
                        L_PWR_En(par1);
                        if(par1==1) L_DAC_Reset();
                        xil_printf("$#");
                        break;

        // ----------------------------------------------------------------
        // - "dac_reset"
        case 0x0200:    L_DAC_Reset();
                        xil_printf("M: DAC Reset\n$#");
                        break;

        // - "dac_vref_cmd"
        case 0x2200:    temp_u = (par1<<16) | par2;
                        L_DAC_VREF_Cmd(temp_u);
                        xil_printf("M: DAC Vref Cmd\n");
                        xil_printf("   MOSI:  0x%X\n$#", temp_u);
                        break;

        // - "dac_vpn_cmd"
        case 0x1200:    L_DAC_VPN_Cmd(par1);
                        xil_printf("M: DAC Vpn Cmd\n");
                        xil_printf("   MOSI:  0x%X\n$#", par1);
                        break;

        // - "dac_vpi_cmd"
        case 0x1201:    L_DAC_VPN_Cmd(par1);
                        xil_printf("M: DAC Vpi Cmd\n");
                        xil_printf("   MOSI:  0x%X\n$#", par1);
                        break;

        // - "dac_vref_set"
        case 0x1202:    L_DAC_VREF_Set(par1);
                        xil_printf("M: Vref\n");
                        xil_printf("   val:   0x%X\n",  par1);
                            printf("   vol:   %.2fv\n", par1*10/4096.0-5);
                        xil_printf("$#");
                        break;

        // - "dac_vp_set"
        case 0x1203:    L_DAC_VP_Set(par1);
                        xil_printf("M: Vref_p\n");
                        xil_printf("   val:   0x%X\n",  par1);
                            printf("   vol:   %.2fv\n", par1*2.048/4096);
                        xil_printf("$#");
                        break;

        // - "dac_vn_set"
        case 0x1204:    L_DAC_VN_Set(par1);
                        xil_printf("M: Vref_n\n");
                        xil_printf("   val:   0x%X\n",  par1);
                            printf("   vol:   %.2fv\n", par1*2.048/4096);
                        xil_printf("$#");
                        break;

        // - "dac_vb_set"
        case 0x1205:    L_DAC_VB_Set(par1);
                        xil_printf("M: Vbia\n");
                        xil_printf("   val:   0x%X\n",  par1);
                            printf("   vol:   %.2fv\n", par1*2.048/4096);
                        xil_printf("$#");
                        break;

        // - "dac_vi_set"
        case 0x1206:    L_DAC_VI_Set(par1);
                        xil_printf("M: Vint\n");
                        xil_printf("   val:   0x%X\n",  par1);
                            printf("   vol:   %.2fv\n", par1*2.048/4096);
                        xil_printf("$#");
                        break;

        default:        xil_printf("Function not implemented\n$#");
    }
}

void Rec_cmd()
{
    unsigned char buffer[6];

    for(int i=0; i<6; i++)
        buffer[i] = inbyte();

    func   = buffer[0] << 8 | buffer[1];
    par1   = buffer[2] << 8 | buffer[3];
    par2   = buffer[4] << 8 | buffer[5];
}

void Print_Error()
{
    xil_printf("M: Error!\n$#");
}

void Error_Handler()
{
    uint8_t mask = 0;
    while(1)
    {
        Delay(1);

        L_GPIO_Write(1, mask);
        mask = ~mask;
    }
}
