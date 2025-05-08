module dff2 (
    input  [1:0] D,          // 2-bit data input
    output reg [1:0] Q,          // 2-bit data output
    input wire clk,               // Clock input
    input wire reset,             // Asynchronous reset input
    input wire enable             // Enable input to control the latching of D
);

    always @(posedge clk or posedge reset) begin
        if (reset) 
            Q <= 2'b0;           // Reset the output to 0 when reset is active
        else if (enable) 
            Q <= D;              // Capture the input D when enable is active
        // If enable is 0, Q holds its previous value (no change)
    end

endmodule
