module top
(
	input clk,reset,rx,
	output [3:0] q,
	output tx
);
	wire [7:0] counter_data;
	assign counter_data = {4'b0000,q};
	ripple_carry_counter RCC
	(
		.clk(clk),
		.reset(reset),
		.q(q)
	);
	
	uart_top UTP
	(
		.clk(clk),
		.reset(reset),
		.data_to_tx(counter_data),
		.rx(rx),
		.tx(tx)
	);
endmodule