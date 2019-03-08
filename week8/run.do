#compiling design modules
vlog tb.v instruction_memory.v program_counter.v adder.v instruction_fetcher.v

#no optimization
vsim -novopt work.tb

#view waves
view wave

#Adding waves
add wave sim:/tb/*
run 1000ns