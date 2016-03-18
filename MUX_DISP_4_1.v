`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:04:25 03/10/2016 
// Design Name: 
// Module Name:    MUX_DISP_4_1 
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
module MUX_DISP_4_1(
    input [3:0] In_U,
    input [3:0] In_D,
    input [3:0] In_C,
    input [3:0] In_M,
    input [1:0] Sel,
    output reg [3:0] Out
    );

always @*
begin
	
	case(Sel)
		2'b00: Out <= In_U;
		2'b01: Out <= In_D;
		2'b10: Out <= In_C;
		2'b11: Out <= In_M;
	endcase
	
end

endmodule
