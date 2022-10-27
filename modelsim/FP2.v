module FP2(
input clk,
output reg clk_s
);  
initial 
    begin
        clk_s<=1'b0;
    end
always @(posedge clk)
    begin
        if(clk==1'b1)
            clk_s <= ~clk_s;
    end
endmodule