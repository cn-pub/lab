`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// ACS
// Computer Design 1
//
// Design Name:   		half_adder
// Module Name:  		half_adder_test.v
// Project Name:		Laborator 6
// Target Devices: 		Digilent Nexys 3
//////////////////////////////////////////////////////////////////////////////////

module half_adder_test;

	// Inputs
	reg bit_A;
	reg bit_B;

	// Outputs
	wire sum;
	wire carry;
	reg ok;

	// Instantiate the Unit Under Test (UUT)
	half_adder uut (
		.sum(sum), 
		.carry(carry), 
		.bit_A(bit_A), 
		.bit_B(bit_B)
	);

	initial begin
		// Initialize Inputs
		bit_A = 0;
		bit_B = 0;
		ok = 0;
		
		#1;
		if (sum == 0 && carry == 0) begin
			ok = 1;
		end else begin
			ok = 1'bx;
		end
		
		#99;
		bit_A = 1;
		
		#1;
		if (sum == 1 && carry == 0) begin
			ok = 1;
		end else begin
			ok = 1'bx;
		end
		
		#99;
		bit_A = 0;
		bit_B = 1;
		
		#1;
		if (sum == 1 && carry == 0) begin
			ok = 1;
		end else begin
			ok = 1'bx;
		end
		
		#99;
		bit_A = 1;
		
		#1;
		if (sum == 0 && carry == 1) begin
			ok = 1;
		end else begin
			ok = 1'bx;
		end
	end
      
endmodule
