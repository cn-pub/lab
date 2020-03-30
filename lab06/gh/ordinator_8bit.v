`timescale 1ns / 1ps
`include "defines.vh"

//////////////////////////////////////////////////////////////////////////////////
// ACS
// Computer Design 1
//  
// Module Name:  		ordinator_8bit
// Project Name:		Laborator 6
// Target Devices: 		Digilent Nexys 3
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
//
// digit_point - punctul situat dup� fiecare cifr�
// progress    - registru legat la cele 8 LED-uri ale pl�cii
// segment	   - configura�ia segmentelor pentru o cifr�
// digit	   - selecteaz� o cifr� din afi�ajul cu 7 segmente
// add_button  - push-button pentru afi�area sumei
// sub_button  - push-button pentru afi�area diferen�ei
// op_button   - push-button pentru preluarea operanzilor
//
// Studia�i fi�ierul de constr�ngeri al modulului.
//
//////////////////////////////////////////////////////////////////////////////////

module ordinator_8bit(
		output digit_point,
		output reg [7:0] progress,
		output [0:6] segment,
		output [3:0] digit,
		input  [7:0] operand,
		input add_button,
		input sub_button,
		input op_button,
		input reset,
		input clk
    );
	
	//////////////////////////////////////////////////////////////////////////////
	//
	// TODO 4: Implementa�i un circuit care s� realizeze suma/diferen�a a dou� numere.
	//		Circuitul trebuie s� aib� urm�torul comportament:
	//			1. Valorile operanzilor vor fi pe 8 bi�i �i vor fi introduse folosind cele 8 switch-uri
	//			2. Fiecare valoare a celor doi operanzi va fi preluat� de circuit la ap�sarea butonului 'op_button'
	//				Obs: C�te o ap�sare pentru fiecare operand
	//			3. Dup� preluarea operanzilor, circuitul va afi�a mesajul 'APAS' folosind valoarea predefinit�
	//		specificat� mai jos.
	//			4. La ap�sarea butonului:
	//				a) 'add_button' - va fi afi�at� suma numerelor c�t timp butonul este ap�sat
	//					Obs: La eliberarea butonului va ap�rea din nou mesajul 'APAS'
	//				b) 'sub_button' - va fi afi�at� diferen�a numerelor c�t timp butonul este ap�sat
	//					Obs: La eliberarea butonului va ap�rea din nou mesajul 'APAS'
	//				c) 'reset' - circuitul va fi resetat �i va ajunge din nou la pasul (1)
	//	   [BONUS] Folosi�i cele 8 LED-uri pentru simularea unei bare de progres. Aprinde�i c�te 2 LED-uri la fiecare pas.
	//				Obs: Folosi�i registrul 'progress' �i valorile predefinite �n fi�ierul defines.vh
	//
	//////////////////////////////////////////////////////////////////////////////

	localparam STATE_INITIAL = 0;
	localparam STATE_OP1_READ = 1;
	localparam STATE_OP2_READ = 2;
	localparam STATE_RESULT_SELECT = 3;
		
	reg [1:0] current_state;
	reg [1:0] next_state;
	
	//////////////////////////////////////////////////////////////////////////////
	//
	// Interfa�� pentru afi�ajul cu 7 segmente
	//		-> message = {
	//						1bit_aprins/stins,
	//						1bit_negative_sign,
	//						8bit_value_to_display
	//         };
	//		-> `MESSAGE_ERROR, `MESSAGE_DEFAULT - valori predefinite �n defines.vh
	//		-> Conven�ie:
	//			Pentru valoarea '-0' se va afi�a mesajul 'APAS'.
	//			`PRESS_MESSAGE = valoare predefinit� pentru buffer-ul 'message'
	//						   == {aprins, '-', 0}
	//
	//////////////////////////////////////////////////////////////////////////////
	reg [9:0] message;
	
	display_7_segment_driver display(
		.segment(segment),
		.digit_point(digit_point),
		.digit(digit),
		.message(message),
		.reset(reset),
		.clk(clk)
	);
	
	// TODO 4.1: Declara�i parametri de care ave�i nevoie
	//		Obs: Se vor declara pe parcurs ce ave�i nevoie de ei
	
	
	// TODO 4.2: Instan�ia�i sumatorul, sc�z�torul �i alte module la nevoie 
	
	always @(posedge clk) begin
		// TODO 4.3: Implementa�i logica de tranzi�ie dup� ceas
		//				-> reset
		//				-> schimbarea st�rii curente a automatului
		
	end
	
	always @(*) begin
		// TODO 4.4: Implementa�i logica de schimbare a st�rilor
		
	end
	
	always @(*) begin
		// TODO 4.5: Defini�i comportamentul ie�irilor pentru fiecare stare
		
	end

endmodule
