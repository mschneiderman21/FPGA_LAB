`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2023 01:24:15 PM
// Design Name: 
// Module Name: Assignment_6
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


module CLA(A,B, S);
    input [3:0] A, B;
    wire [3:0] p, G;
    wire [4:0] C;
    output [4:0] S;
    
    assign p[0] = A[0]^B[0];
    assign p[1] = A[1]^B[1];
    assign p[2] = A[2]^B[2];
    assign p[3] = A[3]^B[3];
    
    assign G[0] = A[0]&B[0];
    assign G[1] = A[1]&B[1];
    assign G[2] = A[2]&B[2];
    assign G[3] = A[3]&B[3];
    
    assign C[0] = 0;
    assign C[1] = G[0] + p[0]&C[0];
    assign C[2] = G[1] + p[1]&C[1];
    assign C[3] = G[2] + p[2]&C[2];
    assign S[4] = G[3] + p[3]&C[3];
    
    assign S[0] = p[0]^C[0];
    assign S[1] = p[1]^C[1];
    assign S[2] = p[2]^C[2];
    assign S[3] = p[3]^C[3];
    
endmodule
