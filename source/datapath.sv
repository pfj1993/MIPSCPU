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

`include "control_unit_if.vh"

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
   control_unit_if cuif();

   //port init
   logic 		     PC_en, negative, overflow, zero, dmemREN, dmemWEN, imemREN;
   word_t PC_next, PC, out, portb_mux_out;
     
   //units map
   pc PC1(PC_en, PC_next, CLK, nRST, PC);
   register_file RF(CLK, nRST, rfif);
   alu ALU(rfif.rdat1, portb_mux_out, cuif.ALU_op, negative, overflow, zero, out);
   control_unit CU(cuif);
   request_unit RU(CLK, nRST, dpif.ihit, dpif.dhit, cuif.MemtoReg, cuif.MemWrite, dmemREN, dmemWEN, imemREN);

   //Instrction Fetch Block
   j_t j_inst;
   i_t i_inst;
   r_t r_inst;
   assign j_inst = j_t'(dpif.imemload);
   assign i_inst = i_t'(dpif.imemload);
   assign r_inst = r_t'(dpif.imemload);
     
   //***********************************Extender*********************************
   word_t signedExt;
   word_t zeroExt;
   logic [27:0]jumpExt;
   word_t shamtExt;
   word_t luiExt;
   
   //Extender assignment
   assign signedExt = !i_inst.imm[15] ? {16'h0000, i_inst.imm} : {16'hFFFF, i_inst.imm};
   assign zeroExt = {16'h0000, i_inst.imm};
   assign jumpExt = {j_inst.addr, 2'b00};
   assign luiExt = {i_inst.imm, 16'h0000};
   assign shamtExt = {27'b0,r_inst.shamt};
         
   //***********************************PC block*************************************//
   word_t PC_plus4;
   word_t PC_branch;
   word_t PC_reg;
   word_t PC_jump;
   assign PC_en = cuif.PC_EN;
   
   //PC caculation
   assign PC_plus4 = PC + 4;
   assign PC_jump = {PC[31:28], jumpExt};
   assign PC_branch = PC_plus4 + (signedExt << 2);
   assign PC_reg = rfif.rdat1;
   //*************************************************************************************//


   //***********************************Control Block************************************//
   assign cuif.Zero = zero;
   assign cuif.Overflow = overflow;
   assign cuif.ihit = dpif.ihit;
   assign cuif.dhit = dpif.dhit;
   assign cuif.opcode = r_inst.opcode;
   assign cuif.funct = r_inst.funct;
   //***********************************************************************************//

   //************************************Request Unit**********************************//
     
   
   //HALT Reg
   logic halt_reg;
   always_ff @(posedge CLK, negedge nRST) begin
      if (!nRST) begin
	 halt_reg <= 0;
      end else begin
	 halt_reg <= cuif.halt;
      end
   end
   
   //********************************ALU MUX SET*****************************************//

   //Reg Write Dst Mux
   regbits_t RWD_out;
   always_comb begin
      RWD_out = r_inst.rd;
      casez(cuif.RegDst)
	2'b01:begin
	   RWD_out = r_inst.rt;
	end
	2'b10:begin
	   RWD_out = 5'd31;
	end
      endcase // casez (CU.RegDst)
   end // always_comb
   //Reg Write Port Mux
   word_t IntoLUI;
   always_comb begin
      IntoLUI = out;
      casez(cuif.MemtoReg)
	2'b01:begin
	   IntoLUI = dpif.dmemload;
	end
	2'b10:begin
	   IntoLUI = PC_plus4;
	end
      endcase // casez (MemtoReg)
   end // always_comb

   //LUI Mux
   word_t IntoMem;
   assign IntoMem = cuif.LUI_src? luiExt : IntoLUI; 
   
   //Extender Mux
   word_t extended_imm;
   assign extended_imm = cuif.Ext_src? signedExt : zeroExt;

   //ALU Port b select Mux
   always_comb begin
      portb_mux_out = rfif.rdat2;
      casez(cuif.portb_src)
	2'b01:begin
	   portb_mux_out = extended_imm;
	end
	2'b10:begin
	   portb_mux_out = shamtExt;
	end
      endcase // casez (CU.portb_scr)
   end // always_comb

   //PC mux
   word_t PC_out;
   assign PC_next = PC_out;
   always_comb begin
      PC_out = PC_plus4;
      casez(cuif.PC_src)
	2'b01:begin
	   PC_out = PC_branch;
	end
	2'b10:begin
	   PC_out = PC_jump;
	end
	2'b11:begin
	   PC_out = PC_reg;
	end
      endcase
   end // always_comb

   //************************************Register File***********************************//
   assign rfif.WEN = cuif.RegWEN;
   assign rfif.wsel = RWD_out;
   assign rfif.rsel1 = r_inst.rs;
   assign rfif.rsel2 = r_inst.rt;
   assign rfif.wdat = IntoMem;
   
   //************************************************************************************//

   //*******************************I/O assignment*****************************
   assign dpif.halt = halt_reg;
   assign dpif.imemREN = imemREN;
   assign dpif.imemaddr = PC;
   assign dpif.dmemREN = dmemREN;
   assign dpif.dmemWEN = dmemWEN;
   assign dpif.dmemstore = rfif.rdat2;
   assign dpif.dmemaddr = out;
   //*****************************************************************************//
endmodule

