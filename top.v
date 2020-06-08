module top (hex,R,G,btn,reset,clk);
  input btn,reset,clk;
  wire [2:0]data;
  output[6:0] hex;
  wire[2:0] hex_in;
  output[1:0] R,G;
  assign hex_in=~data+1'b1;
  FSM f1(.btn(btn),.clk(clk_out),.reset(reset),.data(data),.R(R),.G(G));
  SevenSegmentDecoder ss1(.seg_out(hex) ,.seg_in({1'b0,hex_in}));
  //assign clk_out = clk;
   freq_div_23 fd(.clk_out(clk_out), .clk(clk), .reset(reset));
endmodule