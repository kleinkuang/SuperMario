# BE23 GPIO_SW_E Input LVCMOS18
# BE22 GPIO_SW_S Input LVCMOS18
# BF22 GPIO_SW_W Input LVCMOS18
# BB24 GPIO_SW_N Input LVCMOS18
# BD23 GPIO_SW_C Input LVCMOS18
set_property IOSTANDARD LVCMOS18                [get_ports rst]
set_property PACKAGE_PIN BE22                   [get_ports rst]
set_property IOSTANDARD LVCMOS18                [get_ports debug]
set_property PACKAGE_PIN BD23                   [get_ports debug]

# BA37 GPIO_LED_7 Output LVCMOS12
# AV36 GPIO_LED_6 Output LVCMOS12
# AU37 GPIO_LED_5 Output LVCMOS12
# BF32 GPIO_LED_4 Output LVCMOS12
# BB32 GPIO_LED_3 Output LVCMOS12
# AY30 GPIO_LED_2 Output LVCMOS12
# AV34 GPIO_LED_1 Output LVCMOS12
# AT32 GPIO_LED_0 Output LVCMOS12
set_property IOSTANDARD LVCMOS12                [get_ports START]
set_property PACKAGE_PIN BA37                   [get_ports START]
set_property IOSTANDARD LVCMOS12                [get_ports FULL]
set_property PACKAGE_PIN AT32                   [get_ports FULL]

# ----------------------------------------------------------------
# SuperMario PCB
# ----------------------------------------------------------------

## G36 FMCP_HSPC_LA33_P LVDS L34 - SP_CLK_N (!!! INVERTED)
## G37 FMCP_HSPC_LA33_N LVDS K34 - SP_CLK_P
# set_property IOSTANDARD LVDS                    [get_ports SP_CLK_P]
# set_property PACKAGE_PIN L34                    [get_ports SP_CLK_P]
# set_property IOSTANDARD LVDS                    [get_ports SP_CLK_N]
# set_property PACKAGE_PIN K34                    [get_ports SP_CLK_N]

## G33 FMCP_HSPC_LA31_P LVDS P37 - SP_NRST_N (!!! INVERTED)
## G34 FMCP_HSPC_LA31_N LVDS N37 - SP_NRST_P
#set_property IOSTANDARD LVDS                    [get_ports SP_NRST_P]
#set_property PACKAGE_PIN P37                    [get_ports SP_NRST_P]
#set_property IOSTANDARD LVDS                    [get_ports SP_NRST_N]
#set_property PACKAGE_PIN N37                    [get_ports SP_NRST_N]

## G30 FMCP_HSPC_LA29_P LVDS U35 - SP_UPDATE_P
## G31 FMCP_HSPC_LA29_N LVDS T36 - SP_UPDATE_N
#set_property IOSTANDARD LVDS                    [get_ports SP_UPDATE_P]
#set_property PACKAGE_PIN U35                    [get_ports SP_UPDATE_P]
#set_property IOSTANDARD LVDS                    [get_ports SP_UPDATE_N]
#set_property PACKAGE_PIN T36                    [get_ports SP_UPDATE_N]

## H31 FMCP_HSPC_LA28_P LVDS M36 - SP_EOF_P
## H32 FMCP_HSPC_LA28_N LVDS L36 - SP_EOF_N
#set_property IOSTANDARD LVDS                    [get_ports SP_EOF_P]
#set_property PACKAGE_PIN M36                    [get_ports SP_EOF_P]
#set_property IOSTANDARD LVDS                    [get_ports SP_EOF_N]
#set_property PACKAGE_PIN L36                    [get_ports SP_EOF_N]

## H34 FMCP_HSPC_LA30_P LVDS N38 - SP_SPI_CS_N (!!! INVERTED)
## H35 FMCP_HSPC_LA30_N LVDS M38 - SP_SPI_CS_P
#set_property IOSTANDARD LVDS                    [get_ports SP_SPI_CS_P]
#set_property PACKAGE_PIN N38                    [get_ports SP_SPI_CS_P]
#set_property IOSTANDARD LVDS                    [get_ports SP_SPI_CS_N]
#set_property PACKAGE_PIN M38                    [get_ports SP_SPI_CS_N]

## F19 FMCP_HSPC_HA19_P LVDS L14 - SP_SPI_MISO_N (!!! INVERTED)
## F20 FMCP_HSPC_HA19_N LVDS L13 - SP_SPI_MISO_P
#set_property IOSTANDARD LVDS                    [get_ports SP_SPI_MISO_P]
#set_property PACKAGE_PIN L14                    [get_ports SP_SPI_MISO_P]
#set_property IOSTANDARD LVDS                    [get_ports SP_SPI_MISO_N]
#set_property PACKAGE_PIN L13                    [get_ports SP_SPI_MISO_N]

## H37 FMCP_HSPC_LA32_P LVDS L33 - SP_SPI_MOSI_N (!!! INVERTED)
## H38 FMCP_HSPC_LA32_N LVDS K33 - SP_SPI_MOSI_P
#set_property IOSTANDARD LVDS                    [get_ports SP_SPI_MOSI_P]
#set_property PACKAGE_PIN L33                    [get_ports SP_SPI_MOSI_P]
#set_property IOSTANDARD LVDS                    [get_ports SP_SPI_MOSI_N]
#set_property PACKAGE_PIN K33                    [get_ports SP_SPI_MOSI_N]

## K16 FMCP_HSPC_HA17_CC_P LVDS R11 - SP_DOUT_P[7]
## K17 FMCP_HSPC_HA17_CC_N LVDS P11 - SP_DOUT_N[7]
#set_property IOSTANDARD LVDS                    [get_ports {SP_DOUT_P[7]}]
#set_property PACKAGE_PIN R11                    [get_ports {SP_DOUT_P[7]}]
#set_property IOSTANDARD LVDS                    [get_ports {SP_DOUT_N[7]}]
#set_property PACKAGE_PIN P11                    [get_ports {SP_DOUT_N[7]}]
## J15 FMCP_HSPC_HA14_P LVDS M11 - SP_DOUT_P[6]
## J16 FMCP_HSPC_HA14_N LVDS L11 - SP_DOUT_N[6]
#set_property IOSTANDARD LVDS                    [get_ports {SP_DOUT_P[6]}]
#set_property PACKAGE_PIN M11                    [get_ports {SP_DOUT_P[6]}]
#set_property IOSTANDARD LVDS                    [get_ports {SP_DOUT_N[6]}]
#set_property PACKAGE_PIN L11                    [get_ports {SP_DOUT_N[6]}]
## K13 FMCP_HSPC_HA10_P LVDS V16 - SP_DOUT_P[5]
## K14 FMCP_HSPC_HA10_N LVDS U16 - SP_DOUT_N[5]
#set_property IOSTANDARD LVDS                    [get_ports {SP_DOUT_P[5]}]
#set_property PACKAGE_PIN V16                    [get_ports {SP_DOUT_P[5]}]
#set_property IOSTANDARD LVDS                    [get_ports {SP_DOUT_N[5]}]
#set_property PACKAGE_PIN U16                    [get_ports {SP_DOUT_N[5]}]
## J12 FMCP_HSPC_HA11_P LVDS R12 - SP_DOUT_P[4]
## J13 FMCP_HSPC_HA11_N LVDS P12 - SP_DOUT_N[4]
#set_property IOSTANDARD LVDS                    [get_ports {SP_DOUT_P[4]}]
#set_property PACKAGE_PIN R12                    [get_ports {SP_DOUT_P[4]}]
#set_property IOSTANDARD LVDS                    [get_ports {SP_DOUT_N[4]}]
#set_property PACKAGE_PIN P12                    [get_ports {SP_DOUT_N[4]}]
## K10 FMCP_HSPC_HA06_P LVDS U13 - SP_DOUT_P[3]
## K11 FMCP_HSPC_HA06_N LVDS T13 - SP_DOUT_N[3]
#set_property IOSTANDARD LVDS                    [get_ports {SP_DOUT_P[3]}]
#set_property PACKAGE_PIN U13                    [get_ports {SP_DOUT_P[3]}]
#set_property IOSTANDARD LVDS                    [get_ports {SP_DOUT_N[3]}]
#set_property PACKAGE_PIN T13                    [get_ports {SP_DOUT_N[3]}]
## J9 FMCP_HSPC_HA07_P LVDS AA14 - SP_DOUT_P[2]
## J10 FMCP_HSPC_HA07_N LVDS Y14 - SP_DOUT_N[2]
#set_property IOSTANDARD LVDS                    [get_ports {SP_DOUT_P[2]}]
#set_property PACKAGE_PIN AA14                   [get_ports {SP_DOUT_P[2]}]
#set_property IOSTANDARD LVDS                    [get_ports {SP_DOUT_N[2]}]
#set_property PACKAGE_PIN Y14                    [get_ports {SP_DOUT_N[2]}]
## K7 FMCP_HSPC_HA02_P LVDS AA12 - SP_DOUT_P[1]
## K8 FMCP_HSPC_HA02_N LVDS Y12  - SP_DOUT_N[1]
#set_property IOSTANDARD LVDS                    [get_ports {SP_DOUT_P[1]}]
#set_property PACKAGE_PIN AA12                   [get_ports {SP_DOUT_P[1]}]
#set_property IOSTANDARD LVDS                    [get_ports {SP_DOUT_N[1]}]
#set_property PACKAGE_PIN Y12                    [get_ports {SP_DOUT_N[1]}]
## J6 FMCP_HSPC_HA03_P LVDS W12 - SP_DOUT_P[0]
## J7 FMCP_HSPC_HA03_N LVDS V12 - SP_DOUT_N[0]
#set_property IOSTANDARD LVDS                    [get_ports {SP_DOUT_P[0]}]
#set_property PACKAGE_PIN W12                    [get_ports {SP_DOUT_P[0]}]
#set_property IOSTANDARD LVDS                    [get_ports {SP_DOUT_N[0]}]
#set_property PACKAGE_PIN V12                    [get_ports {SP_DOUT_N[0]}]

## H28 FMCP_HSPC_LA24_P LVDS T34 - SP_DIN_N[7] (!!! INVERTED)
## H29 FMCP_HSPC_LA24_N LVDS T35 - SP_DIN_P[7]
#set_property IOSTANDARD LVDS                    [get_ports {SP_DIN_P[7]}]
#set_property PACKAGE_PIN T34                    [get_ports {SP_DIN_P[7]}]
#set_property IOSTANDARD LVDS                    [get_ports {SP_DIN_N[7]}]
#set_property PACKAGE_PIN T35                    [get_ports {SP_DIN_N[7]}]
## G27 FMCP_HSPC_LA25_P LVDS Y34 - SP_DIN_N[6] (!!! INVERTED)
## G28 FMCP_HSPC_LA25_N LVDS W34 - SP_DIN_P[6]
#set_property IOSTANDARD LVDS                    [get_ports {SP_DIN_P[6]}]
#set_property PACKAGE_PIN Y34                    [get_ports {SP_DIN_P[6]}]
#set_property IOSTANDARD LVDS                    [get_ports {SP_DIN_N[6]}]
#set_property PACKAGE_PIN W34                    [get_ports {SP_DIN_N[6]}]
## H25 FMCP_HSPC_LA21_P LVDS M35 - SP_DIN_N[5] (!!! INVERTED)
## H26 FMCP_HSPC_LA21_N LVDS L35 - SP_DIN_P[5]
#set_property IOSTANDARD LVDS                    [get_ports {SP_DIN_P[5]}]
#set_property PACKAGE_PIN M35                    [get_ports {SP_DIN_P[5]}]
#set_property IOSTANDARD LVDS                    [get_ports {SP_DIN_N[5]}]
#set_property PACKAGE_PIN L35                    [get_ports {SP_DIN_N[5]}]
## G24 FMCP_HSPC_LA22_P LVDS N34 - SP_DIN_N[4] (!!! INVERTED)
## G25 FMCP_HSPC_LA22_N LVDS N35 - SP_DIN_P[4]
#set_property IOSTANDARD LVDS                    [get_ports {SP_DIN_P[4]}]
#set_property PACKAGE_PIN N34                    [get_ports {SP_DIN_P[4]}]
#set_property IOSTANDARD LVDS                    [get_ports {SP_DIN_N[4]}]
#set_property PACKAGE_PIN N35                    [get_ports {SP_DIN_N[4]}]
## K22 FMCP_HSPC_HA23_P LVDS K11 - SP_DIN_N[3] (!!! INVERTED)
## K23 FMCP_HSPC_HA23_N LVDS J11 - SP_DIN_P[3]
#set_property IOSTANDARD LVDS                    [get_ports {SP_DIN_P[3]}]
#set_property PACKAGE_PIN K11                    [get_ports {SP_DIN_P[3]}]
#set_property IOSTANDARD LVDS                    [get_ports {SP_DIN_N[3]}]
#set_property PACKAGE_PIN J11                    [get_ports {SP_DIN_N[3]}]
## J21 FMCP_HSPC_HA22_P LVDS K12 - SP_DIN_N[2] (!!! INVERTED)
## J22 FMCP_HSPC_HA22_N LVDS J12 - SP_DIN_P[2]
#set_property IOSTANDARD LVDS                    [get_ports {SP_DIN_P[2]}]
#set_property PACKAGE_PIN K12                    [get_ports {SP_DIN_P[2]}]
#set_property IOSTANDARD LVDS                    [get_ports {SP_DIN_N[2]}]
#set_property PACKAGE_PIN J12                    [get_ports {SP_DIN_N[2]}]
## K19 FMCP_HSPC_HA21_P LVDS K14 - SP_DIN_N[1] (!!! INVERTED)
## K20 FMCP_HSPC_HA21_N LVDS K13 - SP_DIN_P[1]
#set_property IOSTANDARD LVDS                    [get_ports {SP_DIN_P[1]}]
#set_property PACKAGE_PIN K14                    [get_ports {SP_DIN_P[1]}]
#set_property IOSTANDARD LVDS                    [get_ports {SP_DIN_N[1]}]
#set_property PACKAGE_PIN K13                    [get_ports {SP_DIN_N[1]}]
# J18 FMCP_HSPC_HA18_P LVDS P15 - SP_DIN_N[0] (!!! INVERTED)
# J19 FMCP_HSPC_HA18_N LVDS N15 - SP_DIN_P[0]
#set_property IOSTANDARD LVDS                    [get_ports {SP_DIN_P[0]}]
#set_property PACKAGE_PIN P15                    [get_ports {SP_DIN_P[0]}]
#set_property IOSTANDARD LVDS                    [get_ports {SP_DIN_N[0]}]
#set_property PACKAGE_PIN N15                    [get_ports {SP_DIN_N[0]}]

# ----------------------------------------------------------------
# FT601Q
# ----------------------------------------------------------------
create_clock -period 15                         [get_ports FT601Q_ft_clk]
set_property IOSTANDARD LVCMOS18                [get_ports FT601Q_ft_clk]
set_property PACKAGE_PIN AP12                   [get_ports FT601Q_ft_clk]

set_property CLOCK_DEDICATED_ROUTE FALSE        [get_nets FT601Q_ft_clk_IBUF_inst/O]

set_property IOSTANDARD LVCMOS18                [get_ports FT601Q_ft_nrst]
set_property PACKAGE_PIN BB12                   [get_ports FT601Q_ft_nrst]
set_property PULLUP true                        [get_ports FT601Q_ft_nrst]

set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_be[3]}]
set_property PACKAGE_PIN BA14                   [get_ports {FT601Q_ft_be[3]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_be[2]}]
set_property PACKAGE_PIN BB14                   [get_ports {FT601Q_ft_be[2]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_be[1]}]
set_property PACKAGE_PIN BB16                   [get_ports {FT601Q_ft_be[1]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_be[0]}]
set_property PACKAGE_PIN BC16                   [get_ports {FT601Q_ft_be[0]}]

set_property IOSTANDARD LVCMOS18                [get_ports FT601Q_ft_txe_n]
set_property PACKAGE_PIN BD15                   [get_ports FT601Q_ft_txe_n]
set_property IOSTANDARD LVCMOS18                [get_ports FT601Q_ft_rxf_n]
set_property PACKAGE_PIN BC15                   [get_ports FT601Q_ft_rxf_n]
set_property IOSTANDARD LVCMOS18                [get_ports FT601Q_ft_wr_n]
set_property PACKAGE_PIN BE15                   [get_ports FT601Q_ft_wr_n]
set_property IOSTANDARD LVCMOS18                [get_ports FT601Q_ft_rd_n]
set_property PACKAGE_PIN BA9                    [get_ports FT601Q_ft_rd_n]
set_property IOSTANDARD LVCMOS18                [get_ports FT601Q_ft_oe_n]
set_property PACKAGE_PIN AY9                    [get_ports FT601Q_ft_oe_n]

set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[31]}]
set_property PACKAGE_PIN AR14                   [get_ports {FT601Q_ft_data[31]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[30]}]
set_property PACKAGE_PIN AT14                   [get_ports {FT601Q_ft_data[30]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[29]}]
set_property PACKAGE_PIN AW11                   [get_ports {FT601Q_ft_data[29]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[28]}]
set_property PACKAGE_PIN AY10                   [get_ports {FT601Q_ft_data[28]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[27]}]
set_property PACKAGE_PIN AW12                   [get_ports {FT601Q_ft_data[27]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[26]}]
set_property PACKAGE_PIN AY12                   [get_ports {FT601Q_ft_data[26]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[25]}]
set_property PACKAGE_PIN AN16                   [get_ports {FT601Q_ft_data[25]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[24]}]
set_property PACKAGE_PIN AP16                   [get_ports {FT601Q_ft_data[24]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[23]}]
set_property PACKAGE_PIN AW13                   [get_ports {FT601Q_ft_data[23]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[22]}]
set_property PACKAGE_PIN AU11                   [get_ports {FT601Q_ft_data[22]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[21]}]
set_property PACKAGE_PIN AY13                   [get_ports {FT601Q_ft_data[21]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[20]}]
set_property PACKAGE_PIN AV11                   [get_ports {FT601Q_ft_data[20]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[19]}]
set_property PACKAGE_PIN AK15                   [get_ports {FT601Q_ft_data[19]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[18]}]
set_property PACKAGE_PIN AL14                   [get_ports {FT601Q_ft_data[18]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[17]}]
set_property PACKAGE_PIN AL15                   [get_ports {FT601Q_ft_data[17]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[16]}]
set_property PACKAGE_PIN AM14                   [get_ports {FT601Q_ft_data[16]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[15]}]
set_property PACKAGE_PIN AT12                   [get_ports {FT601Q_ft_data[15]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[14]}]
set_property PACKAGE_PIN AP13                   [get_ports {FT601Q_ft_data[14]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[13]}]
set_property PACKAGE_PIN AU12                   [get_ports {FT601Q_ft_data[13]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[12]}]
set_property PACKAGE_PIN AR13                   [get_ports {FT601Q_ft_data[12]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[11]}]
set_property PACKAGE_PIN AN15                   [get_ports {FT601Q_ft_data[11]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[10]}]
set_property PACKAGE_PIN AV10                   [get_ports {FT601Q_ft_data[10]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[9]}]
set_property PACKAGE_PIN AP15                   [get_ports {FT601Q_ft_data[9]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[8]}]
set_property PACKAGE_PIN AW10                   [get_ports {FT601Q_ft_data[8]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[7]}]
set_property PACKAGE_PIN AM13                   [get_ports {FT601Q_ft_data[7]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[6]}]
set_property PACKAGE_PIN AK12                   [get_ports {FT601Q_ft_data[6]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[5]}]
set_property PACKAGE_PIN AM12                   [get_ports {FT601Q_ft_data[5]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[4]}]
set_property PACKAGE_PIN AL12                   [get_ports {FT601Q_ft_data[4]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[3]}]
set_property PACKAGE_PIN AK14                   [get_ports {FT601Q_ft_data[3]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[2]}]
set_property PACKAGE_PIN AJ13                   [get_ports {FT601Q_ft_data[2]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[1]}]
set_property PACKAGE_PIN AK13                   [get_ports {FT601Q_ft_data[1]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT601Q_ft_data[0]}]
set_property PACKAGE_PIN AJ12                   [get_ports {FT601Q_ft_data[0]}]

set_property IOSTANDARD LVCMOS18                [get_ports FT601Q_ft_siwu_n]
set_property PACKAGE_PIN BF15                   [get_ports FT601Q_ft_siwu_n]
set_property PULLUP TRUE                        [get_ports FT601Q_ft_siwu_n]

# ----------------------------------------------------------------
# False Path for Clock Domain Crossing
# ----------------------------------------------------------------
set_false_path -from [get_clocks FT601Q_ft_clk] -to [get_clocks -of_objects [get_pins bd_sys_i/clk_wiz_0/inst/mmcme4_adv_inst/CLKOUT0]]
set_false_path -from [get_clocks -of_objects [get_pins bd_sys_i/clk_wiz_0/inst/mmcme4_adv_inst/CLKOUT0]] -to [get_clocks FT601Q_ft_clk]

# ----------------------------------------------------------------
# SPI Settings for Configuration Memory of VCU118 Rev2.0
# ----------------------------------------------------------------
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 8 [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 85.0 [current_design]
set_property BITSTREAM.CONFIG.SPI_FALL_EDGE YES [current_desig]