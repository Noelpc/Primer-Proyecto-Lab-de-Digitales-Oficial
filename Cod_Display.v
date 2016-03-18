`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:06:58 03/11/2016 
// Design Name: 
// Module Name:    Cod_Display 
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
module Cod_Display(
    input wire [2:0] Frecuencia,
    input wire [4:0] Corriente,
    input wire Sel,
    output wire [3:0] Uni,
    output wire [3:0] Dec,
    output wire [3:0] Cen,
    output wire [3:0] Mil
    );


//////////////////////////////Seccion Codificadores///////////////////////////////
wire [3:0] Un_F;
wire [3:0] De_F;
wire [3:0] Ce_F;
wire [3:0] Mi_F;

Codifica_Frecuencia Cod_Frec (
    .Frec(Frecuencia), 
    .Un(Un_F), 
    .De(De_F), 
    .Ce(Ce_F), 
    .Mi(Mi_F)
    );

wire [3:0] Un_C;
wire [3:0] De_C;
wire [3:0] Ce_C;
wire [3:0] Mi_C;

Codifica_Corriente Cod_Co (
    .Corriente(Corriente), 
    .Un(Un_C), 
    .De(De_C), 
    .Ce(Ce_C), 
    .Mi(Mi_C)
    );

///////////////////////////Seccion Multiplexores//////////////////////////

MUX_DISP_2_1 MUX_Un (
    .En_Frec(Un_F), 
    .En_Co(Un_C), 
    .Sel(Sel), 
    .Out(Uni)
    );

MUX_DISP_2_1 MUX_De (
    .En_Frec(De_F), 
    .En_Co(De_C), 
    .Sel(Sel), 
    .Out(Dec)
    );

MUX_DISP_2_1 MUX_Ce (
    .En_Frec(Ce_F), 
    .En_Co(Ce_C), 
    .Sel(Sel), 
    .Out(Cen)
    );

MUX_DISP_2_1 MUX_Mi (
    .En_Frec(Mi_F), 
    .En_Co(Mi_C), 
    .Sel(Sel), 
    .Out(Mil)
    );
	 
endmodule
