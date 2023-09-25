`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2023 03:25:42 PM
// Design Name: 
// Module Name: TestBench
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


module TestBench();
    reg [3:0] A; 
    reg [3:0] B;
    reg Sel;
    wire [6:0] display;
    
    Assignment_4 outs(.A(A),.B(B),.display(display),.Sel(Sel));
    initial
        begin
              A=4'b0000; B=4'b0000; Sel=1'b0; // Sum = 1 Carry out is 0
            #10;
              A=4'b0001; B=4'b0001; Sel=1'b1; // sum = 2
            #10;
              A=4'b0001; B=4'b0010; Sel=1'b0; // Carry out is 0
            #10;
              A=4'b0001; B=4'b0011; Sel=1'b1; // sum = 4
            #10;
              A=4'b0011; B=4'b0010; Sel=1'b1; // sum = 5 
            #10;
              A=4'b0011; B=4'b0011; Sel=1'b1; //sum = 6
            #10;
              A=4'b0100; B=4'b0011; Sel=1'b1; //sum = 7
            #10;
              A=4'b0011; B=4'b0101; Sel=1'b1;//sum = 8
            #10;
              A=4'b1000; B=4'b0001; Sel=1'b1; //sum = 9
            #10;
              A=4'b1111; B=4'b0001; Sel=1'b0; //Carry Out is 1
        end    
endmodule

