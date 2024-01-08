`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2023 12:39:53 PM
// Design Name: 
// Module Name: EE214_Project8Rq4_Wrapper
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

module EE214_Project8Rq4_Wrapper(
	input clk, rst,
	output [6:0] seg_cat,
	output [3:0] seg_an
);

wire data1;
wire data2;
wire [3:0] bcd_digit;

EE214_Project8Rq4_1kHz input_1kHz(
    .clk(clk),
    .rst(rst),
    .led(data1)
);

EE214_Project8Rq4_BCDCounter input_bcdcounter(
    .clk(data2),
    .rst(rst),
    .bcd_digit(bcd_digit)
);

EE214_Project8Rq4_Decoder output_decoder(
    .sw(bcd_digit),
    .rst(rst),
    .seg_cat(seg_cat),
    .seg_an(seg_an)
);

EE214_Project8Rq4_1Hz output_1Hz(
	.clk(data1),
	.rst(rst),
	.led(data2)
);

endmodule
