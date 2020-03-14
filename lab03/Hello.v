module Hello(
    output reg button_pressed,
    input button_in,
    input clk,
    input reset
    );

    wire button_debounced;

    // Instantiem modulul de debouncer si ii dam butonul ca intrare
    // Iesirea modulului (button_debounced) identifica corect apasarea
    // butonului dat ca intrare si va fi folosita in restul programului
    // in locul lui button_in
    debouncer db(button_debounced, clk, reset, button_in);

    always @(posedge button_debounced, posedge reset) begin
        if (reset == 1) begin
            button_pressed <= 0;
        end else begin
            button_pressed <= ~button_pressed;
        end
    end

endmodule
