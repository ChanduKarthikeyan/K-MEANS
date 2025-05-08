module Adder_36bit(
    input [63:0] A,       // 36-bit input A
    input [63:0] B,       // 36-bit input B
    output [63:0] Sum     // 36-bit sum output
);

    // Perform addition
    assign Sum = A + B;

endmodule
