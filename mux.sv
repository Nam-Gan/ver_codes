module mux2_1 (
	input logic i1,
	input logic i2,
	input logic con,
	output logic y);
	assign y = (~con & i1) | (con & i2);
	endmodule
module mux4_1 (
	input logic i1,
	input logic i2,
	input logic i3,
	input logic i4,
	input logic con1,
	input logic con2,
	output logic y);
	logic y1, y2, con3;
	mux2_1 m1(i1, i2, con1, y1);
	mux2_1 m2(i3, i4, con2, y2);
	assign con3 = con1 ^ con2;
	mux2_1 final_mux(y1, y2, con3, y);
	endmodule
	
