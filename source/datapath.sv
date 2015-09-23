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
`include "pipeline_reg_pkg.vh"
`include "control_unit_if.vh"
`include "hazard_unit_if.vh"

module datapath (
		 input logic CLK, nRST,
		 datapath_cache_if.dp dpif
		 );
   
   // import types
   import cpu_types_pkg::*;
   import pipeline_reg_pkg::*;
   // pc init
   parameter PC_INIT = 0;
   
   //if import
   hazard_unit_if huif();
   register_file_if rfif();
   control_unit_if cuif();

   //port init
   logic 		     PC_en, negative, overflow, zero, dmemREN, dmemWEN, imemREN, halt;
   word_t PC_next, PC, out, portb_mux_out;
   
   //units map
   hazard_unit HU1(huif);
   pc PC1(PC_en, PC_next, CLK, nRST, PC);
   register_file RF(CLK, nRST, rfif);
   alu ALU(idex.rdat_1, portb_mux_out, idex.ALU_op, negative, overflow, zero, out);
   control_unit CU(cuif);
   request_unit RU(CLK, nRST, dpif.ihit, dpif.dhit, idex.MemtoReg, idex.MemWrite, dmemREN, dmemWEN, imemREN);

   //hazard assignment
   assign huif.rsel_1 = rfif.rsel1;
   assign huif.rsel_2 = rfif.rsel2;
   assign huif.WEN = rfif.WEN;
   assign huif.wsel = rfif.wsel;
   
   //pipeline reg
   ifid_p ifid;
   idex_p idex;
   exmem_p exmem;
   mem_p mem;

   //flush signal
   logic 		     ifid_en;
   logic 		     idex_en = 1;
   logic 		     exmem_en = 1;
   logic 		     mem_en = 1;

   assign ifid_en = PC_en;
   
   //reg out portal
   regbits_t RWD_out;



   //***********************************Hazard Unit************************************//
   /***********************************/
   //          Hazard Mux             //
   //*********************************/

   /*word_t alu_porta, alu_portb;
   
   always_comb begin // alu port hazard mux
      alu_porta = idex.rdat_1;
      alu_portb = portb_mux_out;
      casez(huif.rf_hazard_src)
	
   end*/
   


   //**********************************************************************************//
   
   //Decode Instrction
   j_t j_inst;
   i_t i_inst;
   r_t r_inst;
   assign j_inst = j_t'(ifid.instr);
   assign i_inst = i_t'(ifid.instr);
   assign r_inst = r_t'(ifid.instr);
     
   //***********************************Extender*********************************
   word_t signedExt;
   word_t zeroExt;
   logic [27:0]jumpExt;
   word_t shamtExt;
   word_t luiExt;
   
   //Extender assignment
   assign signedExt = !idex.imm[15] ? {16'h0000, idex.imm} : {16'hFFFF, idex.imm};
   assign zeroExt = {16'h0000, idex.imm};
   assign jumpExt = {j_inst.addr, 2'b00};
   assign luiExt = {mem.imm, 16'h0000};
   assign shamtExt = {27'b0,r_inst.shamt};
         
   //***********************************I-Fetch state*************************************//
   word_t PC_plus4;
   word_t PC_branch;
   word_t PC_reg;
   word_t PC_jump;
   assign PC_en = dpif.ihit & !dpif.dhit;
   
   //PC caculation
   assign PC_plus4 = PC + 4;
   assign PC_jump = {PC[31:28], jumpExt};
   assign PC_branch = PC_plus4 + (signedExt << 2);
   assign PC_reg = rfif.rdat1;
   //*************************************************************************************//

   //************************************//
   //  Instruction Fetch Unit Register  //
   //***********************************//

   always_ff @(posedge CLK, negedge nRST) begin
      if (!nRST) begin
	 ifid.instr <= 0;
	 ifid.pc_plus4 <= 0;
      end else if (ifid_en) begin
	 ifid.instr <= dpif.imemload;
	 ifid.pc_plus4 <= PC_plus4;
      end else begin
	 ifid.instr <= 0;
	 ifid.pc_plus4 <= 0;
      end
   end
   
   //***********************************Control Block************************************//
   assign cuif.opcode = r_inst.opcode;
   assign cuif.funct = r_inst.funct;
   //***********************************************************************************//


   //************************************//
   //         Decode Register           //
   //***********************************//

   always_ff @(posedge CLK, negedge nRST) begin
      if (!nRST) begin
	 idex <= 0;	 
      end else begin // if (!nRST)
	 idex.rdat_1 <= rfif.rdat1;
	 idex.rdat_2 <= rfif.rdat2;
	 idex.rt <= r_inst.rt;
	 idex.rd <= r_inst.rd;
	 idex.imm <= i_inst.imm;
	 idex.shamt <= r_inst.shamt;
	 idex.jaddr <= j_inst.addr;
	 idex.pc_plus4 <= ifid.pc_plus4;
	 idex.bra <= cuif.bra;
	 idex.LUI_src <= cuif.LUI_src;
	 idex.Ext_src <= cuif.Ext_src;
	 idex.portb_src <= cuif.portb_src;
	 idex.PC_src <= cuif.PC_src;
	 idex.RegWEN <= (cuif.MemtoReg != 2'b01)? cuif.rw_flag : 1;  
	 idex.RegDst <= cuif.RegDst;
	 idex.ALU_op <= cuif.ALU_op;
	 idex.MemWrite <= cuif.MemWrite;
	 idex.MemRead <= cuif.MemRead;
	 idex.MemtoReg <= cuif.MemtoReg;
	 idex.check_over <= cuif.check_over;
	 idex.mem_halt <= cuif.mem_halt;
      end // if (idex_en)
   end // always_ff @  
   
   //***********************************//
   //        HALT Reg and logic
   //**********************************//
   logic halt_reg;
   always_ff @(posedge CLK, negedge nRST) begin
      if (!nRST) begin
	 halt_reg <= 0;
      end else begin
	 halt_reg <= halt;
      end
   end
   assign halt = (cuif.check_over & overflow) | idex.mem_halt;

   //***********************************//
   //Memory Operation / Memory Output Reg
   //**********************************//

   always_ff @(posedge CLK, negedge nRST) begin
      if (!nRST) begin
	 exmem.imm <= 0;
	 exmem.RegWEN <= 0;
	 exmem.zero <= 0;
	 exmem.overflow <= 0;
	 exmem.bra <= 0;
	 exmem.MemtoReg <= 0;
	 exmem.MemRead <= 0;
	 exmem.MemWrite <= 0;
	 exmem.alu_out <= 0;
	 exmem.RegDst_out <= 0;
	 exmem.pc_plus4 <= 0;
	 exmem.rdat_2 <= 0;
	 exmem.LUI_src <= 0; 
      end else if (exmem_en) begin
	 exmem.imm <= idex.imm;
	 exmem.RegWEN <= idex.RegWEN;
	 exmem.zero <= zero;
	 exmem.overflow <= overflow;
	 exmem.bra <= idex.bra;
	 exmem.MemtoReg <= idex.MemtoReg;
	 exmem.MemRead <= idex.MemRead;
	 exmem.MemWrite <= idex.MemWrite;
	 exmem.alu_out <= out;
	 exmem.RegDst_out <= RWD_out;
	 exmem.pc_plus4 <= idex.pc_plus4;
	 exmem.rdat_2 <= idex.rdat_2;
	 exmem.LUI_src <= idex.LUI_src;
      end // else: !if(!nRST)
   end // always_ff @ (posedge CLK, negedge n_RST)
   assign exmem.dload = dpif.dmemload;

   //***********************************//
   //       Memory Output Reg
   //**********************************//
   always_ff @(posedge CLK, negedge nRST) begin
      if (!nRST) begin
	 mem <= 0;
      end else if (mem_en) begin
	 mem.MemtoReg <= exmem.MemtoReg;
	 mem.RegWEN <= exmem.RegWEN;
	 mem.halt <= halt;
	 mem.dload <= exmem.dload;
	 mem.alu_out <= exmem.alu_out;
	 mem.RegDst_out <= exmem.RegDst_out;
	 mem.pc_plus4 <= exmem.pc_plus4;
	 mem.imm <= exmem.imm;
	 mem.LUI_src <= exmem.LUI_src;
      end
   end // always_ff @ (posedge CLK, negedge nRST)
   
   
   //********************************ALU MUX SET*****************************************//

   //Reg Write Dst Mux
   always_comb begin
      RWD_out = idex.rd;
      casez(idex.RegDst)
	2'b01:begin
	   RWD_out = idex.rt;
	end
	2'b10:begin
	   RWD_out = 5'd31;
	end
      endcase // casez (CU.RegDst)
   end // always_comb
   
   //Reg Write Port Mux
   word_t IntoLUI;
   always_comb begin
      IntoLUI = mem.alu_out;
      casez(mem.MemtoReg)
	2'b01:begin
	   IntoLUI = mem.dload;
	end
	2'b10:begin
	   IntoLUI = mem.pc_plus4;
	end
      endcase // casez (MemtoReg)
   end // always_comb

   //LUI Mux
   word_t IntoMem;
   assign IntoMem = mem.LUI_src? luiExt : IntoLUI; 
   
   //Extender Mux
   word_t extended_imm;
   assign extended_imm = idex.Ext_src? signedExt : zeroExt;

   //ALU Port b select Mux
   always_comb begin
      portb_mux_out = rfif.rdat2;
      casez(idex.portb_src)
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
      casez(idex.PC_src)
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
   assign rfif.WEN = mem.RegWEN;
   assign rfif.wsel = mem.RegDst_out;
   assign rfif.rsel1 = r_inst.rs;
   assign rfif.rsel2 = r_inst.rt;
   assign rfif.wdat = IntoMem;
   
   //************************************************************************************//

   //*******************************I/O assignment*****************************
   assign dpif.halt = mem.halt;
   assign dpif.imemREN = imemREN;
   assign dpif.imemaddr = PC;
   assign dpif.dmemREN = exmem.MemRead;
   assign dpif.dmemWEN = exmem.MemWrite;
   assign dpif.dmemstore = exmem.rdat_2;
   assign dpif.dmemaddr = exmem.alu_out;
   //*****************************************************************************//
endmodule

