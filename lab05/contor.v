`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:38:48 03/22/2020 
// Design Name: 
// Module Name:    contor 
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
module contor(contor, ascii_out, done, reset, clock
    );
	 input  [15:0] contor; // one digit ascii
	 output [7:0] ascii_out;
	 output       done;
	 input        reset;
	 input        clock;
	 
	 wire [15:0]	in;
	 wire [15:0]	time_counter; // 2 digit ascii
	 wire 			decrement;
	 wire   [6:0] index;
	 
	 assign in = contor;
	 assign done = done;
	 // HINT urmareste in simulare cum se modifica contor
	 counter counter1(in, time_counter, decrement, done, reset, clock);
	 change_state change_state1(index, done, decrement, time_counter, reset, clock);


endmodule
