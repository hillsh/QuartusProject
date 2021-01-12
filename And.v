/**
 * And gate: 
 * out = 1 if (a == 1 and b == 1)
 *       0 otherwise
 */

`default_nettype none

module NTT_And(
    input wire a,
    input wire b,
    output wire out
);

wire n_out;

NTT_Nand nand_1(a, b, n_out);
NTT_Nand nand_2(n_out, n_out, out);

endmodule
