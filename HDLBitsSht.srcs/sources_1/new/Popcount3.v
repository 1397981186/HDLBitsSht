`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/17 21:31:02
// Design Name: 
// Module Name: Popcount3
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


module Popcount3(
    input [2:0] in,
    output reg [1:0] out_for,
	output [1:0] out_assign	
    );
	
	assign out_assign=in[0]+in[1]+in[2];
	
	integer i;
	always@(*) begin
		out_for = 2'b0;
		for(i=0;i<3;i=i+1) begin
			out_for = 	out_for+in[i];
		end
	end
endmodule
