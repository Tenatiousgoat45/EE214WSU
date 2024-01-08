`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/14/2023 11:16:20 AM
// Design Name: 
// Module Name: curicut4
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


module curicut4(
input [11:0] sw,
output [9:0] led
    );
    assign led[3] = (~sw[3] & ~sw[4] & sw[5] & ~sw[6]) |
                    (~sw[3] & ~sw[4] & sw[5] & sw[6]) |
                (~sw[3] & sw[4] & sw[5] & ~sw[6]) |
                (~sw[3] & sw[4] & sw[5] & sw[6]) |
                (sw[3] & ~sw[4] & ~sw[5] & ~sw[6]) |
                (sw[3] & ~sw[4] & ~sw[5] & sw[6]) |
                (sw[3] & sw[4] & ~sw[5] & ~sw[6]) |
                (sw[3] & sw[4] & ~sw[5] & sw[6]);
    endmodule
