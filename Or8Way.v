/**
 * 8-way Or: 
 * out = (in[0] or in[1] or ... or in[7])
 */
`default_nettype none

module Or8Way(
    input  wire [7:0] in,
    output wire out
);


wire out0, out1, out2, out3, out4, out5;

NTT_Or Or_0(in[0], in[1], out0);
NTT_Or Or_1(out0, in[2], out1);
NTT_Or Or_2(out1, in[3], out2);
NTT_Or Or_3(out2, in[4], out3);
NTT_Or Or_4(out3, in[5], out4);
NTT_Or Or_5(out4, in[6], out5);
NTT_Or Or_6(out5, in[7], out);

endmodule
