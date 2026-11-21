module test2;
    initial begin
        $display("%h", {8'hBE, 8'hEF});
        $finish;
    end
endmodule