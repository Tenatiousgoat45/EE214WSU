`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2023 04:34:42 PM
// Design Name: 
// Module Name: mul_tb
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


module mul_tb();
    reg [1:0] counter;
    reg [15:0] I;
    wire [6:0] CAT;
    wire [3:0] AN;

SevSegcont_16bit potato(
            .counter(counter),
            .I(I),
            .CAT(CAT),
            .AN(AN)
            );
            
initial begin
    counter <= 0;
    forever #5 counter <= (1 + counter);
end

initial begin
    #5
    I <= 5;
    #5;

end

endmodule