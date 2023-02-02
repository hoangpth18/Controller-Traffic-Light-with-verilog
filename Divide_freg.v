`timescale 1ns / 1ps


module Divide_freg(
    input clk50M,
    input Reset,
    output reg clk1,
    output reg rst
    );
localparam divide_count = 25000000;
reg [31:0]count;

always@(posedge clk50M , posedge Reset)
begin
	if(Reset)
		begin
		clk1 <= 1'b0;
		count <= 32'b0;
	
		end
	else if(count == divide_count - 1)
		begin
		clk1 <= ~ clk1;
		count <= 32'b0;
	
		end
	else
	   begin
	   clk1 <= clk1;
	   count <= count + 1 ;
	 
	   end
end
always@(*)
begin
	if(Reset)
		begin
        rst = 1;
		end
	else
	    begin
        rst = 0;
	    end
end

endmodule