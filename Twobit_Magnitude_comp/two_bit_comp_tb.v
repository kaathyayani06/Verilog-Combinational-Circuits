`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.06.2026 19:43:35
// Design Name: 
// Module Name: two_bit_comp_tb
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


module two_bit_comp_tb;
reg [1:0]a,b;
wire lt,gt,eq;
two_bit_comparator uut(.a(a),.b(b),.lt(lt),.eq(eq),.gt(gt));
initial
begin
a=2'd2;b=2'd3;
#10; a=2'd3;b=2'd3;
#10; a=2'd3;b=2'd1;
#10; $finish;
end
endmodule
