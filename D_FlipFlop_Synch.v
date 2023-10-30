`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2023 02:45:08 PM
// Design Name: 
// Module Name: D_FlipFlop_Synch
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


module D_FlipFlop_Synch(input d, rstn, clk, output reg q);
always @(posedge clk)
    if (!rstn)
        q <=0;
    else
        q <= d;
endmodule
