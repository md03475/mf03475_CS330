#compiling design modules
vlog tb1.v immediate_data_extractor.v

#no optimization
vsim -novopt work.tb1

#view waves
view wave

#Adding waves
add wave sim:/tb1/instruction
add wave sim:/tb1/imm_data

run 500ns