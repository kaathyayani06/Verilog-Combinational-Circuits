`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.06.2026 11:49:56
// Design Name: 
// Module Name: priority_encoder2to4_tb
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


module priority_encoder2to4_tb;
reg [3:0]d;
wire [1:0]y;
priorityencoder_4to2 uut(d,y);
initial
begin
d=4'b0110;
#5; d=4'b1101;
#5; d=4'b0001;
#5; d=4'b0011;
#5; $finish;
end
endmodule
