`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2023 09:33:09 PM
// Design Name: 
// Module Name: sr_latch_tb
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


module sr_latch_tb;
wire Q;
wire Qn;
reg S;
reg R; 

sr_latch cut(
.Q(Q),
.Qn(Qn),
.S(S),
.R(R)
);

initial begin
    // Initialize Inputs
    S = 1;
    R = 1;

    // Add stimulus here
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
