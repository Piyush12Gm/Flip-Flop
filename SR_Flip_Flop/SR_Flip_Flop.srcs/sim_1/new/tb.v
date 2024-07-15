`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.07.2024 13:18:48
// Design Name: 
// Module Name: tb
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


module tb;
reg s,r,clk,clr,preset;
wire q,qbar;
srff uut(.q(q),.qbar(qbar),.s(s),.r(r),.clk(clk),.clr(clr),.preset(preset));
initial  begin
s = 0;  r = 0;
clk = 0;  clr = 1'b1;
#10 preset = 1'b1;
#10 preset = 1'b0;
end
always #2 {s,r} = {s,r} + 1'b1;
always #1 clk = ~clk;
initial #10 clr = 1'b0;
initial #200 $finish;
endmodule
