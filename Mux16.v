/**
 * 16-bit multiplexor: 
 * for i = 0..15 out[i] = a[i] if sel == 0 
 *                        b[i] if sel == 1
 */
`default_nettype none

module Mux16(
    input wire  [15:0] a,
    input wire  [15:0] b,
    input wire  sel,
    output wire [15:0] out
);


NTT_Mux Mux_0(a[0], b[0], sel, out[0]);
NTT_Mux Mux_1(a[1], b[1], sel, out[1]);
NTT_Mux Mux_2(a[2], b[2], sel, out[2]);
NTT_Mux Mux_3(a[3], b[3], sel, out[3]);
NTT_Mux Mux_4(a[4], b[4], sel, out[4]);
NTT_Mux Mux_5(a[5], b[5], sel, out[5]);
NTT_Mux Mux_6(a[6], b[6], sel, out[6]);
NTT_Mux Mux_7(a[7], b[7], sel, out[7]);
NTT_Mux Mux_8(a[8], b[8], sel, out[8]);
NTT_Mux Mux_9(a[9], b[9], sel, out[9]);
NTT_Mux Mux_10(a[10], b[10], sel, out[10]);
NTT_Mux Mux_11(a[11], b[11], sel, out[11]);
NTT_Mux Mux_12(a[12], b[12], sel, out[12]);
NTT_Mux Mux_13(a[13], b[13], sel, out[13]);
NTT_Mux Mux_14(a[14], b[14], sel, out[14]);
NTT_Mux Mux_15(a[15], b[15], sel, out[15]);

endmodule
