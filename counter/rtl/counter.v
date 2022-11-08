module counter #(parameter CNT_MAX=25'd24_999_999)(input wire sys_clk,input wire sys_rst_n,output reg led_out);

reg [24:0] cnt;
reg [4:0] countTime;
always @(posedge sys_clk, negedge sys_rst_n)    begin
    if(sys_rst_n==1'b0)
        cnt<=25'b0;
    else if (cnt==CNT_MAX)
        cnt<=25'b0;
    else
        cnt<=cnt+1'b1;
end

always @(posedge sys_clk, negedge sys_rst_n)    begin
    if(sys_rst_n==1'b0) begin
        led_out<=1'b0;
        countTime<=5'd0;
    end
    else if(countTime>=5'd19)
        led_out<=1'b1;
    else if(cnt==CNT_MAX)   begin
        led_out<=~led_out;
        countTime<=countTime+1;
        end
    else
        led_out<=led_out;
        
end
endmodule