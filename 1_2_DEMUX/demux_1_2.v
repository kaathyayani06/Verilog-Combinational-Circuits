`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.06.2026 18:23:12
// Design Name: 
// Module Name: demux_1_2
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


module demux_1_2(input i,input s,output reg [1:0] y);
always @(*)
begin
    y = 2'b00;
    case(s)
        1'b0: y[0] = i;
        1'b1: y[1] = i;
    endcase
end
endmodule
