`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2023 02:46:33 PM
// Design Name: 
// Module Name: bin2BCD_tb
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


module bin2BCD_tb();
    reg clk=0;
    reg en=1;
    reg [11:0] bin_d_in;
    wire [15:0] bcd_d_out;
    wire rdy;
    
    bin2BCD bin(
        .clk(clk),
        .en(en),
        .bin_d_in(bin_d_in),
        .bcd_d_out(bcd_d_out),
        .rdy(rdy)
    );
    
    initial begin
        forever begin
            #10 clk = ~clk;
        end
    end
    
    initial begin
        #20 bin_d_in = 12'b10000000000;
        #20 bin_d_in = 12'b01000000000;
    end
endmodule
