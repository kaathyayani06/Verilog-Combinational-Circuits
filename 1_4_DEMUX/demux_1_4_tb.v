`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.06.2026 19:05:21
// Design Name: 
// Module Name: demux_1_4_tb
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


module demux_1_4_tb;
reg i;
reg [1:0] s;
wire [3:0] y;
demux_1_4 uut (.i(i),.s(s),.y(y));
initial
begin
    i = 1; s = 2'b00;
    #10 i = 1; s = 2'b01;
    #10 i = 1; s = 2'b10;
    #10 i = 1; s = 2'b11;
    #10 $finish;
end
endmodule
