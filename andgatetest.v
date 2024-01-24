`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.08.2022 08:25:49
// Design Name: 
// Module Name: andgatetest
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


module andgatetest();
reg a,b;
wire y;
andgate t1(a,b,y);

initial
    begin
        a=1'b0; b=1'b0; #5;
        a=1'b0; b=1'b1; #5;
        a=1'b1; b=1'b0; #5;
        a=1'b1; b=1'b1; #5;
    end
endmodule