`timescale 1ns / 1ps

module alu_tasks(op,a,b,y);
input [1:0]a,b;
input [2:0]op;
output reg [1:0]y;

always @(a or b or op)
begin
    case(op)
    3'b000: begin tand(a,b,y); end
    3'b001: begin tor(a,b,y); end
    3'b010: begin tnot(a,y); end
    3'b011: begin tsum(a,b,y); end
    3'b100: begin tdif(a,b,y); end
    3'b101: begin tprod(a,b,y); end
    3'b110: begin tquot(a,b,y); end
    3'b111: begin tmod(a,b,y); end
    endcase
end

task tand;
    input a,b;
    output y;
    begin y=a&b; end
endtask
task tor;
    input a,b;
    output y;
    y=a|b;
endtask
task txor;
    input a,b;
    output y;
    y=a^b;
endtask
task tnot;
    input a;
    output y;
    y=~a;
endtask
task tsum;
    input a,b;
    output y;
    y=a+b;
endtask
task tdif;
    input a,b;
    output y;
    y=a-b;
endtask
task tprod;
    input a,b;
    output y;
    y=a*b;
endtask
task tquot;
    input a,b;
    output y;
    y=a/b;
endtask
task tmod;
    input a,b;
    output y;
    y=a%b;
endtask
endmodule