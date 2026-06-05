`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.06.2026 18:33:24
// Design Name: 
// Module Name: demux_1_2_tb
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


module demux_1_2_tb;
reg i;
reg s;
wire [1:0] y;
demux_1_2 uut (.i(i),.s(s),.y(y));
initial
begin
    i = 0; s = 0;
    #10 i = 1; s = 0;
    #10 i = 0; s = 1;
    #10 i = 1; s = 1;
    #10 $finish;
end
endmodule