`include "cpu_types_pkg.vh"
import cpu_types_pkg::*;
module pc(
	  input logic PC_en,
	  input word_t PC_next,
	  input logic CLK,
	  input logic nRST,
	  output word_t PC
	  );

   always_ff @(posedge CLK,negedge nRST) begin
      if (!nRST) begin
	 PC <= '{default':0};
      end else if(PC_en) begin
	 PC <= PC_next;
      end
   end
endmodule // pc

      
	
	    
