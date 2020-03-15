`timescale 1ns / 1ps
module ex3(
    output  reg [7:0]   out,
    input button,
    input reset,
    input clk
    );

    localparam STATE_INITIAL = 0;
    localparam STATE_T00 = 1;
    localparam STATE_T01 = 2;

    // TODO: Folositi un debouncer pentru buton

    reg [31:0]  red;
    reg [31:0]  green;
    reg [1:0]   currentState;
    reg [1:0]   nextState;
	 
	 initial begin
		red = 0;
		green = 0;
		currentState = STATE_INITIAL;
	 end

    always @(posedge clk) begin
        case (currentState)
            // TODO: STATE_INITIAL -> out va fi 0
            //                     -> alegem starea urmatoare
            

            // TODO: STATE_T00 (red) -> stabilim iesirea, asteptam input de la buton
            //                       -> cand primim input, asteptam un interval de timp

            
            // TODO: STATE_T01 (green) -> stabilim iesirea, declansam un counter
        endcase
        
        // TODO: schimbam starea curenta cu starea urmatoare
    end
endmodule
