module Multiplier_18bit(
    input [31:0] A,       // 18-bit input A
    input [31:0] B,       // 18-bit input B
    output [63:0] Result  // 36-bit result of multiplication
);

    // Perform multiplication
    assign Result = A * B;

endmodule