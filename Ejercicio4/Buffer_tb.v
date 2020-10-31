module Buffer_T ();

  reg eneable; reg [3:0] entry; wire [3:0] out;
  Buffer_Tri Buffer_Tri (eneable, entry, out);

  initial begin
    eneable=0;entry=0;
    $display("\t\tTime \tEneable \ten3 \ten2 \ten1 \ten0 \tout");
    $monitor ("%d\t %d\t %d\t %d\t %d\t %d\t %d\t", $time, eneable, entry[3], entry[2], entry[1], entry[0], out);
    #10 eneable = 0;
    entry[3] = 1;
    entry [1] = 1;
    #10 eneable = 1;
    #10 eneable = 0;
    #10 $finish;
  end
  
  initial begin
    $dumpfile("Buffer_tb.vcd");
    $dumpvars(0,Buffer_T);
  end
endmodule
