onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib imageMemory_opt

do {wave.do}

view wave
view structure
view signals

do {imageMemory.udo}

run -all

quit -force
