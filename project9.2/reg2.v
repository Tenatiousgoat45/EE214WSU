`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2023 09:40:51 AM
// Design Name: 
// Module Name: reg2
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


module reg2(
input btn0,
input clk,
input [7:0] D,
output [7:0] Q
);
reg [7:0] tmp;

always @ (posedge (btn0), posedge (clk))
begin
    if (btn0 == 1)
         tmp <= D;    
end
assign Q = tmp;
endmodule
