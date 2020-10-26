`timescale 1ns/100ps

module t_four_bit_full_adder();
  reg[3:0] A, B;
  reg C_in;
  wire C_out;
  wire[3:0] S;
  four_bit_full_adder f(A[3:0], B[3:0], C_in, C_out, S[3:0]);

  initial begin
    $dumpfile("four_bit.vcd");
    $dumpvars;
    A = 4'b0000; B = 4'b0000; C_in = 1'b0;
    #50
    A = 4'b0000; B = 4'b0000; C_in = 1'b1;
    #50
    A = 4'b1000; B = 4'b1000; C_in = 1'b0;
    #50
    A = 4'b1111; B = 4'b1111; C_in = 1'b1;
  end
endmodule

