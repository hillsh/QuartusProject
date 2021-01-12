/**
 * Computes the sum of two bits.
 */
`default_nettype none
module HalfAdder(
    input wire a,       //1-bit input
    input wire b,       //1-bit inpur
    output wire sum,    //Right bit of a + b
    output wire carry   //Lef bit of a + b
);


wire n_a, n_b, n_ab;

NTT_Nand nand_ab(a, b, n_ab);
NTT_Nand nand_b(b, n_ab, n_b);
NTT_Nand nand_a(a, n_ab, n_a);
NTT_Nand nand_nn(n_a, n_b, sum);
NTT_Nand nand_n2(n_ab, n_ab, carry);

endmodule
