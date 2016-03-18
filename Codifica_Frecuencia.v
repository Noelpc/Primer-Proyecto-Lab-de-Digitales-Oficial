`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:29:54 03/10/2016 
// Design Name: 
// Module Name:    Codifica_Frecuencia 
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
module Codifica_Frecuencia(
    input [2:0] Frec,
    output reg [3:0] Un,
    output reg [3:0] De,
    output reg [3:0] Ce,
    output reg [3:0] Mi
    );

always @*
begin
	case (Frec)
	
	//Con Frec = 000 el numero a mostrar es 30.
	3'b000:begin
		Un <= 4'b0000;
		De <= 4'b0011;
		Ce <= 4'b1010;	//Apagado
		Mi <= 4'b1010;	//Apagado
	end
	
	3'b001:begin
		Un <= 4'b0000;
		De <= 4'b0101;
		Ce <= 4'b1010;
		Mi <= 4'b1010;
	end
	
	3'b010:begin
		Un <= 4'b0101;
		De <= 4'b0111;
		Ce <= 4'b1010;
		Mi <= 4'b1010;
	end
	
	3'b011:begin
		Un <= 4'b0000;
		De <= 4'b0000;
		Ce <= 4'b0001;
		Mi <= 4'b1010;
	end
	
	3'b100:begin
		Un <= 4'b0101;
		De <= 4'b0010;
		Ce <= 4'b0001;
		Mi <= 4'b1010;
	end
	
	3'b101:begin
		Un <= 4'b0000;
		De <= 4'b0101;
		Ce <= 4'b0001;
		Mi <= 4'b1010;
	end
	
	3'b110:begin
		Un <= 4'b0101;
		De <= 4'b0111;
		Ce <= 4'b0001;
		Mi <= 4'b1010;
	end
	
	3'b111:begin
		Un <= 4'b0000;
		De <= 4'b0000;
		Ce <= 4'b0010;
		Mi <= 4'b1010;
	end
	
	endcase

end

endmodule
