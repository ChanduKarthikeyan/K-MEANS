module count5 (
    input clk,       // Clock input
    input rst,       // Reset input (active high)
    output reg out   // Output high for one clock cycle after 5 counts
);

reg [2:0] count; // 3-bit counter (0 to 4)

always @(posedge clk or posedge rst) begin
    if (rst) begin
        count <= 0;
        out <= 0;
    end else begin
        if (count == 4) begin
            count <= 0;   // Reset counter
            out <= 1;     // Output high for one cycle
        end else begin
            count <= count + 1; // Increment counter
            out <= 0;
        end
    end
end

endmodule
