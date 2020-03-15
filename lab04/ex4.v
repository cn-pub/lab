module ex4(
    output  reg mutant,
    output  reg super_mutant,
    input       A,
    input       G,
    input       C,
    input       T,
    input       reset,
    input       clk
    );

    localparam STATE_0 = 0;
    localparam STATE_1 = 1;
    localparam STATE_2 = 2;
    localparam STATE_3 = 3;
    localparam STATE_4 = 4;
    localparam STATE_5 = 5;
    localparam STATE_6 = 6;

    reg [2:0]   currentState;

    // TODO: folositi debouncer pentru cele 4 butoane

    always @(posedge clk) begin
        if (reset) begin
            currentState <= STATE_0;
            mutant <= 0;
            super_mutant <= 0;

            A_pressed <= 0;
            G_pressed <= 0;
            C_pressed <= 0;
            T_pressed <= 0;
        end else begin

            // TODO: completati pentru fiecare stare in parte tranzitiile pe fiecare simbol
            
        end
    end
endmodule
