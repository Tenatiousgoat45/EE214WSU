`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2023 10:11:41 AM
// Design Name: 
// Module Name: bin2seg
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


module bin2seg(
input [3:0] sw,
output reg [7:0] seg_cat,
output [3:0] seg_an
    );
 assign seg_an [0] = 4'b1110;
  
 always @ (sw)
 begin
    case(sw)
    4'b0000: seg_cat <= 7'b1000000;
    4'b0001: seg_cat <= 7'b1111001;
    4'b0010: seg_cat <= 7'b0100100;
    4'b0011: seg_cat <= 7'b0110000;
    4'b0100: seg_cat <= 7'b0011001;
    4'b0101: seg_cat <= 7'b0010010;
    4'b0110: seg_cat <= 7'b0000010;
    4'b0111: seg_cat <= 7'b1111000;
    4'b1000: seg_cat <= 7'b0000000;
    4'b1001: seg_cat <= 7'b0010000;
    
    4'b1010: seg_cat <= 7'b0001000;
    4'b1011: seg_cat <= 7'b0000011;
    4'b1100: seg_cat <= 7'b0100111;
    4'b1101: seg_cat <= 7'b0100001;
    4'b1110: seg_cat <= 7'b0000110;
    4'b1111: seg_cat <= 7'b0001110;
    
    default: seg_cat <= 7'b1111111;
    endcase
 end
endmodule
