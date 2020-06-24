// iverilog hello.v -o hello
// ./hello 
// vvp hello
module main;

initial
  begin
    $display("Hello world");
    $finish;
  end

endmodule
