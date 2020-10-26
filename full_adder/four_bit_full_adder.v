`include "full_adder/one_bit_full_adder.v"

module four_bit_full_adder(
  input[3:0] A, B,
  input C_in,
  output C_out,
  output[3:0] S
);
  wire t01, t12, t23;

  one_bit_full_adder b0(A[0], B[0], C_in, t01, S[0]);
  one_bit_full_adder b1(A[1], B[1], t01, t12, S[1]);
  one_bit_full_adder b2(A[2], B[2], t12, t23, S[2]);
  one_bit_full_adder b3(A[3], B[3], t23, C_out, S[3]);
endmodule

