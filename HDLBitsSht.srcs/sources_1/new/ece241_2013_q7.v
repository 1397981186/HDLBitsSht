`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/19 22:46:38
// Design Name: 
// Module Name: ece241_2013_q7
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


module ece241_2013_q7(
    input clk,
    input j,
    input k,
    output reg Qa,
	output reg Qc
    );
	
	wire D;
    assign D = ~k&Qa | j&~Qa;
	always@(posedge clk) Qa <= D;
	
    always @(posedge clk) begin
        case({j,k}) //注意给予位数
            2'b00: Qc <= Qc;
            2'b01: Qc <= 1'b0;
            2'b10: Qc <= 1'b1;
            2'b11: Qc <= ~Qc;
        endcase
    end
endmodule
