`timescale 1ns/10ps

module t_d_flip_flop();
  reg clk;
  reg rst;
  reg D;
  wire Q;

  d_flip_flop ff(clk, rst, D, Q);

  initial begin
    $dumpfile("d_flip_flop.vcd");
    $dumpvars;
    clk = 1'b0;

    D = 0; rst = 0;
    #50
    D = 0; rst = 1;
    #50
    D = 1; rst = 0;
    #50
    D = 1; rst = 1;
    #50

    $finish;
  end

  always
  begin
    #25 clk = ~clk;
  end
endmodule

