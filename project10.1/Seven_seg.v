`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2023 10:19:25 AM
// Design Name: 
// Module Name: Seven_seg
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


module Seven_seg(
input [7:0] I,
output [6:0] seg_cat,
output [3:0] seg_an
);

reg [6:0] tmp;

always @ (I)
begin
    if (I == 8'd1)
        tmp <= 7'b0000110;
    else if (I == 8'd2)
        tmp <= 7'b1011011;
    else if (I == 8'd3)
        tmp <= 7'b1001111;
    else if (I == 8'd4)
        tmp <= 7'b1100110;
    else if (I == 8'd5)
        tmp <= 7'b1101101;
    else if (I == 8'd6)
        tmp <= 7'b1111101;
    else if (I == 8'd7)
        tmp <= 7'b0000111;
    else if (I == 8'd8)
        tmp <= 7'b1111111;
    else if (I == 8'd9)
        tmp <= 7'b1100111;
    else
        tmp <= 7'b0111111;
end

assign seg_cat = ~tmp;
assign seg_an = 4'b1110;
endmodule
