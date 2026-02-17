module half_adder(
    input logic i1, i2,
    output logic carry, sum
);
    assign sum = i1^i2;
    assign carry = i1 & i2;
    endmodule
module full_adder(
    input logic i1, i2,
    input logic cin,
    output carry, 
    output sum
);
    logic s1, s2, c1, c2;
    half_adder h1(i1, i2, c1, s1);
    half_adder h2(s1, cin, c2, sum);
    assign carry = c1 | c2;
    endmodule
