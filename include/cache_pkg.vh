`ifndef CACHE_PKG_VH
`define CACHE_PKG_VH

`include "cpu_types_pkg.vh"

package cache_pkg;
   import cpu_types_pkg::*;
   //icacahe block
   typedef struct packed{
      logic 	  valid;
      logic [ITAG_W-1:0] tag;
      word_t data;
   }icache_block_t;
   
   //One block contain two words, 1 valid bit and 1 dirty bit//
   typedef struct 	 packed{
      logic 		 valid;
      logic 		 dirty;
      logic [DTAG_W-1:0] tag;
      word_t [DBLK_W:0]  data;
   }dcache_block_t;
   
   typedef struct 	 packed{
      logic 		 recent;
      dcache_block_t [DWAY_ASS-1:0]block;
   }twoway_dcache_t;
   
   typedef struct 	 packed{
      logic 		 finish;
      logic 		 set;
      logic [2:0] 	 index;
      logic 		 word_sel;
   }flush_cnt_t;
   
   typedef enum 	 logic
			 {IDLE,
			  LOAD} istate_t;
   
   typedef enum 	 logic[3:0]
			 {IDLE1,
			  WRITE_BACK1,
			  WRITE_BACK2,
			  LOAD1,
			  LOAD2,
			  FLUSH,
			  FLUSH_NEXT,
			  COUNTER,
			  CACHE_HALT
			  } dstate_t;
   
endpackage
`endif
