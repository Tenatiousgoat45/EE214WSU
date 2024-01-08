`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2023 12:25:05 PM
// Design Name: 
// Module Name: asynchcounter_tb
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


module asynchcounter_tb;
reg clk;
reg rst;

wire led;

asynchcounter uut (
        .clk(clk),
        .rst(rst),
        .led(led)
    );

    always
        #5 clk = ~clk;

    initial begin
        // Initialize Inputs
        clk = 0;
        rst = 1;

        #10 rst = 0;

        // Wait 100 ns for global reset to finish
        #100;

    end

endmodule