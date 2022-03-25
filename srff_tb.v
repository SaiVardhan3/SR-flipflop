`include "srff.v"
module srff_tb();

reg clk=0;
reg s=0;
reg r=0;
wire q,qbar;

srff DUT(s,r,clk,q,qbar);

initial begin
  $monitor($time,"s=%b r=%b q=%b qbar=%b",s,r,q,qbar);
#5 s=0;r=1;
#5 s=1;r=0;
#5 s=1;r=1;
#5 s=0;r=0;
#5;
end

always #1 clk=~clk;
endmodule
