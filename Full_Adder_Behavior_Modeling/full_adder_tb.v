`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.06.2026 15:30:36
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
reg a,b,c;
wire sum,carry;
full_adder uut(.a(a),.b(b),.c(c),.sum(sum),.carry(carry));
initial
begin
a=0;b=0;c=0;
#10; a=0;b=0;c=1;
#10; a=0;b=1;c=0;
#10; a=0;b=1;c=1;
#10; a=1;b=0;c=0;
#10; a=1;b=0;c=1;
#10; a=1;b=1;c=0;
#10; a=1;b=1;c=1;
#10; $finish;
end
endmodule
