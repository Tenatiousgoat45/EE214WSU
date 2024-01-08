`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2023 11:24:42 AM
// Design Name: 
// Module Name: pipo
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


module pipo(
input [7:0] sw,
input [1:0] btn,
input clk, 
output [7:0] led
    );
 wire [7:0] sdata;
 
 register input_register(
 .btn0(btn[0]),
 .D(sw),
 .clk(clk),
 .Q(sdata)
 );
 
 mux output_mux (
 .I0(sw),
 .I1(sdata),
 .btn1(btn[1]),
 .led(led)
 );
 
endmodule
