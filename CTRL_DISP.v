`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:49:30 03/11/2016 
// Design Name: 
// Module Name:    CTRL_DISP 
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
module CTRL_DISP(
    input wire [2:0] IN_Frec,
    input wire [4:0] IN_Co,
    input wire CLK,
	 input wire IN_Sel,
    input wire IN_Reset,
    output wire [3:0] OUT_An,
    output wire [7:0] OUT_Cat
    );

wire [3:0] Uni;
wire [3:0] Dec;
wire [3:0] Cen;
wire [3:0] Mil;


Cod_Display Cod_Disp (
    .Frecuencia(IN_Frec), 
    .Corriente(IN_Co), 
    .Sel(IN_Sel), 
    .Uni(Uni), 
    .Dec(Dec), 
    .Cen(Cen), 
    .Mil(Mil)
    );

Control_Display Control_Disp (
    .Uni(Uni), 
    .Dec(Dec), 
    .Cen(Cen), 
    .Mil(Mil), 
    .CLK(CLK), 
    .Reset(IN_Reset), 
    .An(OUT_An), 
    .Cat(OUT_Cat)
    );

endmodule
