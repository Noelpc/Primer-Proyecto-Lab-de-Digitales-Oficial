module ctrl_botones 
( 
input wire clkr,  
input wire levelr, 
output wire tickr);           
reg FF1;       
reg FF2;       
reg FF3; 
reg FF4; 
     

always @(posedge clkr) 
begin
          
      FF1<=levelr;      //el siguiente valor de FF1 sera elevelr
      FF2<=FF1;   //el siguiente valor de FF2 sera FF1
      FF3<=FF2;   //el siguiente valor de FF3 sera FF2
		FF4<=FF3;
end

assign tickr = FF1 & FF2 & FF3 & FF4 & !levelr;   //outp sera 1 si FF1, FF2, FF3 y FF4 son 1 .

endmodule
