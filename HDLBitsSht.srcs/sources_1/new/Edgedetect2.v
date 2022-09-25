`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/25 16:42:46
// Design Name: 
// Module Name: Edgedetect2
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


module Edgedetect2(
    input clk,
    input [7:0] in,
    output reg [7:0] anyedge
);
    reg[7:0] in_delay;
    always@(posedge clk) in_delay=in;
    always@(posedge clk) anyedge=(~in_delay&in)|(~in&in_delay);
endmodule
