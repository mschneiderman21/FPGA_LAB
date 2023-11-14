`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2023 03:20:44 PM
// Design Name: 
// Module Name: refresh_counter_tb
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


module refresh_counter_tb();
    reg clk=0;
    wire [1:0] OUT;
    
    refresh_counter gen(
        .clk(clk),
        .OUT(OUT)
    );
    
    initial begin
        forever begin
            #10 clk = ~clk;
        end
    end
endmodule
