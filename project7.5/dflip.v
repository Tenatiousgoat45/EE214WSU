`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2023 11:28:51 AM
// Design Name: 
// Module Name: dflip
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



module dflip(
input D,
    input clk,
    input rst,
    output reg sout,
    output reg dout
    );

always @(posedge(clk), posedge(rst))
begin
   if (rst == 1)
   begin
       sout <= 1'b0;	// Q is reset to 0
       dout <= 1'b0;
   end
   else
   begin
       sout <= D;
       dout <= D;
   end
end
    
endmodule