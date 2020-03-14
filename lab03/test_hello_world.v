`timescale 1ns / 1ps
module test_hello_world;

        // Inputs
        reg button;

        // Outputs
        wire led;

        // Instantiate the Unit Under Test (UUT)
        hello_world uut (
                .led(led),
                .button(button)
        );

        initial begin
                // Initialize Inputs
                button = 0;

                // Wait 100 ns for global reset to finish
                #100;

                // Add stimulus here
                #100 button = 1;
                #100 button = 0;
        end
endmodule
