`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2023 11:18:59 AM
// Design Name: 
// Module Name: clk_divider
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


module clk_divider(
 input clk, rst,
    output reg clk1
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
    if (rst) clk1 <= 0;
    else if (tc) clk1 = !clk1;	// T-FF with tc as input signal
end
endmodule
