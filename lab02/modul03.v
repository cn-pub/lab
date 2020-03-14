// CN1 -  schelet lab02

module modul03(
	output reg out,
	input in
	);

	always @(*) begin
		out = !in;
	end

endmodule
