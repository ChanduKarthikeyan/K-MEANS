module Subtractor_18bit(
    input [31:0] A,       // 18-bit input A
    input [31:0] B,       // 18-bit input B
    output [31:0] Result  // 18-bit result of subtraction
);

    // Perform subtraction
    assign Result = A - B;

endmodule
