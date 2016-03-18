`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:00:40 03/01/2016 
// Design Name: 
// Module Name:    Divisor_CLK 
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
module Divisor_CLK(
    input  CLK,
    input  Reset,
    input [6:0] Div,
    output reg DivCLK
    );

//Modulo de divisor de Frecuencias.

reg [9:0] count;

always @(posedge CLK, posedge Reset)
	if(Reset)
		begin
		count = 10'b0;
		DivCLK <= 0;
		end
	else if (count == Div)
		begin
		count=10'b0;
		DivCLK <= ~DivCLK;
		end
	else
		begin
		count = count + 1'b1;
		end

endmodule
