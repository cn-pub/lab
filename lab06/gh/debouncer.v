`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// ACS
// Computer Design 1
//  
// Module Name:  		debouncer
// Project Name:		Laborator 6
// Target Devices: 		Digilent Nexys 3
//////////////////////////////////////////////////////////////////////////////////

module debouncer(
    output reg button_out,
    input clk,
    input reset,
    input button_in
    );

	// NU MODIFICAÞI ACEST FIªIER!

    reg [15:0] count;
    reg button_tmp;

    always @(posedge clk) begin
        if (reset == 1) begin
            count <= 0;
            button_tmp <= 0;
            button_out <= 0;
        end else begin
            count <= count + 16'd1;
            button_tmp <= button_in;

            if (count == 0) begin
                button_out <= button_tmp;
            end
        end
    end
endmodule
