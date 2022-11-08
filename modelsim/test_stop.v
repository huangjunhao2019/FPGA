`timescale 1ns/1ns
module test_stop();

initial begin
    $display("Hello");
    $display("EmbedFire");
    #100;
    $display("Stop Simulation");
    $stop;
    $display("Continue Simulation");
    #100;
    $display("Finish Simulation");
    $finish;

end

endmodule
