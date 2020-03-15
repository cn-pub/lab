function automatic [7:0] exp_output;
	input [3:0] state;
	begin
		case (state)
			4'd1: exp_output  = 8'd170;
			4'd2: exp_output  = 8'd85;
			4'd3: exp_output  = 8'd170;
			4'd4: exp_output  = 8'd85;
			4'd5: exp_output  = 8'd129;
			4'd6: exp_output  = 8'd66;
			4'd7: exp_output  = 8'd36;
			4'd8: exp_output  = 8'd24;
			4'd9: exp_output  = 8'd36;
			4'd10: exp_output = 8'd66;
			4'd11: exp_output = 8'd129;
			4'd12: exp_output = 8'd105;
			4'd13: exp_output = 8'd141;
			4'd14: exp_output = 8'd139;
			4'd15: exp_output = 8'd105;
			default : exp_output = 8'dx; 
		endcase
	end
endfunction

function succ_exit;
	input [7:0] value;
	input [7:0] total;
	input real score;
	begin
		$display("Total: %0d/%0d (%1.1Fp)", value, total, value * score / total);
		$stop;
	end
endfunction

function err_exit;
	input [7:0] value;
	input [7:0] total;
	input real score;
	begin
		$display("The simulation is canceling...");
		$display("Total: %0d/%0d (%1.1Fp)", value, total, value * score / total);
		$stop;
	end
endfunction

function show_LEDs;
	input [31:0] value;
	input [5:0] length;
    reg [5:0] led;
	begin
		for (led = length; led > 0; led = led - 1) begin
			if (value[led - 1])
				$write("* ");
			else
				$write("_ ");
		end
	end
endfunction
