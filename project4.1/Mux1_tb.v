`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/26/2023 12:24:56 AM
// Design Name: 
// Module Name: Mux1_tb
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


module Mux1_tb;
reg [7:0] data;
reg [2:0] sel;
wire Y;

Mux1 CUT (
    .data(data),
    .sel(sel),
    .Y(Y)
);

integer k;
initial begin
    sel = 3'b000;
    for(k=0; k < 16; k=k+1) begin
        data = k;
        #10; // wait 10ns
    end
    
    sel = 3'b001;
    for(k=0; k < 16; k=k+1) begin
        data = k;
        #10;
    end
    
    sel = 3'b010;
    for(k=0; k < 16; k=k+1) begin
        data = k;
        #10;
    end
    
    sel = 3'b011;
    for(k=0; k < 16; k=k+1) begin
        data = k;
        #10;
    end
   
   sel = 3'b100;
    for(k=0; k < 16; k=k+1) begin
        data = k;
        #10;
    end
    
    sel = 3'b101;
    for(k=0; k < 16; k=k+1) begin
        data = k;
        #10;
    end
    
    sel = 3'b110;
    for(k=0; k < 16; k=k+1) begin
        data = k;
        #10;
    end
    sel = 3'b111;
    for(k=0; k < 16; k=k+1) begin
        data = k;
        #10;
    end
    sel = 3'b1z;
    for(k=0; k < 16; k=k+1) begin
        data = k;
        #10;
    end
    
    $finish;
end
endmodule
