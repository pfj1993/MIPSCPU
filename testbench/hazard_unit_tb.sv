`include "hazard_unit_if.vh"
`include "cpu_types_pkg.vh"
import cpu_types_pkg::*;

`timescale 1 ns / 1 ns

module hazard_unit_tb;
   regbits_t idex_rs;
   regbits_t idex_rt;   
   logic MemRead;   
   regbits_t ifid_rs;   
   regbits_t ifid_rt;
   logic exmem_RegWEN;   
   regbits_t exmem_RegDst;   
   logic mem_RegWEN;   
   regbits_t mem_RegDst;
   logic idex_MemWrite;
   regbits_t stall_rt;
   
   hazard_unit_if hzif ();
   hazard_unit HU (.idex_rs(idex_rs),
		   .idex_rt(idex_rt),
		   .MemRead(MemRead),
		   .ifid_rs(ifid_rs),
		   .ifid_rt(ifid_rt),
		   .exmem_RegWEN(exmem_RegWEN),
		   .exmem_RegDst(exmem_RegDst),
		   .mem_RegWEN(mem_RegWEN),
		   .mem_RegDst(mem_RegDst),
		   .idex_MemWrite(idex_MemWrite),
		   .stall_rt(stall_rt),
		   .huif(huif));
   parameter PERIOD = 10;
   logic CLK = 0, nRST;
  
   // clock
   always #(PERIOD/2) CLK++;   
   initial begin
      idex_rs;
      idex_rt;   
      MemRead;   
      ifid_rs;   
      ifid_rt;
      exmem_RegWEN;   
      exmem_RegDst;   
      mem_RegWEN;   
      mem_RegDst;
      idex_MemWrite;
      stall_rt;
      #(PERIOD)	      
   end
endmodule
>>>>>>> a601dbc4bfedc912199af3faad4603b651648db4
