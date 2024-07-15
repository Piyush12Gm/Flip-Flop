`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.07.2024 13:10:33
// Design Name: 
// Module Name: srff
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


module srff(output reg q,qbar,input s,r,clk,clr,preset);
always @(posedge clk)
if(clr == 1'b1)
begin  q<=1'b0;  qbar<=1'b1;   end
else if(preset == 1'b1)
begin  q<=1'b1;  qbar<=1'b0;   end
else
case({s,r})
2'b00 : begin q<=q; qbar<=qbar;  end     //Memory
2'b01 : begin q<=1'b0; qbar<=1'b1;  end  //reset
2'b10 : begin q<=1'b1; qbar<=1'b0;  end  //set
2'b11 : begin  q<=1'bx; qbar<=1'bx;  end    //NotValid
default : {q,qbar} <= 2'bxx;
endcase
endmodule
