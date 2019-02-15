module tb1
(
);
reg[31:0] instruction;
wire [63:0] imm_data;
	

immediate_data_extractor i
(
.instruction(instruction),
.imm_data(imm_data)
);

initial
begin
    instruction = 32'b11010001100110000101010110001111;
    #50 instruction = 32'b00110001111110000101000111101010;
    #100 instruction = 32'b00110001111110000101000111011010;
    #150 instruction = 32'b00110001111110000101000111111010;
end


endmodule