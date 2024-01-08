`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2023 11:29:53 AM
// Design Name: 
// Module Name: register
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


module register(
  input [7:0] sw,
    input clk,
    input rst,
    input SP,
    output [15:0] led
    );

wire [15:0] Sout;
wire clko;

counter clock (
    .clk(clk),
    .clkOut(clko)
);


dcell latch1 (
    .rst(rst),
    .clk(clko),
    .SPselect(SP),
    .D(sw[0]),
    .S(Sout[15]),
    .Sout(Sout[0]),
    .Dout(led[0])
);

dcell latch2 (
    .rst(rst),
    .clk(clko),
    .SPselect(SP),
    .D(sw[1]),
    .S(Sout[0]),
    .Sout(Sout[1]),
    .Dout(led[1])
);

dcell latch3 (
    .rst(rst),
    .clk(clko),
    .SPselect(SP),
    .D(sw[2]),
    .S(Sout[1]),
    .Sout(Sout[2]),
    .Dout(led[2])
);

dcell latch4 (
    .rst(rst),
    .clk(clko),
    .SPselect(SP),
    .D(sw[3]),
    .S(Sout[2]),
    .Sout(Sout[3]),
    .Dout(led[3])
);

dcell latch5 (
    .rst(rst),
    .clk(clko),
    .SPselect(SP),
    .D(sw[4]),
    .S(Sout[3]),
    .Sout(Sout[4]),
    .Dout(led[4])
);

dcell latch6 (
    .rst(rst),
    .clk(clko),
    .SPselect(SP),
    .D(sw[5]),
    .S(Sout[4]),
    .Sout(Sout[5]),
    .Dout(led[5])
);

dcell latch7 (
    .rst(rst),
    .clk(clko),
    .SPselect(SP),
    .D(sw[6]),
    .S(Sout[5]),
    .Sout(Sout[6]),
    .Dout(led[6])
);

dcell latch8 (
    .rst(rst),
    .clk(clko),
    .SPselect(SP),
    .D(sw[7]),
    .S(Sout[6]),
    .Sout(Sout[7]),
    .Dout(led[7])
);

dcell latch9 (
    .rst(rst),
    .clk(clko),
    .SPselect(SP),
    .D(),
    .S(Sout[7]),
    .Sout(Sout[8]),
    .Dout(led[8])
);

dcell latch10 (
    .rst(rst),
    .clk(clko),
    .SPselect(SP),
    .D(),
    .S(Sout[8]),
    .Sout(Sout[9]),
    .Dout(led[9])
);

dcell latch11 (
    .rst(rst),
    .clk(clko),
    .SPselect(SP),
    .D(),
    .S(Sout[9]),
    .Sout(Sout[10]),
    .Dout(led[10])
);

dcell latch12 (
    .rst(rst),
    .clk(clko),
    .SPselect(SP),
    .D(),
    .S(Sout[10]),
    .Sout(Sout[11]),
    .Dout(led[11])
);

dcell latch13 (
    .rst(rst),
    .clk(clko),
    .SPselect(SP),
    .D(),
    .S(Sout[11]),
    .Sout(Sout[12]),
    .Dout(led[12])
);

dcell latch14 (
    .rst(rst),
    .clk(clko),
    .SPselect(SP),
    .D(),
    .S(Sout[12]),
    .Sout(Sout[13]),
    .Dout(led[13])
);

dcell latch15 (
    .rst(rst),
    .clk(clko),
    .SPselect(SP),
    .D(),
    .S(Sout[13]),
    .Sout(Sout[14]),
    .Dout(led[14])
);

dcell latch16 (
    .rst(rst),
    .clk(clko),
    .SPselect(SP),
    .D(),
    .S(Sout[14]),
    .Sout(Sout[15]),
    .Dout(led[15])
);

    
endmodule

