module kmeans(x1,y1,abxc2,abyc2,abc,y2o,x2o,sl,cwo,about,edcoutput,indx,indxc,clk,reset);
    input [31:0] x1,y1;
    input [6:0] abxc2,abyc2,abc;
    wire [31:0] x2,y2;
    wire [63:0] edcout;
    reg [15:0] ab1; // Change from wire to reg
    input clk,reset;
    input [1:0] sl;
    output [31:0] y2o,x2o;
    output [63:0] edcoutput;
    output [1:0] indx;
    output indxc;
    output [5:0] cwo;
    wire [5:0] cw;
    wire [15:0] about1;
    output [15:0] about;

    // Instantiate modules
    xc i1(abxc2,clk,x2);
    yc i2(abyc2,clk,y2);
    EDC p1(x1,x2,y1,y2,edcout,clk,reset);
    MFB p2(edcout,indx,indxc,clk,reset);
    cb1 p3(abc,ab1,indxc,indx,sl,cw,about1,clk,reset);

    // Proper assignment using always block
    always @(*) begin
        ab1 = 16'b0; // Initialize ab1 to avoid latches
        ab1[6:0] = abxc2;
        ab1[14:8] = abyc2;
    end

    // Assign outputs
    assign about = about1;
    assign y2o = y2;
    assign x2o = x2;
    assign edcoutput = edcout;
    assign cwo = cw;

endmodule
