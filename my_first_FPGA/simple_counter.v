//This is an example of a simple 32 bit up-counter called simple_counter
//It has a single clock input and 32-bit output port

module simple_counter (
	input clock,
	output reg [31:0] counter_out
	);
	
always @ (posedge clock) // on positive clock edge
	begin
		counter_out <= counter_out + 1;
	end
	
endmodule  //end of module