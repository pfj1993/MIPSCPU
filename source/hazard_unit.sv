`include "cpu_types_pkg.vh"
`include "hazard_unit_if.vh"

module hazard_unit(
		   hazard_unit_if.hu huif
		   );
   import cpu_types_pkg::*;

   always_comb begin
      huif.rf_hazard_src = 2'b00;
      if (huif.WEN) begin
	 if (huif.rsel_1 == huif.wsel) begin
	    if (huif.rsel_2 == huif.wsel) begin
	       huif.rf_hazard_src = 2'b11;
	    end else begin
	       huif.rf_hazard_src = 2'b01;
	    end
	 end else if (huif.rsel_2 == huif.wsel)begin
	    huif.rf_hazard_src = 2'b10;
	 end
      end // if (huif.WEN)
   end // always_comb begin
endmodule // hazard_unit
