`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2023 10:00:36 AM
// Design Name: 
// Module Name: CombCirc
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


module CombCirc(
input A,
input B,
input C, 
output X
    );
    
wire N1, N2, N3;

assign #1 N1 = A & B;
assign #1 N2 = ~B;
assign #1 N3 = N2 & C;
assign #1 X = N1 | N3;

endmodule
