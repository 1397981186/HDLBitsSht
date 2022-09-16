`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/16 21:57:36
// Design Name: 
// Module Name: Alwaysblock2
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


module Alwaysblock2(
    input clk,
    input a,
    input b,
    output wire out_assign,
    output reg out_always_comb,
    output reg out_always_ff ,
	output reg out_always_ffNoZu 
    );
	
	always@(posedge clk)
		out_always_ff<=a^b;
	
	always@(*)
		out_always_comb=a^b;
	assign out_assign=a^b;
	always@(posedge clk)
		out_always_ffNoZu=a^b;	
endmodule
