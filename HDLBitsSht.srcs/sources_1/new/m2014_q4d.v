`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/18 21:41:08
// Design Name: 
// Module Name: m2014_q4d
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


module m2014_q4d(
    input clk,
    input in, 
    output reg out
    );
    always @(posedge clk) begin
        out <= (in ^ out);
    end
	
endmodule
