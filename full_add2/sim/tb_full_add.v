`timescale 1ns/1ns
module tb_full_add();
    reg in1;
    reg in2;
    reg cin;
    wire cout;
    wire sum;
    initial begin
        in1<=0;
        in2<=0;
        cin<=0;
    end
    always #5   in1<={$random}%2;
    always #5   in2<={$random}%2;
    always #5   cin<={$random}%2;
    full_add inst1(.in1(in1),.in2(in2),.cin(cin),.cout(cout),.sum(sum));

endmodule