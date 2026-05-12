`timescale 1ns / 1ps

module Majority_Circuit_tb;
    reg A, B, C;
    wire LED;

    // Instantiate the Unit Under Test (UUT)
    Majority_Circuit uut (
        .A(A),
        .B(B),
        .C(C),
        .LED(LED)
    );

    initial begin
        $display("A B C | LED");
        $display("---------");
        $monitor("%b %b %b |  %b", A, B, C, LED);

        // Test Cases
        A = 0; B = 0; C = 0; #10;
        A = 0; B = 0; C = 1; #10;
        A = 0; B = 1; C = 0; #10;
        A = 0; B = 1; C = 1; #10;
        A = 1; B = 0; C = 0; #10;
        A = 1; B = 0; C = 1; #10;
        A = 1; B = 1; C = 0; #10;
        A = 1; B = 1; C = 1; #10;

        $finish;
    end
endmodule
