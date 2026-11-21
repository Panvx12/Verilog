module concat_demo;
    reg [7:0] a;
    initial begin
        a = 8'b1010_0101;
        $display("swap    = %b", {a[3:0], a[7:4]});
        $display("shift   = %b", {a[6:0], 1'b0});
        $display("repeat  = %b", {4{1'b1}});
        $display("repeat2 = %b", {3{2'b10}});
        $finish;
    end
endmodule