 `timescale 1ns / 1ns
 //////////////////////////////////////////////////////////////////////////////////
 // Company: 
 // Engineer: NingHeChuan
  // 
// Create Date: 2017/05/19 17:06:50
 // Design Name: 
 // Module Name: led_water
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
 module led_water(
    input                 clk,
    input                 rst_n,
    output    reg    [7:0]    led   
     );
      
     reg[25:0] cnt;//设定一个26位的计数器
//     parameter TIME = 26'd50000000;
     parameter TIME = 26'd10;//just test
     
 always@(posedge clk or negedge rst_n)
 begin
    if(!rst_n)
         cnt <= 1'b0;
    else if(cnt == TIME-1'b1)
         cnt <= 1'b0;//当cnt计数达到50mhz时，计数器清零
     else
         cnt <= cnt +  1'b1;//否则计数器+1        
 end
 
 always@(posedge clk or negedge rst_n)
 begin
     if(!rst_n)
         led <= 8'b0000_1111;
     else if(cnt == TIME - 1'b1)//当计数器达到1s时钟执行此条件
         led <= {led[0], led[7:1]};
     else
         led <= led; 
 end
 
 endmodule

