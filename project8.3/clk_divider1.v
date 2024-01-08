`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2023 10:52:26 AM
// Design Name: 
// Module Name: clk_divider1
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


module clk_divider1(
 input clk1, rst,
    output reg clk_div1
    );
	
localparam terminalcount = (50000 - 1);
reg [15:0] count;
wire tc;

assign tc = (count == terminalcount);	// Place a comparator on the counter output

always @ (posedge(clk1), posedge(rst))
begin
    if (rst) count <= 0;
    else if (tc) count <= 0;		// Reset counter when terminal count reached
    else count <= count + 1;
end

always @ (posedge(clk1), posedge(rst))
begin
    if (rst) clk_div1 <= 0;
    else if (tc) clk_div1 = !clk_div1;	// T-FF with tc as input signal
end
endmodule
