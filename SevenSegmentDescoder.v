module SevenSegmentDecoder(seg_out ,seg_in);
    output [6:0] seg_out;
    input  [3:0] seg_in;
    
    assign {w, x, y, z} = seg_in ;
    
    assign a = ~w&~x&~y&z |~w&x&~y&~z   | w&x&~y&z   | w&~x&y&z;
    assign b = ~w&x&~y&z  | x&y&~z      | w&y&z      | w&x&~z;
    assign c = w&x&y      | ~w&~x&y&~z  | w&x&~z;
    assign d = x&y&z      |~w&~x&~y&z   | ~w&x&~y&~z | w&~x&y&~z;
    assign e = ~w&z |~w&x&~y | ~x&~y&z;
    assign f = ~w&~x&z |~w&~x&y | ~w&y&z | w&x&~y&z;
    assign g = ~w&~x&~y |~w&x&y&z | w&x&~y&~z;
    
    
    assign  seg_out = {a, b, c, d, e, f, g} ;
endmodule  