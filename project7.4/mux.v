`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2023 11:25:38 AM
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
input [7:0] I0,
input [7:0] I1,
input btn1,
output reg [7:0] led
 );
 
 always @ (I0, I1, btn1)
 begin
    if(btn1 == 1'b0)
    led <= I0;
    else
    led <= I1;
end
endmodule
