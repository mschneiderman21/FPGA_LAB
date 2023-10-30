`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2023 03:20:31 PM
// Design Name: 
// Module Name: Counter_tb
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

module counter_tb;
 reg clk;
 reg rst;
 wire [2:0] cnt;

 Counters uut (
  .cnt(cnt), 
  .clk(clk), 
  .rst(rst)
 );

 always #5 clk = ~clk;
 
 initial begin
  clk = 1'b0;
  rst = 1'b0;
  #20 rst = 1'b1;
  #200 $finish;
 end
endmodule
