module bits_demo;
    reg [7:0] a;
    initial begin
        a = 8'b1010_0101;

        $display("a        = %b", a);
        $display("hex      = %h", a);
        $display("dec      = %0d", a);
        $display("a[7]     = %b", a[7]);
        $display("a[0]     = %b", a[0]);
        $display("a[3:0]   = %b", a[3:0]);
        $display("a[7:4]   = %b", a[7:4]);
        $finish;
    end
endmodule

