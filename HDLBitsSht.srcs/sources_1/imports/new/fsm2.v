`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/04 17:23:46
// Design Name: 
// Module Name: fsm2
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


module fsm2
#(
	parameter IDLE=3'b001,
	parameter ONE =3'b010,
	parameter TWO =3'b100
)
(
	input  wire sys_clk   ,
	input  wire sys_rst_n ,
	input  wire pi_money  ,
	output reg  po_cola 
    );
	
	reg [2:0] state;
	
	always@(posedge sys_clk or negedge sys_rst_n) begin
		if(!sys_rst_n) begin
			state<=IDLE;
		end
		else case(state)
			IDLE: 
				if(pi_money==1'b1)
					state<=ONE;
				else
					state<=IDLE;
			ONE:
				if(pi_money==1'b1)
					state<=TWO;
				else
					state<=ONE;
			TWO:
				if(pi_money==1'b1)
					state<=IDLE;
				else
					state<=TWO;
			default: state<=IDLE;
		endcase
	end
	
	always@(posedge sys_clk or negedge sys_rst_n) begin
		if(!sys_rst_n) begin
			po_cola<=1'b0;
		end
		else if(state==TWO && pi_money==1'b1) begin
			po_cola<=1'b1;	
		end
		else begin
			po_cola<=1'b0;		
		end
	end
	
	

endmodule

