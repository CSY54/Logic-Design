`timescale 1ns/100ps

module t_one_digit_bcd();
  reg[3:0] A, B;
  reg C_in;
  wire C_out;
  wire[3:0] S;

  one_digit_bcd bcd(A, B, C_in, C_out, S);

  initial begin
    $dumpfile("one_digit_bcd.vcd");
    $dumpvars;
    A = 0; B = 0; C_in = 0;
    #50
    A = 4; B = 5; C_in = 0;
    #50
    A = 0; B = 9; C_in = 1;
    #50
    A = 9; B = 9; C_in = 1;
    #50;
  end
endmodule
