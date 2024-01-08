`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2023 11:27:35 AM
// Design Name: 
// Module Name: dcells
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


module dcell(
 input rst,
    input clk,
    input SPselect,
    input D,
    input S,
    output Sout,
    output Dout
    );
    
wire muxout;

mux2 select(
    .s(SPselect),
    .serial(S),
    .parr(D),
    .out(muxout)
);

dflip latch (
    .D(muxout),
    .clk(clk),
    .rst(rst),
    .sout(Sout),
    .dout(Dout)
);

    
endmodule
