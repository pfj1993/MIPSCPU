`ifndef PIPELINE_REG_IF_VH
`define PIPELINE_REG_IF_VH

`include "cpu_types_pkg.vh"

interface pipline_reg_if;
   import cpu_types_pkg::*;
   //************************************//
   //  Instruction Fetch Unit Register  //
   //***********************************//
   
   typedef struct packed{
      word_t instr;
      word_t pc;
      }ifid_p;

   //************************************//
   //         Decode Register           //
   //***********************************//
   
   typedef struct packed{
      word_t imm;
      word_t jadd;
      word_t rdata_1;
      word_t rdata_2;
      word_t pc;
      logic [1:0] bra// 2'b00 for no branch, 2'b01 for BNE, 2'b10 for BEQ 	  
      logic 	  LUI_src;
      logic 	  Ext_src;
      logic [2:0] protb_src;
      logic [1:0] PC_src;
      logic 	  RegWEN
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
      word_t imm;
      word_t jadd;
      logic 	  RegWEN;
      logic 	  zero;
      logic 	  overflow;
      logic [1:0] bar;
      logic [1:0] MemtoReg;
      word_t	  alu_out;
      word_t 	  dload;
      regbits_t   RegDst_out;
      logic 	  halt;
      word_t	pc;  
   }exmem_p;

   //************************************//
   //          Memory Register          //
   //***********************************//

   typedef struct packed{
      logic [1:0] MemtoReg;
      logic 	  RegWEN;
      logic 	  halt
      word_t dload;
      word_t alu_out;
   }mem_p;
   
   
   
