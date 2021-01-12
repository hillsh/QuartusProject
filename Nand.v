/**
 * Nand gate: 
 * out = 0 if (a == 1 and b == 1)
 *       1 otherwise
 *
 * This module is implemented using verilog primitives
 */

`default_nettype none

module NTT_Nand(
    input  wire  a,
    input  wire  b,
    output wire out
);

assign out = ~(a & b);

endmodule
