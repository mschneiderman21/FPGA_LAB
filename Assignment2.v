`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/11/2023 01:48:09 PM
// Design Name: 
// Module Name: Assignment2
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


module Assignment2(
     A,
     B,
     Cin,
     Cout,
     Sum
    );
    input A, B, Cin;
    output reg Cout, Sum;
    
    always @ (*)
    begin
        case({A,B,Cin})
            3'b000 : Cout = 0;
            3'b001 : Cout = 0;
            3'b010 : Cout = 0;
            3'b011 : Cout = 1;
            3'b100 : Cout = 0;
            3'b101 : Cout = 1;
            3'b110 : Cout = 1;
            3'b111 : Cout = 1;
        endcase
        
        case({A,B,Cin})
            3'b000 : Sum = 0;
            3'b001 : Sum = 1;
            3'b010 : Sum = 1;
            3'b011 : Sum = 0;
            3'b100 : Sum = 1;
            3'b101 : Sum = 0;
            3'b110 : Sum = 0;
            3'b111 : Sum = 1;
        endcase
    end
    
endmodule
