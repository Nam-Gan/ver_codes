`timescale 1ns/1ps
`include "parking_lot.sv"
module pktb();
  reg clk, a, b, rst;
  wire enter, exit;
  parking uut(.rst(rst), .clk(clk), .a(a), .b(b), .enter(enter), .exit(exit));
  initial begin
    clk = 0;
    forever #10 clk = ~clk;
    end
  initial begin
    $dumpfile("parking.vcd");
    $dumpvars(0, pktb);
  end
  initial begin
    rst = 1; a = 0; b = 0;
    #5 rst = 0;
    #15;
    a = 1'b1; b = 1'b0; #20;
    a = 1'b1; b = 1'b1; #20;
    a = 1'b0; b = 1'b1; #20;
  $finish;
end
endmodule
