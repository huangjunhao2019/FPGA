module half_adder
(
    input   wire      in_1,
    input   wire      in_2,
    
    output  wire      sum,
    output  wire      count
);

assign {count,sum} = in_1+in_2;
/* always@(*)
    case({in_1,in_2})
        2'b00: 
            assign sum = 0;
            assign count = 0;
        2'b01:
            assign sum = 1;
            assign count = 0 ;
        2'b10:
            assign sum = 1;
            assign count = 0;
        2'b11:
            assign sum = 0;
            assign count = 1;
        default:
            assign sum = 0;
            assign count = 0;
    endcase  */
endmodule
