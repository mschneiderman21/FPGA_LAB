`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2023 02:27:28 PM
// Design Name: 
// Module Name: mux_2_to_1
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


module mux_2_to_1(S, Cout, Sel, O);
    input[3:0] S;
    input Cout;
    input Sel;
    output reg [3:0] O;
    
    reg [3:0] CoutE;
    
    always @ (*)
        begin
            case({Cout})
                1'b0 : CoutE = 4'b0000;
                1'b1 : CoutE = 4'b0001;
            endcase
            
            case({Sel})
                1'b0 : O = CoutE;
                1'b1 : O = S;
            endcase
        end   
endmodule
