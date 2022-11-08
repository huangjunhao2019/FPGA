`timescale 1ns/1ns

module tb_test4();
reg [3:0] a;
reg [3:0] b;
reg [3:0] c;

initial begin
    $strobe("strobe: %b+%b=%d",a,b,c);
    a=4'd5;
    $display("display: %b+%b+%d",a,b,c);
    b=4'd6;
    c=a+b;
end

endmodule
