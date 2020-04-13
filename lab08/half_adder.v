module half_adder(
    output  S,
    output  C,
    input   A,
    input   B
    );

    xor(S, A, B);
    and(C, A, B);
endmodule