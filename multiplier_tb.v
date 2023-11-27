`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2023 02:31:32 PM
// Design Name: 
// Module Name: multiplier_tb
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


module multiplier_tb;
  // Inputs
  reg [3:0] operand_a;
  reg [3:0] operand_b;
  reg clk;
  reg rst;

  // Outputs
  wire [7:0] product;

  // Instantiate the SequentialMultiplier module
  SequentialMultiplier uut (
    .operand_a(operand_a),
    .operand_b(operand_b),
    .clk(clk),
    .rst(rst),
    .product(product)
  );

  // Clock generation
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  // Test stimulus
  initial begin
    // Test case 1
    operand_a = 4'b0101;
    operand_b = 4'b0011;
    rst = 1;
    #10 rst = 0;
    #20 $display("Product 1: %b", product);

    // Test case 2
    operand_a = 4'b1100;
    operand_b = 4'b0011;
    rst = 1;
    #10 rst = 0;
    #20 $display("Product 2: %b", product);

    // Test case 3
    operand_a = 4'b0010;
    operand_b = 4'b1111;
    rst = 1;
    #10 rst = 0;
    #20 $display("Product 3: %b", product);

    // Test case 4
    operand_a = 4'b1010;
    operand_b = 4'b0101;
    rst = 1;
    #10 rst = 0;
    #20 $display("Product 4: %b", product);

    // Test case 5
    operand_a = 4'b1111;
    operand_b = 4'b1111;
    rst = 1;
    #20 rst = 0;
    #40 $display("Product 5: %b", product);

    // End simulation
    $finish;
  end

endmodule