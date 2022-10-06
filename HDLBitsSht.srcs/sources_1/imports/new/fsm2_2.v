`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/05 10:45:29
// Design Name: 
// Module Name: fsm2_2
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



module fsm2_2(clk, reset, in, out);
    input  clk  ;
    input  reset;    // Synchronous reset to state B
    input  in   ;
    output out  ;//  
    reg    out  ;

    // Fill in state name declarations
    parameter A = 2'b01;
    parameter B = 2'b10;


    reg [1:0] present_state, next_state;
    
//状态转移
    always @(posedge clk) begin
        if (reset) begin  
            // Fill in reset logic
            present_state <= B;
        end 
        else begin
            present_state <= next_state;
        end
    end
//描述状态转移规律（根据当前状态来判断下一状态）
        always @ (*)begin
            case(present_state)
                B:begin
                    if(in == 0)
                        next_state = A;
                    else
                        next_state = B;
                end
                A:begin
                    if(in == 0)
                        next_state = B;
                    else
                        next_state = A;
                end
            endcase
        end
//描述输出
          always @(*) begin
              if(present_state == A)
                  out = 0;
              else
                  out = 1;
       end
            
   
endmodule

