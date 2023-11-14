`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2023 01:51:51 PM
// Design Name: 
// Module Name: 4to1_mux
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


module mux_4to1(
    input [16:0] in,
    input [3:0] select,
    output reg [3:0] OUT
    );
    
    always @ (*)
    begin
        case(select)
            4'b0001: OUT = in[3:0];
            4'b0010: OUT = in[7:4];
            4'b0100: OUT = in[11:8];
            4'b1000: OUT = in[15:12];
        endcase
    end
endmodule
