`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2023 02:56:10 PM
// Design Name: 
// Module Name: anode_generator
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


module anode_generator(
    input clk,
    output [3:0] SEG_ANODE
    );
    
    wire [1:0] inter;
    
    refresh_counter count(
        .clk(clk),
        .OUT(inter)
    );
    
    decoder_2to4 decode(
        .in(inter),
        .OUT(SEG_ANODE)
    );
endmodule
