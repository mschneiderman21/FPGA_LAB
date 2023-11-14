`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2023 03:24:14 PM
// Design Name: 
// Module Name: clock_divider
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


module clock_divider(
    input clk,
    input [27:0] divisor,
    output reg CLK=0
    );
    
    reg [27:0] counter = 28'd0;
    
    always @ (negedge clk)
    begin
        counter <= counter + 28'd1;
        if(counter >= (divisor-1))
            counter <= 28'd0;
            CLK <= (counter<divisor/2)?1'b0:1'b1;
    end
endmodule
