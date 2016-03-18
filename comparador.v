`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:00:39 02/28/2016 
// Design Name: 
// Module Name:    comparador 
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
module comparador(C, A, B); // describe un comparador de dos bits
	input [4:0] A;
	input [4:0]	B;
	output reg C;
	
	always @*	
	begin 
		if (A < B) C <= 1'b0;
		else C <= 1'b1;
	end 
endmodule