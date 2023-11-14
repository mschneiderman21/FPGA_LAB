`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2023 01:51:51 PM
// Design Name: 
// Module Name: multi-segment_driver
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


module multi_segment_driver(
    input [15:0] bcd_out,
    input clk,
    output [6:0] SEG_CATHODE,
    output [3:0] SEG_ANODE
    );
    
    wire [3:0] num;
    
    anode_generator gen(
        .clk(clk),
        .SEG_ANODE(SEG_ANODE)
    );
    
    mux_4to1 mux(
        .in(bcd_out),
        .select(SEG_ANODE),
        .OUT(num)
    );
    
    seven_segment_display disp(
        .clk(clk),
        .in(num),
        .DISP(SEG_CATHODE)
    );
    
endmodule
