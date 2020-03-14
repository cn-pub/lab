`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:54:25 01/31/2019
// Design Name:   modul03
// Module Name:   /home/daniel/Desktop/lab02_skel/test_modul03.v
// Project Name:  lab02_skel
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: modul03
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_modul03;

	// Inputs
	reg in;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	modul03 uut (
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

