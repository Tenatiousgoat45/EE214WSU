`timescale 1ns / 1ps



module Multiplyer_two8bitIN_16bitOUT(

   input [7:0] A, B,
   output led,
   output [15:0] Y
);


assign led = Y[15:14] != 2'b0;

assign Y = A * B;

endmodule