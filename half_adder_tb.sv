`include "half_adder.sv"
module half_adder_tb();
    logic [0:1] i;
    logic carry, sum;
    half_adder uut(i, carry, sum);
    initial begin
        $dumpfile("waves_half_adder.vcd");
        $dumpvars(0, half_adder_tb);
        i = 2'b00; #10;
        i = 2'b01; #10;
        i = 2'b10; #10;
        i = 2'b11; #10;
        $finish;
    end
endmodule