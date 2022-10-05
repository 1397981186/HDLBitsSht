`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/04 17:46:55
// Design Name: 
// Module Name: AllFsms
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


module AllFsms(
	input clk,
    input areset,    // Asynchronous reset to state B
    input in,
    input reg out,//fsm1

	input  wire sys_clk   ,
	input  wire sys_rst_n ,
	input  wire pi_money  ,
	input reg  po_cola //fsm2
    );
	
	fsm1 fsm1Inst(
	.clk   (clk   ),
	.areset(areset),
	.in    (in    ),
	.out   (out   )
	);
	

endmodule
