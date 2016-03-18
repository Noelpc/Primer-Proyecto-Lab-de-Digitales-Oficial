`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:36:13 03/12/2016 
// Design Name: 
// Module Name:    Division_Frecuencia 
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
module Division_Frecuencia(
    input [2:0] Frecuencia_Escogida,
    input CLK,
    input Reset,
    output DivCLK
    );

//Genera el codigo en binario para la division de frecuencia (Div) para el divisor.
wire [6:0] Div;

Generate_Div Gen_Div (
    .Frec(Frecuencia_Escogida), 
    .Div(Div)
    );

Divisor_CLK Div_CLK (
    .CLK(CLK), 
    .Reset(Reset), 
    .Div(Div), 
    .DivCLK(DivCLK)
    );


endmodule
