`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2023 11:17:37 AM
// Design Name: 
// Module Name: mux
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


module mux(
input [3:0] I0,
input [3:0] I1,
input [3:0] I2,
input [3:0] I3,
input [1:0] sel,
output reg [3:0] Y
    );
 
always @(I0, I1, I2, I3, sel) begin
case(sel)
2'b00: Y <= I0;
2'b01: Y <= I1;
2'b10: Y <= I2;
2'b11: Y <= I3;
endcase
end
endmodule
