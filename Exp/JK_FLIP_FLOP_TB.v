`timescale 1ns / 1ps
module JK_FLIP_FLOP_TB;

	// Inputs
	reg J;
	reg K;
	reg clk;

	// Outputs
	wire Q;

	// Instantiate the Unit Under Test (UUT)
	JK_FLIP_FLOP uut (
		.J(J), 
		.K(K), 
		.clk(clk), 
		.Q(Q)
	);
always #5 clk= ~clk;
	initial begin
		// Initialize Inputs
		J = 0;K = 0;clk = 0;	#10;
        J = 0;K = 1;#10;
		  J = 1;K = 0;#10;
		  J = 1;K = 1;	#10;
		   $finish;
	end
endmodule

