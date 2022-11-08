`timescale 1ns/1ns
module test_always();
    reg clk1;
    reg clk2;
    initial begin
        clk1=1'b0;
        clk2=1'b0;
    end
    always  begin
        #10 clk1<=1'b1; $display("%d",$time);
        end
    always begin
        #10 clk2<=1'b1; $display("%d",$time);
        end
     
endmodule