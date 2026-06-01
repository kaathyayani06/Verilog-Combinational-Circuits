`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2026 14:32:03
// Design Name: 
// Module Name: full_adder_tb
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

module full_adder_tb;
reg a,b,cin;
wire sum,carry;
fa_using_ha uut(.a(a),.b(b),.cin(cin),.sum(sum),.carry(carry));
initial
begin
$monitor("Input: a = %b, b = %b , cin = %cin | Output: sum = %b, carry = %b", a, b, cin, sum, carry);
a=1'b0;b=1'b0;cin=1'b0;
#10; a=1'b0;b=1'b0;cin=1'b1;
#10; a=1'b0;b=1'b1;cin=1'b0;
#10; a=1'b0;b=1'b1;cin=1'b1;
#10; a=1'b1;b=1'b0;cin=1'b1;
#10; a=1'b1;b=1'b0;cin=1'b1;
#10; a=1'b1;b=1'b1;cin=1'b0;
#10; a=1'b1;b=1'b1;cin=1'b1;
#10; $finish;
end
endmodule
