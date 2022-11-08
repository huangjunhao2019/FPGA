/* module led
(
    input wire key_in,
    output wire led_out
);
assign led_out = key_in;
endmodule */

module led(input key_in,output led_out);
    assign led_out=key_in;
endmodule