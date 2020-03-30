`timescale 1ns / 1ps
`include "defines.vh"

//////////////////////////////////////////////////////////////////////////////////
// ACS
// Computer Design 1
//  
// Module Name:  		display_7_segment_driver
// Project Name:		Laborator 6
// Target Devices: 		Digilent Nexys 3
//////////////////////////////////////////////////////////////////////////////////

module display_7_segment_driver(
		output reg digit_point,
		output reg [0:6] segment,
		output reg [3:0] digit,
		input [9:0] message,
		input reset,
		input clk
    );
	
	// NU MODIFICAÞI ACEST FIªIER!
	
	localparam DIGIT_0 		= 0;
    localparam DIGIT_1 		= 1;
    localparam DIGIT_2 		= 2;
    localparam DIGIT_3 		= 3;
	localparam DIGIT_0_OFF 	= 4;
	localparam DIGIT_0_ON 	= 5;
	localparam DIGIT_0_WAIT = 6;
	localparam DIGIT_1_OFF	= 7;
	localparam DIGIT_1_ON 	= 8;
	localparam DIGIT_1_WAIT = 9;
	localparam DIGIT_2_OFF 	= 10;
	localparam DIGIT_2_ON 	= 11;
	localparam DIGIT_2_WAIT = 12;
	localparam DIGIT_3_OFF 	= 13;
	localparam DIGIT_3_ON 	= 14;
	localparam DIGIT_3_WAIT = 15;

	reg [9:0] state_timer;
	reg [7:0] message_buffer;
	reg [3:0] digit_buffer;
	
	reg [3:0] current_state;
	reg [3:0] next_state;
	
	always @(posedge clk) begin
		if (reset) begin
			current_state <= DIGIT_0;
			state_timer <= 0;
		end else begin
			state_timer <= state_timer + 10'd1;
			if (state_timer == 1000) begin
				state_timer <= 0;
				current_state <= next_state;
			end
		end
	end
	
	always @(*) begin
		digit_point = `POINT_OFF;
		digit_buffer = `DIGIT_DEFAULT_VALUE;
		digit = `DIGIT_DEFAULT;
		segment = `SEGMENT_DEFAULT;
		if (message[8])
			message_buffer = 8'd255 - message[7:0] + 8'd1;
		else
			message_buffer = message[7:0];
		
		case (current_state)
			DIGIT_0: begin
				next_state = DIGIT_0_ON;
				
				if (!message[8] || message[9])
					next_state = DIGIT_0_OFF;
				else if (message[8] && message_buffer[7:0] == 0)
					next_state = DIGIT_0_WAIT;
			end
			
			DIGIT_0_ON: begin
				digit = `DIGIT_0;
				display(`DASH);
				next_state = DIGIT_1;
			end
			
			DIGIT_0_OFF: begin
				digit = `DIGIT_0;
				display(`DIGIT_OFF);
				next_state = DIGIT_1;
			end
			
			DIGIT_0_WAIT: begin
				digit = `DIGIT_0;
				display(`A_CHAR);
				next_state = DIGIT_1_WAIT;
			end
			
			DIGIT_1: begin
				next_state = DIGIT_1_ON;
				
				digit_buffer = (message_buffer[7:0] / 100) % 10;
				if (digit_buffer == 0 || message[9])
					next_state = DIGIT_1_OFF;
			end
			
			DIGIT_1_ON: begin
				digit = `DIGIT_1;
				digit_buffer = (message_buffer[7:0] / 100) % 10;
				display(digit_buffer);
				next_state = DIGIT_2;
			end
			
			DIGIT_1_OFF: begin
				digit = `DIGIT_1;
				display(`DIGIT_OFF);
				next_state = DIGIT_2;
			end
			
			DIGIT_1_WAIT: begin
				digit = `DIGIT_1;
				display(`P_CHAR);
				next_state = DIGIT_2_WAIT;
			end
			
			DIGIT_2: begin
				next_state = DIGIT_2_ON;
				
				digit_buffer = (message_buffer[7:0] / 100) % 10;
				if (digit_buffer == 0) begin
					digit_buffer = (message_buffer[7:0] / 10) % 10;
					if (digit_buffer == 0 || message[9])
					next_state = DIGIT_2_OFF;
				end
			end
			
			DIGIT_2_ON: begin
				digit = `DIGIT_2;
				digit_buffer = (message_buffer[7:0] / 10) % 10;
				display(digit_buffer);
				next_state = DIGIT_3;
			end
			
			DIGIT_2_OFF: begin
				digit = `DIGIT_2;
				display(`DIGIT_OFF);
				next_state = DIGIT_3;
			end
						
			DIGIT_2_WAIT: begin
				digit = `DIGIT_2;
				display(`A_CHAR);
				next_state = DIGIT_3_WAIT;
			end
			
			DIGIT_3: begin			
				next_state = DIGIT_3_ON;
				
				if (message[9])
					next_state = DIGIT_3_OFF;
			end
			
			DIGIT_3_ON: begin
				digit = `DIGIT_3;
				digit_buffer = message_buffer[7:0] % 10;
				display(digit_buffer);
				next_state = DIGIT_0;
			end
			
			DIGIT_3_OFF: begin
				digit = `DIGIT_3;
				display(`DIGIT_OFF);
				next_state = DIGIT_0;
			end
							
			DIGIT_3_WAIT: begin
				digit = `DIGIT_3;
				display(`S_CHAR);
				next_state = DIGIT_0;
			end
			
			default: begin
				segment = `SEGMENT_ERROR;
				digit = `DIGIT_ERROR;
				next_state = DIGIT_0;
			end
		endcase
	end
	
	task display;
        input [3:0] number;
		
        begin
            case (number)
                0: segment = 7'b0000001;
                1: segment = 7'b1001111;
                2: segment = 7'b0010010;
                3: segment = 7'b0000110;
                4: segment = 7'b1001100;
                5: segment = 7'b0100100;
                6: segment = 7'b0100000;
                7: segment = 7'b0001111;
                8: segment = 7'b0000000;
                9: segment = 7'b0000100;
			   10: segment = 7'b1111110; // -
			   11: segment = 7'b0011000; // P
			   12: segment = 7'b0001000; // R
          default: segment = 7'b1111111;
            endcase
        end
    endtask
endmodule
