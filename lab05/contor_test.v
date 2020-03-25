`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:13:09 03/22/2020
// Design Name:   contor
// Module Name:   C:/Users/Ana/Lab05/lab05_sol/contor_test.v
// Project Name:  lab05_sol
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: contor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module contor_test;

	// Inputs
	reg [15:0] contor;
	reg reset;
	reg clock;

	// Outputs
	wire [7:0] ascii_out;
	wire done;

	// Instantiate the Unit Under Test (UUT)
	contor uut (
		.contor(contor), 
		.ascii_out(ascii_out), 
		.done(done), 
		.reset(reset), 
		.clock(clock)
	);

always@(clock)
  #5 clock <= ~clock;


initial
begin
  clock = 1;
  reset = 1;
  contor = "20";
  #1;
  #10;
  reset = 0;
  #10;
end 
endmodule

