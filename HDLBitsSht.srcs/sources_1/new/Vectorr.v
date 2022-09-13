`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/13 20:12:52
// Design Name: 
// Module Name: Vectorr
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


module Vectorr(
    input [7:0] in,
    output [7:0] out
    );
	assign out = {in[0],in[1],in[2],in[3],in[4],in[5],in[6],in[7]};
endmodule
