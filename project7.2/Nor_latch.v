`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2023 10:07:31 AM
// Design Name: 
// Module Name: Nor_latch
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


module Nor_latch(
input R, 
input S, 
output Q,
output Qn
    );
 wire Q_int;
 wire Qn_int;
 
assign #1 Q_int = (~S & ~Q_int);
assign #1 Qn_int =  ( ~R & ~Qn_int);
assign Q = Q_int;
assign Qn = Qn_int;
endmodule
