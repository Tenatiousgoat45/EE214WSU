`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2023 11:17:33 AM
// Design Name: 
// Module Name: reg1
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


module reg1(
    input clk,
    input [7:0] D,
    input En,
    output [7:0] Q
    
    );
    
    
    
    reg [7:0] tmp;

always @ (posedge(clk)) begin

    if (En == 1) tmp <= D;

end
    
assign Q = tmp;    
  
endmodule
