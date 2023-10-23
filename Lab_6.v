`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2023 02:01:35 PM
// Design Name: 
// Module Name: Lab_6
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


module Lab_6(
    input clk,
    input en,
    input [3:0] A,
    input [3:0] B,
    output [15:0] BCD,
    output RDY
    );
    
    wire [4:0] S;
    wire [11:0] bin;
    
    CLA p1(.A(A),.B(B),.S(S));
    
    assign bin = {7'b0,S};
    
    bin2BCD p2(.clk(clk), .en(en),.bin_d_in(bin),.bcd_d_out(BCD),.rdy(RDY));
endmodule
