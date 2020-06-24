module d_ff_async_rst_high(D,clk,async_reset,Q);
  input D,clk,async_reset;
  output reg Q;

  always @(posedge clk or posedge async_reset)
  begin
   if(async_reset==1'b1)
    Q <= 1'b0;
   else
    Q <= D;
  end

endmodule

module d_ff_async_rst_low(D,clk,async_reset,Q);
  input D; // Data input
  input clk; // clock input
  input async_reset; // asynchronous reset low level
  output reg Q; // output Q
  
  always @(posedge clk or negedge async_reset)
  begin
   if(async_reset==1'b0)
    Q <= 1'b0;
   else
    Q <= D;
  end
endmodule
