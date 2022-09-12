`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/12 21:55:08
// Design Name: 
// Module Name: Vector3
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


module Vector3(
    input [4:0] a, b, c, d, e, f,
    output [7:0] w, x, y, z );//
	
	assign w={a,b[4:2]};
	assign x={b[1:0],c,d[4]};
	assign y={d[3:0],e[4:1]};
	assign z={e[0],f,2'b11};
endmodule
