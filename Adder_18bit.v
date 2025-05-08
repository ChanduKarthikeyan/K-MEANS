module Adder_18bit(
    input [31:0] A,       // 36-bit input A
    input [31:0] B,       // 36-bit input B
    output [31:0] Sum     // 36-bit sum output
);

    // Perform addition
    assign Sum = A + B;

endmodule
