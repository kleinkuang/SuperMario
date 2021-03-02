// File:    L_dac.h
// Author:  Lei Kuang
// Date:    11th February 2021
// @ Imperial College London

#include "xparameters.h"
#include "xgpio.h"

void    L_DAC_Init          (void);
void    L_DAC_Reset         (void);

void    L_DAC_VREF_Cmd      (uint32_t);
void    L_DAC_VREF_Set      (uint16_t);

void    L_DAC_VPN_Cmd       (uint16_t);
void    L_DAC_VP_Set        (uint16_t);
void    L_DAC_VN_Set        (uint16_t);

void    L_DAC_VBI_Cmd       (uint16_t);
void    L_DAC_VB_Set        (uint16_t);
void    L_DAC_VI_Set        (uint16_t);
