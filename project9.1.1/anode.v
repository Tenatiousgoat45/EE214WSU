`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2023 11:59:13 AM
// Design Name: 
// Module Name: anode
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


module anode(
reg [1:0] anDriver = 2'b01,
reg [6:0] tempcat
);
always @ (posedge divclock) begin
    anDriver = ~anDriver;
    
    case (anDriver)
        2'b01: tempCat = tempsegOnes;
        2'b10: tempCat = tempsegtens;
        endcase
    end
    
    assign seg_cat =tempcat;
    assign seg_an [1:0] = anDriver;
    
endmodule
