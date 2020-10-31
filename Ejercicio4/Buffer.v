module Buffer_Tri (input eneable, input [3:0] entry, output [3:0] out);
  assign out = eneable?entry: 4'bzzzz;
endmodule
