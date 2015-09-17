/*
  Eric Villasenor
  evillase@gmail.com

  datapath contains register file, control, hazard,
  muxes, and glue logic for processor
*/

// data path interface
`include "datapath_cache_if.vh"

// alu op, mips op, and instruction type
`include "cpu_types_pkg.vh"

// register file if
`include "register_file_if.vh"

module datapath (
  input logic CLK, nRST,
  datapath_cache_if.dp dpif
		 );
   // import types
   import cpu_types_pkg::*;
   
   // pc init
   parameter PC_INIT = 0;

   //if import
   register_file_if rfif();

   //units map
   pc PC(PC_en, PC_next, CLK, nRST, PC);
   register_file RF(CLK, nRST, rfif);
   alu ALU([31:0]a, [31:0]b, [3:0]aluop, negative, overflow, zero, [31:0]out);
   
   //Extender
   word_t signedExt;
   word_t zeroExt;
   logic [27:0]jumpExt;

   //Extender assignment
   signedExt = !dpif.imemload[15] ? {16'h0000, dpif.imemload[15:0]} : {16'hf000, dpif.imemload[15:0]};
   zeroExt = {16'h0000, dpif.imemload[15:0]};
   jumpExt = {dpif.imemload[25:0], 2'b00};

   //PC area
   word_t PC_plus4;
   word_t PC_branch;
   word_t PC_reg;
   word_t PC_jump;
   word_t PC_out;
   assign PC_next = PC_out;

   //PC caculation
   assign PC_plus4 = PC + 4;
   assign PC_jump = {PC[31:28], jumpExt};
   assign PC_branch = PC_plus4 + (signedExt << 2);
   assign PC_reg = rifi.rdata1;

   //PC mux
   always_comb begin
      casez()



   

   
endmodule

