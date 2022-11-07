\m4_TLV_version 1d: tl-x.org
\SV

   // =================================================
   // Welcome!  New to Makerchip? Try the "Learn" menu.
   // =================================================

   // Default Makerchip TL-Verilog Code Template
   
   // Macro providing required top-level module definition, random
   // stimulus support, and Verilator config.
   m4_makerchip_module   // (Expanded in Nav-TLV pane.)
\TLV
   $reset = *reset;
   $in1[31:0] = $rand1[3:0];
   $in2[31:0] = $rand2[3:0];

   $out[31:0] =  $op[1] ? ($op[0] ? $in1[31:0] / $in2[31:0] : $in1[31:0] * $in2[31:0]) : ($op[0] ? $in1[31:0] - $in2[31:0] : $in1[31:0] + $in2[31:0]) ; 

   // Assert these to end simulation (before Makerchip cycle limit).
   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\SV
   endmodule
