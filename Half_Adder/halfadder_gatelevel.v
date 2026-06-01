`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2026 10:18:03
// Design Name: 
// Module Name: halfadder_gatelevel
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


module halfadder_gatelevel(a,b,sum,carry);
input a,b;
output sum,carry;
xor x1(sum,a,b);
and a1(carry,a,b);
endmodule
