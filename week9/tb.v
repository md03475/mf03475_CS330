module tb
(
);
  reg [6:0]Opcode;
  wire Branch;
  wire MemRead;
  wire MemtoReg;
  wire [1:0]ALUOp;
  wire MemWrite;
  wire ALUSrc;
  wire RegWrite;

Control_Unit cu
	(
		.Opcode(Opcode),
		.Branch(Branch),
		.MemRead(MemRead),
		.MemtoReg(MemtoReg),
		.ALUOp(ALUOp),
		.MemWrite(MemWrite),
		.ALUSrc(ALUSrc),
		.RegWrite(RegWrite)
	);

initial
begin
Opcode = 7'b0110011;
#50 Opcode = 7'b0000011;
#50 Opcode = 7'b0100011;
#50 Opcode = 7'b1100011;
#50 Opcode = 7'b1100000;
end 
endmodule