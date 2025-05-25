module tb( );

reg clk,rst,data;
wire detector;

FSM uut(clk,rst,data,detector);

always #5 clk= ~clk;

initial begin
clk=1; rst=1;data=1;
#10 rst=0;
#10 data=1;
#10 data=0;
#10 data=1;
#10 data=0;
#10 data=1;
#10 data=0;
#10 data=1;
#10 data=1;
#10 data=0;
#10 $finish;

end

endmodule
