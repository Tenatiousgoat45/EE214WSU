`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2023 10:54:12 AM
// Design Name: 
// Module Name: inverter
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


module inverter(
input [7:0] B,
input inv,
output [7:0] b_out
    );
reg [7:0] tmp;

 always @ (inv, B)
    begin
        if (inv == 1)
            tmp <= ~B;
        else 
            tmp <= B;
   end
   assign b_out=tmp;
 
endmodule
