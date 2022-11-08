module tb_block();

reg sys_clk;
reg sys_rst_n;
reg [1:0] in;
wire [1:0] out;

initial begin
    sys_clk=1'b0;
    sys_rst_n=1'b1;
    in=2'b00;
end

always #10 sys_clk=~sys_clk; 
always #20 in={$random}%4;
block inst1(.sys_clk(sys_clk),.sys_rst_n(sys_rst_n),.in(in),.out(out));
endmodule