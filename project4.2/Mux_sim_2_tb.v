`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2023 07:46:32 PM
// Design Name: 
// Module Name: Mux_sim_2_tb
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


module Mux_sim_2_tb;
reg [7:0] sw0;
reg [7:0] sw1;
reg [7:0] sw2;
reg [7:0] sw3;
reg [7:0] sw4;
reg [7:0] sw5;
reg [7:0] sw6;
reg [7:0] sw7;
reg [2:0] btn;

wire [7:0] led;

Mux_sim_2 CUT (
.sw0(sw0), 
.sw1(sw1), 
.sw2(sw2), 
.sw3(sw3), 
.sw4(sw4), 
.sw5(sw5),
.sw6(sw6), 
.sw7(sw7), 
.btn(btn),
.led(led)
);

integer k;
initial begin
 btn = 3'b000;
    for(k=0; k<256; k=k+1)
     begin
    sw0<=k;
    #10;
  end
  
   btn = 3'b001;
    for(k=0; k<256; k=k+1)
     begin
    sw1<=k;
    #10;
  end
  
   btn = 3'b010;
    for(k=0; k<256; k=k+1)
     begin
    sw2<=k;
    #10;
  end
  
   btn = 3'b011;
    for(k=0; k<256; k=k+1)
     begin
    sw3<=k;
    #10;
  end
  
   btn = 3'b100;
    for(k=0; k<256; k=k+1)
     begin
    sw4<=k;
    #10;
  end
  
   btn = 3'b101;
    for(k=0; k<256; k=k+1)
     begin
    sw5<=k;
    #10;
  end
  
   btn = 3'b110;
    for(k=0; k<256; k=k+1)
     begin
    sw6<=k;
    #10;
  end
  
   btn = 3'b111;
    for(k=0; k<256; k=k+1)
     begin
    sw7<=k;
    #10;
  end
  
   btn = 3'b1z;
    for(k=0; k<256; k=k+1)
     begin
    {sw0, sw1, sw2, sw3, sw4, sw5, sw6, sw7}<=k;
    #10;
  end
   btn = 3'b1x;
    for(k=0; k<256; k=k+1)
     begin
    {sw0, sw1, sw2, sw3, sw4, sw5, sw6, sw7}<=k;
    #10;
  end
  $finish;
end

endmodule

