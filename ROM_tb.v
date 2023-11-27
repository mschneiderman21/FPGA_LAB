`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2023 03:27:25 PM
// Design Name: 
// Module Name: ROM_tb
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


module ROM_tb();
    reg [2:0] addr;
    wire [3:0] DATA;
    
    ROM rom(.addr(addr), .DATA(DATA));
    
    initial begin
        addr = 3'b000;
        #10 addr = 3'b001;
        #10 addr = 3'b010;
        #10 addr = 3'b011;
        #10 addr = 3'b100;
        #10 addr = 3'b101;
        #10 addr = 3'b110;
        #10 addr = 3'b111;
    end
endmodule
