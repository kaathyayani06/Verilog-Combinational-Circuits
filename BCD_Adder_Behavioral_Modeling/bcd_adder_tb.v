`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.06.2026 16:16:10
// Design Name: 
// Module Name: bcd_adder_tb
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

module bcd_adder_tb;
reg [3:0] a, b;
reg cin;
wire [3:0] sum;
wire cout;
bcd_adder uut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
initial
begin
    a=4'd2; b=4'd3; cin=0;
    #10; a=4'd4; b=4'd5; cin=0;
    #10; a=4'd5; b=4'd6; cin=0;
    #10; a=4'd7; b=4'd8; cin=0;
    #10; a=4'd9; b=4'd9; cin=0;
    #10; a=4'd3; b=4'd4; cin=1;
    #10; a=4'd8; b=4'd1; cin=1;
    #10; a=4'd9; b=4'd0; cin=1;
    #10; $finish;
end
initial
begin
    $monitor("Time=%0t a=%d b=%d cin=%b sum=%d cout=%b",$time,a,b,cin,sum,cout);
end
endmodule