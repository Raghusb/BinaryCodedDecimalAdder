module bcd_adder_tb;
  reg [3:0] a_tb;
  reg [3:0] b_tb;
  reg c_tb;
  wire [3:0] sum_tb;
  wire carry_tb;

  integer i, j, k;

  bcd_adder DUT (.a(a_tb), .b(b_tb), .cin(c_tb), .sum(sum_tb), .cout(carry_tb) );

  initial begin 
    $monitor("values of inputs and outputs are Time=%0t, a_tb=%b, b_tb=%b, c_tb=%b, sum_tb=%b, carry_tb=%b", $time, a_tb, b_tb, c_tb, sum_tb, carry_tb);
  
  for(i=0;i<10;i=i+1)begin
  for(j=0;j<10;j=j+1)begin
  for(k=0;k<2;k=k+1)begin
   
   a_tb=i;
   b_tb=j;
   c_tb=k;
   
   #1;
   
   end
   end   
   end
   $finish;
   
   end
  
 
endmodule
