`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:42:17 03/11/2016 
// Design Name: 
// Module Name:    BLOQUE_GENERAL 
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
module BLOQUE_GENERAL(
    input wire In_Ar,		//Ocupa Antirebote
    input wire In_Ab,		//Ocupa Antirebote
    input wire In_Sel,
    input wire In_Res,		//Ocupa Antirebote
    input wire In_En,		//Ocupa Antirebote
    input CLK,
    output  PWM_Out,
    output [3:0] An_Out,
    output [7:0] Cat_Out
    );


////////////////////////////Seccion de Antirebote/////////////////////////////////

//Boton de cuenta hacia arriba.
ctrl_botones Antirebote_Arriba (
    .clkr(CLK), 
    .levelr(In_Ar), 
    .tickr(Arriba)
    );

//Boton de cuenta hacia abajo.
ctrl_botones_down Antirebote_Abajo (
    .clkd(CLK), 
    .leveld(In_Ab), 
    .tickd(Abajo)
    );

//Boton de Reset.
ctrl_botones Antirebote_Reset (
    .clkr(CLK), 
    .levelr(In_Res), 
    .tickr(Reset)
    );

//De aqui en adelante todos los resets se llaman "Reset".

/////////////////////////////////Seleccion Frecuencia/Corriente//////////////////////////////////

switch_control Selec_Frec_Co (
    .int_A(Arriba), 
    .int_B(Abajo), 
    .A_1(Ar_Frec), 
    .A_2(Ab_Frec), 
    .B_1(Ar_Co), 
    .B_2(Ab_Co), 
    .sel(In_Sel)
    );

///////////////////////////////Seccion de Contadores de Seleccion de Parametros///////////////////////////////
//Mediante estos contadores se seleccionan los valores de Frecuencia y Corriente para el regulador. 

//Contador para la seleccion de la frecuencia.
wire [2:0] Frec_Esc;

contador_3_bits Seleccion_Frecuencia (
    .clk3(CLK), 
    .reset3(Reset), 
    .en3(In_En), 
    .up3(Ar_Frec), 
    .down3(Ab_Frec), 
    .q3(Frec_Esc)
    );


//Contador para la seleccion de la corriente.
wire [4:0] Co_Esc;

Contador_Corriente Seleccion_Corriente (
    .qc(Co_Esc), 
    .upc(Ar_Co), 
    .downc(Ab_Co), 
    .clkc(CLK), 
    .enc(In_En), 
    .resetc(Reset)
    );

////////////////////////////////Seccion de division de Frecuencia////////////////////////////////////
Division_Frecuencia Div_Frec (
    .Frecuencia_Escogida(Frec_Esc), 
    .CLK(CLK), 
    .Reset(Reset), 
    .DivCLK(CLKDiv)
    );

/////////////////////////////Seccion de Contadores y Comparacion//////////////////////////////////

//Contador que qenera el PWM junto con el comparador y la referencia.
wire [4:0] Out_Contador;
count_5_bits Contador_A (
    .q5(Out_Contador), 
    .clk5(CLKDiv), 
    .en5(In_En), 
    .reset5(Reset)
    );

//Comparador.
comparador Comparador_PWM (
    .C(PWM_Out), 
    .A(Co_Esc), 
    .B(Out_Contador)
    );


/////////////////////////////Seccion del Control de 7-Segmentos/////////////////////////////

CTRL_DISP Control_Disp (
    .IN_Frec(Frec_Esc), 
    .IN_Co(Co_Esc), 
    .CLK(CLK), 
    .IN_Sel(In_Sel), 
    .IN_Reset(Reset), 
    .OUT_An(An_Out), 
    .OUT_Cat(Cat_Out)
    );

endmodule
