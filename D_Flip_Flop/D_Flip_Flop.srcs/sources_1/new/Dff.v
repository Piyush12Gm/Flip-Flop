`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2024 12:18:14
// Design Name: 
// Module Name: Dff
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


module Dff(Q,D,clk,rst);
input D,clk,rst;
output reg Q;
always @(posedge clk)
begin
if(rst==1'b1)
Q<=1'b0;
else
Q<=D;
end;
endmodule
