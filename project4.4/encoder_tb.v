`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2023 09:58:24 PM
// Design Name: 
// Module Name: encoder_tb
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


module encoder_tb;

 
  reg [3:0] I;
  reg Ein;

  
  wire [1:0] Y;
  wire GS;
  wire Eout;

  
  encoder cut (
    .I(I),
    .Ein(Ein),
    .Y(Y),
    .GS(GS),
    .Eout(Eout)
  );

  
  initial begin
   
    I = 4'b0000;
    Ein = 0;

    
    #1; 
    Ein = 1;
    I = 4'b1000;
    #1;
    I = 4'b0100; 
    #1;
    I = 4'b0010; 
    #1;
    I = 4'b0001; 
    #1;
    Ein = 0; 
    #1;

   
    $finish;
  end

  always @(Y, GS, Eout)
  begin
    $display("Y = %b, GS = %b, Eout = %b", Y, GS, Eout);
  end

endmodule

