`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2023 01:51:51 PM
// Design Name: 
// Module Name: lab_8
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


module lab_8(
    input clk,
    input [27:0] divisor,
    input en,
    output CLK,
    output [6:0] SEG_CATHODE,
    output [3:0] SEG_ANODE,
    output [11:0] BCD_IN,
    output [15:0] BCD_OUT
    );
    
    wire [11:0] bcd_in;
    wire [15:0] bcd_out;
    wire clk_1Hz;
    
    clock_divider divide(
        .clk(clk),
        .divisor(divisor),
        .CLK(clk_1Hz)
    );
    
    counter count(
        .clk(clk_1Hz),
        .BCD_IN(bcd_in),
        .rst(0)
    );
    
    bin2BCD convert(
        .clk(clk),
        .en(en),
        //.en(1),
        .bin_d_in(bcd_in),
        .bcd_d_out(bcd_out)
    );
    
    multi_segment_driver driver(
        .bcd_out(bcd_out),
        .clk(clk),
        .SEG_CATHODE(SEG_CATHODE),
        .SEG_ANODE(SEG_ANODE)
    );
    
    assign CLK = clk_1Hz;
    assign BCD_IN = bcd_in;
    assign BCD_OUT = bcd_out;
endmodule
