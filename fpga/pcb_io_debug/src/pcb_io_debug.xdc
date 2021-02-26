# BE23 GPIO_SW_E Input LVCMOS18
# BE22 GPIO_SW_S Input LVCMOS18
# BF22 GPIO_SW_W Input LVCMOS18
# BB24 GPIO_SW_N Input LVCMOS18
# BD23 GPIO_SW_C Input LVCMOS18
set_property IOSTANDARD LVCMOS18                [get_ports GPIO_SW_E]
set_property PACKAGE_PIN BE23                   [get_ports GPIO_SW_E]
set_property IOSTANDARD LVCMOS18                [get_ports GPIO_SW_S]
set_property PACKAGE_PIN BE22                   [get_ports GPIO_SW_S]
set_property IOSTANDARD LVCMOS18                [get_ports GPIO_SW_W]
set_property PACKAGE_PIN BF22                   [get_ports GPIO_SW_W]
set_property IOSTANDARD LVCMOS18                [get_ports GPIO_SW_N]
set_property PACKAGE_PIN BB24                   [get_ports GPIO_SW_N]
set_property IOSTANDARD LVCMOS18                [get_ports GPIO_SW_C]
set_property PACKAGE_PIN BD23                   [get_ports GPIO_SW_C]


# F8 FMCP_HSPC_HA04_N LVCMOS18 Y13  - VDD2_EN
# E7 FMCP_HSPC_HA05_N LVCMOS18 P14  - AVDD1_ESD_EN
# E6 FMCP_HSPC_HA05_P LVCMOS18 R14  - AVDD1_EN
# F7 FMCP_HSPC_HA04_P LVCMOS18 AA13 - DVDD1_EN
set_property IOSTANDARD LVCMOS18                [get_ports VDD2_EN]
set_property PACKAGE_PIN Y13                    [get_ports VDD2_EN]
set_property IOSTANDARD LVCMOS18                [get_ports AVDD1_ESD_EN]
set_property PACKAGE_PIN P14                    [get_ports AVDD1_ESD_EN]
set_property IOSTANDARD LVCMOS18                [get_ports AVDD1_EN]
set_property PACKAGE_PIN R14                    [get_ports AVDD1_EN]
set_property IOSTANDARD LVCMOS18                [get_ports DVDD1_EN]
set_property PACKAGE_PIN AA13                   [get_ports DVDD1_EN]

# C10 FMCP_HSPC_LA06_P LVCMOS18 AT35 - VREF_EN
set_property IOSTANDARD LVCMOS18                [get_ports VREF_EN]
set_property PACKAGE_PIN AT35                   [get_ports VREF_EN]

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

# ----------------------------------------------------------------
# SPI Settings for Configuration Memory of VCU118 Rev2.0
# ----------------------------------------------------------------
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 8 [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 85.0 [current_design]
set_property BITSTREAM.CONFIG.SPI_FALL_EDGE YES [current_desig]