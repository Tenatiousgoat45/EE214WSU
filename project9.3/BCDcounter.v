`timescale 1ns / 1ps



module BCDcounter(

   input clk,
    output reg [3:0] bcd_digit
    );

always @ (posedge(clk))
begin
    
    if (bcd_digit == 4'b1001) bcd_digit <= 0;
    else bcd_digit <= bcd_digit + 1;
end
endmodule