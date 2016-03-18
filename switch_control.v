`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:14:20 03/07/2016 
// Design Name: 
// Module Name:    switch_control 
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
module switch_control(int_A, int_B, A_1, A_2 ,B_1, B_2, sel);
	input int_A, int_B, sel;
	output A_1, B_1, A_2 ,B_2;
	wire int_A, int_B, sel;
	reg A_1, B_1, A_2 ,B_2;
	always @*
		begin
			if (sel)
				begin
				B_1 <= int_A;//sera activada corriente
				B_2 <= int_B;//
				A_1 <= 0;//
				A_2 <= 0;
				end
			else
				begin
				A_1 <= int_A;//
				A_2 <= int_B; //Sera activada frecuencia
				B_1 <= 0;
				B_2 <= 0;
				end
		end
		
endmodule
			
				
		


