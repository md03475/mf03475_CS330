module T_FF
(
	input c, r,
	output q
);
	wire d;


	D_FF dff0
	(
		.c(c),
		.r(r),
		.q(q),
		.d(d)
	);

	not N1(d,q);
endmodule
