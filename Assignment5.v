`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2023 01:35:46 PM
// Design Name: 
// Module Name: Assignment5
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


module Assignment5(a, two, three);
    input[3:0] a;
    output reg two;
    output reg three;

    integer value;
    
    always @(*)
        begin
            two = 0;
            three = 0;
            value = a; 
            if (value % 2 == 0) 
                two = 1;
            if (value % 3 == 0) 
                three = 1;
            if (value == 0)begin
                three = 0;
                two = 0;
            end    
        end
endmodule
