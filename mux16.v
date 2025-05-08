
module mux16 (
    input wire [15:0] in0,in1,in2,  // 3 inputs, each 4 bits wide
    input wire [1:0] sel,       // 2-bit select signal
    output reg [15:0] out        // 4-bit output
);

    always @(*) begin
        case (sel)
            2'b00: out = in0;
            2'b01: out = in1;
            2'b10: out = in2;
            default: out = 15'b0; // Default case to prevent latches
        endcase
    end

endmodule
