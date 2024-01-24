`timescale 1ns / 1ps
module alu_tasks_tb();
reg [1:0]a,b;
reg [2:0]op;
wire [1:0]y;

alu_tasks a1(op,a,b,y);
initial begin
a = 2'b01;
b = 2'b11;
$dumpfile("dump.vcd");
$dumpvars(1);
$monitor("A=%B, B=%B, OP=%B, Y=%B", a, b, op, y);
    op = 000; #5
    op = 001; #5
    op = 010; #5
    op = 011; #5
    op = 100; #5
    op = 101; #5
    op = 110; #5
    op = 111; #5;
end
endmodule