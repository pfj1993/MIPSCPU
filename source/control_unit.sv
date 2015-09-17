`include "cpu_types_pkg.vh"
`include "control_unit_if.vh"

module control_unit(control_unit_if.cu cuif);  
   import cpu_types_pkg::*;
   logic check_over;
   logic mem_halt;
   
   // halt logic//
   assign cuif.halt = (check_over & cuif.Overflow) | mem_halt;
   
   //
   always_comb begin
      //****initialize****//
      cuif.PC_src = 3'b000;
      cuif.Ext_src = 0;
      cuif.LUI_src = 0;
      cuif.RegW_src = 0;
      cuif.protb_src = 2'b00;
      cuif.RegDst = 3'b000;
      cuif.RegWEN = 0;
      mem_halt = 0;
      cuif.ALU_op = ALU_SLL;
      cuif.MemWrite = 0;
      cuif.MemRead = 1;
      cuif.MemtoReg = 2'b00;
      check_over = 0;
      //******************//
      
      unique casez(cuif.opcode)
	RTYPE:begin
	   cuif.RegWen = 1;
	  unique casez(cuif.funct)
	    SLL:begin
	       cuif.ALU_op = ALU_SLL;
	       cuif.protb_src = 2'b10; 
	    end
	    SRL:begin
	       cuif.ALUop = ALU_SRL;
	       cuif.protb_src = 2'b10;  
	    end
	    ADD:begin
	       cuif.ALU_op = ALU_ADD;
	       check_over = 1;
	    end
	    ADDU:begin
	       cuif.ALU_op = ALU_ADD;
	    end
	    SUB:begin
	       cuif.ALU_op = ALU_SUB;
	       check_over = 1;
	    end
	    SUBU:begin
	       cuif.ALU_op = ALU_SUB;
	    end
	    AND:begin
	       cuif.ALU_op = ALU_AND;
	    end
	    OR:begin
	       cuif.ALU_op = ALU_OR;
	    end
	    XOR:begin
	       cuif.ALU_op = ALU_XOR;
	    end
	    NOR:begin
	       cuif.ALU_op = ALU_NOR;
	    end
	    SLT:begin
	       cuif.ALU_op = ALU_SLT;
	    end
	    SLTU:begin
	       cuif.ALU_op = ALU_SLT;
	    end
	    JR:begin
	       cuif.PC_src = 2'b11;
	    end
	  endcase // unique casez (cuif.funct)
	end // case: RTYPE
	J:begin
	   cuif.PC_src = 2'b10;
	end
	JAL:begin
	   cuif.PC_src = 2'b10;
	   cuif.RegWEN = 1;
	   cuif.RegDst = 2'b10;
	   
	
      endcase // unique casez (cuif.opcode)
   end
endmodule // control_unit



