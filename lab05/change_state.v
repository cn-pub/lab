`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:46:25 03/22/2020 
// Design Name: 
// Module Name:    change_state 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module change_state(index, done, decrement, counter, reset, clock
    );
output  [6:0] index;
	 output reg    done;
	 output reg    decrement;
	 input  [15:0] counter; // 2 digits of ascii.
	 input         reset;
	 input         clock;
	 
	 parameter FIRST_CHAR         = 7'h00,
          FIRST_CHAR_NO_TENS = 7'h01,
          SKIP_TENS_A        = 7'd31,
          SKIP_TENS_B        = 7'd82,
          SKIP_PLURAL_A      = 7'd08,
          SKIP_PLURAL_B      = 7'd40,
          SKIP_PLURAL_C      = 7'd91,
          TAKE_ONE_DOWN      = 7'd52,
          LAST_CHAR          = 7'd115;

	 reg  [6:0] current_state;
	 reg  [6:0] next_state;
	 wire [6:0] index = current_state;
	 
	 always@(posedge clock)
		if(reset)
			current_state <= 0;
		else
			current_state <= next_state;

	 always@(current_state or counter or reset)
	 begin
		next_state    = current_state + 1;
		done          = 1'b0;
		decrement = 1'b0;

		case(current_state)
			LAST_CHAR: begin
				if(counter == "STOP") begin
					next_state = LAST_CHAR;
					done       = 1'b1;
				end
				else
					if(counter[7:0] == "0")
						next_state = FIRST_CHAR_NO_TENS;
					else
						next_state = FIRST_CHAR;
			end
			TAKE_ONE_DOWN: begin
				decrement = 1'b1;
			end
			SKIP_TENS_A: begin
				if(counter[7:0] == "0")
					next_state = SKIP_TENS_A + 2;
			end
			SKIP_TENS_B: begin
				if(counter[7:0] == "0")
					next_state = SKIP_TENS_B + 2;
			end
			SKIP_PLURAL_A: begin
				if(counter == "01")
					next_state = SKIP_PLURAL_A + 2;
			end
			SKIP_PLURAL_B: begin
				if(counter == "01")
					next_state = SKIP_PLURAL_B + 2;
			end
			SKIP_PLURAL_C: begin
				if(counter == "01")
					next_state = SKIP_PLURAL_C + 2;
				end
		endcase
	end


endmodule
