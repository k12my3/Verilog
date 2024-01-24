`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.07.2023 22:02:22
// Design Name: 
// Module Name: andgateyttb
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


module andgateyttb();
reg a,b;
wire y;

andgateyt m1(a,b,y);
initial
begin

a=0; b=0; #5
a=0; b=1; #5
a=1; b=0; #5
a=1; b=1; #5
$stop;
end
endmodule