`timescale 1ns/1ps

module tb_inverter;
    reg a;
    wire y;
    inverter dut (.a(a),.y(y));
    initial begin
        #10;
        a = 1;
        #10;
        a = 0;
    end
    
    initial $monitor("t=%0d, a=%b, y=%b", $time, a, y);
endmodule