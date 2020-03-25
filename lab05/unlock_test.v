`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:38:06 03/22/2020
// Design Name:   unlock
// Module Name:   C:/Users/Ana/lab05_skel/unlock_test.v
// Project Name:  lab05_skel
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: unlock
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module unlock_test;

	// Inputs
	reg [7:0] ascii_in;
	reg reset;
	reg clk;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	unlock unlock (ascii_in, out, reset, clk);

	always@(clk)
		#5 clk <= ~clk;

	initial begin
		// Initialize Inputs
		ascii_in = 0;
		reset = 1;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
		reset = 0;
		ascii_in = "A";
		#10
		ascii_in = "B";
		#10
		ascii_in = "C";
		#10
		ascii_in = "A";
		#10
		ascii_in = "B";
		#10
		ascii_in = "C";
		#10
		ascii_in = "D";
		
        
		// Add stimulus here

	end
      
endmodule

