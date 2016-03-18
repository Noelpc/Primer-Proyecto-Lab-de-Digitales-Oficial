`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:19:49 03/09/2016 
// Design Name: 
// Module Name:    ctrl_botones_down 
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
module ctrl_botones_down 
( 
input wire clkd, 
input wire leveld, 
output wire tickd                  
       
   );

reg FF1;       
reg FF2;       
reg FF3; 
reg FF4; 
     
always @(posedge clkd) begin
      FF1<=leveld;      //el siguiente valor de FF1 sera inp
      FF2<=FF1;   //el siguiente valor de FF2 sera FF1
      FF3<=FF2;   //el siguiente valor de FF3 sera FF2
		FF4<=FF3;
end

assign tickd = FF1 & FF2 & FF3 & FF4 & !leveld;   //outp sera 1 si FF1, FF2, FF3 y FF4 son 1 .

endmodule
