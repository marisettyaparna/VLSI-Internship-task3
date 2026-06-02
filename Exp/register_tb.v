`timescale 1ns / 1ps
module register_tb;

	// Inputs
	reg clk;
	reg [3:0] d;

	// Outputs
	wire [3:0] q;

	// Instantiate the Unit Under Test (UUT)
	registers uut (
		.clk(clk), 
		.d(d), 
		.q(q)
	);

	always #5 clk= ~clk;
	initial begin
		d = 0;clk = 0;#10;
		d = 1;#10;
		d = 0;#10;
		d = 1;#20;
		$finish;
	end
      
endmodule

