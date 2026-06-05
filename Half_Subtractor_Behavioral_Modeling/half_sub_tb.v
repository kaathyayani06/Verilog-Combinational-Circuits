`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.06.2026 15:44:36
// Design Name: 
// Module Name: half_sub_tb
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


module half_sub_tb;
reg a,b;
wire diff,borrow;
half_sub uut(.a(a),.b(b),.diff(diff),.borrow(borrow));
initial
begin
a=0;b=0;
#10; a=0;b=1;
#10; a=1;b=0;
#10; a=1;b=1;
#10; $finish;
end
endmodule
