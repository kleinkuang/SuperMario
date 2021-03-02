# ----------------------------------------------------------------
# Switches & LEDs
# ----------------------------------------------------------------
# BE23 GPIO_SW_E Input LVCMOS18
# BE22 GPIO_SW_S Input LVCMOS18
# BF22 GPIO_SW_W Input LVCMOS18
# BB24 GPIO_SW_N Input LVCMOS18
# BD23 GPIO_SW_C Input LVCMOS18
#set_property IOSTANDARD LVCMOS18                [get_ports GPIO_SW_E]
#set_property PACKAGE_PIN BE23                   [get_ports GPIO_SW_E]
#set_property IOSTANDARD LVCMOS18                [get_ports GPIO_SW_S]
#set_property PACKAGE_PIN BE22                   [get_ports GPIO_SW_S]
#set_property IOSTANDARD LVCMOS18                [get_ports GPIO_SW_W]
#set_property PACKAGE_PIN BF22                   [get_ports GPIO_SW_W]
#set_property IOSTANDARD LVCMOS18                [get_ports GPIO_SW_N]
#set_property PACKAGE_PIN BB24                   [get_ports GPIO_SW_N]
#set_property IOSTANDARD LVCMOS18                [get_ports GPIO_SW_C]
#set_property PACKAGE_PIN BD23                   [get_ports GPIO_SW_C]

# BA37 GPIO_LED_7 Output LVCMOS12
# AV36 GPIO_LED_6 Output LVCMOS12
# AU37 GPIO_LED_5 Output LVCMOS12
# BF32 GPIO_LED_4 Output LVCMOS12
# BB32 GPIO_LED_3 Output LVCMOS12
# AY30 GPIO_LED_2 Output LVCMOS12
# AV34 GPIO_LED_1 Output LVCMOS12
# AT32 GPIO_LED_0 Output LVCMOS12
set_property IOSTANDARD LVCMOS12                [get_ports LED_VDD2_EN]
set_property PACKAGE_PIN BA37                   [get_ports LED_VDD2_EN]
set_property IOSTANDARD LVCMOS12                [get_ports LED_AVDD1_ESD_EN]
set_property PACKAGE_PIN AV36                   [get_ports LED_AVDD1_ESD_EN]
set_property IOSTANDARD LVCMOS12                [get_ports LED_AVDD1_EN]
set_property PACKAGE_PIN AU37                   [get_ports LED_AVDD1_EN]
set_property IOSTANDARD LVCMOS12                [get_ports LED_DVDD1_EN]
set_property PACKAGE_PIN BF32                   [get_ports LED_DVDD1_EN]
set_property IOSTANDARD LVCMOS12                [get_ports LED_VREF_EN]
set_property PACKAGE_PIN BB32                   [get_ports LED_VREF_EN]

#set_property IOSTANDARD LVCMOS12                [get_ports LED_FULL]
#set_property PACKAGE_PIN AT32                   [get_ports LED_FULL]

# ----------------------------------------------------------------
# Peripheral Control
# ----------------------------------------------------------------
# F8  FMCP_HSPC_HA04_N LVCMOS18 Y13  - VDD2_EN
# E7  FMCP_HSPC_HA05_N LVCMOS18 P14  - AVDD1_ESD_EN
# E6  FMCP_HSPC_HA05_P LVCMOS18 R14  - AVDD1_EN
# F7  FMCP_HSPC_HA04_P LVCMOS18 AA13 - DVDD1_EN
set_property IOSTANDARD LVCMOS18                [get_ports VDD2_EN]
set_property PACKAGE_PIN Y13                    [get_ports VDD2_EN]
set_property IOSTANDARD LVCMOS18                [get_ports AVDD1_ESD_EN]
set_property PACKAGE_PIN P14                    [get_ports AVDD1_ESD_EN]
set_property IOSTANDARD LVCMOS18                [get_ports AVDD1_EN]
set_property PACKAGE_PIN R14                    [get_ports AVDD1_EN]
set_property IOSTANDARD LVCMOS18                [get_ports DVDD1_EN]
set_property PACKAGE_PIN AA13                   [get_ports DVDD1_EN]

# C10 FMCP_HSPC_LA06_P LVCMOS18 AT35 - VREF_EN
# E9  FMCP_HSPC_HA09_P LVCMOS18 W14  - VREF_CLR
set_property IOSTANDARD LVCMOS18                [get_ports VREF_EN]
set_property PACKAGE_PIN AT35                   [get_ports VREF_EN]
set_property IOSTANDARD LVCMOS18                [get_ports VREF_CLR]
set_property PACKAGE_PIN W14                    [get_ports VREF_CLR]

# ----------------------------------------------------------------
# Biasing
# ----------------------------------------------------------------
# io0_o Behaves similar to the master output slave input (MOSI) output pin.
# io1_i Behaves similar to the master input slave output (MISO) input.

# E16 FMCP_HSPC_HA16_N LVCMOS18 R13 - ADC_SCK
# E15 FMCP_HSPC_HA16_P LVCMOS18 T14 - ADC_CS
# F17 FMCP_HSPC_HA15_N LVCMOS18 M12 - ADC_SDI
# F16 FMCP_HSPC_HA15_P LVCMOS18 M13 - ADC_SDO
#set_property IOSTANDARD LVCMOS18                [get_ports ADC_sck_io]
#set_property PACKAGE_PIN R13                    [get_ports ADC_sck_io]
#set_property IOSTANDARD LVCMOS18                [get_ports ADC_ss_io]
#set_property PACKAGE_PIN T14                    [get_ports ADC_ss_io]
#set_property IOSTANDARD LVCMOS18                [get_ports ADC_io0_io]
#set_property PACKAGE_PIN M12                    [get_ports ADC_io0_io]
#set_property IOSTANDARD LVCMOS18                [get_ports ADC_io1_io]
#set_property PACKAGE_PIN M13                    [get_ports ADC_io1_io]

# F13 FMCP_HSPC_HA12_P LVCMOS18 T16 - DAC1_SCK
# F14 FMCP_HSPC_HA12_N LVCMOS18 T15 - DAC1_CS
# E13 FMCP_HSPC_HA13_N LVCMOS18 U12 - DAC1_SDI
set_property IOSTANDARD LVCMOS18                [get_ports VBI_SCK]
set_property PACKAGE_PIN T16                    [get_ports VBI_SCK]
set_property IOSTANDARD LVCMOS18                [get_ports VBI_CS]
set_property PACKAGE_PIN T15                    [get_ports VBI_CS]
set_property IOSTANDARD LVCMOS18                [get_ports VBI_MOSI]
set_property PACKAGE_PIN U12                    [get_ports VBI_MOSI]

# D11 FMCP_HSPC_LA05_P LVCMOS18 AP38 - DAC2_SCK
# D12 FMCP_HSPC_LA05_N LVCMOS18 AR38 - DAC2_CS
# C11 FMCP_HSPC_LA06_N LVCMOS18 AT36 - DAC2_SDI
set_property IOSTANDARD LVCMOS18                [get_ports VPN_SCK]
set_property PACKAGE_PIN AP38                   [get_ports VPN_SCK]
set_property IOSTANDARD LVCMOS18                [get_ports VPN_CS]
set_property PACKAGE_PIN AR38                   [get_ports VPN_CS]
set_property IOSTANDARD LVCMOS18                [get_ports VPN_MOSI]
set_property PACKAGE_PIN AT36                   [get_ports VPN_MOSI]

# F10 FMCP_HSPC_HA08_P LVCMOS18 U11  - VREF_SCK
# E10 FMCP_HSPC_HA09_N LVCMOS18 V14  - VREF_CS
# F11 FMCP_HSPC_HA08_N LVCMOS18 T11  - VREF_SDI
set_property IOSTANDARD LVCMOS18                [get_ports VREF_SCK]
set_property PACKAGE_PIN U11                    [get_ports VREF_SCK]
set_property IOSTANDARD LVCMOS18                [get_ports VREF_CS]
set_property PACKAGE_PIN V14                    [get_ports VREF_CS]
set_property IOSTANDARD LVCMOS18                [get_ports VREF_MOSI]
set_property PACKAGE_PIN T11                    [get_ports VREF_MOSI]

# ----------------------------------------------------------------
# FT601Q
# ----------------------------------------------------------------
#create_clock -period 15                         [get_ports FT601Q_ft_clk]
#set_property IOSTANDARD LVCMOS18                [get_ports FT601Q_ft_clk]
#set_property PACKAGE_PIN AP12                   [get_ports FT601Q_ft_clk]

#set_property CLOCK_DEDICATED_ROUTE FALSE        [get_nets FT601Q_ft_clk_IBUF_inst/O]

#set_property IOSTANDARD LVCMOS18                [get_ports FT601Q_ft_nrst]
#set_property PACKAGE_PIN BB12                   [get_ports FT601Q_ft_nrst]

#set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_be[3]}]
#set_property PACKAGE_PIN BA14                   [get_ports {FT601Q_ft_be[3]}]
#set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_be[2]}]
#set_property PACKAGE_PIN BB14                   [get_ports {FT601Q_ft_be[2]}]
#set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_be[1]}]
#set_property PACKAGE_PIN BB16                   [get_ports {FT601Q_ft_be[1]}]
#set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_be[0]}]
#set_property PACKAGE_PIN BC16                   [get_ports {FT601Q_ft_be[0]}]

#set_property IOSTANDARD LVCMOS18                [get_ports FT601Q_ft_txe_n]
#set_property PACKAGE_PIN BD15                   [get_ports FT601Q_ft_txe_n]
#set_property IOSTANDARD LVCMOS18                [get_ports FT601Q_ft_rxf_n]
#set_property PACKAGE_PIN BC15                   [get_ports FT601Q_ft_rxf_n]
#set_property IOSTANDARD LVCMOS18                [get_ports FT601Q_ft_wr_n]
#set_property PACKAGE_PIN BE15                   [get_ports FT601Q_ft_wr_n]
#set_property IOSTANDARD LVCMOS18                [get_ports FT601Q_ft_rd_n]
#set_property PACKAGE_PIN BA9                    [get_ports FT601Q_ft_rd_n]
#set_property IOSTANDARD LVCMOS18                [get_ports FT601Q_ft_oe_n]
#set_property PACKAGE_PIN AY9                    [get_ports FT601Q_ft_oe_n]

#set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[31]}]
#set_property PACKAGE_PIN AR14                   [get_ports {FT601Q_ft_data[31]}]
#set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[30]}]
#set_property PACKAGE_PIN AT14                   [get_ports {FT601Q_ft_data[30]}]
#set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[29]}]
#set_property PACKAGE_PIN AW11                   [get_ports {FT601Q_ft_data[29]}]
#set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[28]}]
#set_property PACKAGE_PIN AY10                   [get_ports {FT601Q_ft_data[28]}]
#set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[27]}]
#set_property PACKAGE_PIN AW12                   [get_ports {FT601Q_ft_data[27]}]
#set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[26]}]
#set_property PACKAGE_PIN AY12                   [get_ports {FT601Q_ft_data[26]}]
#set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[25]}]
#set_property PACKAGE_PIN AN16                   [get_ports {FT601Q_ft_data[25]}]
#set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[24]}]
#set_property PACKAGE_PIN AP16                   [get_ports {FT601Q_ft_data[24]}]
#set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[23]}]
#set_property PACKAGE_PIN AW13                   [get_ports {FT601Q_ft_data[23]}]
#set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[22]}]
#set_property PACKAGE_PIN AU11                   [get_ports {FT601Q_ft_data[22]}]
#set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[21]}]
#set_property PACKAGE_PIN AY13                   [get_ports {FT601Q_ft_data[21]}]
#set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[20]}]
#set_property PACKAGE_PIN AV11                   [get_ports {FT601Q_ft_data[20]}]
#set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[19]}]
#set_property PACKAGE_PIN AK15                   [get_ports {FT601Q_ft_data[19]}]
#set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[18]}]
#set_property PACKAGE_PIN AL14                   [get_ports {FT601Q_ft_data[18]}]
#set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[17]}]
#set_property PACKAGE_PIN AL15                   [get_ports {FT601Q_ft_data[17]}]
#set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[16]}]
#set_property PACKAGE_PIN AM14                   [get_ports {FT601Q_ft_data[16]}]
#set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[15]}]
#set_property PACKAGE_PIN AT12                   [get_ports {FT601Q_ft_data[15]}]
#set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[14]}]
#set_property PACKAGE_PIN AP13                   [get_ports {FT601Q_ft_data[14]}]
#set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[13]}]
#set_property PACKAGE_PIN AU12                   [get_ports {FT601Q_ft_data[13]}]
#set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[12]}]
#set_property PACKAGE_PIN AR13                   [get_ports {FT601Q_ft_data[12]}]
#set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[11]}]
#set_property PACKAGE_PIN AN15                   [get_ports {FT601Q_ft_data[11]}]
#set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[10]}]
#set_property PACKAGE_PIN AV10                   [get_ports {FT601Q_ft_data[10]}]
#set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[9]}]
#set_property PACKAGE_PIN AP15                   [get_ports {FT601Q_ft_data[9]}]
#set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[8]}]
#set_property PACKAGE_PIN AW10                   [get_ports {FT601Q_ft_data[8]}]
#set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[7]}]
#set_property PACKAGE_PIN AM13                   [get_ports {FT601Q_ft_data[7]}]
#set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[6]}]
#set_property PACKAGE_PIN AK12                   [get_ports {FT601Q_ft_data[6]}]
#set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[5]}]
#set_property PACKAGE_PIN AM12                   [get_ports {FT601Q_ft_data[5]}]
#set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[4]}]
#set_property PACKAGE_PIN AL12                   [get_ports {FT601Q_ft_data[4]}]
#set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[3]}]
#set_property PACKAGE_PIN AK14                   [get_ports {FT601Q_ft_data[3]}]
#set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[2]}]
#set_property PACKAGE_PIN AJ13                   [get_ports {FT601Q_ft_data[2]}]
#set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[1]}]
#set_property PACKAGE_PIN AK13                   [get_ports {FT601Q_ft_data[1]}]
#set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[0]}]
#set_property PACKAGE_PIN AJ12                   [get_ports {FT601Q_ft_data[0]}]

#set_property IOSTANDARD LVCMOS18                [get_ports FT601Q_ft_siwu_n]
#set_property PACKAGE_PIN BF15                   [get_ports FT601Q_ft_siwu_n]
#set_property PULLUP TRUE                        [get_ports FT601Q_ft_siwu_n]
