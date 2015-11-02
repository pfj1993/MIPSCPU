`ifndef CACHE_PKG_VH
`define CACHE_PKG_VH

`include "cpu_types_pkg.vh"

package cache_pkg;
   import cpu_types_pkg::*;

  // MESI (Modify, Exclusive, Shared, Invalid) 
  typedef enum logic [1:0] {
    INVALID     = 4'b0000,
    SHARED     = 4'b0001,
    EXCLUSIVE     = 4'b0010,
    MODIFIED   = 4'b0011,
  } mesi_t;

   //icacahe block
   typedef struct packed{
      logic 	  valid;
      logic [ITAG_W-1:0] tag;
      word_t 	  data;
   }icache_block_t;
   
   //One block contain two words, 1 valid bit 1 shared bit and 1 dirty bit//
   typedef struct 	 packed{
      mesi_t	 	 MESI;
      logic 		 dirty;
      logic [DTAG_W-1:0] tag;
      word_t [DBLK_W:0]  data;
   }dcache_block_t;
   
   typedef struct 	 packed{
      logic 		 recent;
      dcache_block_t [DWAY_ASS-1:0]block;
   }twoway_dcache_t;
   
   typedef struct 	 packed{
      logic 		 valid;
      word_t		 addr;
   }link_t;

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
