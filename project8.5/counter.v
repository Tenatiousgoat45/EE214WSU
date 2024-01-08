`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2023 11:22:33 AM
// Design Name: 
// Module Name: counter
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


module counter(
input clk, rst,
    output [1:0] sel
    );
    reg [15:0] tmp;
 always @ (posedge(clk), posedge(rst))
 begin
     if (rst) tmp <= 0;
     else tmp <= tmp + 1;
end
assign sel = tmp [11:10];
endmodule
