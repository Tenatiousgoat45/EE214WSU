`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2023 10:48:19 AM
// Design Name: 
// Module Name: mux1
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


module mux1(
input [3:0] I0,
input [3:0] I1,
input B,
output reg [3:0] Y
    );
    always @(B)
    begin
    if (B==0)
     Y = I0[3:0];
    else 
     Y = I1[3:0];
 end
endmodule
