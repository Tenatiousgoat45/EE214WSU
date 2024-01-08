`timescale 1ns / 1ps



module Register_1(
    
    input clk,
    input [7:0] D,
    input En,
    output [7:0] Q
    
    );
    
    
    
    reg [7:0] tmp;

always @ (posedge(clk)) begin

    if (En == 1) tmp <= D;

end
    
assign Q = tmp;    
    
endmodule
