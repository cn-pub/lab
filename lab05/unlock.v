`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:32:07 03/22/2020 
// Design Name: 
// Module Name:    unlock 
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
module unlock(ascii_in, out, reset, clk
    );
	 output				out;
	 input		[7:0]	ascii_in; // one digit ascii
	 input				reset;
	 input				clk;
	 
	 parameter STATE_INIT   	= 3'b000,
              STATE_1 			= 3'b001,
              STATE_2         = 3'b010,
              STATE_3         = 3'b011,
              STATE_COUNTER   = 3'b110,
              STATE_UNLOCK    = 3'b111;
				  
	 reg  [2:0] 	state;
	 reg  [2:0] 	next_state;
	 reg	[7:0] 	read;
	 reg	[15:0]	time_counter;
	 reg				decrement;
	 reg	[1:0]		fail;
	 reg 				done;
	 wire	[15:0] 	timer;
	 
	 always @(posedge clk) begin
		if (reset) begin
			state = STATE_INIT;
			fail = 0'b00;
		end
		else begin
			// TODO Task 1
			// setare stare urmatoare
			
			//TODO Task 2
			// regula de intrare in STATE_COUNTER
			end
	 end
	 
	 always @(*)begin
		if (!reset) begin
			read = ascii_in;
		end
	 end
	 
	 always @(ascii_in) begin	
		next_state = state;
		
		case (state)
		STATE_INIT: begin
			//TODO Task 2
			// coditii pentru greseli
			if (read == "A") begin
				next_state = STATE_1;
			end
			else begin
			   next_state = STATE_INIT;
			end
		end
		STATE_1: begin
			//TODO Task 1
		end
		STATE_2: begin
			//TODO Task 1
		end
		STATE_3: begin
			//TODO Task 1
		end
		STATE_COUNTER: begin
			//TODO Task 2
			timer = "20";
		end
		STATE_UNLOCK: begin
			//TODO Task 1
		end
		//TODO Task 1 
		//completare stari
		endcase
	end
	
	assign out = (state == STATE_UNLOCK ? 1 : 0);
	counter counter1(timer, time_counter, decrement, done, reset, clock);
	change_state change_state1(index, done, decrement, time_counter, reset, clock);
	
endmodule
