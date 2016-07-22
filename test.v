// Author
// Date
// description : 4 bit counter
module test
	(
		input 		clk,
		input 		rst_n,

		output reg [3:0] 	cnt
		);

always@(posedge clk)
begin
	if (!rst_n)
		cnt <= 0;
	else
	begin
		cnt <= (cnt == 4'd15) ? 4'd0 : cnt + 4'd1;
	end
end

endmodule
