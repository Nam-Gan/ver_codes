`include "half_adder.sv"
module full_adder_tb();
    logic i1, i2, cin, sum, carry;
    full_adder uut(i1, i2, cin, carry, sum);
    initial begin
        $dumpfile("waves_full_adder.vcd");
        $dumpvars(0, full_adder_tb);
        i1 = 1'b0; i2 = 1'b0; cin = 1'b0; #10;
        i1 = 1'b0; i2 = 1'b0; cin = 1'b1; #10;
        i1 = 1'b0; i2 = 1'b1; cin = 1'b0; #10;
        i1 = 1'b0; i2 = 1'b1; cin = 1'b1; #10;
        i1 = 1'b1; i2 = 1'b0; cin = 1'b0; #10;
        i1 = 1'b1; i2 = 1'b0; cin = 1'b1; #10;
        i1 = 1'b1; i2 = 1'b1; cin = 1'b0; #10;
        i1 = 1'b1; i2 = 1'b1; cin = 1'b1; #10;
        $finish;
    end
endmodule