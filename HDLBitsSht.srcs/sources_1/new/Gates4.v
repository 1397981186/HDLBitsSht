`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/12 21:49:19
// Design Name: 
// Module Name: Gates4
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


module Gates4(
    input [3:0] in,
    output out_and,
    output out_or,
    output out_xor
    );
	
	assign out_and = & in;
	assign out_or  = | in;
	assign out_xor = ^ in;
endmodule
