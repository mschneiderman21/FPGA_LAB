`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2023 02:49:24 PM
// Design Name: 
// Module Name: lab_11_tb
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


module lab_11_tb();
    reg clk, rst;
    reg [2:0] adr1_r, adr2_r, adr_ram;
    wire [7:0] result;
    wire [3:0] st_out;
    
    lab_11 ut(
        .clk(clk),
        .rst(rst),
        .adr1_r(adr1_r),
        .adr2_r(adr2_r),
        .adr_ram(adr_ram),
        .result(result),
        .st_out(st_out)
    );
    
    initial begin
        forever begin
            #10 clk = ~clk;
        end
    end
    
    initial begin
        clk = 0;
        rst = 1;
        #10 rst = 0;
        adr1_r = 3'b001;
        adr2_r = 3'b010;
        adr_ram = 3'b000;
        
        #90 rst = 1;
        #10 rst = 0;
        adr1_r = 3'b011;
        adr2_r = 3'b010;
        adr_ram = 3'b001;
        
        #90 adr_ram = 3'b000;
        #50 adr_ram = 3'b001;
    end
endmodule
