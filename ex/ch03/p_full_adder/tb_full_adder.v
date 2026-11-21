`timescale 1ns/1ps

module tb_full_adder;
    reg a, b, cin;
    wire sum, carry;
    full_adder dut (.a(a), .b(b), .cin(cin), .sum(sum), .carry(carry));

    integer i;
    initial begin
        for(i = 0;i < 8;i = i + 1)begin
            {a, b, cin} = i[2:0];
            #10;
            $display("a = %b, b = %b, cin = %b | sum = %b, carry = %b", a, b, cin, sum, carry);
        end
        $finish;
    end
endmodule