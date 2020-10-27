`timescale 1ns/10ps

module t_d_latch();
  reg clk;
  reg D;
  wire Q;

  d_latch latch(clk, D, Q);

  initial
  begin
    $dumpfile("d_latch.vcd");
    $dumpvars;

    clk = 1'b0;

    D = 0;
    #50
    D = 1;
    #50
    D = 0;
    #50
    D = 1;
    #50

    $finish;
  end

  always
  begin
    #25 clk = ~clk;
  end
endmodule

