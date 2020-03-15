`timescale 1ns / 1ps
`include "lib/defines.vh"

module ex1(
    output  reg   out,
    input reset,
    input clk
    );

    reg STATE_INITIAL = 0;
    reg STATE_T00 = 1;

    reg [31:0]  count;
    reg         currentState;
    reg         nextState;

    always @(posedge clk) begin
		//TODO: Tranzitia de la currentState la nextState
    end

    always @(*) begin
        case (currentState)
            // TODO: Iesire in fiecare stare si pregatirea starii urmatoare.
        endcase
    end
endmodule
