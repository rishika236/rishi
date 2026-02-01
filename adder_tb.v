module adder_tb;
reg a,b;
wire y;
adder uut(.a(a),.b(b),.y(y));
initial begin
$dumpfile("adder.vcd");
$dumpvars(0,adder_tb);
$monitor("time = %0t | a = %b | b = %b | y = %b",$time,a,b,y);
  #10 a=1;b=0;
  #10 a=0;b=1;
  #10 a=1;b=1;
  #10 a=0;b=0;
  #10 $finish;

  
end
endmodule
