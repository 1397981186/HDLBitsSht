`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/04 16:13:39
// Design Name: 
// Module Name: Fsm1
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


module fsm1(
    input clk,
    input areset,    // Asynchronous reset to state B
    input in,
    output reg out);  

    parameter A=2'b01, B=2'b10; 
    reg [1:0] state;

	//parameter A=1'b1, B=1'b0; 
	//reg  state;
	
    always @(posedge clk or posedge areset) begin    // This is a combinational always block
        // State transition logic
        if (areset) state <=B;
        else case(state) 
            A: if(in==1'b1) state<=A;
            	else state<=B;
            B:if(in==1'b1) state<=B;
            	else state<=A;
        endcase
    end

    always @(posedge clk or posedge areset) begin    // This is a sequential always block
        // State flip-flops with asynchronous reset
        if (areset) out <=1'b1;
        else if(state==A)
            out<=1'b0;
		else	
            out<=1'b1;
		//else case(state)
		//	A:out<=1'b1;
		//	B:out<=1'b0;
		//endcase
    end

    // Output logic
    // assign out = (state == ...);

endmodule
