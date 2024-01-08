`timescale 1ns / 1ps



module Register_2(

    input clk,
    input [7:0] D,
    input En2,
    output [7:0] Q2

    );
    
    
    reg [7:0] op;

always @ (posedge(clk)) begin

    if (En2 == 0) op <= D;
    
    else op <= 8'd0;
end
    
assign Q2 = op;
    
endmodule
