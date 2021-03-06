module tb
(
);
  reg clk;
  reg reset;
  wire [31:0] Instruction;

Instruction_Fetch f
	(
		.clk(clk),
		.reset(reset),
		.Instruction(Instruction)
	);

initial
begin
clk = 1'b0;
reset = 1'b0;
#50 reset = 1'b1;
#50 reset = 1'b0;
end 

  always
    #10 clk = ~clk;

endmodule