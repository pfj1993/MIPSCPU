`ifndef HAZARD_UNIT_IF_VH
`define HAZARD_UNIT_IF_VH

`include "cpu_types_pkg.vh"

interface hazard_unit_if;	
  import cpu_types_pkg::*;
  
  regbits_t rsel_1, rsel_2, wsel, WEN;
  logic [1:0] rf_hazard_src;// 2'b00 for no forwarding, 2'b01 for a, 2'b10 for b, 2'b11 for both;

  modport hu (
	input rsel_1, rsel_2, wsel, WEN,
	output rf_hazard_src
	);
endinterface
`endif
