module top_control
(
input [6:0]Opcode,
input [3:0]Funct,
output [3:0] Operation
);
wire [1:0] cout;

Control_Unit cu
(
	.Opcode(Opcode),
	.Branch(Branch),
	.MemRead(MemRead),
	.MemtoReg(MemtoReg),
	.ALUOp(cout),
	.MemWrite(MemWrite),
	.ALUSrc(ALUSrc),
	.RegWrite(RegWrite)
);

ALU_Control ac
(
	.ALUOp(cout),
	.Funct(Funct),
	.Operation(Operation)
);
endmodule
	