/** 
 * Multiplexor:
 * out = a if sel == 0
 *       b otherwise
 */
`default_nettype none

module NTT_Mux(
    input wire a,
    input wire b,
    input wire sel,
    output wire out
);


wire not_s, selb, sela;

NTT_Nand not_1(sel, sel, not_s);
NTT_Nand not_2(sel, b, selb);
NTT_Nand not_3(not_s, a, sela);
NTT_Nand nand_4(sela, selb, out);


endmodule
