`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/07/2023 10:51:20 AM
// Design Name: 
// Module Name: mux
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


module mux(
input [3:0] I0,
input [7:4] I1,
input B,
output reg [3:0] Y
    );
    always @(B)
    begin
    if (B==0)
     Y = I0[3:0];
    else 
     Y = I1[7:4];
 end
endmodule
