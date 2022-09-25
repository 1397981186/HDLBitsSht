`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/25 21:53:00
// Design Name: 
// Module Name: Shift4
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


module Shift4(
    input clk,
    input areset,  // async active-high reset to zero
    input load,
    input ena,
    input [3:0] data,
    output reg [3:0] q
    );
	
	always@(posedge clk or posedge areset) begin

		if(areset) begin
			q<=4'b0;
		end
		else if(load) begin
			q<=data;	
		end	
        else if(ena) begin
			q<={1'b0,q[3:1]};
		end
	end
	
endmodule
