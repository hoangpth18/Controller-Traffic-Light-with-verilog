module Downcounter(
    input clk1,
    input rst,
    output  reg timeout30,
    output  reg timeout25,
    output reg [4:0] Count
    );
localparam count_timeout25 = 25 ;
localparam count_timeout30 = 30 ;

always@(posedge clk1, posedge rst)
begin
    if(rst)
        begin
        Count <= 5'b0;
        end
    else if (Count == count_timeout30 - 1)
        begin
        Count <= 5'b0;
        end
    else
        begin
        Count <= Count + 1;
        end
end

always@(*)
begin
     if (Count == count_timeout25 - 1)
        begin
        timeout25 = 1;
        end
    else
        begin
         timeout25 = 0;
        end
end
always@(*)
begin
     if (Count == count_timeout30 - 1)
        begin
        timeout30 = 1;
        end
    else
        begin
         timeout30 = 0;
        end
end
endmodule

