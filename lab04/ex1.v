`timescale 1ns / 1ps
module ex1(
    output  reg   out,
    input reset,
    input clk
    );

    localparam STATE_INITIAL = 0;
    localparam STATE_T00 = 1;

    reg [31:0]  count;
    reg         currentState;
    reg         nextState;

    always @(posedge clk) begin
        if (reset == 1) begin
            count <= 0;
            currentState <= STATE_INITIAL;
        end else begin
            count <= count + 1;

            // TODO: Tranzitia de la currentState la nextState.

        end
    end

    always @(*) begin
        case (currentState)
            // TODO: Iesire in fiecare stare si pregatirea starii urmatoare.

        endcase
    end
endmodule
