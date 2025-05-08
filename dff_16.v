module dff_16 (
    input clk,          // Clock input
    input rst,          // Synchronous reset input (active high)
    input [15:0] d,     // 16-bit data input
    output reg [15:0] q // 16-bit data output
);

always @(posedge clk) begin
    if (rst) 
        q <= 16'b0;  // Reset all bits to 0
    else 
        q <= d;       // Latch input data to output
end

endmodule
