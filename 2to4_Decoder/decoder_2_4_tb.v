`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.06.2026 20:07:45
// Design Name: 
// Module Name: decoder_2_4_tb
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


module decoder_2_4_tb;
reg [1:0]d;
wire [3:0]y;
decoder_2_4 uut(d,y);
initial
begin
d=2'b00;
#10; d=2'b01;
#10; d=2'b10;
#10; d=2'b11;
#10; $finish;
end
endmodule
