`include "defines.vh"
module multiplier(
        output  [7: 0]  out,
        input   [3: 0]  M,
        input   [3: 0]  R
    );
    //  Implement Booth's algorithm

    wire [3:0] not_M;
    wire [3:0] neg_M;

    assign not_M = ~M;

    // TODO: "neg_M = not_M + 1" using adder

    reg [8:0] P;
    reg [8:0] A;
    reg [8:0] S;

    always @(*) begin
        // TODO: calculate P,A and S
        repeat(4) begin
            
        end
    end

    // TODO: assign in out the product of M and R

endmodule
