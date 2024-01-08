`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2023 11:10:15 AM
// Design Name: 
// Module Name: D_latch
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


module D_latch(
input D,
input G, 
output Q, 
output Qn
    );
    wire Q_int, Qn_int, R_int, S_int, N; 
 
 assign #1 N = ~D;
 assign #1 S_int = ~(D & G);
 assign #1 R_int = ~( N & G);
 assign #1 Q_int = ~(S_int & Qn_int);
 assign #1 Qn_int = ~(R_int & Q_int);
 assign Q = Q_int;
 assign Qn = Qn_int;
endmodule
