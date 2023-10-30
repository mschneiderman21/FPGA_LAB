`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2023 02:14:39 PM
// Design Name: 
// Module Name: SR_FlipFlop_tb
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


module SR_FlipFlop_tb();
    reg S, R, CLK;
    wire Q, Qbar;
    
    SR_FlipFlop DUT(.S(S), .R(R), .Q(Q), .Qbar(Qbar), .clk(CLK));
    initial begin
        CLK=0;
        forever #10 CLK = ~CLK;  
    end

    initial
        begin
            S=1; R=0;
            #5 S=1;
            #5 S=1;
            #5 R=1;
            #5 R=0; S=1;
            #5 S=0; R=1;
            #10 R=0;
            #5 R=1; S=1;
        end
    
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(1, SR_FlipFlop_tb);
    end
endmodule
