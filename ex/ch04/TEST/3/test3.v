module test3;
    reg [7:0] a = 8'b1001_0011;
    wire [7:0] rev_a;

    assign rev_a = {a[0], a[1], a[2], a[3], a[4], a[5], a[6], a[7]};

    initial begin
        #10;
        $display("%b", rev_a);
        $finish;
    end
endmodule