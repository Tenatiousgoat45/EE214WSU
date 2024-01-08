`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2023 11:25:56 AM
// Design Name: 
// Module Name: register
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


module register(
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
