module testb ();
  reg [6:0] entry; wire [12:0] out;
  Rom_2 Rom_2 (entry, out);
  initial begin
    $display("\t\tTime \ten6 \ten5 \ten4 \ten3 \ten2 \ten1 \ten0 \tout");
    $monitor ("%d\t %b\t %b\t %b\t %b\t %b\t %b\t%b\t %b\t", $time, entry[6], entry[5], entry[4], entry[3], entry[2], entry[1], entry[0], out);
    entry[6]= 1'bx; entry[5]= 1'bx; entry[4]= 1'bx; entry[3]= 1'bx; entry[2]= 1'bx; entry[1]= 1'bx; entry[0]= 0;
    #10 entry[6]= 0; entry[5]= 0; entry[4]= 0; entry[3]= 0; entry[2]= 1; entry[1]= 1'bx; entry[0]= 1;
    #10 entry[6]= 0; entry[5]= 0; entry[4]= 0; entry[3]= 0; entry[2]= 0; entry[1]= 1'bx; entry[0]= 1;
    #10 entry[6]= 0; entry[5]= 0; entry[4]= 0; entry[3]= 1; entry[2]= 1; entry[1]= 1'bx; entry[0]= 1;
    #10 entry[6]= 0; entry[5]= 0; entry[4]= 0; entry[3]= 1; entry[2]= 0; entry[1]= 1'bx; entry[0]= 1;
    #10 entry[6]= 0; entry[5]= 0; entry[4]= 1; entry[3]= 0; entry[2]= 1'bx; entry[1]= 1'bx; entry[0]= 1;
    #10 entry[6]= 0; entry[5]= 0; entry[4]= 1; entry[3]= 1; entry[2]= 1'bx; entry[1]= 1'bx; entry[0]= 1;
    #10 entry[6]= 0; entry[5]= 0; entry[4]= 0; entry[3]= 0; entry[2]= 0; entry[1]= 1'bx; entry[0]= 1;
    #10 entry[6]= 0; entry[5]= 1; entry[4]= 0; entry[3]= 1; entry[2]= 1'bx; entry[1]= 1'bx; entry[0]= 1;
    #10 entry[6]= 0; entry[5]= 1; entry[4]= 1; entry[3]= 0; entry[2]= 1'bx; entry[1]= 1'bx; entry[0]= 1;
    #10 entry[6]= 0; entry[5]= 1; entry[4]= 1; entry[3]= 1; entry[2]= 1'bx; entry[1]= 1'bx; entry[0]= 1;
    #10 entry[6]= 0; entry[5]= 0; entry[4]= 0; entry[3]= 0; entry[2]= 0; entry[1]= 1'bx; entry[0]= 1;
    #10 entry[6]= 1; entry[5]= 0; entry[4]= 0; entry[3]= 0; entry[2]= 1'bx; entry[1]= 1; entry[0]= 1;
    #10 entry[6]= 0; entry[5]= 0; entry[4]= 0; entry[3]= 0; entry[2]= 0; entry[1]= 1'bx; entry[0]= 1;
    #10 entry[6]= 1; entry[5]= 0; entry[4]= 0; entry[3]= 0; entry[2]= 1'bx; entry[1]= 0; entry[0]= 1;
    #10 entry[6]= 1; entry[5]= 0; entry[4]= 0; entry[3]= 1; entry[2]= 1'bx; entry[1]= 1; entry[0]= 1;
    #10 entry[6]= 1; entry[5]= 0; entry[4]= 0; entry[3]= 1; entry[2]= 1'bx; entry[1]= 0; entry[0]= 1;
    #10 entry[6]= 1; entry[5]= 0; entry[4]= 1; entry[3]= 0; entry[2]= 1'bx; entry[1]= 1'bx; entry[0]= 1;
    #10 entry[6]= 1; entry[5]= 0; entry[4]= 1; entry[3]= 1; entry[2]= 1'bx; entry[1]= 1'bx; entry[0]= 1;
    #10 entry[6]= 1; entry[5]= 1; entry[4]= 0; entry[3]= 0; entry[2]= 1'bx; entry[1]= 1'bx; entry[0]= 1;
    #10 entry[6]= 1; entry[5]= 1; entry[4]= 0; entry[3]= 1; entry[2]= 1'bx; entry[1]= 1'bx; entry[0]= 1;
    #10 entry[6]= 1; entry[5]= 1; entry[4]= 1; entry[3]= 0; entry[2]= 1'bx; entry[1]= 1'bx; entry[0]= 1;
    #10 entry[6]= 1; entry[5]= 1; entry[4]= 1; entry[3]= 1; entry[2]= 1'bx; entry[1]= 1'bx; entry[0]= 1;
    #10 entry[6]= 1; entry[5]= 1; entry[4]= 1; entry[3]= 1; entry[2]= 0; entry[1]= 1; entry[0]= 1;
    #10 entry[6]= 1; entry[5]= 1; entry[4]= 1; entry[3]= 1; entry[2]= 0; entry[1]= 0; entry[0]= 0;
    #10 entry[6]= 1; entry[5]= 1; entry[4]= 1; entry[3]= 1; entry[2]= 1; entry[1]= 1; entry[0]= 1;
    #10 entry[6]= 1; entry[5]= 1; entry[4]= 1; entry[3]= 0; entry[2]= 0; entry[1]= 1; entry[0]= 0;
    #10 entry[6]= 0; entry[5]= 0; entry[4]= 1; entry[3]= 1; entry[2]= 0; entry[1]= 1; entry[0]= 1;
    #10 $finish;
  end
  initial begin
    $dumpfile("Rom_tb.vcd");
    $dumpvars(0,testb);
  end
endmodule
