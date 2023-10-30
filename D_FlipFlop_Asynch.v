`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2023 01:45:09 PM
// Design Name: 
// Module Name: D_FlipFlop_Asynch
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


module D_FlipFlop_Asynch(input d, rstn, clk, output reg q);
always @(posedge clk or negedge rstn)
    if (!rstn)
        q <=0;
    else
        q <= d;
endmodule
