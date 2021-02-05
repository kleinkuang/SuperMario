vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../sp_rd.srcs/sources_1/ip/ila_sp_rd/hdl/verilog" \
"../../../../sp_rd.srcs/sources_1/ip/ila_sp_rd/sim/ila_sp_rd.v" \


vlog -work xil_defaultlib \
"glbl.v"

