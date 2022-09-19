`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/19 22:27:23
// Design Name: 
// Module Name: 2014_q4a2
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


module m2014_q4a2(
    input clk,
    input w, R, E, L,
    output reg Q
    );
	
	always@(posedge clk) begin
		case({E,L})
			2'b00:Q<=Q;
			2'b01:Q<=R;
			2'b11:Q<=R;
			2'b10:Q<=w;
		endcase
	end
	
	
endmodule
