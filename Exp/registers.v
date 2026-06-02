`timescale 1ns / 1ps
module registers(
   input clk,
input[3:0]d,	
output reg[3:0]q=4'b0000
);
always @(posedge clk)
begin 
q<=d;
end
endmodule
