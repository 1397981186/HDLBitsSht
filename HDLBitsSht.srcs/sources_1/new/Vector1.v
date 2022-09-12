`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/12 20:59:10
// Design Name: 
// Module Name: Vector1
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


module Vector1(
    input wire [15:0] in,
    output wire [7:0] out_hi,
    output wire [7:0] out_lo );
	
	assign out_lo=in[7:0];
	assign out_hi=in[15:8];
endmodule
