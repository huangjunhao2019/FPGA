module mux2_1
(
    input wire [0:0] in_1, //输入信号1
    input wire [0:0] in_2, //输入信号2
    input wire [0:0] sel,   //选通信号
    output reg [0:0] out    //输出信号
);

always@(*)
    if(sel == 1'b1)
        out = in_1;
    else
        out = in_2;
endmodule
