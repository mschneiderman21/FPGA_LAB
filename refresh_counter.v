`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2023 01:51:51 PM
// Design Name: 
// Module Name: refresh_counter
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


module refresh_counter(
    input clk,
    output reg [1:0] OUT=0
    );
    
    always @(posedge clk)
    begin
        if(OUT == 2'b11)
            OUT = 2'b0;
        else
            OUT = OUT + 1'b1;
    end
endmodule
