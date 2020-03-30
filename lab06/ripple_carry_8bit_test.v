`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// ACS
// Computer Design 1
//
// Design Name:   		ripple_carry_4bit
// Module Name:  		ripple_carry_4bit_test.v
// Project Name:		Laborator 6
// Target Devices: 		Digilent Nexys 3
//////////////////////////////////////////////////////////////////////////////////

module ripple_carry_8bit_test;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;
	reg carry_in;

	// Outputs
	wire carry_out;
	wire [7:0] sum;
	reg ok;

	// Instantiate the Unit Under Test (UUT)
	ripple_carry_8bit uut (
		.carry_out(carry_out), 
		.sum(sum), 
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
		if (sum == A + B) begin
			ok = 1;
		end else begin
			ok = 1'bx;
		end
		
		#99;
		A = -1;
		B = 1;

		#1;
		if (sum == A + B) begin
			ok = 1;
		end else begin
			ok = 1'bx;
		end
		
		#99;
		A = 127;
		B = 128;

		#1;
		if (sum == A + B) begin
			ok = 1;
		end else begin
			ok = 1'bx;
		end
		
		#99;
		A = 128;
		B = 128;

		#1;
		if (sum == A + B) begin
			ok = 1;
		end else begin
			ok = 1'bx;
		end
		
		#99;
		A = 4;
		B = 5;

		#1;
		if (sum == A + B) begin
			ok = 1;
		end else begin
			ok = 1'bx;
		end
		
		#99;
		A = -127;
		B = -128;

		#1
		if (sum == A + B) begin
			ok = 1;
		end else begin
			ok = 1'bx;
		end
	end
      
endmodule
