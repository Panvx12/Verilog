`timescale 1ns/1ps

module tb_and_gate;
    reg a, b, c;
    wire y;
    and_gate dut (.a(a), .b(b), .c(c), .y(y));

    integer i;

    initial begin
        for(i = 0;i <= 7;i = i + 1) begin
            {a, b, c} = i[2:0];
            #10;
            $display("a=%b, b=%b, c=%b, y=%b", a, b, c, y);
        end
        $finish;
    end
endmodule