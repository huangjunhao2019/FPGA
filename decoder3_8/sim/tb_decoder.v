module tb_decoder();
reg in1;
reg in2;
reg in3;
wire [7:0] out;
initial begin
    in1<=1'b0;
    in2<=1'b0;
    in3<=1'b0; 
end

always #10  in1<={$random}%2;
always #10  in2<={$random}%2;
always #10  in3<={$random}%2;

decoder3_8 inst1(.in1(in1),.in2(in2),.in3(in3),.out(out));
endmodule