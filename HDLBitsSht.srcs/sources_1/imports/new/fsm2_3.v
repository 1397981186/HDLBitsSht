`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/05 10:55:34
// Design Name: 
// Module Name: fsm2_3
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


module fsm2_3(clk, reset, in, out);
    input  clk  ;
    input  reset;    // Synchronous reset to state B
    input  in   ;
    output out  ;//  
    reg    out  ;

    // Fill in state name declarations
    parameter A = 2'b01;
    parameter B = 2'b10;


    reg [1:0] state;
    
//状态转移
        always @ (posedge clk)begin
			if(reset)
				state<=B;
            case(state)
                B:begin
                    if(in == 0)
                        state <= A;
                    else
                        state <= B;
                end
                A:begin
                    if(in == 0)
                        state <= B;
                    else
                        state <= A;
                end
            endcase
        end
//描述输出
          always @(*) begin
              if(state == A)
                  out = 0;
              else
                  out = 1;
       end
            
   
endmodule