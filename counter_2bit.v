module counter_2bit (
    output reg [1:0] count, // 2-bit counter output
    output reg tc,          // Special output for count = 1
    input clk,              // Clock signal
    input reset             // Synchronous reset
);

    // Sequential logic for the counter
    always @(posedge clk) begin
        if (reset) begin
            count <= 2'b00; // Reset the counter to 0
            tc <= 1'b0;     // Reset the special output
        end else begin
            if (count == 2'b10) begin
                count <= 2'b00; // Reset the counter after reaching 3
                tc <= 1'b0;     // Clear the special output
            end else begin
                count <= count + 1; // Increment the counter
                if (count == 2'b01) begin
                    tc <= 1'b1; // Set the special output at count = 1
                end else begin
                    tc <= 1'b0; // Clear the special output otherwise
                end
            end
        end
    end

endmodule
