`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// ACS
// Computer Design 1
//
// Design Name:   		subtractor_4bit
// Module Name:  		subtractor_4bit_test.v
// Project Name:		Laborator 6
// Target Devices: 		Digilent Nexys 3
//////////////////////////////////////////////////////////////////////////////////

module subtractor_8bit_test;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;
	reg carry_in;

	// Outputs
	wire carry_out;
	wire [7:0] result;
	reg ok;

	// Instantiate the Unit Under Test (UUT)
	subtractor_8bit uut (
		.carry_out(carry_out), 
		.result(result), 
		.A(A), 
		.B(B),
		.carry_in(carry_in)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		carry_in = 0;
		ok = 0;

		#1;
      if (result == A - B) begin
			ok = 1;
		end else begin
			ok = 1'bx;
		end
		
		#99;
		A = 10;
		B = 4;
		
		#1;
		if (result == A - B) begin
			ok = 1;
		end else begin
			ok = 1'bx;
		end
		
		#99;
		B = 0;
		
		#1;
		if (result == A - B) begin
			ok = 1;
		end else begin
			ok = 1'bx;
		end
		
		#99;
		B = 15;
		
		#1;
		if (result == A - B) begin
			ok = 1;
		end else begin
			ok = 1'bx;
		end
		
		#99;
		B = -3;
		
		#1;
		if (result == A - B) begin
			ok = 1;
		end else begin
			ok = 1'bx;
		end
		
		#99;
		A = -10;
		
		#1;
		if (result == A - B) begin
			ok = 1;
		end else begin
			ok = 1'bx;
		end
		
		#99;
		B = 3;
		
		#1;
		if (result == A - B) begin
			ok = 1;
		end else begin
			ok = 1'bx;
		end

	end
      
endmodule
