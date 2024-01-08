`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2023 08:54:47 AM
// Design Name: 
// Module Name: seven_seg_controller
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


module seven_seg_controller(
 input [7:0] bcdIn,
    input clk,
    output [6:0]catOut,
    output [3:0]anOut
    );
    assign anOut[3:2] = 2'b11;
    
    wire [6:0]catOutOnes, catOutTens;
    bcdDecoder dcdOnes(
        .bcdIn(bcdIn[3:0]),
        .catOut(catOutOnes));
    
    bcdDecoder dcdTens(
        .bcdIn(bcdIn[7:4]),
        .catOut(catOutTens));


    reg divclk;
    reg [23:0] counter;
    always @(posedge clk)
        begin
            if (counter == 24'd50000) begin
                divclk <= ~divclk;
                counter <= 24'd0;
            end
            else begin
                divclk <= divclk;
                counter <= counter + 1'd1;
        end
    end
    
    reg [1:0] anDriver = 2'b01;
    reg [6:0] tempCat;
    always @ (posedge divclk) begin
        anDriver = ~anDriver;
        
        case (anDriver)
            2'b01: tempCat = catOutOnes;
            2'b10: tempCat = catOutTens;
        endcase
    end
    
    assign catOut = tempCat;
    assign anOut = ~anDriver;
endmodule

module bcdDecoder(
    input [3:0] bcdIn,
    output reg [6:0] catOut);
    
    always @ (bcdIn) begin
        case (bcdIn)
            4'b0000: catOut = 7'b1000000;
            4'b0001: catOut = 7'b1111001;
            4'b0010: catOut = 7'b0100100;
            4'b0011: catOut = 7'b0110000;
            4'b0100: catOut = 7'b0011001;
            4'b0101: catOut = 7'b0010010;
            4'b0110: catOut = 7'b0000010;
            4'b0111: catOut = 7'b1111000;
            4'b1000: catOut = 7'b0000000;
            4'b1001: catOut = 7'b0010000;
            4'b1010: catOut = 7'b0001000;
            4'b1011: catOut = 7'b0000011;
            4'b1100: catOut = 7'b1000110;
            4'b1101: catOut = 7'b0100001;
            4'b1110: catOut = 7'b0000110;
            4'b1111: catOut = 7'b0001110;
        endcase
    end
        
endmodule