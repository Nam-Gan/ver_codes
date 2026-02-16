`include "mux.sv"
module mux_tb();
	logic i1, i2, i3, i4, con1, con2, y;
	mux4_1 uut(i1, i2, i3, i4, con1, con2, y);
	initial begin
		$dumpfile("waves_mux4_1.vcd");
		$dumpvars(0, mux_tb);
		i1 = 1'b1; i2 = 1'b0; i3 = 1'b0; i4 = 1'b0; con1 = 1'b0; con2 = 1'b0; #10;
		i1 = 1'b0; i2 = 1'b0; i3 = 1'b0; i4 = 1'b0; con1 = 1'b0; con2 = 1'b0; #10;
		i1 = 1'b0; i2 = 1'b1; i3 = 1'b0; i4 = 1'b0; con1 = 1'b1; con2 = 1'b1; #10;
		i1 = 1'b0; i2 = 1'b0; i3 = 1'b0; i4 = 1'b0; con1 = 1'b1; con2 = 1'b1; #10;
		i1 = 1'b0; i2 = 1'b0; i3 = 1'b1; i4 = 1'b0; con1 = 1'b1; con2 = 1'b0; #10;
		i1 = 1'b0; i2 = 1'b0; i3 = 1'b0; i4 = 1'b0; con1 = 1'b1; con2 = 1'b0; #10;
		i1 = 1'b0; i2 = 1'b0; i3 = 1'b0; i4 = 1'b1; con1 = 1'b0; con2 = 1'b1; #10;
		i1 = 1'b0; i2 = 1'b0; i3 = 1'b0; i4 = 1'b0; con1 = 1'b0; con2 = 1'b1; #10;
		i1 = 1'b0; i2 = 1'b0; i3 = 1'b0; i4 = 1'b0; con1 = 1'b0; con2 = 1'b0; #10;
		i1 = 1'b1; i2 = 1'b0; i3 = 1'b0; i4 = 1'b0; con1 = 1'b0; con2 = 1'b0; #10;
		i1 = 1'b0; i2 = 1'b0; i3 = 1'b0; i4 = 1'b0; con1 = 1'b1; con2 = 1'b1; #10;
		i1 = 1'b0; i2 = 1'b1; i3 = 1'b0; i4 = 1'b0; con1 = 1'b1; con2 = 1'b1; #10;
		i1 = 1'b0; i2 = 1'b0; i3 = 1'b0; i4 = 1'b0; con1 = 1'b1; con2 = 1'b0; #10;
		i1 = 1'b0; i2 = 1'b0; i3 = 1'b1; i4 = 1'b0; con1 = 1'b1; con2 = 1'b0; #10;
		i1 = 1'b0; i2 = 1'b0; i3 = 1'b0; i4 = 1'b0; con1 = 1'b0; con2 = 1'b1; #10;
		i1 = 1'b0; i2 = 1'b0; i3 = 1'b0; i4 = 1'b1; con1 = 1'b0; con2 = 1'b1; #10;
		$finish;
	end
endmodule
