`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/12 20:00:09
// Design Name: 
// Module Name: Wire_decl
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


module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
    
    wire leftUp;
    wire leftDown;
    assign leftUp=a&b;
	assign leftDown=c&d;
	assign out=leftDown|leftUp;
	assign out_n=!out;
	

endmodule
