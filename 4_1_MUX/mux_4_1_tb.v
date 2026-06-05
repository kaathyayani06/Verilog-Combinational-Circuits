`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.06.2026 17:37:20
// Design Name: 
// Module Name: mux_4_1_tb
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


module mux_4_1_tb;
reg [1:0]s;
reg [3:0]i;
wire y;
mux_4_1 uut(s,i,y);
initial
begin
 i = 4'b0001; s = 2'b00;  
#10 i = 4'b0010; s = 2'b01;  
#10 i = 4'b0100; s = 2'b10;  
#10 i = 4'b1000; s = 2'b11;  
#10 i = 4'b1110; s = 2'b00;  
#10 i = 4'b1101; s = 2'b01;  
#10 i = 4'b1011; s = 2'b10;  
#10 i = 4'b0111; s = 2'b11;  
#10 $finish;
end
endmodule
