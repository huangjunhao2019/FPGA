`timescale 1ns/1ns

module tb_divide_any();
    reg sys_clk;
    reg sys_rst_n;
    wire clk_out;
    initial begin
        sys_clk<=1'b0;
        sys_rst_n<=1'b0;
        #40
        sys_rst_n<=1'b1;
    end
    
    always #10  sys_clk=~sys_clk;
    divide_any #(.cnt_max(9))inst1(.sys_clk(sys_clk),.sys_rst_n(sys_rst_n),.clk_out(clk_out));

endmodule