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
   parameter CPUID = 0;

   assign ccif.dload[CPUID] = ccif.ramload;
   assign ccif.iload[CPUID] = ccif.ramload;
   assign ccif.ramstore = ccif.dstore;
   assign ccif.ramaddr =  (ccif.dWEN[CPUID] | ccif.dREN[CPUID])? ccif.daddr : ccif.iREN? ccif.iaddr : 'z;
   assign ccif.ramREN = ((ccif.dREN[CPUID] | ccif.iREN[CPUID]) & !ccif.dWEN[CPUID])? 1'b1 : 1'b0;
   assign ccif.ramWEN = ccif.dWEN[CPUID]? 1'b1 : 1'b0;
   

   always_comb begin
      ccif.dwait[CPUID] = 1'b1;
      ccif.iwait[CPUID] = 1'b1;
      casez(ccif.ramstate)
	ACCESS: begin
	   ccif.dwait[CPUID] = !(ccif.dREN[CPUID] | ccif.dWEN[CPUID]);
	   ccif.iwait[CPUID] = ccif.dREN[CPUID] | ccif.dWEN[CPUID];
	end
	BUSY: begin
	end
	FREE: begin
	   ccif.dwait[CPUID] = 1'b0;
	   ccif.iwait[CPUID] = 1'b0;
	end
	ERROR: begin
	end
      endcase	
   end
   	
endmodule
