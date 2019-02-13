module T_FF
(
	input c,r,
	output q
);
	wire d;
	
	//Intantiate D_FF
	D_FF dff0
	(
		.c(c),
		.r(r),
		.q(q),
		.d(d)
	);
	
	not n1(d,q);
endmodule