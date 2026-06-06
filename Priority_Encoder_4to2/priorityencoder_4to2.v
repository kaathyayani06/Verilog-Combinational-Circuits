`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.06.2026 11:46:23
// Design Name: 
// Module Name: priorityencoder_4to2
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


module priorityencoder_4to2(input [3:0]d,output reg [1:0]y);
always@(*)
    begin
        casex(d)
        4'b0001: y=2'b00;
        4'b001x: y=2'b01;
        4'b01xx: y=2'b10;
        4'b1xxx: y=2'b11;
        default: y='bx;
        endcase
    end
endmodule
