`timescale 1ns/1ns
module tb_divide6();

reg sys_clk;
reg sys_rst_n;
wire clk_out;
initial begin
    sys_clk=1'b0;
    sys_rst_n<=1'b0;
end

always #10  sys_clk<=~sys_clk;
always #10  sys_rst_n<=1'b1;
divide6 inst1(.sys_clk(sys_clk),.sys_rst_n(sys_rst_n),.clk_out(clk_out));
endmodule