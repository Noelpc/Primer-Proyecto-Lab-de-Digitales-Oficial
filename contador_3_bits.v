`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:48:53 03/05/2016 
// Design Name: 
// Module Name:    contador_3_bits 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module contador_3_bits(
		input wire clk3,
		input wire reset3,
		input wire en3,
		input wire up3,
		input wire down3,
		output wire [2:0] q3
		
    );


//Signal Declarations
reg [2:0] q_act3, q_next3;


//Body of "state" registers
always@(posedge clk3,posedge reset3)
begin
	if(reset3) begin
		q_act3 <= 3'b0; end
	else
		q_act3 <= q_next3;
end
//Specified functions of the counter 		
always@*
begin
	if(en3)
	begin
		if(up3) 
			begin
				if(q3 < 3'd7) 
				begin
					q_next3 = q_act3 + 3'b1;
				
				end
				else 
					q_next3 = 3'b0;
			end
		else if(down3)
			begin
				if (q3 >= 3'b0) 
					begin				
						q_next3 = q_act3 - 3'sb1;
					end
				else 
					q_next3=3'b0;		
			end
		else 
			q_next3 = q_act3;
	end
	else 
		q_next3 = q_act3;


end

assign q3 = q_act3;
 
endmodule
