`timescale 1ns / 1ps
module d_ffog_test();

reg d, clk, rst;
wire q;
d_ffog m1(q,d,clk,rst);

initial begin
    rst=1; clk=0;
    #10 rst=0; clk=1;
    #10 d=0;
    #10 d=1;
    #10 $finish;
end  

always #5 clk=~clk;

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
end

endmodule