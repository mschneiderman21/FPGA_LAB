`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/18/2023 01:40:45 PM
// Design Name: 
// Module Name: Assignment_3
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


module Assignment_3(A, B, S, Cout, display); //4bit Adder
    input[3:0] A;
    input[3:0] B;
    output[3:0] S;
    output Cout;
    output[6:0] display;
    
    
    wire[3:0] Co;
    wire Cin;
    assign Cin =1'b0;
    
    Assignment2 add0(.A(A[0]),.B(B[0]),.Cin(Cin),.Cout(Co[0]),.Sum(S[0])); //call 1bit adder
    Assignment2 add1(.A(A[1]),.B(B[1]),.Cin(Co[0]),.Cout(Co[1]),.Sum(S[1]));
    Assignment2 add2(.A(A[2]),.B(B[2]),.Cin(Co[1]),.Cout(Co[2]),.Sum(S[2]));
    Assignment2 add3(.A(A[3]),.B(B[3]),.Cin(Co[2]),.Cout(Co[3]),.Sum(S[3]));
    
    assign Cout=Co[3];
    
    Seven_Segment_Design DISP(S, display);
 
endmodule
