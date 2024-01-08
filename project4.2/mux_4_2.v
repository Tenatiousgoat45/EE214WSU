`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2023 11:11:05 AM
// Design Name: 
// Module Name: mux_4_2
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


module mux_4_2(
input [2:0] sw0, sw1, sw2, sw3,
input [1:0] btn,
output [2:0] led
    );
    
reg [2:0] tmp;
 
 always @(sw0, sw1, sw2, sw3, btn) begin
    case (btn)
    2'b00:  tmp <= sw0;
    2'b01:  tmp <= sw1; 
    2'b10:  tmp <= sw2;
    2'b11:  tmp <= sw3;
    default: tmp <= 3'b000;
    endcase
 end
 assign led=tmp;
endmodule
