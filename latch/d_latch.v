module d_latch(
  input En,
  input D,
  output Q
);
  wire nand1, nand2, nand3, nand4;

  nand(nand1, D, En);
  nand(nand2, ~D, En);
  nand(nand3, nand1, nand4);
  nand(nand4, nand2, nand3);

  assign Q = nand3;
endmodule

