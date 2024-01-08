`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/07/2023 10:02:05 AM
// Design Name: 
// Module Name: CLA_4bit
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


module CLA_4bit(
input [3:0] A,B,
input Cin, 
output Cout, 
//output PG, GG,
output [3:0] S
    );
   wire [3:0] G,P,C;
   
 assign G = A & B;
 assign P = A ^ B;
 assign S = P ^ C; 
 assign C[0] = Cin;
 assign C[1] = G[0] | (P[0] & C[0]);
 assign C[2] = G[1] | (P[1] & G[0]) | (P[1] & P[0] &C[0]);
 assign C[3] = G[2] | ( P[2] & G[1])  | (P[2] & P[1] & G[0]) | (P[2] & P[1] & P[0] & C[0]);
 assign Cout = G[3] | (P[3] & G[2]) | (P[3] & P[2] & G[1]) | (P[3] & P[2] & P[1] & G[0]) | (P[3] & P[2] & P[1] & P[0] & C[0]);
// assign Pg = P[3] & P[2] & P[1] & P[0];
// assign GG = G[3] | (P[3] & G[2]) | (P[3] & P[2] & G[1]) | (P[3] & P[2] & P[1] & G[0]);
endmodule
