`timescale 1ns / 1ps

module tb;
    // Testbench signals
    reg [31:0] x1, y1;
    reg [6:0] abxc2, abyc2, abc;
    reg clk, reset;
    reg [1:0] sl;
    wire [31:0] y2o, x2o;
    wire [63:0] edcoutput;
    wire [1:0] indx;
    wire indxc;
    wire [5:0] cwo;
    wire [15:0] about;

    // Instantiate the Design Under Test (DUT)
    kmeans DUT (
        .x1(x1),
        .y1(y1),
        .abxc2(abxc2),
        .abyc2(abyc2),
        .abc(abc),
        .y2o(y2o),
        .x2o(x2o),
        .sl(sl),
        .edcoutput(edcoutput),
        .indx(indx),
        .indxc(indxc),
        .clk(clk),
        .reset(reset)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin
        // Initialize inputs
        clk = 0;
        reset = 1;
        x1 = 0;
        y1 = 0;
        abxc2 = 0;
        abyc2 = 0;
        abc = 0;
        sl = 0;
        
        // Apply reset
        #10 reset = 0;
        #10 reset = 1;
        
        // End simulation
        #100 $finish;
    end

endmodule
