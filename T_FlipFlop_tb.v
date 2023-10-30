`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2023 03:06:41 PM
// Design Name: 
// Module Name: T_FlipFlop_tb
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

module T_FlipFlop_tb();
    reg T, clk, rstn;
    wire Q, Qbar;
    
    T_FlipFlop DUT(.T(T), .clk(clk), .rstn(rstn), .Q(Q), .Qbar(Qbar));
    
    initial begin
        clk <= 0;
        rstn <= 0;
        T <= 0;
        #5 rstn <= 1;
        #10 T <= 1;
        #10 T <= 0;
        #10 T <= 1;
        #10 T <= 0;
    end
    
    always #5 clk = ~clk;
endmodule
