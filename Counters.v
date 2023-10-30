`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2023 03:19:31 PM
// Design Name: 
// Module Name: Counters
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


module Counters(cnt,clk,rst);
input clk,rst;
output [2:0]cnt;

reg [2:0]cnt;
wire [2:0]next_cnt;

assign next_cnt = cnt + 1'b1;  //Just increment by 1

always @ (posedge clk or negedge rst)   
begin
 if(!rst)
 begin
 cnt <= 3'b0;
 end
 else
 begin
 cnt <= next_cnt;
 end
end

endmodule

