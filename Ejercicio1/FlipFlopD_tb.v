module testb ();
reg clk, reset, eneable, D;
reg [1:0]Flip2; reg [3:0]Flip4; wire Q; wire [1:0] Q2; wire [3:0] Q4;

  FlipFlop1b FF1(clk, reset, eneable, D, Q);
  FlipFlop2b FF2(clk, reset, eneable, Flip2, Q2);
  FlipFlop4b FF4(clk, reset, eneable, FLip4, Q4);

      initial begin
        $display("Clock|Reset|eneable|D|D2|D4||Q|Q2|Q4");
        $monitor("%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t", clk, reset, eneable, D, D2, D4, Q, Q2, Q4);
        #1 clk=0; reset=0;eneable=0;D=0;D2=2'b00;D4=4'b0000;
        #2 reset =1;
        #2 reset =0;
        #2 eneable =1;
        #2 D=1; D2=2'b01; D4=4'b0001;
        #2 D2=2'B10; D4=4'b0011;
        #2 D2=2'b11; D4=4'b1100;
        #2 D=0;
      end

      always
        #1 clk = ~clk;
      initial
        #20 $finish;
      initial begin
        $dumpfile("FlipFlopD_tb.vcd");
        $dumpvars(0, testb);
      end
  endmodule
