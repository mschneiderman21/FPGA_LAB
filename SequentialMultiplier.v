
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2023 01:47:01 PM
// Design Name: 
// Module Name: SequentialMultiplier
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

`timescale 1ns / 1ps

module SequentialMultiplier(
  input [3:0] operand_a,
  input [3:0] operand_b,
  input clk,
  input rst,
  output reg [7:0] product
);

// Define states
parameter S0_idle = 0, S1_multiply = 1, S2_update_result = 2;
reg [2:0] CS, NS;

reg [7:0] partial_product;
reg [7:0] multiplicand;
reg [7:0] operand_bb;
reg [7:0] shift_count;

always @(posedge clk or posedge rst)
begin
  if (rst == 1)
    CS <= S0_idle;
  else
    CS <= NS;
end

always @(*)
begin
  case (CS)
    S0_idle: begin
      partial_product <= 8'b0;
      shift_count <= 3'b0;
      multiplicand <= {4'b0, operand_a};
      operand_bb <= operand_b;
      NS = S1_multiply;
    end
    S1_multiply: begin
      if (shift_count < 4) begin
        if (operand_bb[0])
          partial_product <= partial_product + multiplicand;
        multiplicand <= multiplicand << 1;
        operand_bb <= operand_bb >> 1;
        shift_count <= shift_count + 1;
      end
      else begin
        NS = S2_update_result;
      end
    end
    S2_update_result: begin
      if (shift_count == 4) begin
        CS = S0_idle;
        product <= partial_product;
      end
      else begin
        NS = S1_multiply;
      end
    end
  endcase
end

endmodule