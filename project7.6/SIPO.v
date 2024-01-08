`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2023 01:03:02 PM
// Design Name: 
// Module Name: SIPO
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


module SIPO(
input clk,
input reset,
input sw,
output reg [7:0] led
    );

always @ (posedge (clk))
begin
    if (reset)
        led <= 8'b0;
    else
        led[7:0] <= {led[6:0], sw};
 end       
endmodule
