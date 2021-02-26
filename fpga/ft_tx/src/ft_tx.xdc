# ----------------------------------------------------------------
# FT601Q
# ----------------------------------------------------------------
create_clock -period 15                         [get_ports FT_CLK]
set_property IOSTANDARD LVCMOS18                [get_ports FT_CLK]
set_property PACKAGE_PIN AP12                   [get_ports FT_CLK]

set_property IOSTANDARD LVCMOS18                [get_ports FT_NRST]
set_property PACKAGE_PIN BB12                   [get_ports FT_NRST]

set_property IOSTANDARD LVCMOS18                [get_ports {FT_BE[3]}]
set_property PACKAGE_PIN BA14                   [get_ports {FT_BE[3]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT_BE[2]}]
set_property PACKAGE_PIN BB14                   [get_ports {FT_BE[2]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT_BE[1]}]
set_property PACKAGE_PIN BB16                   [get_ports {FT_BE[1]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT_BE[0]}]
set_property PACKAGE_PIN BC16                   [get_ports {FT_BE[0]}]

set_property IOSTANDARD LVCMOS18                [get_ports FT_TXE_N]
set_property PACKAGE_PIN BD15                   [get_ports FT_TXE_N]
set_property IOSTANDARD LVCMOS18                [get_ports FT_RXF_N]
set_property PACKAGE_PIN BC15                   [get_ports FT_RXF_N]
set_property IOSTANDARD LVCMOS18                [get_ports FT_WR_N]
set_property PACKAGE_PIN BE15                   [get_ports FT_WR_N]
set_property IOSTANDARD LVCMOS18                [get_ports FT_RD_N]
set_property PACKAGE_PIN BA9                    [get_ports FT_RD_N]
set_property IOSTANDARD LVCMOS18                [get_ports FT_OE_N]
set_property PACKAGE_PIN AY9                    [get_ports FT_OE_N]

set_property IOSTANDARD LVCMOS18                [get_ports {FT_DATA[31]}]
set_property PACKAGE_PIN AR14                   [get_ports {FT_DATA[31]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT_DATA[30]}]
set_property PACKAGE_PIN AT14                   [get_ports {FT_DATA[30]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT_DATA[29]}]
set_property PACKAGE_PIN AW11                   [get_ports {FT_DATA[29]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT_DATA[28]}]
set_property PACKAGE_PIN AY10                   [get_ports {FT_DATA[28]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT_DATA[27]}]
set_property PACKAGE_PIN AW12                   [get_ports {FT_DATA[27]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT_DATA[26]}]
set_property PACKAGE_PIN AY12                   [get_ports {FT_DATA[26]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT_DATA[25]}]
set_property PACKAGE_PIN AN16                   [get_ports {FT_DATA[25]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT_DATA[24]}]
set_property PACKAGE_PIN AP16                   [get_ports {FT_DATA[24]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT_DATA[23]}]
set_property PACKAGE_PIN AW13                   [get_ports {FT_DATA[23]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT_DATA[22]}]
set_property PACKAGE_PIN AU11                   [get_ports {FT_DATA[22]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT_DATA[21]}]
set_property PACKAGE_PIN AY13                   [get_ports {FT_DATA[21]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT_DATA[20]}]
set_property PACKAGE_PIN AV11                   [get_ports {FT_DATA[20]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT_DATA[19]}]
set_property PACKAGE_PIN AK15                   [get_ports {FT_DATA[19]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT_DATA[18]}]
set_property PACKAGE_PIN AL14                   [get_ports {FT_DATA[18]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT_DATA[17]}]
set_property PACKAGE_PIN AL15                   [get_ports {FT_DATA[17]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT_DATA[16]}]
set_property PACKAGE_PIN AM14                   [get_ports {FT_DATA[16]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT_DATA[15]}]
set_property PACKAGE_PIN AT12                   [get_ports {FT_DATA[15]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT_DATA[14]}]
set_property PACKAGE_PIN AP13                   [get_ports {FT_DATA[14]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT_DATA[13]}]
set_property PACKAGE_PIN AU12                   [get_ports {FT_DATA[13]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT_DATA[12]}]
set_property PACKAGE_PIN AR13                   [get_ports {FT_DATA[12]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT_DATA[11]}]
set_property PACKAGE_PIN AN15                   [get_ports {FT_DATA[11]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT_DATA[10]}]
set_property PACKAGE_PIN AV10                   [get_ports {FT_DATA[10]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT_DATA[9]}]
set_property PACKAGE_PIN AP15                   [get_ports {FT_DATA[9]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT_DATA[8]}]
set_property PACKAGE_PIN AW10                   [get_ports {FT_DATA[8]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT_DATA[7]}]
set_property PACKAGE_PIN AM13                   [get_ports {FT_DATA[7]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT_DATA[6]}]
set_property PACKAGE_PIN AK12                   [get_ports {FT_DATA[6]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT_DATA[5]}]
set_property PACKAGE_PIN AM12                   [get_ports {FT_DATA[5]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT_DATA[4]}]
set_property PACKAGE_PIN AL12                   [get_ports {FT_DATA[4]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT_DATA[3]}]
set_property PACKAGE_PIN AK14                   [get_ports {FT_DATA[3]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT_DATA[2]}]
set_property PACKAGE_PIN AJ13                   [get_ports {FT_DATA[2]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT_DATA[1]}]
set_property PACKAGE_PIN AK13                   [get_ports {FT_DATA[1]}]
set_property IOSTANDARD LVCMOS18                [get_ports {FT_DATA[0]}]
set_property PACKAGE_PIN AJ12                   [get_ports {FT_DATA[0]}]

set_property IOSTANDARD LVCMOS18                [get_ports FT_SIWU_N]
set_property PACKAGE_PIN BF15                   [get_ports FT_SIWU_N]
set_property PULLUP TRUE                        [get_ports FT_SIWU_N]