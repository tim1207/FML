module test_top;
  reg reset, clk, btn;
  wire[1:0] R,G;
  wire[6:0] hex;
  top  t1(hex,R,G,btn,reset,clk);
  always #15 btn = ~btn;
  always #10 clk = ~clk;
  initial begin
    reset = 0; clk = 0; btn=0;
    #100 reset = 1; 
    #1000 $stop;
  end
endmodule 