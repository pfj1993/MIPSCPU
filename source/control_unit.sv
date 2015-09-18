`include "cpu_types_pkg.vh"
`include "control_unit_if.vh"

module control_unit(control_unit_if.cu cuif);  
   import cpu_types_pkg::*;
   logic check_over;
   logic mem_halt;
   logic rw_flag;
   
   // halt logic//
   assign cuif.halt = (check_over & cuif.Overflow) | mem_halt;
   assign cuif.PC_EN = cuif.ihit & !cuif.dhit ;
   assign cuif.RegWEN = (cuif.MemtoReg != 2'b01)? rw_flag : cuif.dhit? rw_flag : 0;  
   //
   always_comb begin
      //****initialize****//
      cuif.PC_src = 3'b000;
      cuif.Ext_src = 0;
      cuif.LUI_src = 0;
      cuif.portb_src = 2'b01;
      cuif.RegDst = 2'b01;
      cuif.ALU_op = ALU_SLL;
      cuif.MemWrite = 0;
      cuif.MemRead = 1;
      cuif.MemtoReg = 2'b00;
      check_over = 0;
      mem_halt = 0;
      rw_flag = 1;
      //******************//
      
      unique casez(cuif.opcode)
	RTYPE:begin
	   rw_flag = 1;
	   cuif.portb_src = 2'b00;
	   cuif.RegDst = 2'b00;
	  unique casez(cuif.funct)
	    SLL:begin
	       cuif.ALU_op = ALU_SLL;
	       cuif.portb_src = 2'b10; 
	    end
	    SRL:begin
	       cuif.ALU_op = ALU_SRL;
	       cuif.portb_src = 2'b10;  
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
	       rw_flag = 0;
	    end
	  endcase // unique casez (cuif.funct)
	end // case: RTYPE
	J:begin
	   cuif.PC_src = 2'b10;
	   rw_flag = 0;
	end
	JAL:begin
	   cuif.PC_src = 2'b10;
	   cuif.RegDst = 2'b10;
	   cuif.MemtoReg = 2'b10;
	end
	ADDI:begin
	   cuif.ALU_op = ALU_ADD;
	   cuif.Ext_src = 1;
	   check_over = 1;
	end
	ADDIU:begin
	   cuif.ALU_op = ALU_ADD;
	   cuif.Ext_src = 1;
	end
	ANDI:begin
	   cuif.ALU_op = ALU_AND;
	end
	BEQ:begin
	   cuif.ALU_op = ALU_SUB;
	   cuif.PC_src = (cuif.Zero)? 2'b01 : 2'b00;
	   cuif.portb_src = 2'b00;
	   rw_flag = 0;
	end
	BNE:begin
	   cuif.ALU_op = ALU_SUB;
	   cuif.PC_src = (cuif.Zero)? 2'b00 : 2'b01;
	   cuif.portb_src = 2'b00;
	   rw_flag = 0;
	end
	SLTI:begin
	   cuif.ALU_op = ALU_SLT;
	   cuif.Ext_src = 1;
	   check_over = 1;
	end
	SLTIU:begin
	   cuif.ALU_op = ALU_SLT;
	   cuif.Ext_src = 1;
	end
	ORI:begin
	   cuif.ALU_op = ALU_OR;
	end
	XORI:begin
	   cuif.ALU_op = ALU_XOR;
	end
	LUI:begin
	   cuif.LUI_src = 1;
	end
	LW:begin
	   cuif.ALU_op = ALU_ADD;
	   cuif.Ext_src = 1;
	   cuif.MemtoReg = 2'b01;
	end
	SW:begin
	   cuif.ALU_op = ALU_ADD;
	   cuif.Ext_src = 1;
	   rw_flag = 0;
	   cuif.MemWrite = 1;
	end
	LL:begin
	end
	SC:begin
	end
	HALT:begin
	   rw_flag = 0;
	   mem_halt = 1;
	end
      endcase // unique casez (cuif.opcode)
   end
endmodule // control_unit



