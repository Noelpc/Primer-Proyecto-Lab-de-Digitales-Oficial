`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:58:02 03/11/2016 
// Design Name: 
// Module Name:    Dic_Frec_B 
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
module Dic_Frec_B(
    input CLK,
    input Reset,
    output reg DivCLK
    );

reg [5:0] q;
wire [5:0] Div;
assign Div = 6'b110001;

always @(posedge CLK, posedge Reset)
	if(Reset)
		begin
		q <= 5'd0;
		DivCLK <= 0;
		end
	else if (q==Div)
		begin
		q<=5'd0;
		DivCLK <= ~DivCLK;
		end
	else 
		q <= q + 5'd1;

endmodule
