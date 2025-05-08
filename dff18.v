module dff18 (
	 input wire [31:0] D,          // 34-bit data input
    output reg [31:0] Q,
    input wire clk,               // Clock input
    input wire reset             // Synchronous reset input
               // 34-bit data output
);
    always @(posedge clk) begin
        if (reset) 
            Q <= 32'b0;           // Reset the output to 0
        else 
            Q <= D;               // Capture the input on the rising edge of the clock
    end
endmodule
