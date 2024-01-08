`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2023 11:04:29 AM
// Design Name: 
// Module Name: mux
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


module mux(
input [7:0] A,
input [7:0] B,
input [2:0] sel,
output [7:0] Cout
    );
    reg [7:0] tmp;
    
always @ (sel)
begin 
      if (sel==3'b000)
          tmp <= A+B;
            
       else if (sel==3'b001)
            tmp <= A+1;
            
        else if (sel ==3'b010)
            tmp <= A-B;
            
         else if (sel == 3'b011)
            tmp <= A^B;
            
         else if (sel == 3'b100)
            tmp <= A|B;
            
         else if (sel == 3'b101)
            tmp <= A&B;
         
         else tmp<=8'b0;
end 
assign Cout=tmp;
endmodule
