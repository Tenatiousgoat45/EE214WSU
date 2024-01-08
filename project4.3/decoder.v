`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/23/2023 02:57:58 PM
// Design Name: 
// Module Name: decoder
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


module decoder(
input [1:0] sw,
input [3:0] btn,
output reg[3:0] led
    );
   
always @(sw, btn) begin
    case (sw)
        2'b00: led <= 4'd1 & btn;
        2'b01: led <= 4'd2 & btn;
        2'b10: led <= 4'd4 & btn;
        2'b11: led <= 4'd8 & btn;
        default: led<=4'd0;
        endcase
end
        
endmodule
