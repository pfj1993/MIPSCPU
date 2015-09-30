`ifndef BRANCH_PREDICTION_IF_VH
`define BRANCH_PERDICTION_IF_VH

`include "cpu_types_pkg.vh"
 import cpu_types_pkg::*;		

interface branch_prediction_if;
  logic br;
  logic [3:0] index_O;
  logic [3:0] index_I;
  logic [3:0] index_update;
  logic br_taken;
  word_t  br_target_O;
  word_t  br_target_I;
  logic predict;

  modport bp(
    input br, index_I, index_update, br_taken, br_target_I, 
    output index_O, br_target_O, predict
  );

endinterface
`endif