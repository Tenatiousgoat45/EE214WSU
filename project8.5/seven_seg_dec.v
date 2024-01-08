`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2023 11:25:24 AM
// Design Name: 
// Module Name: seven_seg_dec
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


module seven_seg_dec(
input [3:0] sw,
    output reg [7:0] seg_cat
);
 always @ (sw)
 begin
    case(sw)
    4'b0001: seg_cat <= 8'b11111001;//1
    4'b0010: seg_cat <= 8'b10100100;//2
    4'b0011: seg_cat <= 8'b10110000;//3
    4'b0100: seg_cat <= 8'b10011001;//4
    4'b0101: seg_cat <= 8'b10010010;//5
    4'b0110: seg_cat <= 8'b10000010;//6
    4'b0111: seg_cat <= 8'b11111000;//7
    4'b1000: seg_cat <= 8'b10000000;//8
    4'b1001: seg_cat <= 8'b10010000;//9
    default: seg_cat <= 8'b11000000;//0
    endcase
end
endmodule
