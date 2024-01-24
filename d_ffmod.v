`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2023 11:48:07
// Design Name: 
// Module Name: d_ffmod
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


module d_ffmod(
output reg q,
input d,
input clk,
input rst);

    always @(posedge clk or negedge clk) begin
    if(rst)
        q<=0;
    else
        q<=d;
    end

endmodule
