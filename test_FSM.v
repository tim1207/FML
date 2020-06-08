module test_FSM;
  reg reset, clk,btn;
  wire[2:0] data;
  wire[1:0] R,G;
  FSM f1(btn,clk,reset,data,R,G);
  always #10 clk = ~clk;
  initial begin
    reset = 0; clk = 0; btn=1;
    #100 reset = 1;btn=0;
    //#300 reset = 0;
    //#400 reset = 1;
    #500 $stop;
  end
endmodule 