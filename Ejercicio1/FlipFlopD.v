module FlipFlop1b (input clk, reset, eneable, D, output reg Q);
    always @ (posedge clk or posedge reset) begin
        if (reset) begin
            Q <= 0;
        end
        if (enable) begin
            Q <= D;
        end
    end
endmodule

//Flip Flop 2 bits
module FlipFlop2b (input clk, reset, eneable, input [1:0] D, output [1:0] Q);
    FlipFlop1b FF1(clk, reset, eneable, D [1], Q [1]);
    FlipFlop1b FF2(clk, reset, eneable, D [0], Q [0]);
endmodule

//Flip Flop D 4 bits
module FlipFlop4b (input clk, reset, eneable, input [3:0] D, output [3:0] Q);
    FlipFlop2b FF3(clk, reset, eneable, D [3:2], Q [3:2]);
    FlipFlop2b FF4(clk, reset, eneable, D [1:0], Q [1:0]);
endmodule
