`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/07/2023 09:22:36 AM
// Design Name: 
// Module Name: Debounce_tb
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


module Debounce_tb;
    reg clk;
    reg n_reset;
    reg button_in;
    wire DB_out;

Debounce UUT (
.clk(clk), 
.n_reset(n_reset), 
.button_in(button_in), 
.DB_out(DB_out)
);

initial begin
$display ($time, " << Starting the Simulation >> ");
clk = 1'b0;
n_reset = 1'b0;
#200 n_reset = 1'b1;      // at time 200 release the reset
button_in = 1'b0;
end


	always 
			#10 clk = ~clk;    // every ten nanoseconds invert the clock

	always 
		begin
			#40000 button_in = 1'b1;
			
			#400 button_in = 1'b0;		
			
			#800 button_in = 1'b1;	
			
			#800 button_in = 1'b0;				
			
			#800 button_in = 1'b1;

			#40000 button_in = 1'b0;
			
			#4000 button_in = 1'b1;		
			
			#40000 button_in = 1'b0;

			#400 button_in = 1'b1;
			
			#800 button_in = 1'b0;		
			
			#800 button_in = 1'b1;

			#800 button_in = 1'b0;
			
			#40000 button_in = 1'b1;		
			
			#4000 button_in = 1'b0;

		end




endmodule
