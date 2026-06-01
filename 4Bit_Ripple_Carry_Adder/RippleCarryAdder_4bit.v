`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2026 15:41:11
// Design Name: 
// Module Name: RippleCarryAdder_4bit
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


module RippleCarryAdder_4bit(input [3:0]A,[3:0]B,input cin,output [3:0]sum,output cout);
wire w1,w2,w3;
fulladder fa1(A[0],B[0],cin,sum[0],w1);
fulladder fa2(A[1],B[1],w1,sum[1],w2);
fulladder fa3(A[2],B[2],w2,sum[2],w3);
fulladder fa4(A[3],B[3],w3,sum[3],cout);
endmodule
