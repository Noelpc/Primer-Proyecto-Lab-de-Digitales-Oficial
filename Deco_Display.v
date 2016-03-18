`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:13:28 03/10/2016 
// Design Name: 
// Module Name:    Deco_Display 
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
module Deco_Display(
    input [3:0] In_Num,
    output reg [7:0] Out_Cod
    );

always @*
begin
	case (In_Num)
		4'b0000: Out_Cod <= 8'b00000011;
		4'b0001: Out_Cod <= 8'b10011111;
		4'b0010: Out_Cod <= 8'b00100101;
		4'b0011: Out_Cod <= 8'b00001101;
		4'b0100: Out_Cod <= 8'b10011001;
		4'b0101: Out_Cod <= 8'b01001001;
		4'b0110: Out_Cod <= 8'b01000001;
		4'b0111: Out_Cod <= 8'b00011111;
		4'b1000: Out_Cod <= 8'b00000001;
		4'b1001: Out_Cod <= 8'b00011001;
		4'b1010: Out_Cod <= 8'b11111111;
		4'b1101: Out_Cod <= 8'b11110101;
		4'b1110: Out_Cod <= 8'b01100001;
		default: Out_Cod <= 8'b11111110;
	endcase
end

endmodule
