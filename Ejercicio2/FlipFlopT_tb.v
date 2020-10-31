module testb ();
reg clk, reset, eneable; wire Q;
FFT FFT (clk, reset, eneable, Q);

  initial begin
    #1
    $display("clk|reset|eneable|Q |");
    $monitor("%b\t%b\t%b\t%b\t ", clk, reset, eneable, Q);
    clk=0; reset=0; eneable=0;
    #2 reset=1;
    #2 reset =0;
    #2 eneable =1;
    #4 eneable =0;
  end
  always
    #1 clk=~clk;
  initial
    #20 $finish;
  initial begin
    $dumpfile("FlipFlopT_tb.vcd");
    $dumpvars(0, testb);
  end
endmodule
