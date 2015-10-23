`include "datapath_cache_if.vh"
`include "cache_control_if.vh"
`include "cache_pkg.vh"

module dcache(input logic CLK,
	      input logic nRST,
	      datapath_cache_if.dcache dcif,
	      cache_control_if.dcache ccif
	      );
   
   import cache_pkg::*;
   import cpu_types_pkg::*;
   
   parameter COUNTER_ADDR = 16'h3100;
   parameter BAD = 32'hBAD1BAD1;

   dstate_t laststate, state, nextstate;
   dcachef_t dmemaddr, last_dmemaddr;

   logic 		  address_lock;
   
   word_t counter;
   logic 		  counter_EN;

   word_t last_address;
   logic 		  last_replace_block, last_REN;
   
   flush_cnt_t flush_cnt;
   logic 		  flush_cnt_en;
   
   assign dmemaddr = dcachef_t'(dcif.dmemaddr);
   assign last_dmemaddr = dcachef_t'(last_address);
   
   twoway_dcache_t [7:0]dcache;
   twoway_dcache_t [7:0]dcache_next; 

   word_t[1:0]  WB_buffer_data;
   word_t[1:0]  WB_buffer_addr;
   word_t [1:0] 		  WB_addr;
   word_t [1:0]                   WB_data;
   logic 		  WB;
   logic 		  write_done;
   logic 		  hit0, hit1, replace_block;
   logic [1:0] 		  dirty, valid;
   logic 		  latch;
   logic 		  empty;
   
   assign replace_block = ~valid[0]? 0 : ~valid[1]? 1: ~dcache[dmemaddr.idx].recent;
   assign WB_addr = {{dcache[dmemaddr.idx].block[replace_block].tag, dmemaddr.idx,
		      1'b1, dmemaddr.bytoff},{dcache[dmemaddr.idx].block[replace_block].tag, dmemaddr.idx, 
					      1'b0, dmemaddr.bytoff}};
   assign WB_data = dcache[dmemaddr.idx].block[replace_block].data;
   assign dirty = {dcache[dmemaddr.idx].block[1].dirty, dcache[dmemaddr.idx].block[0].dirty};
   assign valid = {dcache[dmemaddr.idx].block[1].valid, dcache[dmemaddr.idx].block[0].valid};
   assign hit0 = (dcache[dmemaddr.idx].block[0].tag == dmemaddr.tag) & valid[0];
   assign hit1 = (dcache[dmemaddr.idx].block[1].tag == dmemaddr.tag) & valid[1];

   always_ff @(posedge CLK, negedge nRST) begin // Write back buffer
      if (!nRST) begin
	 WB_buffer_data <= '{default:'0};
	 WB_buffer_addr <= '{default:'0};
	 WB <= 0;
      end else if (latch) begin
	 WB_buffer_data <= WB_data;
	 WB_buffer_addr <= WB_addr;
	 WB <= 1;
      end else if (empty)begin
	 WB_buffer_data <= '{default:'0};
	 WB_buffer_addr <= '{default:'0};
	 WB <= 0;
      end else begin
	 WB_buffer_data <= WB_buffer_data;
	 WB_buffer_addr <= WB_buffer_addr;
	 WB <= WB;
      end
   end
   
   always_ff @(posedge CLK, negedge nRST) begin // 32bits counter to counter cache hit
      if (!nRST) begin
   	 counter <= 0;
      end else if (counter_EN) begin
   	 counter <= counter + 1;
      end else begin
   	 counter <= counter;
      end
   end

   always_ff @(posedge CLK, negedge nRST) begin //Load FF
      if (!nRST) begin
	 last_replace_block <= 0;
	 last_address <= 0;
	 last_REN <= 0;
      end else if (address_lock)begin
	 last_address <= last_address;
	 last_replace_block <= last_replace_block;
	 last_REN <= dcif.dmemREN;
      end else begin
	 last_address <= dcif.dmemaddr;
	 last_replace_block <= replace_block;
	 last_REN <= dcif.dmemREN;
      end
   end
   
   always_ff @(posedge CLK, negedge nRST) begin // Flush counter FF
      if (!nRST) begin
   	 flush_cnt <= 0;
      end else if (flush_cnt_en) begin
   	 flush_cnt <= flush_cnt + 1;
      end else begin
   	 flush_cnt <= flush_cnt;
      end
   end
   
   always_ff @(posedge CLK, negedge nRST) begin //Next state and data FF
      if (!nRST) begin
	 dcache <= '{default:'0};
	 state <= IDLE1;
	 laststate <= IDLE1;
      end else begin
	 dcache <= dcache_next;
	 laststate <= state;
	 state <= nextstate;
      end
   end

   always_comb begin //Output controller
      dcif.dmemload = BAD;
      dcif.dhit = 0;
      
      if (hit0 & dcif.dmemREN) begin
   	 dcif.dmemload = dcache[dmemaddr.idx].block[0].data[dmemaddr.blkoff];
   	 dcif.dhit = 1;
      end else if (hit1 & dcif.dmemREN) begin
   	 dcif.dmemload = dcache[dmemaddr.idx].block[1].data[dmemaddr.blkoff];
   	 dcif.dhit = 1;
      end else if (dcif.dmemWEN) begin
	 dcif.dhit = write_done;
      end else if ((state == LOAD2) & last_REN) begin
	 dcif.dhit = 1;
	 dcif.dmemload = dcache[last_dmemaddr.idx].block[last_replace_block].data[last_dmemaddr.blkoff];
      end
   end // always_comb begin

   always_comb begin //Next State Logic
      nextstate = state;
      dcache_next = dcache;
      ccif.dWEN = 0;
      ccif.dREN = 0;
      ccif.dstore = 0;
      ccif.daddr = dcif.dmemaddr;
      dcif.flushed = 0;
      counter_EN = 0;
      flush_cnt_en = 0;
      address_lock = 0;
      write_done = 0;
      latch = 0;
      empty = 0;
      
      case(state)
	IDLE1: begin
	   if (dcif.halt) begin //Flush the cache to Memory
	      nextstate = FLUSH; 
	   end else if (dcif.dmemREN | dcif.dmemWEN) begin
	      if (hit0) begin //block0 hit
		 dcache_next[dmemaddr.idx].recent = 0;
		 if (dcif.dmemWEN) begin
		    write_done = 1;
		    dcache_next[dmemaddr.idx].block[0].dirty = 1;
		    dcache_next[dmemaddr.idx].block[0].data[dmemaddr.blkoff] = dcif.dmemstore;
		 end
		 if (laststate == IDLE1) begin // Cache hit count
		    counter_EN = 1;
		 end
	      end else if (hit1) begin //block1 hit
		 dcache_next[dmemaddr.idx].recent = 1;
		 if (dcif.dmemWEN) begin
		    write_done = 1;
		    dcache_next[dmemaddr.idx].block[1].dirty = 1;
		    dcache_next[dmemaddr.idx].block[1].data[dmemaddr.blkoff] = dcif.dmemstore;
		 end
		 if (laststate == IDLE1) begin //Cache hit count
		    counter_EN = 1;
		 end
	      end else begin//Miss
		 if (dirty[replace_block] & valid[replace_block]) begin //Find out if not LRU block is dirty
		    latch = 1;
		 end
		    nextstate = LOAD1;
	      end // else: !if(hit1)
	   end // if (dcif.dmemREN | dcif.dmemWEN)
	end // case: IDEL
	
	LOAD1: begin
	   if (!ccif.dwait) begin
	      dcache_next[dmemaddr.idx].block[replace_block].data[dmemaddr.blkoff] = ccif.dload;
	      nextstate = LOAD2;
	   end
	   address_lock = 1;
	   ccif.dREN = 1;
	end

	LOAD2: begin
	   if (!ccif.dwait) begin
	      dcache_next[last_dmemaddr.idx].block[last_replace_block].data[~last_dmemaddr.blkoff] = ccif.dload;
	      dcache_next[last_dmemaddr.idx].block[last_replace_block].valid = 1;
	      dcache_next[last_dmemaddr.idx].block[last_replace_block].tag = last_dmemaddr.tag;
	      dcache_next[last_dmemaddr.idx].block[last_replace_block].dirty = 0;
	      dcache_next[last_dmemaddr.idx].recent = last_replace_block;
	      if (!WB) begin
		 nextstate = IDLE1;
	      end else begin
		 nextstate = WRITE_BACK1;
	      end
	   end
	   address_lock = 1;
	   ccif.daddr = {last_dmemaddr.tag, last_dmemaddr.idx, ~last_dmemaddr.blkoff, last_dmemaddr.bytoff};
	   ccif.dREN = 1;
	end

	WRITE_BACK1: begin // Write lower word into memory
	   if (!ccif.dwait) begin
	      nextstate = WRITE_BACK2;
	   end
	   ccif.dWEN = 1;
	   ccif.dstore = WB_buffer_data[0];
	   ccif.daddr = WB_buffer_addr[0];
	end
	
	WRITE_BACK2: begin // Write higher word into memory
	   if (!ccif.dwait) begin
	      empty = 1;
	      nextstate = IDLE1;
	   end
	   ccif.dWEN = 1;
	   ccif.dstore = WB_buffer_data[1];
	   ccif.daddr = WB_buffer_addr[1];
	end

	FLUSH: begin //Flush the cache back to memory
	   if (dcache[flush_cnt.index].block[flush_cnt.set].valid & 
	       dcache[flush_cnt.index].block[flush_cnt.set].dirty) begin
	      if (!ccif.dwait) begin
		 if (flush_cnt.word_sel == 1) begin
		    dcache_next[flush_cnt.index].block[flush_cnt.set].valid = 0;
		 end
		 nextstate = FLUSH_NEXT;
	      end
	      ccif.dWEN = 1;
	      ccif.dstore = dcache[flush_cnt.index].block[flush_cnt.set].data[flush_cnt.word_sel];
	      ccif.daddr = {dcache[flush_cnt.index].block[flush_cnt.set].tag,
			    flush_cnt.index,flush_cnt.word_sel, 2'b00};
	   end else begin
	      if (flush_cnt.word_sel == 1) begin
		 dcache_next[flush_cnt.index].block[flush_cnt.set].valid = 0;
	      end
	      nextstate = FLUSH_NEXT;
	   end // else: !if(dcache[flush_cnt...
	end 
	
	FLUSH_NEXT: begin // Increase flush counter
	   if (~flush_cnt.finish) begin
	      flush_cnt_en = 1;
	      nextstate = FLUSH;
	   end else begin
	      nextstate = CACHE_HALT;
	   end
	end

	CACHE_HALT: begin
	   if (!ccif.dwait) begin
	      dcif.flushed = 1;
	   end
	   ccif.dWEN = 1;
	   ccif.dstore = counter;
	   ccif.daddr = 32'h00003100;
	end
      endcase // case (state)
   end // always_comb begin
endmodule // dcache

		 
	      
	   
	   
	   
	   
	   
	 
      
