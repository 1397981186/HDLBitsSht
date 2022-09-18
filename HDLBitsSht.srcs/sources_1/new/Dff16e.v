`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/18 21:10:08
// Design Name: 
// Module Name: Dff16e
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


module Dff16e(
    input clk,
    input resetn,
    input [1:0] byteena,
    input [15:0] d,
    output reg [15:0] q
    );
	
	always@(posedge clk) begin
		if(resetn==1'b0) begin
			q<=16'd0;
		end
		else begin
			if(byteena[0]==1'b1) begin
				q[7:0]<=d[7:0];
			end
			else begin
				q[7:0]<=q[7:0];
			end
			if(byteena[1]==1'b1) begin
				q[15:8]<=d[15:8];
			end
			else begin
				q[15:8]<=q[15:8];
			end
			
		end
		
	end
	
endmodule
