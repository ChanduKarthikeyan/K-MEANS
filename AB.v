module AB(x,y,dem,sl,out,clk,reset);
input [31:0] x,y;
input clk,reset,sl;
input [5:0] dem;
output [31:0] out;
wire [31:0] ad1,out1,ad2,out2;
wire [5:0] ignore;
mux17b2x1 a1(x,y,sl,ad1);
Adder_18bit a2(ad1,ad2,out1);
dff18 a6(out1,out2,clk,reset);
dff18 a7(out1,ad2,clk,reset);
divide32 d1(dem,out2,out,ignore);
endmodule 