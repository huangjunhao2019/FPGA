`timescale 1ns/1ns

module test_time();

reg [3:0] a;
always #10 a=$random;
initial begin
    $monitor("a=%d @time %d",a,$time);
end
endmodule