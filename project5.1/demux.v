`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2023 12:35:50 AM
// Design Name: 
// Module Name: demux
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


module demux(
input EN,
input [2:0] I,
output reg [7:0] Y
    );
    always @ (I, EN)
    if(EN==1)
        begin
        if (I == 3'd0) Y = 8'd1;
        else if (I==3'd1) Y = 8'd2;
        else if (I==3'd2) Y = 8'd4;
        else if (I==3'd3) Y = 8'd8;
        else if (I==3'd4) Y = 8'd16;
        else if (I==3'd5) Y = 8'd32;
        else if (I==3'd6) Y = 8'd64;
        else Y=8'd128;
        end
     else Y=0;
endmodule
