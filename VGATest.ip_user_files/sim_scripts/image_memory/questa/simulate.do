onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib image_memory_opt

do {wave.do}

view wave
view structure
view signals

do {image_memory.udo}

run -all

quit -force
