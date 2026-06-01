`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2026 17:12:34
// Design Name: 
// Module Name: tb_bcd_adder_4bit
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


module tb_bcd_adder_4bit;
reg [3:0]A;
reg [3:0]B;
reg cin;
wire [3:0]s;
wire cout;
bcd_adder_4bit uut(.A(A),.B(B),.cin(cin),.s(s),.cout(cout));
initial
begin
$monitor("A=%d B=%d cin=%b s=%d cout=%b",A,B,cin,s,cout);
A=4'd3;B=4'd4;cin=0;
#10; A=4'd7;B=4'd8;cin=0;
#10; A=4'd5;B=4'd2;cin=0;
#10; A=4'd9;B=4'd9;cin=1;
#10; A=4'd0;B=4'd0;cin=1;
#10; $finish;
end
endmodule
