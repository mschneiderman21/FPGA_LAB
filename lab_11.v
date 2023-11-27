module lab_11(clk,rst,adr1_r,adr2_r,adr_ram,result,st_out);

    input clk, rst;
    input [2:0] adr1_r;
    input [2:0] adr2_r;
    input [2:0] adr_ram;
    output [7:0] result;
    output [3:0] st_out;
    
    wire [3:0] data;
    wire [3:0] a,b;
    wire [7:0] p;
    
    wire w_rf_en;
    wire [2:0] adr;
    wire DA,SA,SB;
    wire w_ram_en;
    
    //I/O declaration
    //Portmap
    ROM uut1 (.addr(adr), .DATA(data));
    cu uut4(.clk(clk), .reset(rst), .adr1(adr1_r), .adr2(adr2_r), .w_rf(w_rf_en), .adr(adr), .DA(DA), .SA(SA), .SB(SB), .w_ram(w_ram), .w_ram_en(w_ram_en), .st_out(st_out));
    RF uut5(.A(a), .B(b), .SA(SA), .SB(SB), .DA(DA), .D(data), .W(w_rf_en), .rst(rst), .clk(clk));
    multiplier uut2(.a(a), .b(b), .p(p)); //Use combinational -1 from the slide
    RAM uut3(.clk(clk), .rst(rst), .write_en(w_ram_en), .addr(adr_ram), .write_data(p), .READ_DATA(result));
endmodule