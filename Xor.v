/**
 * Exclusive-or gate:
 * out = not (a == b)
 */
`default_nettype none

module NTT_Xor(
    input wire a,
    input wire b,
    output wire out
);


wire n_a, n_b, n_ab;

NTT_Nand nand_ab(a, b, n_ab);
NTT_Nand nand_b(b, n_ab, n_b);
NTT_Nand nand_a(a, n_ab, n_a);
NTT_Nand nand_nn(n_a, n_b, out);

endmodule
