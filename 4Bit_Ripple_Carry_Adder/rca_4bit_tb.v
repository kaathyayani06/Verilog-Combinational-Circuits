`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2026 15:57:09
// Design Name: 
// Module Name: rca_4bit_tb
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


module rca_4bit_tb;
reg [3:0]A,B;
reg cin;
wire [3:0]sum;
wire cout;
RippleCarryAdder_4bit uut(.A(A),.B(B),.cin(cin),.sum(sum),.cout(cout));
initial
begin
$monitor("Time=%0t A=%b B=%b Cin=%b Sum=%b Cout=%b",$time,A,B,cin,sum,cout);
A=4'b0000;B=4'b0001;cin=1;
#10; A=4'b0010;B=4'b0011;cin=0;
#10; A=4'b1000;B=4'b1001;cin=1;
#10; A=4'b1100;B=4'b1011;cin=0;
#10; $finish;
end
endmodule
