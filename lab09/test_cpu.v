`timescale 1ns / 1ps

module test_cpu;

    // Inputs
    reg reset;
    reg clk;

    // Instantiate the Unit Under Test (UUT)
    cpu uut (
        .reset(reset),
        .clk(clk)
    );

    always begin
        #5 clk = ~clk;
    end

    initial begin
        // Initialize Inputs
        reset = 1;
        clk = 0;

        // Wait 100 ns for global reset to finish
        #100;

        reset = 0;
    end

endmodule

