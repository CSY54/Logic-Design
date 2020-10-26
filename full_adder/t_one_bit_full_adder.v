`timescale 1ns/100ps

module t_one_bit_full_adder();
  reg A, B, C_in;
  wire C_out, S;
  one_bit_full_adder f(A, B, C_in, C_out, S);

  initial begin
    $dumpfile("one_bit.vcd");
    $dumpvars;
    A = 1'b0; B = 1'b0; C_in = 1'b0;
    #50
    A = 1'b0; B = 1'b0; C_in = 1'b1;
    #50
    A = 1'b1; B = 1'b1; C_in = 1'b0;
    #50
    A = 1'b1; B = 1'b1; C_in = 1'b1;
  end
endmodule

