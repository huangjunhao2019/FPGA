module divide5(input sys_clk,input sys_rst_n,output reg clk_out);
    reg [2:0] cnt;
     initial begin
        clk_out<=1'b0;
        cnt<=3'b000;
    end 
    always @(posedge sys_clk, negedge sys_rst_n) begin
        if(sys_rst_n==1'b0)  
            cnt<=0;
        else if(cnt==4)
            cnt<=0;
        else
            cnt<=cnt+1;
    end
    
    always @(posedge sys_clk, negedge sys_rst_n) begin
        if(sys_rst_n==1'b0)
            clk_out<=1'b0;
        else if(cnt==2)
            clk_out<=1'b0;
        else if(cnt==4)
            clk_out<=1'b1;
        else
            clk_out<=clk_out;
    end
endmodule