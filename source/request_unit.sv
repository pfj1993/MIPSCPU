`include "cpu_types_pkg.vh"
import cpu_types_pkg::*;

module request_unit (
  		       input logic CLK,
		       input logic nRST,
  		       input logic ihit,
		       input logic dhit,
		       input logic [1:0]MemToReg,
		       input logic MemWrite,
		       output logic dmemREN,
		       output logic dmemWEN,
		       output logic imemREN
		       );
   
   logic 			    dRENreg, dWENreg, dRENnext, dWENnext;
   
   always_ff @(posedge CLK, negedge nRST) begin
      if (nRST == 0) begin
	 dRENreg <= 0;
	 dWENreg <= 0;	
      end
      else begin
	 dRENreg <= dRENnext;
	 dWENreg <= dWENnext;
      end
   end
   
   always_comb
     begin
	if (dhit) begin
	   dRENnext = 0;
	   dWENnext = 0;
	end
	else if (ihit) begin
	   dRENnext = (MemToReg == 2'b01)? 1 : 0;
	   dWENnext = MemWrite;
	end
	else begin
	   dRENnext = dRENreg;
	   dWENnext = dWENreg;	
	end
     end
   assign dmemREN = dRENreg;
   assign dmemWEN = dWENreg;
   assign imemREN = 1;
endmodule
