vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../sp_rd.srcs/sources_1/ip/ila_sp_rd/sim/ila_sp_rd.v" \


vlog -work xil_defaultlib \
"glbl.v"

