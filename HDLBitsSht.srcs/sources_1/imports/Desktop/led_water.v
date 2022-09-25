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
      
     reg[25:0] cnt;//�趨һ��26λ�ļ�����
//     parameter TIME = 26'd50000000;
     parameter TIME = 26'd10;//just test
     
 always@(posedge clk or negedge rst_n)
 begin
    if(!rst_n)
         cnt <= 1'b0;
    else if(cnt == TIME-1'b1)
         cnt <= 1'b0;//��cnt�����ﵽ50mhzʱ������������
     else
         cnt <= cnt +  1'b1;//���������+1        
 end
 
 always@(posedge clk or negedge rst_n)
 begin
     if(!rst_n)
         led <= 8'b0000_1111;
     else if(cnt == TIME - 1'b1)//���������ﵽ1sʱ��ִ�д�����
         led <= {led[0], led[7:1]};
     else
         led <= led; 
 end
 
 endmodule

