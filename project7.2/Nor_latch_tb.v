`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2023 10:08:45 AM
// Design Name: 
// Module Name: Nor_latch_tb
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


module Nor_latch_tb;
wire Q;
wire Qn;
reg S;
reg R; 

Nor_latch cut(
.Q(Q),
.Qn(Qn),
.S(S),
.R(R)
);

initial begin
S=1;
R=1;
 #100 S = 0;
    #100 S = 1;
    #100 R = 0;
    #100 R = 1;
    #100 S = 0;
         R = 0;
    #100 S = 1;
         R = 1;
    #100 S = 0;
         R = 0;
    #100 ;
end
endmodule
