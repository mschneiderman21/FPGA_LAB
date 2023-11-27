`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2023 02:26:17 PM
// Design Name: 
// Module Name: RAM_tb
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


module RAM_tb();
    reg clk, rst, write_en;
    reg [2:0] addr;
    reg [7:0] write_data;
    wire [7:0] READ_DATA;
    
    RAM ram(
        .clk(clk), 
        .rst(rst), 
        .write_en(write_en), 
        .addr(addr), 
        .write_data(write_data), 
        .READ_DATA(READ_DATA)
    );
    
    initial begin
        forever begin
            #10 clk = ~clk;
        end
    end
    
    initial begin
        clk = 0;
        rst = 0;
        write_en = 0;
        addr = 0;
        write_data = 0;
        
        #20 rst = 1;
        #20 rst = 0; write_en = 1;
        
        #20 addr = 3'b001; write_data = 8'b10000001;
        #20 addr = 3'b000; write_data = 8'b10101010;
        
        #20 write_en = 0;
        
        #20 addr = 3'b001;
        #20 addr = 3'b000;
    end
endmodule
