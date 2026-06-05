`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.06.2026 19:03:17
// Design Name: 
// Module Name: demux_1_4
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


module demux_1_4(input i,input [1:0]s,output reg [3:0]y);
always@(*)
    begin
    case(s)
        2'b00: begin
            y[0]=i;
            y[1]=0;
            y[2]=0;
            y[3]=0;
        end
        2'b01: begin
            y[0]=0;
            y[1]=i;
            y[2]=0;
            y[3]=0;
        end
        2'b10: begin
            y[0]=0;
            y[1]=0;
            y[2]=i;
            y[3]=0;
        end
        2'b11: begin
            y[0]=0;
            y[1]=0;
            y[2]=0;
            y[3]=i;
        end
    endcase
  end
endmodule
