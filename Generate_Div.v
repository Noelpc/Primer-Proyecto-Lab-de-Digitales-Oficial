`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:58:52 03/01/2016 
// Design Name: 
// Module Name:    Generate_Div 
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
module Generate_Div(
    input [2:0] Frec,
    output reg [6:0] Div
    );

//Este modulo toma los codigos de las frecuencias (3bits) y los decodifica para que en la salida se tenga 
//el valor binario de la constante Div necesaria para el divisor de frecuencia.
//always @(posedge CLK)



always @*
begin
	case (Frec)
		3'b000: Div = 7'b1001111;
		3'b001: Div = 7'b0101111;
		3'b010: Div = 7'b0011111;
		3'b011: Div = 7'b0010111;
		3'b100: Div = 7'b0010011;
		3'b101: Div = 7'b0001111;
		3'b110: Div = 7'b0001101;
		3'b111: Div = 7'b0001011;
		default Div = 7'b1001111;
	endcase
end

endmodule
