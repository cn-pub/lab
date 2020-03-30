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
// digit_point - punctul situat dupã fiecare cifrã
// progress    - registru legat la cele 8 LED-uri ale plãcii
// segment	   - configuraþia segmentelor pentru o cifrã
// digit	   - selecteazã o cifrã din afiºajul cu 7 segmente
// add_button  - push-button pentru afiºarea sumei
// sub_button  - push-button pentru afiºarea diferenþei
// op_button   - push-button pentru preluarea operanzilor
//
// Studiaþi fiºierul de constrângeri al modulului.
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
	// TODO 4: Implementaþi un circuit care sã realizeze suma/diferenþa a douã numere.
	//		Circuitul trebuie sã aibã urmãtorul comportament:
	//			1. Valorile operanzilor vor fi pe 8 biþi ºi vor fi introduse folosind cele 8 switch-uri
	//			2. Fiecare valoare a celor doi operanzi va fi preluatã de circuit la apãsarea butonului 'op_button'
	//				Obs: Câte o apãsare pentru fiecare operand
	//			3. Dupã preluarea operanzilor, circuitul va afiºa mesajul 'APAS' folosind valoarea predefinitã
	//		specificatã mai jos.
	//			4. La apãsarea butonului:
	//				a) 'add_button' - va fi afiºatã suma numerelor cât timp butonul este apãsat
	//					Obs: La eliberarea butonului va apãrea din nou mesajul 'APAS'
	//				b) 'sub_button' - va fi afiºatã diferenþa numerelor cât timp butonul este apãsat
	//					Obs: La eliberarea butonului va apãrea din nou mesajul 'APAS'
	//				c) 'reset' - circuitul va fi resetat ºi va ajunge din nou la pasul (1)
	//	   [BONUS] Folosiþi cele 8 LED-uri pentru simularea unei bare de progres. Aprindeþi câte 2 LED-uri la fiecare pas.
	//				Obs: Folosiþi registrul 'progress' ºi valorile predefinite în fiºierul defines.vh
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
	// Interfaþã pentru afiºajul cu 7 segmente
	//		-> message = {
	//						1bit_aprins/stins,
	//						1bit_negative_sign,
	//						8bit_value_to_display
	//         };
	//		-> `MESSAGE_ERROR, `MESSAGE_DEFAULT - valori predefinite în defines.vh
	//		-> Convenþie:
	//			Pentru valoarea '-0' se va afiºa mesajul 'APAS'.
	//			`PRESS_MESSAGE = valoare predefinitã pentru buffer-ul 'message'
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
	
	// TODO 4.1: Declaraþi parametri de care aveþi nevoie
	//		Obs: Se vor declara pe parcurs ce aveþi nevoie de ei
	
	
	// TODO 4.2: Instanþiaþi sumatorul, scãzãtorul ºi alte module la nevoie 
	
	always @(posedge clk) begin
		// TODO 4.3: Implementaþi logica de tranziþie dupã ceas
		//				-> reset
		//				-> schimbarea stãrii curente a automatului
		
	end
	
	always @(*) begin
		// TODO 4.4: Implementaþi logica de schimbare a stãrilor
		
	end
	
	always @(*) begin
		// TODO 4.5: Definiþi comportamentul ieºirilor pentru fiecare stare
		
	end

endmodule
