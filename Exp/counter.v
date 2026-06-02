`timescale 1ns / 1ps
module counter(
input clk,
output reg[3:0]count=4'b1000
    );
always @(posedge clk)
begin
count<=count+1;
end


endmodule
