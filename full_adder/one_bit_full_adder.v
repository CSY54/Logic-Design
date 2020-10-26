module one_bit_full_adder(
  input A, B, C_in,
  output C_out, S
);
  wire t1, t2, t3;

  assign t1 = A ^ B;
  assign t2 = t1 & C_in;
  assign t3 = A & B;

  assign S = t1 ^ C_in;
  assign C_out = t2 | t3;
endmodule

