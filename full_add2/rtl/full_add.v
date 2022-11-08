module full_add(input in1,input in2,input cin,output   sum,output   cout);
    wire sum1;
    wire cout1;
    half_add inst1(.in1(in1),.in2(in2),.sum(sum1),.cout(cout1));
    wire cout2;
    half_add inst2(.in1(sum1),.in2(cin),.sum(sum),.cout(cout2));
    assign cout=cout1 | cout2;

endmodule