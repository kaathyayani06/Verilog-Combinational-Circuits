`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.06.2026 16:09:29
// Design Name: 
// Module Name: bcd_adder
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


module bcd_adder(input [3:0]a,b,input cin,output [3:0]sum,output cout);
reg[4:0]temp;
always@(*)
    begin
        temp=a+b;
        if(temp>'d9)
            temp=temp+4'b0110;
        else
            temp=temp;
     end
     assign sum=temp[3:0];
     assign cout=temp[4];
endmodule
