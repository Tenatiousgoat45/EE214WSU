`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2023 12:45:28 AM
// Design Name: 
// Module Name: wrapper
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


module wrapper(
input clk,
 input [7:0] sw,
    output [7:0] led,
    output RGB_led_R
);
wire [2:0] timer;
wire sdata;

counter input_counter (
.clk(clk),
.B(timer)
);
mux input_mux (
    .I(sw),
    .S(timer),
    .Y(sdata)
);

demux output_demux (
    .EN(sdata),
    .I(timer),
    .Y(led)
);
assign RGB_led_R = sdata;
endmodule
