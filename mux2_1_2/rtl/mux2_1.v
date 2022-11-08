module mux2_1(input key1,input key2,input key3,output led_out);
assign led_out=key3?key1:key2;

endmodule