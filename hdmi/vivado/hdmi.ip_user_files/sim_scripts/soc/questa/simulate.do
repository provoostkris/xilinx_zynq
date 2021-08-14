onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib soc_opt

do {wave.do}

view wave
view structure
view signals

do {soc.udo}

run -all

quit -force
