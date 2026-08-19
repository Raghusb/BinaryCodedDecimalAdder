module bcd_adder (
  input [3:0] a;
  input [3:0] b;
  input cin;
  output reg [3:0] sum
  output reg cout 
);

  reg [4:0] temp;

  always@(*)
    begin
 temp = a + b + cin;
      if(temp > 'd9) begin
        temp = temp + 4'0110;
        cout =1'b1;
        sum = temp[3:0];
      end else begin
        sum=temp[3:0];
        cout=1"b0;
      end

    end 
endmodule
