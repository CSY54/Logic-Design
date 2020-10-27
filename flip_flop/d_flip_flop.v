module d_flip_flop(
  input En,
  input D,
  output reg Q
);
  always @(posedge En)
  begin
    Q <= D;
  end
endmodule

