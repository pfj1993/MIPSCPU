`ifndef PIPELINE_REG_PKG_VH
`define PIPELINE_REG_PKG_VH

`include "cpu_types_pkg.vh"

package cache_pkg;
   import cpu_types_pkg::*;	
   typedef struct packed{
      	logic vaild;
	logic [ITAG_W-1:0]tag;
	word_t data;
   }icache_block;

   typedef struct packed{
      	logic vaild;
	logic [DTAG_W-1:0]tag;
	word_t data[1:0];
   }dcache_block;


endpackage
`endif