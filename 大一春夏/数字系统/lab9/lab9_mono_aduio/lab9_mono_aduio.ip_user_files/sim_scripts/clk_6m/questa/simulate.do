onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib clk_6m_opt

do {wave.do}

view wave
view structure
view signals

do {clk_6m.udo}

run -all

quit -force
