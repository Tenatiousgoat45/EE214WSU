`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2023 12:40:50 PM
// Design Name: 
// Module Name: EE214_Project8Rq4_BCDCounter
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
module EE214_Project8Rq4_BCDCounter(
    input clk, rst,
    output reg [3:0] bcd_digit
);

always @ (posedge(clk), posedge(rst))
begin
    if (rst) bcd_digit <= 0;
    else if (bcd_digit == 4'b1001) bcd_digit <= 0;
    else bcd_digit <= bcd_digit + 1;
end

endmodule

module EE214_Project8Rq4_Decoder(
    input [3:0] sw,
    input rst,
    output [6:0] seg_cat,
    output [3:0] seg_an
);

reg [6:0] tmp;

always @ (sw, rst, seg_cat)
begin
    if (rst == 1'b0)
        if (sw == 4'd1)
            tmp <= 7'b0000110;
        else if (sw == 4'd2)
            tmp <= 7'b1011011;
        else if (sw == 4'd3)
            tmp <= 7'b1001111;
        else if (sw == 4'd4)
            tmp <= 7'b1100110;
        else if (sw == 4'd5)
            tmp <= 7'b1101101;
        else if (sw == 4'd6)
            tmp <= 7'b1111101;
        else if (sw == 4'd7)
            tmp <= 7'b0000111;
        else if (sw == 4'd8)
            tmp <= 7'b1111111;
        else if (sw == 4'd9)
            tmp <= 7'b1100111;
        else
            tmp <= 7'b0111111;
    else 
        tmp <= 7'b0111111;
end

assign seg_cat = ~tmp;
assign seg_an = 4'b1110;

endmodule

module EE214_Project8Rq4_1kHz(
    input clk, rst,
    output reg led
);
	
localparam terminalcount = (50000 - 1);
reg [15:0] count;
wire tc;

assign tc = (count == terminalcount);	// Place a comparator on the counter output

always @ (posedge(clk), posedge(rst))
begin
    if (rst) count <= 0;
    else if (tc) count <= 0;		// Reset counter when terminal count reached
    else count <= count + 1;
end

always @ (posedge(clk), posedge(rst))
begin
    if (rst) led <= 0;
    else if (tc) led = !led;	// T-FF with tc as input signal
end

endmodule

module EE214_Project8Rq4_1Hz(
    input clk, rst,
    output reg led
);
	
localparam terminalcount = (500 - 1);
reg [15:0] count;
wire tc;

assign tc = (count == terminalcount);	// Place a comparator on the counter output

always @ (posedge(clk), posedge(rst))
begin
    if (rst) count <= 0;
    else if (tc) count <= 0;		// Reset counter when terminal count reached
    else count <= count + 1;
end

always @ (posedge(clk), posedge(rst))
begin
    if (rst) led <= 0;
    else if (tc) led = !led;	// T-FF with tc as input signal
end

endmodule
