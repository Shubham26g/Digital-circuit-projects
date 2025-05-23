`timescale 1ns / 1ps


module tetsbench_lg();
wire y1,y2;
reg a, b ;
logic_gates uut(a,b,y1,y2);

initial
begin
       a=0; b=0;
   #10 a=0; b=1;
   #10 a=1; b=0;
   #10 a=1; b=1;
   #10 $finish;
end
   

endmodule
