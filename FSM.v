module FSM(btn,clk,reset,data,R,G);
 input btn,clk,reset;
 output[2:0] data;
 output [1:0] R,G;
  wire[2:0]d;
  df d0(data[0], d[0], clk, reset);
  df d1(data[1], d[1], clk, reset);
  df d2(data[2], d[2], clk, reset);
  assign d[0] =  (~data[0] & ~btn) | (data[1] & ~data[0]) | (data[2] & ~data[0]);
  assign d[1] =  (~data[1] & data[0]) | (data[1] & ~data[0]);
  assign d[2] =  (~data[2] & data[1] & data[0]) | (data[2] & ~data[1]) | (data[2] & ~data[0]);
  
  assign R[0] =  (~data[2] & ~data[1] & ~data[0] & btn);
  assign R[1] =   (~btn) | (data[0]) | (data[1]) | (data[2]);
  
  assign G[0] =  (~btn) | (data[0]) | (data[1]) | (data[2]);
  assign G[1] = (~data[2] & ~data[1] & ~data[0] & btn);
endmodule
  