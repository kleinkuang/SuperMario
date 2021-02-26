onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ila_spi_24b_opt

do {wave.do}

view wave
view structure
view signals

do {ila_spi_24b.udo}

run -all

quit -force
