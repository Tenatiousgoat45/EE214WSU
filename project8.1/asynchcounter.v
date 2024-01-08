`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2023 12:31:26 AM
// Design Name: 
// Module Name: asynchcounter
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

module asynchcounter(
    input clk,
    input rst,
    output led
    );


wire [26:0] din;
wire [26:0] clkdiv;

FDC dff_inst0 (
    .C(clk),
    .CLR(rst),
    .D(din[0]),
    .Q(clkdiv[0])
);

genvar i;
generate
for (i = 1; i < 27; i=i+1)
begin : dff_gen_label
    FDC dff_inst0 (
        .C(clkdiv[i-1]),
        .CLR(rst),
        .D(din[i]),
        .Q(clkdiv[i])
    );
    end
endgenerate

assign din = ~clkdiv;

assign led = clkdiv[26];
endmodule
