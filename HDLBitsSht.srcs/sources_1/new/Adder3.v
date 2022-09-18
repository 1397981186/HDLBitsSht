`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/18 15:29:14
// Design Name: 
// Module Name: Adder3
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


module Adder3(
    input [2:0] a, b,
    input cin,
    output [2:0] cout,
    output [2:0] sum
    );
	
	assign {cout[0],sum[0]} = a[0] + b[0] +cin;
    assign {cout[1],sum[1]} = a[1] + b[1] +cout[0];
    assign {cout[2],sum[2]} = a[2] + b[2] +cout[1];
endmodule
