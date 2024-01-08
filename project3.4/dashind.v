`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/20/2023 10:34:57 PM
// Design Name: 
// Module Name: dashind
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


module dashind(
input [4:0] sw,
output [1:0] led
    );
    assign led[0] = (sw[1] | sw[4]) | (sw[0] & sw[3]);
    assign led[1] = (sw[1] & (sw[0] | sw[4])) | sw[2] |sw[3];
endmodule
