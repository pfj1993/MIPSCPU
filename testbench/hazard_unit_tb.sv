`include "cpu_types_pkg.vh"
`include "hazard_unit_if.vh"
`timescale 1 ns / 1 ns
parameter PERIOD = 10;
import cpu_types_pkg::*;

module hazard_unit_tb;
   hazard_unit_if huif;
   logic 
   