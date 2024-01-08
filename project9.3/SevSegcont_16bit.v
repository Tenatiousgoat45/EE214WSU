`timescale 1ns / 1ps



module SevSegcont_16bit(

    input clk,
    input [1:0] counter,
    input [15:0] I,
    output [6:0] CAT,
    output [3:0] AN
    
    );
    
    reg [6:0] tmp_cat;
    reg [3:0] tmp_an;
    reg [3:0] tmp_bcd;
    //reg [1:0] counterout;
   
   //block for anode counter
   
//   always @ (clk)
 //  begin
   
 //       counterout <= counterout + 2'b01;
   
//   end
   
    
    always @ (posedge(clk))
    begin
    
        if (counter == 2'b00)  begin              
            tmp_an <= 4'b1110;
            tmp_bcd <= I[3:0]; end
            
        if (counter == 2'b01) begin
            tmp_an <= 4'b1101;
            tmp_bcd <= I[7:4]; end
        
        if (counter == 2'b10) begin
            tmp_an <= 4'b1011;
            tmp_bcd <= I[11:8]; end
            
       if (counter == 2'b11) begin
            tmp_an <= 4'b0111;                         
            tmp_bcd <= I[15:12]; end
            
       
       if (tmp_bcd == 4'd1)
		tmp_cat <= 7'b0000110;

	else if (tmp_bcd == 4'd2)
		tmp_cat <= 7'b1011011;

	else if (tmp_bcd == 4'd3)
		tmp_cat <= 7'b1001111;

	else if (tmp_bcd == 4'd4)
		tmp_cat <= 7'b1100110;

	else if (tmp_bcd == 4'd5)
		tmp_cat <= 7'b1101101;

	else if (tmp_bcd == 4'd6)
		tmp_cat <= 7'b1111101;

	else if (tmp_bcd == 4'd7)
		tmp_cat <= 7'b0000111;

	else if (tmp_bcd == 4'd8)
		tmp_cat <= 7'b1111111;

	else if (tmp_bcd == 4'd9)
		tmp_cat <= 7'b1100111;

	else
		tmp_cat <= 7'b0111111; 
        
                         
    end

    
    assign AN = tmp_an;
    assign CAT = ~tmp_cat;
    
endmodule