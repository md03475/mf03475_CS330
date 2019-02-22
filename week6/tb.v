module tb
(
);
reg a;
reg b;
reg CarryIn;
reg[3:0] ALUOp;
wire result;
wire CarryOut;

ALU_1_bit m
(
.a(a),
.b(b),
.CarryIn(CarryIn),
.ALUOp(ALUOp),
.result(result),
.CarryOut(CarryOut)
);

initial
begin
	a = 1'b0;
	b = 1'b0;
	CarryIn = 1'b0;
	ALUOp = 4'b0000;
	#50 b = ~b;
	#50 CarryIn = ~CarryIn;
	
	#50 ALUOp = 4'b0001;
	#50 a = ~a;
	#50 CarryIn = ~CarryIn;

	#50 ALUOp = 4'b0010;
	#50 a = ~a;
	#50 CarryIn = ~CarryIn;
	
	#50 ALUOp = 4'b0110;
	#50 b = ~b;
	#50 CarryIn = ~CarryIn;

	#50 ALUOp = 4'b1100;
	#50 a = ~a;
	#50 CarryIn = ~CarryIn;
end
endmodule
