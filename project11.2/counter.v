`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2023 07:20:10 PM
// Design Name: 
// Module Name: counter
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


module counter(
input clk,
input rst, 
input En,
output reg out 
    );
 reg [16:0] cout;
 
always @ (posedge clk)
begin 
    if (En)
    begin
        if (clk) cout <= cout+1;
     end 
     out = cout[16];
 end
endmodule
