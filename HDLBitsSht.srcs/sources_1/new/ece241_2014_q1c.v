`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/18 15:48:07
// Design Name: 
// Module Name: ece241_2014_q1c
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


module ece241_2014_q1c(
    input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
    );

	assign s=a+b;
	assign overflow = (a[7]&b[7]&(~s[7])) | ((~a[7])&(~b[7])&(s[7]));
endmodule
