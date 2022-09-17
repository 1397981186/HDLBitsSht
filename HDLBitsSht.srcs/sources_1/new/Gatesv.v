`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/17 21:51:00
// Design Name: 
// Module Name: Gatesv
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


module Gatesv(
    input [3:0] in,
    output [2:0] out_both,
    output [3:1] out_any,
    output [3:0] out_different,
	output reg [2:0] out_both_for,
    output reg [3:1] out_any_for,
    output reg [3:0] out_different_for
    );
	
    assign out_both = {&in[3:2],&in[2:1],&in[1:0]};
    assign out_any = {|in[3:2],|in[2:1],|in[1:0]};
    assign out_different = {in[0]^in[3],^in[3:2],^in[2:1],^in[1:0]};
	
    
	integer i;
    always @(*) begin
        for(i=0;i<3;i=i+1) begin
            out_both_for[i] = in[i] & in[i+1];
            out_any_for[i+1] = in[i+1] | in[i];
            out_different_for[i] = in[i] ^ in[i+1];
        end
        out_different_for[3] = in[0] ^ in[3];
    end
    

endmodule
