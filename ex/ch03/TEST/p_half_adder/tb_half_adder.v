`timescale 1ns/1ps

module tb_half_adder;
    reg a, b;
    wire sum, carry;
    half_adder dut (.a(a), .b(b), .sum(sum), .carry(carry));

    integer i;

    initial begin
        $display("a | b | sum | carry");
        for(i = 0;i <= 3;i = i + 1) begin
            {a, b} = i[1:0];
            #10;
            $display("%b | %b | %b | %b", a, b, sum, carry);
        end
        $finish;
    end
endmodule