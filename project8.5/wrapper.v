`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2023 11:16:49 AM
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
input rst,
output [7:0] seg_cat,
output [3:0] seg_an
    );
wire new_clk;
wire [3:0] sdata;
wire [3:0] mdata0;
wire [3:0] mdata1;
wire [3:0] mdata2;
wire [3:0] mdata3;
wire [1:0] select;
wire [3:0] An;
wire [7:0] Cat;

mux input_mux(
.I0(mdata0),
.I1(mdata1),
.I2(mdata2),
.I3(mdata3),
.sel(select),
.Y(sdata)
);

clk_divider input_clk_divider(
.clk(clk),
.rst(rst),
.clk1(new_clk)
);

BCD_counter input_BCD_counter(
.clk(clk),
.rst(rst),
.bcd_digit0(mdata0),
.bcd_digit1(mdata1),
.bcd_digit2(mdata2),
.bcd_digit3(mdata3)
);

counter input_counter(
.clk(new_clk),
.rst(rst),
.sel(select)
);

anode_dec output_anode_dec(
.sel(select),
.Y(An)
);

seven_seg_dec output_seven_seg_dec(
.sw(sdata),
.seg_cat(Cat)
);
assign seg_an= An;
assign seg_cat=Cat;
endmodule
