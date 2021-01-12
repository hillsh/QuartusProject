 /**
 * Or gate:
 * out = 1 if (a == 1 or b == 1)
 *       0 otherwise
 */
`default_nettype none

module NTT_Or(
    input wire a,
    input wire b,
    output wire out
);


wire n_a, n_b;

NTT_Nand not_a(a, a, n_a);
NTT_Nand not_b(b, b, n_b);
NTT_Nand Nand_1(n_a, n_b, out);

endmodule
