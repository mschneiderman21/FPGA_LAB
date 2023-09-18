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
    reg [3:0] A; 
    reg [3:0] B;
    wire [3:0] S;
    wire Cout;

    
    Assignment_3 outs(.A(A),.B(B),.S(S),.Cout(Cout));
    initial
        begin
              A=4'b0000; B=4'b0000; // Sum = 1
            #10;
              A=4'b0001; B=4'b0001; // sum = 2
            #10;
              A=4'b0001; B=4'b0010; // sum = 3
            #10;
              A=4'b0001; B=4'b0011; // sum = 4
            #10;
              A=4'b0011; B=4'b0010; // sum = 5 
            #10;
              A=4'b0011; B=4'b0011; //sum = 6
            #10;
              A=4'b0100; B=4'b0011; //sum = 7
            #10;
              A=4'b0011; B=4'b0101; //sum = 8
            #10;
              A=4'b1000; B=4'b0001; //sum = 9
            #10;
              A=4'b1111; B=4'b0001; //sum = 9
        end    
endmodule