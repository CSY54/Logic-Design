module d_flip_flop(
  input clk,
  input rst,
  input D,
  output reg Q
);
  always @(posedge clk)
  begin
    if (rst)
    begin
      Q <= 0;
    end
    else
    begin
      Q <= D;
    end
  end
endmodule

