`timescale 1ns/1ns

module FP2_TEST;
    reg clk;
    initial
        begin
            clk=0;
        end
    always #20 clk=~clk;
    FP2 U1(
        .clk(clk),
        .clk_s(clk_s)
    );
endmodule
