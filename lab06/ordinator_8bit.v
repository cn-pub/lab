`timescale 1ns / 1ps

///////////////////////////////////////////////////////////////////////////////
// ACS
// Computer Design 1
//  
// Module Name:  		ordinator_8bit
// Project Name:		Laborator 6
// Target Devices: 		Digilent Nexys 3
///////////////////////////////////////////////////////////////////////////////

module ordinator_8bit(
		output reg [7:0] result,
		output reg		  ready,
		input      [7:0] in,
		input            reset,
		input            clk
);

	localparam FALSE = 2'd0,
				  TRUE  = 2'd1;

	localparam OPERATOR_ADD = 2'd0,
				  OPERATOR_SUB = 2'd1,
				  OPERATOR_EQL = 2'd2,
				  OPERATOR_ERR = 2'd3;

// ----------------------------------------------------------------------------
// TODO 4.1: Codificati starile necesare automatului
// ----------------------------------------------------------------------------
	

 
// ----------------------------------------------------------------------------
// TODO 4.2: Definiti comportamentul iesirilor
// ----------------------------------------------------------------------------


 
// ----------------------------------------------------------------------------
// TODO 4.3: Definiti mecanismul de tranzitie sincrona a starilor
// ----------------------------------------------------------------------------



// ----------------------------------------------------------------------------
// TODO 4.4: Definiti comportamentul si modul de schimbare a starilor
// ----------------------------------------------------------------------------



endmodule
