`timescale 1ns / 1ps

module demux (
    input wire in,
    input wire [1:0] sel,
    output reg [2:0] out
);

always @(*) begin
    // Default values
    out = 3'b000;
    case (sel)
        2'b00: out[0] = in;
        2'b01: out[1] = in;
        2'b10: out[2] = in;
        default: out = 3'b000; // Default case to handle undefined 'sel' values
    endcase
end

endmodule
