# ----------------------------------------------------------------
# System Indicator
# ----------------------------------------------------------------
# - SW - South
set_property IOSTANDARD LVCMOS18                [get_ports sys_rst]
set_property PACKAGE_PIN BE22                   [get_ports sys_rst]

# ----------------------------------------------------------------
# FT601Q
# ----------------------------------------------------------------
create_clock -period 15                         [get_ports FT601Q_ft_clk]
set_property IOSTANDARD LVCMOS18                [get_ports FT601Q_ft_clk]
set_property PACKAGE_PIN AP12                   [get_ports FT601Q_ft_clk]

set_property CLOCK_DEDICATED_ROUTE FALSE        [get_nets FT601Q_ft_clk_IBUF_inst/O]

set_property IOSTANDARD LVCMOS18                [get_ports FT601Q_ft_nrst]
set_property PACKAGE_PIN BB12                   [get_ports FT601Q_ft_nrst]

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
# SPI Settings for Configuration Memory of VCU118 Rev2.0
# ----------------------------------------------------------------
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 8 [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 85.0 [current_design]
set_property BITSTREAM.CONFIG.SPI_FALL_EDGE YES [current_desig]\

# ----------------------------------------------------------------
# False Path
# ----------------------------------------------------------------
set_false_path -from [get_clocks -of_objects [get_pins bd_sys_inst/clk_wiz_0/inst/mmcme4_adv_inst/CLKOUT0]] -to [get_clocks FT601Q_ft_clk]