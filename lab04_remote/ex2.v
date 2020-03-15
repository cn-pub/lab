`timescale 1ns / 1ps
module ex2(
    output reg [7:0]   out,
	 output reg [3:0] currentState,
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
	 reg [3:0] nextState;
	 
	 initial begin
		currentState = 0;
	 end

    always @(posedge clk) begin
		//TODO tranzitia intre stari
    end

    always @(*) begin
        case (currentState)
           //TODO iesirea pe fiecare stare pregatire pentru starea urmatoare
        endcase
    end
endmodule
