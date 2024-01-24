`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2023 11:49:55
// Design Name: 
// Module Name: d_ffmod_test
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


module d_ffmod_test();

reg d, clk, rst;
wire q;
d_ffmod m1(q,d,clk,rst);

initial begin
    rst=1; clk=0;
    #10 rst=0; clk=1;
    #10 d=0;
    #10 d=1;
    //#10 $finish;
end  

always #5 clk=~clk;

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
end

endmodule
