`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/06 13:00:16
// Design Name: 
// Module Name: Fsm_serial_CSDN
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


module Fsm_serial_CSDN(
    input  clk  ,
    input  in   ,
    input  reset,    // Synchronous reset
    output reg done  
); 
 	parameter IDLE = 5'd00001;
    parameter START= 5'd00010;
    parameter DATA = 5'd00100;
    parameter STOP = 5'd01000;
    parameter WAIT = 5'd10000;
    
    reg [4:0]	state;
    reg [4:0]	next_state;
    reg [3:0]	count;

        
// 第一段 状态寄存器
    always @(posedge clk)begin
        if(reset)begin
            state <= IDLE;
        end
        else begin
            state <= next_state;
        end
    end
//第二段 组合逻辑描述状态转移
    always @(*)begin
        case(state)
            IDLE :begin
                if(in == 1'b0)
                    next_state = START;
                else
                    next_state = IDLE;
            end
            START:begin
                next_state = DATA;
            end
            DATA :begin
                if(count == 4'd7)begin //计数8次，说明8个数据接收完成
                    if(in == 1'b1) //出现停止位
                        next_state = STOP;
                    else
                        next_state = WAIT; 
                end
                else
                       next_state = DATA;
            end
            STOP :begin
                if(in == 1'b0)
                    next_state = START;
                else
                    next_state = IDLE;
            end
            WAIT :begin
                if(in == 1'b0)
                    next_state = WAIT;
                else
                    next_state = IDLE;
            end
            default:begin 
                next_state = IDLE;   
            end
        endcase
    end
//第三段 组合逻辑描述输出
    always @(*)begin
        if(reset)
            done = 1'b0;
        else if(state == STOP)
            done = 1'b1;
        else
            done = 1'b0;
    end
    
    
 //计数器设计
    always @(posedge clk)begin
        if(reset)
            count <= 4'b0;
        else if(state == DATA)begin
            count <= count + 1'b1;
        end
        else
            count <= 4'b0;
    end

endmodule
