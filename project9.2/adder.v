`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2023 08:55:22 AM
// Design Name: 
// Module Name: adder
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


module adder(
    input [7:0] A,
    input [7:0] B,
    input Cin,
    output [7:0] S
    );

reg [7:0] Result;
always @ (Cin)
    begin
    if (Cin == 1)
        Result = A +(B+8'b00000001);
    else 
        Result = A + B;
  end 
assign S = Result;

endmodule
