module divide6(input sys_clk,input sys_rst_n,output reg clk_out);

reg [1:0] cnt;
always @(posedge sys_clk,negedge sys_rst_n) begin
    if(sys_rst_n==1'b0)
        cnt<=2'b00;
    else if(cnt==2'd2)
        cnt<=2'b00;
    else 
        cnt<=cnt+1;

end

always @(posedge sys_clk,negedge sys_rst_n)     begin
    if(sys_rst_n==1'b0)
        clk_out<=1'b0;
    else if(cnt==2'd2)
        clk_out<=~clk_out;
end

endmodule