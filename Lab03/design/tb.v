module tb();

	reg[63:0] a;
	reg[63:0] b;
	reg sel;
	wire[63:0] data_out;

	mux m
	(
		.a(a),
		.b(b),
		.sel(sel),
		.data_out(data_out)
	);

	initial
	begin
		a = 64'b1;
		b = 64'b0;
		sel = 1'b0;
	end

	always
	#10 sel = ~sel;

	initial
	#25 a = 64'b101;

	initial
	$monitor("Time = ",$time, "---> data_out = %d",data_out);
endmodule