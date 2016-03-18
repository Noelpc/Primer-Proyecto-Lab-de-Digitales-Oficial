`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:40:54 03/10/2016 
// Design Name: 
// Module Name:    Codifica_Corriente 
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
module Codifica_Corriente(
    input [4:0] Corriente,
    output reg [3:0] Un,
    output reg [3:0] De,
    output reg [3:0] Ce,
    output reg [3:0] Mi
    );

always @*
begin
	case (Corriente)
	
	//Con Corriente = 000 el numero a mostrar es 0.
	5'b00000:begin
		Un <= 4'b0000;
		De <= 4'b1010;	//Apagado
		Ce <= 4'b1010;	//Apagado
		Mi <= 4'b1010;	//Apagado
	end
	
	5'b00001:begin
		Un <= 4'b0000;
		De <= 4'b0101;
		Ce <= 4'b1010;
		Mi <= 4'b1010;
	end
	
	5'b00010:begin
		Un <= 4'b0000;
		De <= 4'b0000;
		Ce <= 4'b0001;
		Mi <= 4'b1010;
	end
	
	5'b00011:begin
		Un <= 4'b0000;
		De <= 4'b0101;
		Ce <= 4'b0001;
		Mi <= 4'b1010;
	end
	
	5'b00100:begin
		Un <= 4'b0000;
		De <= 4'b0000;
		Ce <= 4'b0010;
		Mi <= 4'b1010;
	end
	
	5'b00101:begin
		Un <= 4'b0000;
		De <= 4'b0101;
		Ce <= 4'b0010;
		Mi <= 4'b1010;
	end
	
	5'b00110:begin
		Un <= 4'b0000;
		De <= 4'b0000;
		Ce <= 4'b0011;
		Mi <= 4'b1010;
	end
	
	5'b00111:begin
		Un <= 4'b0000;
		De <= 4'b0101;
		Ce <= 4'b0011;
		Mi <= 4'b1010;
	end
	
	5'b01000:begin
		Un <= 4'b0000;
		De <= 4'b0000;
		Ce <= 4'b0100;
		Mi <= 4'b1010;	//Apagado
	end
	
	5'b01001:begin
		Un <= 4'b0000;
		De <= 4'b0101;
		Ce <= 4'b0100;
		Mi <= 4'b1010;	//Apagado
	end
	
	5'b01010:begin
		Un <= 4'b0000;
		De <= 4'b0000;
		Ce <= 4'b0101;
		Mi <= 4'b1010;	//Apagado
	end
	
	5'b01011:begin
		Un <= 4'b0000;
		De <= 4'b0101;
		Ce <= 4'b0101;
		Mi <= 4'b1010;	//Apagado
	end
	
	5'b01100:begin
		Un <= 4'b0000;
		De <= 4'b0000;
		Ce <= 4'b0110;
		Mi <= 4'b1010;	//Apagado
	end
	//13 => 650.
	5'b01101:begin
		Un <= 4'b0000;
		De <= 4'b0101;
		Ce <= 4'b0110;
		Mi <= 4'b1010;	//Apagado
	end
	
	5'b01110:begin
		Un <= 4'b0000;
		De <= 4'b0000;
		Ce <= 4'b0111;
		Mi <= 4'b1010;	//Apagado
	end
	
	5'b01111:begin
		Un <= 4'b0000;
		De <= 4'b0101;
		Ce <= 4'b0111;
		Mi <= 4'b1010;	//Apagado
	end
	
	5'b10000:begin
		Un <= 4'b0000;
		De <= 4'b0000;
		Ce <= 4'b1000;
		Mi <= 4'b1010;	//Apagado
	end
	
	5'b10001:begin
		Un <= 4'b0000;
		De <= 4'b0101;
		Ce <= 4'b1000;
		Mi <= 4'b1010;	//Apagado
	end
	
	5'b10010:begin
		Un <= 4'b0000;
		De <= 4'b0000;
		Ce <= 4'b1001;
		Mi <= 4'b1010;	//Apagado
	end
	
	5'b10011:begin
		Un <= 4'b0000;
		De <= 4'b0101;
		Ce <= 4'b1001;
		Mi <= 4'b1010;	//Apagado
	end
	
	5'b10100:begin
		Un <= 4'b0000;
		De <= 4'b0000;
		Ce <= 4'b0000;
		Mi <= 4'b0001;
	end
	default 	
	begin
		Un <= 4'b0000;
		De <= 4'b0000;
		Ce <= 4'b0000;
		Mi <= 4'b0000;
	end
	endcase

end

endmodule
