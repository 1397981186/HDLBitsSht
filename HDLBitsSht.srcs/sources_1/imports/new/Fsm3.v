`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/05 17:23:19
// Design Name: 
// Module Name: Fsm3
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


module Fsm3(
	input      clk   ,
    input      in    ,
    input      areset,
    output reg out
    );
	
	parameter A=4'b0001;
	parameter B=4'b0010;
	parameter C=4'b0100;
	parameter D=4'b1000;
	
	reg [3:0] state;
	
	always@(posedge clk or posedge areset) begin
		if(areset) begin
			state<=A;
		end
		else begin
			case(state)
				A: if(in==1'b1) state<=B;
					else 		state<=A;
				B: if(in==1'b1) state<=B;
					else 		state<=C;
				C: if(in==1'b1) state<=D;
					else 		state<=A;
				D: if(in==1'b1) state<=B;
					else 		state<=C;		
				default state<=A;
			endcase	
		end
	end
	
	always@(*) begin
		if(state==D) out=1'b1;
		else 		 out=1'b0;
	end
	
	
	
endmodule
