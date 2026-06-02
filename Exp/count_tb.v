`timescale 1ns / 1ps
module count_tb;

	// Inputs
	reg clk;

	// Outputs
	wire [3:0] count;

	// Instantiate the Unit Under Test (UUT)
	counter uut (
		.clk(clk), 
		.count(count)
	);
always #50 clk= ~clk;
	initial begin
		clk = 0;#100;
	end
      
endmodule

