vlog data_memory.v tb3.v
vsim -novopt work.tb3
view wave
add wave sim:/tb3/*
run 500ns