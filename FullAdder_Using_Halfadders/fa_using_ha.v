`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2026 10:46:26
// Design Name: 
// Module Name: fa_using_ha
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


module fa_using_ha(a,b,cin,sum,carry);
input a,b,cin;
output sum,carry;
wire s1,c1,c2;
halfadder_gatelevel ha1(a,b,s1,c1);
halfadder_gatelevel ha2(s1,cin,sum,c2);
or o1(carry,c1,c2);
endmodule
