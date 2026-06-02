`timescale 1ns / 1ps
module d_flipflop(
    input D,
    input clk,
    output reg Q=0
    );
always @(posedge clk)
begin
Q<=D;
end

endmodule
