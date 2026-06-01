`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2026 11:23:35
// Design Name: 
// Module Name: fs_using_hs
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


module fs_using_hs(a,b,c,diff,borrow);
input a,b,c;
output diff,borrow;
wire d1,b1,b2;
halfsub_gatelevel hs1(a,b,d1,b1);
halfsub_gatelevel hs2(d1,c,diff,b2);
or o1(borrow,b1,b2);
endmodule

