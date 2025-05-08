module EDC(xa,xb,ya,yb,out,clk,reset);
input [31:0] xa,xb,ya,yb;
input clk,reset;
output [63:0] out;
wire [31:0] sub1,sub2,xa1,xb1,ya1,yb1;
wire [63:0] mul1,mul2,add;
dff18 a6(xa,xa1,clk,reset);
dff18 a7(xb,xb1,clk,reset);
dff18 a8(ya,ya1,clk,reset);
dff18 a9(yb,yb1,clk,reset);
Subtractor_18bit a1(xa1,xb1,sub1);
Subtractor_18bit a2(ya1,yb1,sub2);
Multiplier_18bit a3(sub1,sub1,mul1);
Multiplier_18bit a4(sub2,sub2,mul2);
Adder_36bit  a5(mul1,mul2,add);
dff34 a10(add,out,clk,reset);
endmodule
