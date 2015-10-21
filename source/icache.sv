`include "datapath_cache_if.vh"
`include "cache_control_if.vh"
`include "cache_pkg.vh"

module icache(input logic CLK,
	      input logic nRST,
	      datapath_cache_if.icache dcif,
	      cache_control_if.icache ccif
	      );
   
   import cache_pkg::*;
   import cpu_types_pkg::*;

   parameter BAD = 32'hBAD1BAD1;
   
   icache_block_t [15:0]icache;

   istate_t state, nextstate;
   icachef_t imemaddr;

   assign ccif.iaddr = dcif.imemaddr;
   assign imemaddr = icachef_t'(dcif.imemaddr);
   
   
   always_ff @(posedge CLK, negedge nRST) begin
      if (!nRST) begin
	 icache <= '{default:'0};
	 state <= IDLE;
      end else if (ccif.iREN & ~ccif.iwait) begin
	 state <= nextstate;
	 icache[imemaddr.idx].data <= ccif.iload;
	 icache[imemaddr.idx].tag <= imemaddr.tag;
	 icache[imemaddr.idx].valid <= 1;
      end else begin
	 icache <= icache;
	 state <= nextstate;
      end
   end // always_ff @ (posedge CLK, negedge nRST)

   always_comb begin //Next State logic
      ccif.iREN = 0;
      dcif.ihit = 0;
      dcif.imemload = BAD;
      nextstate = IDLE;
      
      case(state)
	IDLE: begin
	   if(icache[imemaddr.idx].valid & (icache[imemaddr.idx].tag == imemaddr.tag)) begin //ihit
	      dcif.ihit = 1;
	      dcif.imemload = icache[imemaddr.idx].data;
	   end else begin // miss
	      nextstate = LOAD;
	   end
	end
	LOAD : begin
	   ccif.iREN = 1;
	   dcif.ihit = ~ccif.iwait;
	   dcif.imemload = ccif.iload;
	   if (ccif.iwait) begin
	      nextstate = LOAD;
	   end
	end
	endcase // case (state)
   end
endmodule
   
