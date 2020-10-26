module full_adder #(parameter N = 8) (
  input[N-1:0] A, B,
  input C_in,
  output C_out,
  output[N-1:0] S
);
  if (N == 1)
    begin: Eq
      wire t1, t2, t3;

      assign t1 = A ^ B;
      assign t2 = t1 & C_in;
      assign t3 = A & B;

      assign S = t1 ^ C_in;
      assign C_out = t2 | t3;
    end
  else
    begin: Neq
      wire t;
      full_adder #(N >> 1) f2(A[(N>>1)-1:0], B[(N>>1)-1:0], C_in, t, S[(N>>1)-1:0]);
      full_adder #(N >> 1) f1(A[N-1:N>>1], B[N-1:N>>1], t, C_out, S[N-1:N>>1]);
    end
endmodule
