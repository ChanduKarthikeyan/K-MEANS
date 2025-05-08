`timescale 1ns / 1ps

module mux (
    input wire [5:0] in0,in1,in2,  // 3 inputs, each 4 bits wide
    input wire [1:0] sel,       // 2-bit select signal
    output reg [5:0] out        // 4-bit output
);

    always @(*) begin
        case (sel)
            2'b00: out = in0;
            2'b01: out = in1;
            2'b10: out = in2;
            default: out = 5'b000; // Default case to prevent latches
        endcase
    end

endmodule
