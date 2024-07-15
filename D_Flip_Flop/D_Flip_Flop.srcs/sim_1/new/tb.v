`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2024 12:25:01
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


module tb();
reg D,clk,rst;
wire Q;
Dff dut(Q,D,clk,rst);
always #10 clk = ~clk;
initial  begin
clk=0;
rst=1'b0;
D<=1;
#22
    rst=1'b1;
    D<=1;
#20
    D<=0;
    rst=1'b0;
#15
    D<=1;
#15 $finish;
end            
endmodule
