onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ila_sp_rd_opt

do {wave.do}

view wave
view structure
view signals

do {ila_sp_rd.udo}

run -all

quit -force
