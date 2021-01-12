/**
 * Not gate:
 * out = not in
 */
`default_nettype none

module NTT_Not(
    input wire in,
    output wire out
);

// your implementation comes here:

NTT_Nand Nand_1(in, in, out);

endmodule
