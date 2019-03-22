module tb3
(
);
  reg [6:0]Opcode;
  reg [3:0]Funct;
  wire [3:0] Operation;

top_control tc
	(
		.Opcode(Opcode),
		.Funct(Funct),
		.Operation(Operation)
	);

initial
begin
Opcode= 7'b0110011;
Funct = 4'b0000;
#50 Funct = 4'b1000;
#50 Funct = 4'b0111;
#50 Funct = 4'b0110;
#50 Opcode= 7'b0000011;
#50 Opcode= 7'b0100011;
#50 Opcode= 7'b1100011;
end 

endmodule