`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/18 20:29:22
// Design Name: 
// Module Name: Dff8r
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


module Dff8r(
    input clk,
    input reset,            // Synchronous reset
    input [1:0] d,
    output reg [1:0] q
    );
	
	always@(posedge clk) begin
		if(reset) begin
			q<=2'd0;
		end
		else begin
			q<=d;
		end
		
	end
	
endmodule
