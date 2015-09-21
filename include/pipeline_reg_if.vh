`ifndef PIPELINE_REG_IF_VH
`define PIPELINE_REG_IF_VH

`include "cpu_types_pkg.vh"

interface pipline_reg_if;
   import cpu_types_pkg::*;

   //************I-FETCH and DECODE UNIT************//
   word_t inst_in, inst_out;
   
   //******************MUX SINNAL*****************//
   logic [1:0] PC_src_in;
   logic [1:0] PC_src_out;
   logic       Ext_src_in, Ext_src_out;// 1 for signed extend, 0 for zero extend
   logic       LUI_src_in, LUI_src_out;// 1 for lui, 0 in other case
   logic [2:0] portb_src_in;//2'b00 for port b input to alu, 2'b01 for imm, 2'b10 for shamt
   logic [2:0] protb_src_out;
   logic [1:0] RegDst_in;//2'b00 for rd, 2'b01 for rt, 2'b10 for 31
   logic [1:0] RegDst_out;
   logic [1:0] MemtoReg_in;//2'b00 from alu, 2'b01 from memory, 2'b10 from pc + 4
   logic [1:0] MemtoReg_out;
   //****************MEM_CONTROL******************//
   logic       MemWrite_in, MemWrite_out;//
   logic       MemRead_in, MemRead_out;//
   //******************REG_WRITE_CONTROL***********//
   logic       RegWEN_in, RegWEN_out;//
   //*****************HALT_SIGNAL****************//
   logic       halt_in, halt_out;//
   //*****************CACHE_SIGNAL****************//
   logic       ihit_in, ihit_out;//
   logic       dhit_in, dhit_out;//

   //*******************ALU*********************//
   logic       porta_in, portb_in, porta_out, portb_out;//
   logic       result_out, result_in//         
   
