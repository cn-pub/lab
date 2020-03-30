`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// ACS
// Computer Design 1
//  
// Module Name:  		half_adder
// Project Name:		Laborator 6
// Target Devices: 		Digilent Nexys 3
//////////////////////////////////////////////////////////////////////////////////

module half_adder(
		output sum,
		output carry,
		input bit_A,
		input bit_B
    );
	 
	// TODO 1: Modulul de test va fi fãcut doar pentru acest modul!
	// NU MODIFICATI ACEST FISIER!

	wire	[2:0]	dummy_sum;
	wire	[2:0]	dummy_carry;	
	
	half_adder_structural structural(.sum(dummy_sum[0]), .carry(dummy_carry[0]), .bit_A(bit_A), .bit_B(bit_B));
	half_adder_dataflow dataflow(.sum(dummy_sum[1]), .carry(dummy_carry[1]), .bit_A(bit_A), .bit_B(bit_B));
	half_adder_procedural procedural(.sum(dummy_sum[2]), .carry(dummy_carry[2]), .bit_A(bit_A), .bit_B(bit_B));

	assign sum = (dummy_sum == 3'b111);
	assign carry = (dummy_carry == 3'b111);
	
endmodule
