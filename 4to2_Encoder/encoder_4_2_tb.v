`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.06.2026 19:35:27
// Design Name: 
// Module Name: encoder_4_2_tb
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


module encoder_4_2_tb;
reg [3:0]d;
wire [1:0]y;
encoder_4_2 uut(d,y);
initial
begin
d=4'b0001;
#10; d=4'b0010;
#10; d=4'b0100;
#10; d=4'b1000;
#10; $finish;
end
endmodule
