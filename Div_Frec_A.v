`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:48:28 03/11/2016 
// Design Name: 
// Module Name:    Div_Frec_A 
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
module Div_Frec_A(
    input CLK,
    input Reset,
    output reg DivCLK
    );

//Modulo de divisor de Frecuencias.

reg [8:0] q;
wire [8:0] Div;
assign Div = 9'b111110011;

always @(posedge CLK, posedge Reset)
	if(Reset)
		begin
		q <= 9'd0;
		DivCLK <= 0;
		end
	else if (q==Div)
		begin
		q<=9'd0;
		DivCLK <= ~DivCLK;
		end
	else 
		q <= q + 9'd1;

endmodule
