module divide5_2(input sys_clk,input sys_rst_n,output clk_out);
reg [2:0] cnt;
reg     clk1;
reg     clk2;
assign clk_out=clk1 & clk2;
always @(posedge sys_clk, negedge sys_rst_n) begin
    if(sys_rst_n==1'b0)
        cnt<=0;
    else if(cnt==4)
        cnt<=0;
    else
        cnt<=cnt+1;
end

always @(posedge sys_clk,negedge sys_rst_n) begin
    if(sys_rst_n==1'b0)
        clk1<=1'b0;
    else if(cnt==3'd2)
        clk1<=1'b0;
    else if(cnt==3'd4)
        clk1<=1'b1;
end

always @(negedge sys_clk,negedge sys_rst_n) begin
    if(sys_rst_n==1'b0)
        clk2<=1'b0;
    else if(cnt==3'd2)
        clk2<=1'b0;
    else if(cnt==3'd4)
        clk2<=1'b1;
end
endmodule