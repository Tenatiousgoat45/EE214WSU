`timescale 1ns / 1ps


module Register_8bit(

    input clk,
    input [7:0] D,
    input [1:0] En,
    output [7:0] Q1,
    output [7:0] Q2
    
    );


reg [7:0] op1, op2;//, op3;

always @ (posedge(clk)) begin
    if (En[0] == 1) op2 <= D;
    if (En[1] == 1) op1 <= D;
    //else op3 <= 8'b00000000;
end


assign Q1 = op1;

assign Q2 = op2;



endmodule
