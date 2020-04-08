`timescale 1ns / 1ps
`include "defines.vh"

//////////////////////////////////////////////////////////////////////////////////
//
// digit_point - punctul situat dupã fiecare cifrã
// segment	   - configuraþia segmentelor pentru o cifrã
// digit	   - selecteazã o cifrã din afisajul cu 7 segmente
// add_button  - push-button pentru afisarea sumei
// sub_button  - push-button pentru afisarea diferenþei
// op_ready_button   - push-button pentru validarea operanzilor
//
// Studiaþi fiºierul de constrângeri al modulului.
//
//////////////////////////////////////////////////////////////////////////////////
module adder_subtractor(
		output digit_point,
		output [0:6] segment,
		output [3:0] digit,
		output reg [7:0] leds,
		input  [3:0] operand1,
		input	 [3:0] operand2,
		input add_button,
		input sub_button,
		input op_ready_button,
		input reset,
		input clk
    );
	 
	 
	 
	localparam STATE_0 = 0;
	localparam STATE_1 = 1;
	localparam STATE_2 = 2;
	localparam STATE_3 = 3;
	
	wire add_btn_debounced, sub_btn_debounced, op_ready_btn_debounced;
	//TODO 3.1: NU uitati de deboucer pentru butoanele folosite
	
	reg [3:0] A;
	reg [3:0] B;
	
	reg [1:0] current_state;
	reg [1:0] next_state;
	

	reg op_ready_button_pressed, add_button_pressed, sub_button_pressed;
	
	
	//////////////////////////////////////////////////////////////////////////////
	//
	// Interfata pentru afisajul cu 7 segmente
	//		-> message = {
	//						1bit_aprins/stins,
	//						1bit_negative_sign,
	//						8bit_value_to_display
	//         };
	//		-> `MESSAGE_ERROR, `MESSAGE_DEFAULT - valori predefinite în defines.vh
	//		-> Conventie:
	//			Pentru valoarea '-0' se va afisa mesajul 'APAS'.
	//			`PRESS_MESSAGE = valoare predefinitã pentru buffer-ul 'message'
	//						   == {aprins, '-', 0}
	//
	//////////////////////////////////////////////////////////////////////////////
	reg [9:0] message;
	// 7 segmnet display
	display_7_segment_driver display(
		.segment(segment),
		.digit_point(digit_point),
		.digit(digit),
		.message(message),
		.reset(reset),
		.clk(clk)
	);
	
	//TODO 3.2: definiti variabilele de care aveti nevoie
	
	//TODO 3.3: instantiati modulele de care aveti nevoie

	
	always @(posedge clk) begin
		//TODO 3.4: implemenatati logica de tranzitie a automatului
	end
		
		
	always @(*) begin
		//TODO 3.5: definiti comportamentul si iesirile pentru fiecare stare 
	end
endmodule
