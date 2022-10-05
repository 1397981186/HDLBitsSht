`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/04 17:12:23
// Design Name: 
// Module Name: fsm3Test
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


module fsm3Test(
    input clk,
    input in,
    input areset,
    output out
);

    reg [3:0] state;
    reg [3:0] next_state;
    
//声明全局变量
    parameter A= 4'b0001;
    parameter B= 4'b0010;
    parameter C= 4'b0100;
    parameter D= 4'b1000;
    
//第一段，状态转移
    always @ (posedge clk or posedge areset)begin
        if(areset)
            state <= A;
        else
            state <= next_state;
    end

    
//第二段，组合逻辑实现状态转移规律    
    always @ (*)begin
        case(state)
            A:begin
                if(in == 1)
                    next_state = B;
                else
                    next_state = A;
            end
            B:begin
                if(in == 0)
                    next_state = C;
                else
                    next_state = B;
            end
            C:begin
                if(in == 1)
                    next_state = D;      
                else
                    next_state = A; 
            end
            D:begin
                if(in == 1)
                    next_state = B;      
                else
                    next_state = C;                 
            end
        endcase
    end
    
    
//描述输出
    assign out = (state == D) ? 1 : 0;

endmodule

