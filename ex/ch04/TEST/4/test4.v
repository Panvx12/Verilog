module test4;
    reg [7:0] mem [0:7];
    integer i;

    initial begin
        for(i = 0;i < 8;i = i + 1) begin
            mem[i] = i * 2; 
        end

        for(i = 0;i < 8;i = i + 1) begin
            $display("mem[%0d] = %b", i, mem[i]);
        end
        $finish;
    end
endmodule