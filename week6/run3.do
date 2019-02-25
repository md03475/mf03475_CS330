vlog ALU_64_bit.v tb3.v
vsim -novopt work.tb3
view wave
add wave sim:/tb3/*
run 500ns