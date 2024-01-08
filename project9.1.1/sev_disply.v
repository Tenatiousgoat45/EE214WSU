`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/07/2023 11:10:57 AM
// Design Name: 
// Module Name: sev_disply
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


module sev_disply(
input [3:0] sw,
output reg [7:0] seg_cat,
output [3:0] seg_an
    );
  
 always @ (sw)
 begin
    case(sw)
    4'b0000: seg_cat <= 7'b1000000; // number 0
    4'b0001: seg_cat <= 7'b1111001; // number 1
    4'b0010: seg_cat <= 7'b0100100; // number 2
    4'b0011: seg_cat <= 7'b0110000; // number 3
    4'b0100: seg_cat <= 7'b0011001; // number 4
    4'b0101: seg_cat <= 7'b0010010; // number 5
    4'b0110: seg_cat <= 7'b0000010; // number 6
    4'b0111: seg_cat <= 7'b1111000; // number 7
    4'b1000: seg_cat <= 7'b0000000; // number 8
    4'b1001: seg_cat <= 7'b0010000; // number 9
 
//    4'b1010: seg_cat <= 7'b0001000; // leter A
//    4'b1011: seg_cat <= 7'b0000011; // leter B
//    4'b1100: seg_cat <= 7'b0100111; // leter C
//    4'b1101: seg_cat <= 7'b0100001; // leter D
//    4'b1110: seg_cat <= 7'b0000110; // Leter E
//    4'b1111: seg_cat <= 7'b0001110; // leter F
    
    default: seg_cat <= 7'b1111111;
    endcase
 end
 assign seg_an [3:0] = 4'b1100;
endmodule
