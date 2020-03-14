// Pseudocod pentru debouncer
module debouncer(
    output reg button_out,
    input clk,
    input reset,
    input button_in
    );

    always @(posedge clk) begin
        if (reset == 1) begin
            // resetăm ieșirea și alte auxiliare
        end else begin
            // Ținem un contor intern de delay, pe care îl creștem
            // Reținem schimbările butonului
            // Actualizăm ieșirea debouncerului doar când contorul revine la 0
        end
    end

endmodule
