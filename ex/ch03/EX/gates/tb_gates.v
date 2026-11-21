`timescale 1ns/1ps

module tb_gates;
    reg  a, b;
    wire y_and, y_or, y_xor, y_nand, y_not_a;
    integer i;

    gates dut (.a(a), .b(b),
        .y_and(y_and), .y_or(y_or), .y_xor(y_xor),
        .y_nand(y_nand), .y_not_a(y_not_a)
    );

    initial begin
        for (i = 0; i < 4; i = i + 1) begin
        {a, b} = i[1:0];
        #10;
        $display("a=%b b=%b | and=%b or=%b xor=%b nand=%b not_a=%b",
                a, b, y_and, y_or, y_xor, y_nand, y_not_a);
        end
        $finish;
    end
endmodule