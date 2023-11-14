`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2023 01:51:51 PM
// Design Name: 
// Module Name: 2to4_decoder
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


module decoder_2to4(
    input [1:0] in,
    output reg [3:0] OUT
    );
    
    always @ (*)
    begin
        case(in)
            2'b00: OUT = 4'b0001;
            2'b01: OUT = 4'b0010;
            2'b10: OUT = 4'b0100;
            2'b11: OUT = 4'b1000;
        endcase
    end
endmodule
