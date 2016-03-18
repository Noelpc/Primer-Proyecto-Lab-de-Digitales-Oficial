`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:28:38 03/10/2016 
// Design Name: 
// Module Name:    Contador_Disp 
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
module Contador_Disp(
    input Reset,
    input CLK,
    output reg [1:0] Out_Sel,
    output reg [3:0] Out_An
    );

reg [1:0] Cont;

always @(posedge CLK or posedge Reset)
begin
	if(Reset)
	begin
		Out_Sel <= 2'b00;
		Out_An <= 4'b1111;
	end
	
	else
	begin
		case (Cont)
		
			2'b00:begin
				Out_Sel <= 2'b00;
				Out_An <= 4'b1110;
				end
			
			2'b01:begin
				Out_Sel <= 2'b01;
				Out_An <= 4'b1101;
				end
			
			2'b10:begin
				Out_Sel <= 2'b10;
				Out_An <= 4'b1011;
				end
			
			2'b11:begin
				Out_Sel <= 2'b11;
				Out_An <= 4'b0111;
				end
		endcase
	Cont = Cont + 1'b1;
	end
end

endmodule
