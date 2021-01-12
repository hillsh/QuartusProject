/**
 * Computes the sum of three bits.
 */
`default_nettype none

module FullAdder(
    input wire a,       //1-bit input
    input wire b,       //1-bit input
    input wire c,       //1-bit input
    output wire sum,    //Right bit of a + b + c
    output wire carry   //Left bit of a + b + c
);


wire sums, carrys, carryss, throw;

HalfAdder HalfAdder_0(a, b, sums, carrys);
HalfAdder HalfAdde1(sums, c, sum, carryss);
NTT_Or Or_1(carrys, carryss,carry);

endmodule
