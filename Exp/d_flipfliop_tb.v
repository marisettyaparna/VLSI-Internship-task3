`timescale 1ns / 1ps
module d_flipfliop_tb;

	// Inputs
	reg D;
	reg clk;

	// Outputs
	wire Q;

	// Instantiate the Unit Under Test (UUT)
	d_flipflop uut (
		.D(D), 
		.clk(clk), 
		.Q(Q)
	);
always #5 clk= ~clk;
	initial begin
		// Initialize Inputs
		D = 0;clk = 0;#10;
		D = 1;#10;
		D = 0;#10;
		D = 1;#20;
		$finish;
	end
      
endmodule

