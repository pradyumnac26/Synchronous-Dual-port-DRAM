
module synmem_tb();
reg [7:0]data_a,data_b;
reg [7:0]addr_a,addr_b;
reg we_a,we_b,clk;
wire [7:0]q_a,q_b;
syncmem dut(data_a,data_b,addr_a,addr_b,we_a,we_b,clk,q_a,q_b);
initial clk=0;
always #5 clk=~clk;
initial
begin
data_a=8'h44;
addr_a=8'h01;
data_b=8'h66;
addr_b=8'h02;
we_a=1;
we_b=1;
#100
addr_a=8'h02;
addr_b=8'h01;
we_a=0;
we_b=0;
#100 ;
$stop;
end
endmodule
