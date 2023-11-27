`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2023 02:16:16 PM
// Design Name: 
// Module Name: RAM
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


module RAM(clk, rst, write_en, addr, write_data, READ_DATA);
    parameter DATA_W = 8;
    parameter SIZE = 8;
    parameter ADDR_W = 3;
    
    input clk, rst, write_en;
    input [ADDR_W-1:0] addr;
    input [DATA_W-1:0] write_data;
    output reg [DATA_W-1:0] READ_DATA;
    
    reg[DATA_W-1:0] mem[0:SIZE-1];
    
    integer i;
    
    always @ (posedge clk) begin
        if(rst) begin
            for(i=0; i<SIZE; i=i+1) begin
                mem[i] <=0;
            end
        end
        else begin
            if(write_en)
                mem[addr] <= write_data;
            else
                READ_DATA <= mem[addr];
            end
        end
endmodule
