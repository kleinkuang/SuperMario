vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../../sp_rd.srcs/sources_1/ip/ila_sp_rd/sim/ila_sp_rd.v" \


vlog -work xil_defaultlib \
"glbl.v"

