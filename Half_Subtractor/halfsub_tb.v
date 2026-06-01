`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2026 14:45:02
// Design Name: 
// Module Name: halfsub_tb
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


module halfsub_tb;
reg a,b;
wire diff,borrow;
halfsub_gatelevel uut(.a(a),.b(b),.diff(diff),.borrow(borrow));
initial
begin
a=0;b=0;
#10; a=0;b=1;
#10; a=1;b=0;
#10; a=1;b=1;
#10; $finish;
end
endmodule
