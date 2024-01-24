`timescale 1ns / 1ps
module paramFA_tb();
reg a,b,cin;
wire s,c;

paramFA f1(a,b,cin,s,c);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    #5 {a,b,cin} = 3'b000;
    #5 {a,b,cin} = 3'b001;
    #5 {a,b,cin} = 3'b010;
    #5 {a,b,cin} = 3'b011;
    #5 {a,b,cin} = 3'b100;
    #5 {a,b,cin} = 3'b101;
    #5 {a,b,cin} = 3'b110;
    #5 {a,b,cin} = 3'b111;
end
endmodule