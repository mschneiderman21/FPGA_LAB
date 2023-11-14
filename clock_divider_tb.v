`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2023 02:37:11 PM
// Design Name: 
// Module Name: clock_divider_tb
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


module clock_divider_tb();
    reg clk=0;
    reg [27:0] divisor;
    wire CLK;
    
    clock_divider COUNT(
        .clk(clk),
        .divisor(divisor),
        .CLK(CLK)
    );
    
    initial begin
        divisor = 28'd4;
        forever begin
            #10 clk = ~clk;
        end
    end
endmodule
