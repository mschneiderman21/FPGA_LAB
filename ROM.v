`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2023 02:16:16 PM
// Design Name: 
// Module Name: ROM
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


module ROM(addr, DATA);
    input [2:0] addr;
    output reg [3:0] DATA;
    
    always @ (addr) begin
        case (addr)
            3'd0: DATA = 4'b0000;
            3'd1: DATA = 4'b1100;
            3'd2: DATA = 4'b0110;
            3'd3: DATA = 4'b0111;
            3'd4: DATA = 4'b1000;
            3'd5: DATA = 4'b0001;
            3'd6: DATA = 4'b1101;
            3'd7: DATA = 4'b1110;
        endcase
     end
endmodule
