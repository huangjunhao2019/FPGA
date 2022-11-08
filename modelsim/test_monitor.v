`timescale 1ns/1ns
module test_monitor();

reg [3:0] a;
reg [3:0] b;
reg [3:0] c;

initial begin
    a=4'd5;
    #100;
    b=4'd6;
    #100;
    c=a+b;
end
initial begin
    $monitor("%b+%b=%d",a,b,c);
end

endmodule