`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2026 10:57:34
// Design Name: 
// Module Name: halfsub_gatelevel
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

module halfsub_gatelevel(a,b,diff,borrow);
input a,b;
output diff,borrow;
wire w1;
xor x1(diff,a,b);
not n1(w1,a);
and a1(borrow,w1,b);
endmodule
