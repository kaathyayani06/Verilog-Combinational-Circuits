`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2026 12:53:29
// Design Name: 
// Module Name: halfadder_tb
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


module halfadder_tb;
reg a,b;
wire sum,carry;
halfadder_gatelevel uut(.a(a),.b(b),.sum(sum),.carry(carry));
initial 
begin
$monitor("Input: a = %b, b = %b | Output: sum = %b, carry = %b", a, b, sum, carry);
a = 1'b0; b = 1'b0;
#10; a = 1'b0; b = 1'b1;
#10; a = 1'b1; b = 1'b0;
#10; a = 1'b1; b = 1'b1;
#10; $finish;
end
endmodule
