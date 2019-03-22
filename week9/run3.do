#compiling design modules
vlog tb3.v top_control.v
#no optimization
vsim -novopt work.tb3

#view waves
view wave

#Adding waves
add wave sim:/tb3/*
run 1000ns