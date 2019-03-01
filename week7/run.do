#compiling design modules
vlog tb.v reg.v

#no optimization
vsim -novopt work.tb

#view waves
view wave

#Adding waves
add wave sim:/tb/RegWrite
add wave sim:/tb/clk
add wave sim:/tb/reset
add wave sim:/tb/RS1
add wave sim:/tb/RS2
add wave sim:/tb/RD
add wave sim:/tb/write
add wave sim:/tb/output1
add wave sim:/tb/output2


run 1000ns