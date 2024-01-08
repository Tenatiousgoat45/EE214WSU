`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/06/2023 01:07:28 PM
// Design Name: 
// Module Name: Debounce
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


module Debounce(
   input button, clk_in, rst,
    output led
    );
    wire clk_out,Q1,Q2,Q2_bar;
    clk4Hz(clk_in,rst,clk_out); //clock signal, 4khz output 
    DFF d1(clk_out,button,rst,Q1); //flip flop 1
    DFF d2(clk_out,Q1,rst, Q2); // flip flop 2
    
    assign Q2_bar = ~Q2; //wires flip flops together 
    assign led = Q1 & Q2_bar; //wires flip flops together 
    
endmodule

module clk4Hz(input clk_in, input rst, output reg clk_out); //clock delay
    reg [25:0] count = 0; //divides input clock frequency
    always @(posedge clk_in, posedge rst)begin
        if(rst | count == 12500000)begin
            count<=0;
            clk_out = ~clk_out; //inverts output clock
        end
        else count<= count+1;
    end  
    endmodule

module DFF(input clk, input D, input rst, output reg Q); //sets up flip flops, edge triggered
    always @(posedge clk, posedge rst)begin
        if(rst)
            Q<=0;
        else begin
            Q<=D;
        end
    end  
endmodule
