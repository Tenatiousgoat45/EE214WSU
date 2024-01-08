`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/29/2023 10:35:03 PM
// Design Name: 
// Module Name: SA_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module SA_tb;
reg A;
reg B;
wire F;
wire Cout;
reg clk;
reg rst;

SA cut(
.A(A),
.B(B),
.F(F),
.Cout(Cout),
.clk(clk),
.rst(rst)
);

integer k;
initial begin 
    for (k=0; k < 16; k=k+1)
    begin 
    clk = k[0];
    A=k[1];
    B=k[2];
    rst=k[3];
    #5;
   end
end
endmodule
