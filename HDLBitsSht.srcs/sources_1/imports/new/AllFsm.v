`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/04 17:37:42
// Design Name: 
// Module Name: AllFsm
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


module AllFsm(
	//fsm1
	input clk,
    input areset,    // Asynchronous reset to state B
    input in,
    input  out,
	
	//fsm2
	input  wire sys_clk   ,
	input  wire sys_rst_n ,
	input  wire pi_money  ,
	input   po_cola, 
	
	//fsm2_2
	//input  clk  ,
    input  reset
	//input  in   ,
	//input  out  
	
	);
	
	fsm1 fsm1Inst(
	.clk   (clk   ),
	.areset(areset),
	.in    (in    ),
	.out   (out   )
	);
	
	fsm2 fsm2Inst(
	.sys_clk  (sys_clk  ),
	.sys_rst_n(sys_rst_n),
	.pi_money (pi_money ),
	.po_cola  (po_cola ) 
	);
	
	fsm2_2 fsm2_2Inst(
	.clk  (clk  ),
	.reset(reset),
	.in   (in   ),
	.out  (out  )
	);
	
	fsm2_3 fsm2_3Inst(
	.clk  (clk  ),
	.reset(reset),
	.in   (in   ),
	.out  (out  )
	);
	
	Fsm3 fsm3Inst(
	.clk   (clk   ),   
	.in    (in    ),
	.areset(areset),
	.out   (out   )
	);
	
	Fsm_serial_CSDN Fsm_serial_CSDNInst(
	.clk  (clk  ),
	.in   (in   ),
	.reset(reset),
	.done (done ) 
	);
	
	Fsm_serial_NewTwo Fsm_serial_NewTwoInst(
	.clk  (clk  ),
	.in   (in   ),
	.reset(reset),
	.done (done ) 
	);
endmodule
