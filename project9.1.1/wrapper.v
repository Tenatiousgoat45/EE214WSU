`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/07/2023 11:47:31 AM
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
input [3:0] A,B,
input Cin, 
input clk,
output [7:0] seg_cat,
output [3:0] seg_an
    );
wire [3:0] sdata;
wire [7:0] ydata;
wire [3:0] I0data;
wire [3:0] I1data;
wire [3:0] xdata;

assign I0data = ydata [3:0];
assign I1data = ydata [7:4];

CLA_4bit input_CLA_4bit(
.A(A),
.B(B),
.Cin(Cin),
.S(sdata)
);

bin2bcd input_bin2bcd(
.bin(sdata),
.bcd(ydata)
);
mux1 input_mux1(
.I0(I0data),
.I1(I1data),
.B(clk),
.Y(xdata)
);

sev_disply output_sev_disply(
.sw(xdata),
.seg_cat(seg_cat),
.seg_an(seg_an)
);

endmodule
