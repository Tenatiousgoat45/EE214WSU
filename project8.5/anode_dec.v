`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2023 11:23:44 AM
// Design Name: 
// Module Name: anode_dec
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


module anode_dec(
input [1:0] sel,
output reg [3:0] Y
    );
 always @(sel,Y)
 begin
     case(sel)
     2'b00: Y <= 4'b1110;
     2'b01: Y <= 4'b1101;
     2'b10: Y <= 4'b1011;
     2'b11: Y <= 4'b0111;
    endcase
end
endmodule
