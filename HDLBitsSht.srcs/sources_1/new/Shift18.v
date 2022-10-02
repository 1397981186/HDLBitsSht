`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/02 13:09:48
// Design Name: 
// Module Name: Shift18
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


module Shift18(
    input clk,
    input load,
    input ena,
    input [1:0] amount,
    input [63:0] data,
    output reg [63:0] q
    );
	
	always@(posedge clk) begin
		if(load==1'b1) begin
			q<=data;
		end
		else if(ena==1'b1) begin
			case(amount)
				2'b00: q<={q[62:0],1'b0};
				2'b01: q<={q[55:0],{8{1'b0}}};
				2'b10: q<={q[63],q[63:1]};
				2'b11: q<={{8{q[63]}},q[63:8]};
			endcase
		end
		else begin
			q<=q;	
		end
	end
	
endmodule
