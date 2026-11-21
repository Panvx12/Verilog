module test1;
    reg [15:0] w = 16'hBEEF;
    initial begin
        $display("w[15:8] = %h, w[7:0] = %h", w[15:8], w[7:0]);
        $finish;
    end
endmodule