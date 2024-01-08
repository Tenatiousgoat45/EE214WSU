`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2023 11:10:39 AM
// Design Name: 
// Module Name: D_latch_tb
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


module D_latch_tb;
reg D;
reg G;
wire Q;
wire Qn;

D_latch cut(
.D(D),
.G(G),  
.Q(Q),
.Qn(Qn)
);

initial begin 
D = 1;
G = 1;
#100 D = 0;
#100 D = 1;
#100 G = 0;
#100 G = 1;
#100 D = 0;
     G = 0;
#100 D = 1;
     G = 1;
#100 D = 0;
     G = 0;
#100;
end
endmodule
