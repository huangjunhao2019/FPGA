`timescale 1ns/1ns
module tb_half();
reg in1;
reg in2;
wire sum;
wire cout;
initial begin
    in1<=0;
    in2<=0;
end
always #5  in1<={$random}%2;
always #5  in2<={$random}%2;
half_add inst1(.in1(in1),.in2(in2),.sum(sum),.cout(cout));
endmodule