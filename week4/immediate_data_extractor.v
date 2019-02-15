module immediate_data_extractor
(
input [31:0] instruction,
output reg[63:0] imm_data
);

always@(*)
begin
	if(instruction[5] == 1)
		imm_data <= {{52{instruction[31]}}, instruction[31], instruction[7], instruction[30:25], instruction[11:8]};

	else if(instruction[5:4] == 2'b00)
		imm_data <= {{52{instruction[31]}}, instruction[31:20]};

	else if(instruction[5:4] == 2'b10)
		imm_data <= {{52{instruction[31]}}, instruction[31:25], instruction[11:7]};		
		
end
endmodule