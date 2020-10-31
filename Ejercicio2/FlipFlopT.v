module FlipFlop1b(input clk, reset, eneable, D, output Q);

    reg Q;
    always @ (posedge clk or posedge reset) begin
        if (reset) begin
            Q <= 0;
        end
        if (eneable) begin
            Q <= D;
        end
    end
    endmodule

    module FFT(input clk, reset, eneable, output Q);
        FlipFlop1b FFT1(clk, reset, eneable, ~Q, Q);
    endmodule
