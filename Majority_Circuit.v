module Majority_Circuit (
    input wire A,
    input wire B,
    input wire C,
    output wire LED
);

    assign LED = (A & B) | (B & C) | (A & C);

endmodule
