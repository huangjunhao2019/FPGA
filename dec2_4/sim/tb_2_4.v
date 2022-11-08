`timescale 1ns/1ns

module tb_2_4();
    reg key1;
    reg key2;
    wire [3:0] out;
    always begin
        #10 key1<={$random}%2; 
    end
    always #10 key2<={$random}%2;
    decoder2_4 inst1(.key1(key1),.key2(key2),.out(out));
endmodule