`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:33:36 03/11/2016 
// Design Name: 
// Module Name:    Control_Display 
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
module Control_Display(
    input wire [3:0] Uni,
    input wire [3:0] Dec,
    input wire [3:0] Cen,
    input wire [3:0] Mil,
    input wire CLK,
	 input wire Reset,
    output wire [3:0] An,
    output wire [7:0] Cat
    );

////////////////////////Seccion de Divisores de Frecuencia y Contador//////////////////////

//La salida de este divisor es una señal de reloj de 100 KHz. 
Div_Frec_A Div_A (
    .CLK(CLK), 
    .Reset(Reset), 
    .DivCLK(CLK_A)
    );

//La salida de este divisor es una señal de reloj de 60 Hz.
Dic_Frec_B Div_B (
    .CLK(CLK_A), 
    .Reset(Reset), 
    .DivCLK(CLK_B)
    );

//Contador.
wire [1:0] Sel_MUX;

Contador_Disp Contador (
    .Reset(Reset), 
    .CLK(CLK_B), 
    .Out_Sel(Sel_MUX), 
    .Out_An(An)
    );


///////////////////////////////////Seccion del Multiplexor//////////////////////////////////
wire [3:0] Out_MUX;

MUX_DISP_4_1 MUX_Ctrl (
    .In_U(Uni), 
    .In_D(Dec), 
    .In_C(Cen), 
    .In_M(Mil), 
    .Sel(Sel_MUX), 
    .Out(Out_MUX)
    );


//////////////////////////////////Seccion del Decodificador/////////////////////////////////
//El decodificador transforma los codigos de los numeros en binario a los codigos 
//de control de los catodos. 

Deco_Display Decodificador (
    .In_Num(Out_MUX), 
    .Out_Cod(Cat)
    );

endmodule
