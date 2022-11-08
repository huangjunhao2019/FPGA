module divide6_2(input sys_clk,input sys_rst_n,output reg clk_flag);
reg [2:0] cnt;
always @(posedge sys_clk, negedge sys_rst_n) begin
    if(sys_rst_n==1'b0)
        cnt<=0;
    else if(cnt==3'd5)
        cnt<=0;
    else
        cnt<=cnt+1;
end

always @(posedge sys_clk, negedge sys_rst_n) begin
    if(sys_rst_n==1'b0)
        clk_flag<=1'b0;
    else if(cnt==3'd4)
        clk_flag<=1'b1;
    else
        clk_flag<=1'b0;
end

endmodule