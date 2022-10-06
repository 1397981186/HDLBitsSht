`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/06 13:02:01
// Design Name: 
// Module Name: Fsm_serial_NewTwo
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


module Fsm_serial_NewTwo(
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
    reg [3:0]	count;

        
//第二段 组合逻辑描述状态转移
    always @(posedge clk)begin
	    if(reset)begin
            state <= IDLE;
        end
		else begin
			case(state)
				IDLE :begin
					if(in == 1'b0)
						state <= START;
					else
						state <= IDLE;
				end
				START:begin
					state <= DATA;
				end
				DATA :begin
					if(count == 4'd7)begin //计数8次，说明8个数据接收完成
						if(in == 1'b1) //出现停止位
							state <= STOP;
						else
							state <= WAIT; 
					end
					else
						   state <= DATA;
				end
				STOP :begin
					if(in == 1'b0)
						state <= START;
					else
						state <= IDLE;
				end
				WAIT :begin
					if(in == 1'b0)
						state <= WAIT;
					else
						state <= IDLE;
				end
				default:begin 
					state <= IDLE;   
				end
			endcase
		end
    end
// 组合逻辑描述输出
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
