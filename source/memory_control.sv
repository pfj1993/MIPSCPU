/*
  Eric Villasenor
  evillase@gmail.com

  this block is the coherence protocol
  and artibtration for ram
*/

// interface include
`include "cache_control_if.vh"

// memory types
`include "cpu_types_pkg.vh"

module memory_control (
  input CLK, nRST,
  cache_control_if.cc ccif
  );
  // type import
  import cpu_types_pkg::*;
   
  // number of cpus for cc
  parameter CPUS = 2;

   assign ccif.dload[0] = ccif.ramload;
   assign ccif.iload[0] = ccif.ramload;
   assign ccif.ramstore = ccif.dstore;
   assign ccif.ramaddr =  (ccif.dWEN[0] | ccif.dREN[0])? ccif.daddr : ccif.iREN? ccif.iaddr : 'z;
   assign ccif.ramREN = ((ccif.dREN[0] | ccif.iREN[0]) & !ccif.dWEN[0])? 1'b1 : 1'b0;
   assign ccif.ramWEN = ccif.dWEN[0]? 1'b1 : 1'b0;
   

   always_comb begin
      ccif.dwait[0] = 1'b1;
      ccif.iwait[0] = 1'b1;
      casez(ccif.ramstate)
	ACCESS: begin
	   ccif.dwait[0] = !(ccif.dREN[0] | ccif.dWEN[0] | !ccif.iREN[0]);
	   ccif.iwait[0] = ccif.dREN[0] | ccif.dWEN[0];
	end
	BUSY: begin
	   ccif.dwait[0] = (ccif.dREN[0] | ccif.dWEN[0]);
	   ccif.iwait[0] = ccif.iREN[0];
	end
	FREE: begin
	   ccif.dwait[0] = 1'b0;
	   ccif.iwait[0] = 1'b0;
	end
	ERROR: begin
	end
      endcase	
   end
   	
endmodule
