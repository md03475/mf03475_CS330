#compiling design modules
vlog tb.v Control_Unit.v
#no optimization
vsim -novopt work.tb

#view waves
view wave

#Adding waves
add wave sim:/tb/*
run 1000ns