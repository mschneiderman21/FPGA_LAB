`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2023 01:51:51 PM
// Design Name: 
// Module Name: counter
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


module counter(
    input clk,
    input rst,
    output reg DONE = 0,
    output reg [11:0] BCD_IN = 0
    );
    
    always @ (negedge clk)
    begin
        if(!rst)
            begin
                if(BCD_IN == 12'b111111111111)
                    DONE = 1;
                else
                    BCD_IN = BCD_IN + 1;
            end
        else
            BCD_IN = 12'b000000000000;
            DONE = 0;
    end
endmodule
