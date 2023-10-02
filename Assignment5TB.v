`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2023 02:17:27 PM
// Design Name: 
// Module Name: Assignment5TB
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


module Assignment5TB( );

    reg [3:0] a;
    wire two,three;
    
    Assignment5 outs(.a(a),.two(two),.three(three));
    initial
        begin
            a= 4'b0000;
            #10;
            a= 4'b0001;
            #10;
            a= 4'b0010;
            #10;
            a= 4'b0011;
            #10;
            a= 4'b0100;
            #10;
            a= 4'b0101;
            #10;
            a= 4'b0110;
            #10;
            a= 4'b0111;
            #10;
            
            a= 4'b1000;
            #10;
            a= 4'b1001;
            #10;
            a= 4'b1010;
            #10;
            a= 4'b1011;
            #10;
            a= 4'b1100;
            #10;
            a= 4'b1101;
            #10;
            a= 4'b1110;
            #10;
            a= 4'b1111;
            #10;
        end
endmodule
