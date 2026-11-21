module hello;
  initial begin
    #10;
    $display("WAFFLE");
    $display("8'hFF = %0d(10),%b(2)",8'hFF,8'hFF);
    $finish;
  end
endmodule