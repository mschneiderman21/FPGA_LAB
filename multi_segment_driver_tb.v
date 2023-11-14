`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2023 03:45:51 PM
// Design Name: 
// Module Name: multi_segment_driver_tb
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


module multi_segment_driver_tb();
    reg [15:0] bcd_out;
    reg clk=0;
    wire [6:0] SEG_CATHODE;
    wire [3:0] SEG_ANODE;
    
    multi_segment_driver drive(
        .bcd_out(bcd_out),
        .clk(clk),
        .SEG_CATHODE(SEG_CATHODE),
        .SEG_ANODE(SEG_ANODE)
    );
    
    initial begin
        forever begin
            #10 clk = ~clk;
        end
    end
    
    initial begin
        bcd_out = 16'b0001100001000010;
        #200 bcd_out = 16'b0001000000100011;
    end
endmodule
