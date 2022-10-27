module Tflipflp_tb;
reg clk,rst_n,T;
wire data_out;
always
	clk=~clk
initial begin
	clk=0;
	#3 rst_n=0;
	#5 rst_n=1;
	T=1;
	#30 T=0;
	#20 T=1;
end
initial
	begin
		$monitor($time,"T=%b,clk=%b,rst_n=%b,data_out=%b",T,clk,rst_n,data_out);
	end
endmodule