`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2023 07:21:32 PM
// Design Name: 
// Module Name: state_machine
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


module state_machine(
input A,
input B,
input I, 
output F,
input clk,
input rst
    );

// Define State Codes
localparam S0 = 2'b00;
localparam S1 = 2'b01;
localparam S2 = 2'b11;
localparam S3 = 2'b10;

reg [1:0] pState, nState;

// Combinational Logic: Next State Logic
always @ (pState, A, B, I)
begin
    case (pState)
        S0:begin
            if (A == 1'b1 && B == 1'b0 && I == 1'b0)
                nState = S1;
            else if ( I==1'b1 && A== 1'b0 && B==1'b0)
                nState = S2;
            else 
                nState = S0;
            end
        S1:
            if (A == 1'b0 && B == 1'b1 && I==1'b0)
                nState = S0;
            else
                nState = S1;
        S2:
            if (pState==S2)
                nState = S3;
        S3:
            if (A == 1'b0 && B == 1'b0 && I == 1'b1)
                nState = S3	;
            else
                nState = S0;
        default:
            nState = S0;
    endcase
end

// State Registers
always @ (posedge(clk), posedge(rst))
begin
    if (rst == 1'b1)
        pState <= S0;
    else
        pState <= nState;
end

// Output Logic
assign F = (pState == S1 || pState == S2) ? 1'b1 : 1'b0;

endmodule
