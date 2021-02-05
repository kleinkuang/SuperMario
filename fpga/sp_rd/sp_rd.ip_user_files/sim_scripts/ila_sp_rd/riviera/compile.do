vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../sp_rd.srcs/sources_1/ip/ila_sp_rd/hdl/verilog" \
"../../../../sp_rd.srcs/sources_1/ip/ila_sp_rd/sim/ila_sp_rd.v" \


vlog -work xil_defaultlib \
"glbl.v"

