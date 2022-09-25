`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/01 22:45:35
// Design Name: 
// Module Name: tb_led_water
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


module tb_led_water(

    );
    reg                 clk;
    reg                 rst_n;
    wire         [7:0]    led;     
     led_water uut_led_water(
         .clk            (clk),
         .rst_n            (rst_n),
         .led            (led)
       );    
     
     always #10 clk = ~clk;
     
     initial begin
         clk = 0;
         rst_n = 0;
     #20;
         rst_n = 1;
        
     end
endmodule
