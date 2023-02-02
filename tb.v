`timescale 1ns / 1ps


module TestbenchTrafficLight();
reg clk50M,Reset;
wire LR1,LR2,LG1,LG2,LY1,LY2;
wire [6:0] HEX0,HEX1,HEX2,HEX3;
Traffic_Light UUT(.clk50M(clk50M),.Reset(Reset),.LR1(LR1),.LR2(LR2),.LY1(LY1),.LY2(LY2),.LG1(LG1),.LG2(LG2),.HEX0(HEX0),.HEX1(HEX1),.HEX2(HEX2),.HEX3(HEX3));
initial 
    begin
    clk50M =0;
    Reset = 0;
    #10;  Reset = 1;   
    #10;  Reset = 0;

    end
always #1 clk50M = ~clk50M;
endmodule

