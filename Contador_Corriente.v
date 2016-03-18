`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:53:52 03/12/2016 
// Design Name: 
// Module Name:    Contador_Corriente 
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
module Contador_Corriente(
		input wire clkc,
		input wire resetc,
		input wire enc,
		input wire upc,
		input wire downc,
		output wire [4:0] qc
		
    );

//Signal Declarations
reg [4:0]q_actc, q_nextc;


//Body of "state" registers
always@(posedge clkc,posedge resetc)
	if(resetc)
		q_actc <= 5'b0;
	else
		q_actc <= q_nextc;

//Specified functions of the counter 		
always@*
begin
	if(enc)
	begin
		if(upc) 
			begin
				if(qc < 5'd20) 
				begin
					q_nextc = q_actc + 5'b1;
				
				end
				else 
					q_nextc = 5'b0;
			end
		else if(downc)
			begin
				if (qc >= 5'b0) begin				
						q_nextc = q_actc - 5'sb1;
				end
				else 
					q_nextc=0;		
						
				
			end
		else 
			q_nextc = q_actc;
	end
	else 
		q_nextc = q_actc;

end


//Output Logic
assign qc = q_actc;
 
endmodule
