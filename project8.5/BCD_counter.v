`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2023 11:21:44 AM
// Design Name: 
// Module Name: BCD_counter
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


module BCD_counter(
input clk, rst,
    output reg [3:0] bcd_digit0, bcd_digit1, bcd_digit2, bcd_digit3
    );

always @ (posedge(clk), posedge(rst))
begin
    if (rst) bcd_digit0<=0;
    else if (bcd_digit0 > 4'b1001) bcd_digit0 <=0;
    else bcd_digit0 <= bcd_digit0 + 1;
end

always @ (posedge(clk), posedge(rst))
begin
    if (rst)bcd_digit1 <= 0;
    else if (bcd_digit1 > 4'b1001) bcd_digit1 <=0;
    else if (bcd_digit0 > 4'b1001) bcd_digit1 <= bcd_digit1 +1;
    else bcd_digit1 <= bcd_digit1;
end

always @ (posedge(clk), posedge(rst))
begin
    if (rst)bcd_digit2 <= 0;
    else if (bcd_digit2 > 4'b1001) bcd_digit2 <=0;
    else if (bcd_digit1 > 4'b1001) bcd_digit2 <= bcd_digit2 +1;
    else bcd_digit2 <= bcd_digit2;
end

always @ (posedge(clk), posedge(rst))
begin
    if (rst)bcd_digit3 <= 0;
    else if (bcd_digit3 > 4'b1001) bcd_digit3 <=0;
    else if (bcd_digit2 > 4'b1001) bcd_digit3 <= bcd_digit3 +1;
    else bcd_digit3 <= bcd_digit3;
end
endmodule
