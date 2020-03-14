`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:54:50 01/31/2019
// Design Name:   modul02
// Module Name:   /home/daniel/Desktop/lab02_skel/test_modul02.v
// Project Name:  lab02_skel
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: modul02
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_modul02;

	// Inputs
	reg in;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	modul02 uut (
		.out(out), 
		.in(in)
	);

	initial begin
		// Initialize Inputs
		in = 0;

		// Wait 100 ns for global reset to finish
		#100;
      in = 1;  
		// Add stimulus here

	end
      
endmodule

