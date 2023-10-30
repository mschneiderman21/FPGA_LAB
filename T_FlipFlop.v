`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2023 03:06:15 PM
// Design Name: 
// Module Name: T_FlipFlop
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


module T_FlipFlop (
    input T, clk, rstn,
    output reg Q, Qbar
);

    always @(posedge clk or negedge rstn) begin
        if (~rstn) begin
            Q <= 1'b0;
            Qbar <= 1'b1;
        end else if (T) begin
            Q <= ~Q;
            Qbar <= Q;
        end
    end
endmodule
