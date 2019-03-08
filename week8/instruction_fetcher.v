module Instruction_Fetch
(
input clk,
input reset,
output wire [31:0] Instruction
);

wire [63:0] PC_Out;
wire [63:0] Adder_Out;

Adder a
	(
		.a(PC_Out),
		.b(64'd4),
		.out(Adder_Out)	
	);

Instruction_Memory m
	(
		.Inst_Address(PC_Out),
		.Instruction(Instruction)	
	);

Program_Counter p
	(
		.clk(clk),
		.reset(reset),
		.PC_In(Adder_Out),
		.PC_Out(PC_Out)	
	);
endmodule