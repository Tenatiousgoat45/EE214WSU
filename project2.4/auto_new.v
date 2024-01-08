`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/14/2023 01:51:14 AM
// Design Name: 
// Module Name: auto_new
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


module auto_new(

input [3:0] sw,
output  [1:0] RGB_led_A
    );
    assign RGB_led_A [1] = (~sw[0] & ~sw[1] & ~sw[2] & sw[3]) |
                           (~sw[0]& sw[1] & ~sw[2] & ~sw[3]) | 
                           (sw[0]& ~sw[1] & ~sw[2] & ~sw[3])|
                           (sw[0]& ~sw[1] & ~sw[2] & sw[3]);
                          
                           
    assign RGB_led_A [0] =(~sw[0] & ~sw[1] & sw[2] & sw[3]) |
                           (~sw[0] & sw[1] & ~sw[2] & sw[3]) | 
                           (sw[0] & ~sw[1] & sw[2] & sw[3]) |
                           (sw[0] & sw[1] & ~sw[2] & ~sw[3]);          
endmodule
