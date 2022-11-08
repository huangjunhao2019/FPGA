`timescale 1ns/1ns
module tb_test2();
reg [3:0] a;
reg [3:0] b;
reg [3:0] c;

initial begin
    $write("hello");
    $write("EmbedFire \n");
    
    a=4'd5;
    b=4'd6;
    c=a+b;
    #100
    $write("%b+%b=%d\n",a,b,c);
end

endmodule
