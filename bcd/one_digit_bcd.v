`include "full_adder/four_bit_full_adder.v"

module one_digit_bcd(
  input[3:0] A,
  input[3:0] B,
  input C_in,
  output C_out,
  output[3:0] S
);
  wire[3:0] S_tmp;
  wire C_out_tmp, dummy;
  wire[3:0] to_add;

  four_bit_full_adder fa1(A, B, C_in, C_out_tmp, S_tmp);

  assign C_out = (S_tmp[3] & S_tmp[2]) | (S_tmp[3] & S_tmp[1]) | C_out_tmp;

  assign to_add = (C_out << 2) | (C_out << 1);

  four_bit_full_adder fa2(S_tmp, to_add, 1'b0, dummy, S);
endmodule
