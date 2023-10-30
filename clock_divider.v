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
    output reg CLK
    );
    
    reg [1:0] counter = 2'd0;
    parameter DIVISOR = 2'd2;
    
    always @ (posedge clk)
    begin
        counter <= counter + 2'd1;
        if(counter >= (DIVISOR-1))
            counter <= 2'd0;
            CLK <= (counter<DIVISOR/2)?1'b1:1'b0;
    end
endmodule
