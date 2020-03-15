`timescale 1ns / 1ps
`include "lib/defines.vh"

module ex3(
    output  reg [7:0]   out,
    input button_debounced,
    input reset,
    input clk
    );

    localparam STATE_INITIAL = 0;
    localparam STATE_T00 = 1;
    localparam STATE_T01 = 2;

    reg button_pressed;

    reg [31:0]  red;
    reg [31:0]  green;
    reg [1:0]   currentState;
    reg [1:0]   nextState;
	 
	 initial begin
		red = 0;
		green = 0;
		currentState = STATE_INITIAL;
		button_pressed = 0;
	 end
	 
		
		
	
	 //TODO: setarea outputului, si pregatirea starii urmatoare
	 //Pentru acest lucru, folositi-va de constantele
	 // `SMPHR_RED_TMR
	 // `SMPHR_GRN_TMR
	 // pentru a face tranzitia de la culoarea rosie la culoarea
	 // verde a semaforului.
	 
    always @(posedge clk) begin
        case (currentState)
        endcase
        currentState = nextState;
    end
endmodule
