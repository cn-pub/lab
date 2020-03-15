module ex4(
    output  reg mutant,
    output  reg super_mutant,
	output  reg [2:0] currentState,
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

    // reg [2:0]   currentState;

    reg A_pressed;
    reg G_pressed;
    reg C_pressed;
    reg T_pressed;

    wire A_debounced;
    wire G_debounced;
    wire T_debounced;
    wire C_debounced;
	
	assign A_debounced = A;
	assign G_debounced = G;
	assign C_debounced = C;
	assign T_debounced = T;

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
				case(currentState)
				// TODO: Logica de tranzitie intre stari
				// setarea outputului mutant/super_mutant pe 1
				// in functie de stare.
				endcase
        end
    end
endmodule
