`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.06.2026 19:29:56
// Design Name: 
// Module Name: encoder_4_2
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


module encoder_4_2(input [3:0]d,output reg [1:0]y);
always@(*)
begin
    if(d==4'b0001)
        y=2'b00;
    else if(d==4'b0010)
        y=2'b01;
    else if(d==4'b0100)
        y=  2'b10;
    else
        y=2'b11;
end
endmodule
