vlog instruction_memory.v tb2.v
vsim -novopt work.tb2
view wave
add wave sim:/tb2/*
run 500ns