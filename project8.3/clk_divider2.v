`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2023 10:52:45 AM
// Design Name: 
// Module Name: clk_divider2
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


module clk_divider2(
 input clk2, rst,
    output reg clk_div2
    );
	
localparam terminalcount = (500 - 1);
reg [15:0] count;
wire tc;

assign tc = (count == terminalcount);	// Place a comparator on the counter output

always @ (posedge(clk2), posedge(rst))
begin
    if (rst) count <= 0;
    else if (tc) count <= 0;		// Reset counter when terminal count reached
    else count <= count + 1;
end

always @ (posedge(clk2), posedge(rst))
begin
    if (rst) clk_div2 <= 0;
    else if (tc) clk_div2 = !clk_div2;	// T-FF with tc as input signal
end
endmodule
