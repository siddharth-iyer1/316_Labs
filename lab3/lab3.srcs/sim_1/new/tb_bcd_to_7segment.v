module testbench;

  reg bcd_0, bcd_1, bcd_2, bcd_3; 
  wire [6:0] segments;
  bcd_to_7seg b(
    .bcd_0(bcd_0), 
    .bcd_1(bcd_1),
    .bcd_2(bcd_2),
    .bcd_3(bcd_3),
    .segments(segments)
  );

  initial begin
    {bcd_3, bcd_2, bcd_1, bcd_0} = 4'b0000; #50;
    {bcd_3, bcd_2, bcd_1, bcd_0} = 4'b0001; #50;
    {bcd_3, bcd_2, bcd_1, bcd_0} = 4'b0010; #50;
    {bcd_3, bcd_2, bcd_1, bcd_0} = 4'b0011; #50;
    {bcd_3, bcd_2, bcd_1, bcd_0} = 4'b0100; #50;
    {bcd_3, bcd_2, bcd_1, bcd_0} = 4'b0101; #50; 
    {bcd_3, bcd_2, bcd_1, bcd_0} = 4'b0110; #50;
    {bcd_3, bcd_2, bcd_1, bcd_0} = 4'b0111; #50;
    {bcd_3, bcd_2, bcd_1, bcd_0} = 4'b1000; #50;
    {bcd_3, bcd_2, bcd_1, bcd_0} = 4'b1001; #50;
  end

endmodule