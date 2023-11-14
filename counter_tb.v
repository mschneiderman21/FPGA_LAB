`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2023 02:00:03 PM
// Design Name: 
// Module Name: counter_tb
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


module counter_tb();
    reg clk=0;
    reg rst=0;
    wire DONE;
    wire [11:0] OUT;
    
    counter COUNT(
        .clk(clk),
        .BCD_IN(OUT),
        .DONE(DONE),
        .rst(rst)
    );
    
    initial begin
        forever begin
            #10 clk = ~clk;
        end
    end
    
    initial begin
        #100 rst = 1'b1;
        #20 rst = 1'b0;
    end
endmodule
