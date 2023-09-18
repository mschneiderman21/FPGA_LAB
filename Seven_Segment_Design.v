`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/18/2023 03:06:10 PM
// Design Name: 
// Module Name: Seven_Segment_Design
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


module Seven_Segment_Design(S, display);
    input[3:0] S;
    output reg [6:0] display;
    
    always @ (*)
    begin
        case({S})
            4'b0000 : display = 7'b0000001;
            4'b0001 : display = 7'b1001111;
            4'b0010 : display = 7'b0010010;
            4'b0011 : display = 7'b0000110;
            4'b0100 : display = 7'b1001100;
            4'b0101 : display = 7'b0100100;
            4'b0110 : display = 7'b0100000;
            4'b0111 : display = 7'b0001111;
            4'b1000 : display = 7'b0000000;
            4'b1001 : display = 7'b0001100;
        endcase
    end
    
endmodule
