`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:59:27 03/10/2016 
// Design Name: 
// Module Name:    MUX_DISP_2_1 
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
module MUX_DISP_2_1(
    input [3:0] En_Frec,
    input [3:0] En_Co,
    input Sel,
    output reg [3:0] Out
    );

always @*
begin
	
	case(Sel)
		1'b0: Out <= En_Frec;
		1'b1: Out <= En_Co;
	endcase
	
end

endmodule
