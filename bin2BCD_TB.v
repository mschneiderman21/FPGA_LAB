`timescale 1ns / 1ps
module bin2BCD_TB();
 reg clk = 0;
 reg en;// = 0;
 reg [11:0] bin_d_in = 0;
 wire [15:0] bcd_d_out;
 wire rdy;

 // 2. Instantiate the design and connect to testbench variables
 bin2BCD fa0(
 .clk(clk),
 .en(en),
 .bin_d_in(bin_d_in),
 .bcd_d_out(bcd_d_out),
 .rdy(rdy)
 );

initial
 begin
 //clk = 0;
 forever
 begin
 #10 clk = ~clk; //10*2 for full wave
 end
 end
initial
 begin
 forever
 begin
 bin_d_in = 12'b00000000001;
 en = 1;
 #20 //en must catch rising edge of clk
 en = 0;
 #620; //IDEL (+1); SETUP (+1); ADD (+12*4); SHIFT (+12); DONE (+1); extra for edge case (+4); enable back to zero (-1) ~~> ((1+1+(12*4)+12+1+1+4-1)*10*2) = 1340
 bin_d_in = 12'b000000000010;// 2^(12)-1 = 4095 = 0xfff
 en = 1;
 #20
 en = 0;
 #620; //IDEL (+1); SETUP (+1); ADD (+12*4); SHIFT (+12); DONE (+1); extra for edge case (+4); enable back to zero (-1) ~~> ((1+1+(12*4)+12+1+1+4-1)*10*2) = 1340
 bin_d_in = 0;
 en = 1;
 #20
 en = 0;
 #620; //IDEL (+1); SETUP (+1); ADD (+12*4); SHIFT (+12); DONE (+1); extra for edge case (+4); enable
//back to zero (-1) ~~> ((1+1+(12*4)+12+1+1+4-1)*10*2) = 1340
 bin_d_in = bin_d_in + 1;
 en = 1;
 #20
 en = 0;
 #620; //IDEL (+1); SETUP (+1); ADD (+12*4); SHIFT (+12); DONE (+1); extra for edge case (+4); enable
//back to zero (-1) ~~> ((1+1+(12*4)+12+1+1+4-1)*10*2) = 1340
 bin_d_in = bin_d_in + 10;
 en = 1;
 #20
 en = 0;
 #620; //IDEL (+1); SETUP (+1); ADD (+12*4); SHIFT (+12); DONE (+1); extra for edge case (+4); enable
//back to zero (-1) ~~> ((1+1+(12*4)+12+1+1+4-1)*10*2) = 1340
 bin_d_in = bin_d_in + 10;
 en = 1;
 #20
 en = 0;
 #620; //IDEL (+1); SETUP (+1); ADD (+12*4); SHIFT (+12); DONE (+1); extra for edge case (+4); enable
//back to zero (-1) ~~> ((1+1+(12*4)+12+1+1+4-1)*10*2) = 1340
 bin_d_in = bin_d_in + 100;
 en = 1;
 #20
 en = 0;
 #1340; //IDEL (+1); SETUP (+1); ADD (+12*4); SHIFT (+12); DONE (+1); extra for edge case (+4);
//enable back to zero (-1) ~~> ((1+1+(12*4)+12+1+1+4-1)*10*2) = 1340
 bin_d_in = bin_d_in + 1000;
 en = 1;
 #20
 en = 0;
 #1340; //IDEL (+1); SETUP (+1); ADD (+12*4); SHIFT (+12); DONE (+1); extra for edge case (+4);
//enable back to zero (-1) ~~> ((1+1+(12*4)+12+1+1+4-1)*10*2) = 1340
 bin_d_in = bin_d_in + 1000;
 en = 1;
 #20
 en = 0;
 #1340; //IDEL (+1); SETUP (+1); ADD (+12*4); SHIFT (+12); DONE (+1); extra for edge case (+4);
//enable back to zero (-1) ~~> ((1+1+(12*4)+12+1+1+4-1)*10*2) = 1340
 bin_d_in = bin_d_in + 1;
 en = 1;
 #20
 en = 0;
 #1340; //IDEL (+1); SETUP (+1); ADD (+12*4); SHIFT (+12); DONE (+1); extra for edge case (+4);
//enable back to zero (-1) ~~> ((1+1+(12*4)+12+1+1+4-1)*10*2) = 1340
 bin_d_in = bin_d_in + 2;
 en = 1;
 #20
 en = 0;
 #1340; //IDEL (+1); SETUP (+1); ADD (+12*4); SHIFT (+12); DONE (+1); extra for edge case (+4);
//enable back to zero (-1) ~~> ((1+1+(12*4)+12+1+1+4-1)*10*2) = 1340
 bin_d_in = bin_d_in + 2;
 en = 1;
 #20
 en = 0;
 #1340; //IDEL (+1); SETUP (+1); ADD (+12*4); SHIFT (+12); DONE (+1); extra for edge case (+4);
//enable back to zero (-1) ~~> ((1+1+(12*4)+12+1+1+4-1)*10*2) = 1340
 bin_d_in = bin_d_in + 5;
 en = 1;
 #20
 en = 0;
 #1340; //IDEL (+1); SETUP (+1); ADD (+12*4); SHIFT (+12); DONE (+1); extra for edge case (+4);
//enable back to zero (-1) ~~> ((1+1+(12*4)+12+1+1+4-1)*10*2) = 1340
 end
 end
endmodule