`include "alu_opsel.vh"

module alu(
	output	reg	[31:0]	R,
	input				[31:0]	A,
	input				[31:0]	B,
	input				[2:0]		opsel
	);

	always @(*) begin
		case (opsel)
			/*
			 * TODO 1: Execute the operation. Follow the example given.
			 * Note: See the operation definitions in alu_opsel.vh.
			 */
			`OPSEL_NONE:	R = 32'bx;
		endcase
	end

endmodule
