`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2023 01:46:34 PM
// Design Name: 
// Module Name: D_FlipFlop_Asynch_tb
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


module D_FlipFlop_Asynch_tb();
    reg clk;
    reg d;
    reg rstn;
    wire q;
    reg [2:0] delay;
    
    D_FlipFlop_Asynch dff (.d(d),
                        .rstn(rstn),
                        .clk(clk),
                        .q(q));
   always #10 clk = ~clk;
   
   initial begin
        clk <= 0;
        d <= 0;
        rstn <= 0;
        
        #10 d <= 1;
        #10 rstn <= 1;
        for(integer i = 0; i<5; i=i+1) begin
            delay = $random;
            #(delay) d <= i;
        end
    end
endmodule
