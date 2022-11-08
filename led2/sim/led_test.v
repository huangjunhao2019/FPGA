module tb_led();
reg key_in;
wire led_out;
always #10 key_in={$random}%2;
initial begin
    key_in=1'b0;
end

led_test led1(.key_in(key_in),.led_out(led_out));

endmodule