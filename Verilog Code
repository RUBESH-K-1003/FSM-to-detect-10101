module FSM(
input clk,rst,data,
output reg detector
    );
reg [2:0] currentstate,nextstate;
    
parameter id = 3'b000;
parameter s1 = 3'b001;
parameter s2 = 3'b010;
parameter s3 = 3'b011;
parameter s4 = 3'b100;
parameter s5 = 3'b101;
    
always @(posedge clk or posedge rst) begin
if (rst)
currentstate = id;
else 
currentstate = nextstate;
end

always @(posedge clk) begin
case(currentstate)
id : nextstate = (data == 1) ? s1:id;
s1 : nextstate = (data == 0) ? s2:s1;
s2 : nextstate = (data == 1) ? s3:id;
s3 : nextstate = (data == 0) ? s4:s1;
s4 : nextstate = (data == 1) ? s5:id;
s5 : nextstate = (data == 0) ? s4:s1;
default : nextstate=id;
endcase
end

always @(posedge clk or posedge rst) begin
if(rst)
detector = 0;
else if (nextstate == s5)
detector = 1;
else 
detector = 0;
end
