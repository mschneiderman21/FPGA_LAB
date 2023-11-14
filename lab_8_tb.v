`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2023 04:06:35 PM
// Design Name: 
// Module Name: lab_8_tb
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


module lab_8_tb();
    reg clk=0;
    reg [27:0] divisor=28'd100000;
    reg en=1;
    wire [6:0] SEG_CATHODE;
    wire [3:0] SEG_ANODE;
    wire CLK;
    wire [11:0] BCD_IN;
    wire [15:0] BCD_OUT;
    
    lab_8 test(
        .clk(clk),
        .divisor(divisor),
        .en(en),
        .SEG_CATHODE(SEG_CATHODE),
        .SEG_ANODE(SEG_ANODE),
        .CLK(CLK),
        .BCD_IN(BCD_IN),
        .BCD_OUT(BCD_OUT)
    );
    
    initial begin
        forever begin
            #10 clk = ~clk;
        end
    end
endmodule
