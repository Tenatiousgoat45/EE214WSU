`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2023 10:51:45 AM
// Design Name: 
// Module Name: wrapper
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


module wrapper(
input clk,
input rst,
output led
    );
 wire Q;
 
clk_divider1 input_clk_divider1(
.clk1(clk),
.rst(rst),
.clk_div1(Q)
);

clk_divider2 output_clk_divider2(
.clk2(Q),
.rst(rst),
.clk_div2(led)
);
endmodule
