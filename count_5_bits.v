`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:59:06 03/07/2016 
// Design Name: 
// Module Name:    count_5_bits 
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
///////////////////////////////////////////////////////////////////////////////
//////////CONTADOR QUE ESTABLECE LA REFERENCIA////////////////////////////////
module count_5_bits(
		input wire clk5,
		input wire reset5,
		input wire en5,
		output wire [4:0] q5
		
    );

//Signal Declarations
reg [4:0]q_act5, q_next5;


//Body of "state" registers
always@(posedge clk5,posedge reset5)
	if(reset5)
		q_act5 <= 5'b0;
	else
		q_act5 <= q_next5;
		

//Specified functions of the counter 		
always@*
begin
	if(en5)
	begin
		if(q5 < 5'd20) 
			begin
				q_next5 = q_act5 + 5'b1;
				
			end
		else 
			q_next5 = 5'b0;
	end
			
	else 
		q_next5 = q_act5;

end


//Output Logic
assign q5 = q_act5;
 
endmodule
