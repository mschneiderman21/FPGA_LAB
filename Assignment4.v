`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2023 01:37:08 PM
// Design Name: 
// Module Name: Assignment4
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


module Assignment_4(A, B, display, Sel);
    input[3:0] A;
    input[3:0] B;
    output[6:0] display;
    input Sel;
    
    wire [3:0] O;
    wire [3:0] S;
    wire Cout;
    
    Assignment_3 adder(.A(A), .B(B), .S(S), .Cout(Cout));
    
    mux_2_to_1 mux(.S(S), .Cout(Cout), .Sel(Sel), .O(O));
     
    Seven_Segment_Design disp(.S(O), .display(display));

endmodule
