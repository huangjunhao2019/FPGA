module tb_mux2_1();
reg key1;
reg key2;
reg key3;
reg led_out;
initial begin
    key3=1;
    key1=1;
    key2=1;
end
always begin
    #10 key3={$random}%2;
    #10 key1={$random}%2;
    #10 key2={$random}%2;
    end

mux2_1 inst1(.key1(key1),.key2(key2),.key3(key3),.led_out(led_out));
endmodule