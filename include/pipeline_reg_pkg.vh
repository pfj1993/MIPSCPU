`ifndef PIPELINE_REG_PKG_VH
`define PIPELINE_REG_PKG_VH

`include "cpu_types_pkg.vh"

package pipeline_reg_pkg;
   import cpu_types_pkg::*;
   //************************************//
   //  Instruction Fetch Unit Register  //
   //***********************************//
   
   typedef struct packed{
      word_t instr;
      word_t pc_plus4;
      }ifid_p;

   //************************************//
   //         Decode Register           //
   //***********************************//
   
   typedef struct packed{
      regbits_t	  rt;
      regbits_t	  rd;
      logic [15:0] imm;
      logic [25:0] jaddr;
      logic [4:0] shamt;
      word_t rdat_1;
      word_t rdat_2;
      word_t pc_plus4;
      logic	  bra;// 1 for BNE, 0 for BEQ 	  
      logic 	  LUI_src;
      logic 	  Ext_src;
      logic [2:0] portb_src;
      logic [1:0] PC_src;
      logic 	  RegWEN;
      logic [1:0] RegDst;
      aluop_t 	     ALU_op;//
      logic 	  MemWrite;//
      logic 	  MemRead;//   
      logic [1:0] MemtoReg;//2'b00 from alu, 2'b01 from memory, 2'b10 from pc + 4
      logic 	  check_over;//
      logic 	  mem_halt;//  	     
   }idex_p;
   
   //************************************//
   //         Execution Register         //
   //***********************************//
   
   typedef struct packed{
      logic 	  halt; 	  
      logic	  MemWrite;
      logic	  MemRead;
      logic [15:0] imm;
      logic 	  RegWEN;
      logic 	  zero;
      logic 	  overflow;
      logic [1:0] bra;
      logic [1:0] MemtoReg;
      word_t	  alu_out;
      word_t 	  dload;
      regbits_t   RegDst_out;
      word_t	  pc_plus4;
      word_t	  rdat_2;
      logic	  LUI_src; 
   }exmem_p;

   //************************************//
   //          Memory Register          //
   //***********************************//

   typedef struct packed{
      logic [15:0]imm;
      word_t	  pc_plus4;
      logic [1:0] MemtoReg;
      regbits_t   RegDst_out;
      logic 	  RegWEN;
      logic 	  halt;
      word_t dload;
      word_t alu_out; 
      logic LUI_src;
   }mem_p;
endpackage   
`endif   
   
