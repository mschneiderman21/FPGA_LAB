`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2023 03:05:18 PM
// Design Name: 
// Module Name: anode_generator_tb
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


module anode_generator_tb();
    reg clk=0;
    wire [3:0] SEG_ANODE;
    
    anode_generator gen(
        .clk(clk),
        .SEG_ANODE(SEG_ANODE)
    );
    
    initial begin
        forever begin
            #10 clk = ~clk;
        end
    end
endmodule
