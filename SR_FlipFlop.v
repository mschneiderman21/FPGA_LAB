`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2023 02:14:11 PM
// Design Name: 
// Module Name: SR_FlipFlop
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


module SR_FlipFlop(
    input S, R, clk,
    output reg Q, Qbar
);
    always @(posedge clk) begin
        if (R && !S) begin
            Q <= 0;
            Qbar <= 1;
        end else if (!R && S) begin
            Q <= 1;
            Qbar <= 0;
        end else if (!R && !S) begin
            // Hold the previous state
        end else begin
            // Undefined state: do not change Q and Qbar
        end
    end
endmodule
