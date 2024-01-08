`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2023 12:33:02 PM
// Design Name: 
// Module Name: wrapper
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


module wrapper(
input [3:0] sw0,
input [7:4] sw1,
input btn,
output [7:0] seg_cat,
output [3:0] seg_an
    );
  wire [3:0] sdata;
  
  mux input_mux(
  .I0(sw0),
  .I1(sw1),
  .B(btn), 
  .Y(sdata)
  );
  
  big2seg output_big2seg(
  .sw(sdata),
  .seg_cat(seg_cat)
  );
  assign  seg_an[3]= 1;
  assign seg_an[2]=1;
  
  assign seg_an[0]=btn;
  assign seg_an[1]=~btn;
  
endmodule
