module Program_Counter
(
	input clk,
	input reset,
	input [63:0] PC_In,
	output reg [63:0] PC_Out
);
initial
	PC_Out = 64'd0;
	always @ (posedge clk)
	begin
	if (reset == 1)
		PC_Out = 64'd0;
	else
		PC_Out = PC_In;
	end
endmodule