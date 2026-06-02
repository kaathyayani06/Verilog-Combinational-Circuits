`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.06.2026 19:24:21
// Design Name: 
// Module Name: two_bit_comparator
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


module two_bit_comparator(input [1:0]a,input [1:0]b,output lt,eq,gt);
wire a0bar,a1bar,b0bar,b1bar,w4,w5,w6,w7,w8,w9,w10,w11;
not n1(a0bar,a[0]);
not n2(a1bar,a[1]);
not n3(b0bar,b[0]);
not n4(b1bar,b[1]);
//logic for greater than
and a1(w4,a[0],b1bar,b0bar);
and a2(w5,a[1],b1bar);
and a3(w6,a[1],a[0],b0bar);
or op1(gt,w4,w5,w6);
//logic for equal to
xnor xn1(w7,a[0],b[0]);
xnor xn2(w8,a[1],b[1]);
and op2(eq,w7,w8);
//logic for greater than
and a4(w9,a1bar,b0bar,b[0]);
and a5(w10,a0bar,b[1],b[0]);
and a6(w11,a1bar,b[1]);
or op3(lt,w9,w10,w11);
endmodule
