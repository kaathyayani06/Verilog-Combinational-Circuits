`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.06.2026 17:16:36
// Design Name: 
// Module Name: mux_2_1_tb
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


module mux_2_1_tb;
reg [1:0]i;
reg s;
wire y;
mux_2_1 uut(.s(s),.i(i),.y(y));
initial
begin
i = 2'b00; s = 0;
#10 i = 2'b01; s = 0;
#10 i = 2'b10; s = 0;
#10 i = 2'b11; s = 0;
#10 i = 2'b00; s = 1;
#10 i = 2'b01; s = 1;
#10 i = 2'b10; s = 1;
#10 i = 2'b11; s = 1;
#10 $finish;
end
endmodule
