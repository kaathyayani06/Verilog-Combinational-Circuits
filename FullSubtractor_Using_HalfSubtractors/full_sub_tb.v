`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2026 14:53:22
// Design Name: 
// Module Name: full_sub_tb
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

module full_sub_tb;
reg a,b,c;
wire diff,borrow;
fs_using_hs uut(.a(a),.b(b),.c(c),.diff(diff),.borrow(borrow));
initial
begin
a=1'b0;b=1'b0;c=1'b0;
#10; a=1'b0;b=1'b0;c=1'b1;
#10; a=1'b0;b=1'b1;c=1'b0;
#10; a=1'b0;b=1'b1;c=1'b1;
#10; a=1'b1;b=1'b0;c=1'b0;
#10; a=1'b1;b=1'b0;c=1'b1;
#10; a=1'b1;b=1'b1;c=1'b0;
#10; a=1'b1;b=1'b1;c=1'b1;
#10; $finish;
end
endmodule