module decoder2_4(input key1,input key2,output reg [3:0] out);
    always @(*) begin
        case ({key2,key1})
             2'b00: out=~4'b0001;
             2'b01: out=~4'b0010;
             2'b10: out=~4'b0100;
             2'b11: out=~4'b1000;
        endcase
    
    end
endmodule