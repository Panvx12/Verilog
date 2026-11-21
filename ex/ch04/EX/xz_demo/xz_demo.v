module xz_demo;
    reg  [3:0] r;
    wire [3:0] w;

    initial begin
        $display("before assign: r=%b", r);
        $display("undriven wire: w=%b", w);
        r = 4'b1010;
        $display("after  assign: r=%b", r);
        $finish;
    end
endmodule