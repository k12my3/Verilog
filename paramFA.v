`timescale 1ns / 1ps
module paramFA(a,b,cin,s,c);
input a,b,cin;
output s,c;

assign s = a^b^cin;
assign c = (a&b) | (a&cin) | (b&cin);
endmodule