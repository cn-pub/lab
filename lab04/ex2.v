`timescale 1ns / 1ps
module ex2(
    output  reg [7:0]   out,
    input reset,
    input clk
    );

    localparam STATE_INITIAL = 0;
    localparam STATE_T00 = 1;
    localparam STATE_T01 = 2;
    localparam STATE_T02 = 3;
    localparam STATE_T03 = 4;
    localparam STATE_T04 = 5;
    localparam STATE_T05 = 6;
    localparam STATE_T06 = 7;
    localparam STATE_T07 = 8;
    localparam STATE_T08 = 9;
    localparam STATE_T09 = 10;
    localparam STATE_T10 = 11;
    localparam STATE_T11 = 12;
    localparam STATE_T12 = 13;
    localparam STATE_T13 = 14;
    localparam STATE_T14 = 15;

    reg [31:0]  count;
    reg [3:0]   currentState;
    reg [3:0]   nextState;

    always @(posedge clk) begin
        if (reset) begin
            count <= 0;
            currentState <= STATE_INITIAL;
        end else begin
            count <= count + 1;

            // TODO: Tranzitia de la currentState la nextState. (50000000 threshold)

        end
    end

    always @(*) begin
        // TODO: Iesire in fiecare stare si pregatirea starii urmatoare.
    end
endmodule
