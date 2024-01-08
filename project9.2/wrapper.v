`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2023 10:30:41 AM
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
input [7:0] sw,
input x,y,z,
input clk,
output [3:0] seg_an,
output [6:0] seg_cat
    );
    
wire [7:0] dataA;
wire [7:0] dataB;
wire [7:0] datab;
wire [7:0] data_add;
wire [7:0] data_seg;

reg1 input_reg1(
.btn0(x),
.clk(clk),
.D(sw),
.Q(sdatA)
);

reg2 input_reg2(
.btn0(y),
.clk(clk),
.D(sw), 
.Q(dataB)
);

inverter input_inverter(
.B(dataB),
.inv(z),
.b_out(datab)
);

adder input_adder(
.A(dataA),
.B(datab),
.Cin(z),
.S(data_add)
);

bin2bcd input_bin2bcd(
.bin(data_add),
.bcd(data_seg)
);

seven_seg_controller output_seven_seg_controller(
.bcdIn(data_add),
.clk(clk),
.catOut(seg_cat),
.anOut(seg_an)
);


endmodule
