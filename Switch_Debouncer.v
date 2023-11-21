`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2023 01:34:26 PM
// Design Name: 
// Module Name: Switch_Debouncer
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


module Switch_Debouncer(input RAW, input clk, output reg CLEAN);
    reg [2:0] counter;
    wire TC;
    
    //reset and incrmetn counter
    always @(posedge clk) 
    begin
        if(~RAW)
            counter <= 3'b000;
        else 
            counter <= counter + 3'b001;
    end 
    
    //chnage output signal
    //if counter reaches max
    assign TC = (counter == 3'b111);
    always @(posedge clk) 
    begin
        if(~RAW)
            CLEAN <= 1'b0;
        else if (TC)
            CLEAN <= 1'b1;
    end
endmodule
