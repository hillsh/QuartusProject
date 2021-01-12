/**
 * 16-bit Not:
 * for i=0..15: out[i] = not in[i]
 */
`default_nettype none

module Not16(
    input  wire [15:0] in,
    output wire [15:0] out
);


NTT_Nand Not0(in[0], in[0], out[0]);
NTT_Nand Not1(in[1], in[1], out[1]);
NTT_Nand Not2(in[2], in[2], out[2]);
NTT_Nand Not3(in[3], in[3], out[3]);
NTT_Nand Not4(in[4], in[4], out[4]);
NTT_Nand Not5(in[5], in[5], out[5]);
NTT_Nand Not6(in[6], in[6], out[6]);
NTT_Nand Not7(in[7], in[7], out[7]);
NTT_Nand Not8(in[8], in[8], out[8]);
NTT_Nand Not9(in[9], in[9], out[9]);
NTT_Nand Not10(in[10], in[10], out[10]);
NTT_Nand Not11(in[11], in[11], out[11]);
NTT_Nand Not12(in[12], in[12], out[12]);
NTT_Nand Not13(in[13], in[13], out[13]);
NTT_Nand Not14(in[14], in[14], out[14]);
NTT_Nand Not15(in[15], in[15], out[15]);

endmodule
