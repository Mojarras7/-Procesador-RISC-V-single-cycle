module Adder (
    input [31:0] in1,
    input [31:0] in2,
    output [31:0] sum
);
    assign sum = in1 + in2;
endmodule
