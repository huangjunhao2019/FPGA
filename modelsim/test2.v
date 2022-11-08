`timescale 1ns/1ns

module test2();
reg [3:0] a;
reg [3:0] b;
reg [3:0] c;
initial begin
    $display("Hello");
    $display("Embed Fire");
    a=4'd5;
    b=4'd6;
    c=a+b;
    #100
    $display("%b+%b=%d",a,b,c);
end

endmodule