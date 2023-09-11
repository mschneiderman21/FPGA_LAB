`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/11/2023 02:20:24 PM
// Design Name: 
// Module Name: Testbench1
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


module Testbench1( );
    reg A, B, Cin;
    wire Cout, Sum;
    
    Assignment2 outs(.A(A),.B(B),.Cin(Cin),.Cout(Cout),.Sum(Sum));
    initial
        begin
                A=0; B=0; Cin=0;
            #10;
                A=0; B=0; Cin=1;
            #10;
                A=0; B=1; Cin=0;
            #10;
                A=0; B=1; Cin=1;
            #10;
                A=1; B=0; Cin=0;
            #10;
                A=1; B=0; Cin=1;
            #10;
                A=1; B=1; Cin=0;
            #10;
                A=1; B=1; Cin=1;
            #10;      
        end    
endmodule
