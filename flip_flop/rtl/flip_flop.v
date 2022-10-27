module flip_flop 
(
    input   wire    sys_clk,
    input   wire    sys_rst_n,
    input   wire    key_in,
    
    output  reg     led_out
);

always@(posedge sys_clk)// or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        led_out <= 1'b0;
    else
        led_out <= key_in;


endmodule

/* module flip_flop
(
    input wire key_in,
    output wire led_out
);
assign led_out = key_in;
endmodule */