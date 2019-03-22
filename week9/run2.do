#compiling design modules
vlog tb2.v ALU_Control.v
#no optimization
vsim -novopt work.tb2

#view waves
view wave

#Adding waves
add wave sim:/tb2/*
run 1000ns