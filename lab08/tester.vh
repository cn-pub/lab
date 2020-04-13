function tester;
	input [1024 * 8 - 1 : 0] opname;
	input [2:0]              opcode;
   input signed [7:0]              expected;
	input signed [7:0]              out;
	input signed [3:0]              A;
	input signed [3:0]              B;
	begin
		if (out == expected) begin
			tester = 1'b1;
			$display("%s(%2d, %2d): OK (out = (%4b%4b))", opname, A, B, out[7:4], out[3:0]);
		end else begin
			tester = 1'bx;
			$display("%s(%2d, %2d): FAILED => (%4b%4b) vs (%4b%4b)", opname, A, B, expected[7:4], expected[3:0], out[7:4], out[3:0]);
		end
	end
endfunction
