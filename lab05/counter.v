`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:36:39 03/22/2020 
// Design Name: 
// Module Name:    counter 
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
module counter(ascii_in, counter, decrement, done, reset, clock
    );

	output reg [15:0] counter; // 2 digits of ascii.
	output reg 			done;
	 input         decrement;
	 input         reset;
	 input         clock;
	 input	[15:0] ascii_in;

	always@(posedge clock)
	 begin
		if(reset)
			counter <= ascii_in;
		else
		begin
			if(decrement)
			begin
				if(counter == "01")
				begin
					counter = "UN";
					done = 1;
				end
				else
				begin
					//TODO Task 2
					// decrementare ASCII
				end
			end
		end
	end
	assign ascii_out = counter;

endmodule

