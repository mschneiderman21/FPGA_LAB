`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/18/2023 02:08:38 PM
// Design Name: 
// Module Name: seven_segment_display
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


module seven_segment_display(
    input clk,
    input [3:0] in,
    output reg [6:0] DISP
    );
    
    always @ (posedge clk)
    begin
        case({in})
            4'b0000 : DISP = 7'b0000001;
            4'b0001 : DISP = 7'b1001111;
            4'b0010 : DISP = 7'b0010010;
            4'b0011 : DISP = 7'b0000110;
            4'b0100 : DISP = 7'b1001100;
            4'b0101 : DISP = 7'b0100100;
            4'b0110 : DISP = 7'b0100000;
            4'b0111 : DISP = 7'b0001111;
            4'b1000 : DISP = 7'b0000000;
            4'b1001 : DISP = 7'b0001100;
        endcase
    end
endmodule
