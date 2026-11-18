module hello;
  initial begin
    $display("Hello, Verilog!");
    $display("3 + 4 = %0d", 3 + 4);
    $finish;
  end
endmodule