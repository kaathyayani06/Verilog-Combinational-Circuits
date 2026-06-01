`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2026 16:46:24
// Design Name: 
// Module Name: bcd_adder_4bit
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

module bcd_adder_4bit(input [3:0]A,B,input cin,output [3:0]s,output cout);
wire [3:0]sum_temp;
wire cout_temp;
wire w_and1,w_and2,w_or;
wire[3:0] b_rca_2;

RippleCarryAdder_4bit rca1(A,B,cin,sum_temp,cout_temp);
and a1(w_and1,sum_temp[3],sum_temp[2]);
and a2(w_and2,sum_temp[3],sum_temp[1]);
or o1(w_or,cout_temp,w_and1,w_and2);

assign b_rca_2[0]=0;
assign b_rca_2[3]=0;
assign b_rca_2[1]=w_or;
assign b_rca_2[2]=w_or;

RippleCarryAdder_4bit rca2(sum_temp,b_rca_2,1'b0,s,cout);
endmodule
