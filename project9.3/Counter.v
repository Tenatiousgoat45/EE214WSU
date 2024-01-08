`timescale 1ns / 1ps



module Counter(

    input clk,
    output [1:0] counterout

    );
        reg [15:0] counter;
   
   //block for anode counter
   
   always @ (posedge(clk))
   begin
        counter <= counter + 1;
   end
    
    
    assign counterout = counter[15:14];
    
endmodule
