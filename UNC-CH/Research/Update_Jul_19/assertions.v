// Sample LTL Translation

// Bug 14 from SPECS:  Exception return updates state correctly

// next(INSN = l.RFE, (SR = ESR) && (PC = EPCR), 1)

property NAIVE_S14;
	@(posedge clk)
((~((or1200_ctrl.ex_insn & 'hFFFF0000) >> 16 == 8192)) || (or1200_except.except_trig != 0));
endproperty

property ASSERT_S14;
	@(posedge clk)
((~((wb_insn[27:24] == 1 && wb_insn[31:28] == 8)) || (except_trig != 0));
endproperty //translated
 
// Recall - this is the LTL application we discussed with instructions
// Cadence can't to my knowledge handle "Next" inside of statements, so I can't test, but template should be
 
// G(X(a & b)->c)

// Translations from SCIFinder

property ASSERT_B01;  // bug is in except
	@(posedge clk)
((~((wb_insn[27:24] == 1 && wb_insn[31:28] == 8))) || id_pc != epcr);
endproperty //translated

property ASSERT_B03;  // bug is in alu
	@(posedge clk)
((~(((ex_insn[31:28]) == 'hE) && ((ex_insn[27:24] & 'hC) == 0) && ((ex_insn[7:4] & 'hC) == 0) && ((ex_insn[3:0]) == 'hD))) || (rf_dataw == operand_a)); //same rf_dataw thing as in B10, //((ex_insn[11:8] & 'h3) == 0) && //unneeded
endproperty //translated //need to apply mask //this one is a mess

property ASSERT_B04;
	@(posedge clk)
((!(wb_insn[27:24] == 1 && wb_insn[31:28] == 8)) || (dcpu_adr_o == eear));
endproperty  //translated

property ASSERT_B05;  // bug is in except
	@(posedge clk)
((~((wb_insn[27:24] == 1 && wb_insn[31:28] == 8)) || id_pc != epcr);
endpropert //translated //need inequality

property ASSERT_B06;  // bug is in alu
	@(posedge clk)
((~(((ex_insn[23:20]) == 'h8) && ((ex_insn[27:24]) == 'h8) && ((ex_insn[31:28]) == 'hC))) || (to_sr[9] == 1));
endproperty //translated

// Reference was off by a parenthesis - make sure the implication is correct
property ASSERT_B07;  // bug is in alu
	@(posedge clk)
((~((ex_insn[31:28] == 'hc) && (ex_insn[27:24] == 'h9))) || (to_sr[9] == 1));
endproperty //translated //uses a flag or must apply mask

property ASSERT_B09;  // bug is in except
	@(posedge clk)
((~((wb_insn[27:24] == 1 && wb_insn[31:28] == 8)) || id_pc != epcr);
endpropert //translated

property ASSERT_B10;  // bug is in rf
   @(posedge clk)
(~(rf_addrw == 0) | (rf_dataw == 0)); //something up with rf_dataw
endproperty //translated

property ASSERT_B13;
	@(posedge clk)
((~(ex_insn[27:24] == 4 && ex_insn[31:28] == 0 && (rf_addrw != 9))) || (rf_dataw - ex_pc == 8));
endproperty //translated //need to think about how to handle a subtraction

property ASSERT_B15;
	@(posedge clk)
((~((wb_insn[27:24] == 1 && wb_insn[31:28] == 8)) || (spr_dat_npc == epcr));
endproperty //translated

// TEMPLATES

// G((a & b) -> c)
// G(((a | b) & (c | d | e | f) & (g | h | i | j) & (k | l)) -> m)
// G((a & b) -> c)
// G((a & b) -> !c)
// G((a & b & c) -> (d | e | f | g | h | i | j | k))
// G((a & b) -> (c | d | e | f | g | h | i | j))
// G((a & b) -> !c)
// G(a -> b)
// G(a & b & c)
 
// REFERENCE 
 
 property ASSERT_B01;  // bug is in except
	@(posedge clk)
((~((or1200_ctrl.wb_insn & 'hFFFF0000) >> 16 == 8192)) || or1200_except.id_pc != or1200_except.epcr);
endproperty

property ASSERT_B03;  // bug is in alu
	@(posedge clk)
((~((or1200_ctrl.ex_insn & 'hFC0003CF) == 'hE000000D)) || (or1200_rf.rf_dataw == operand_a));
endproperty

property ASSERT_B04;
	@(posedge clk)
((~((or1200_ctrl.wb_insn & 'hFFFF0000) >> 16 == 8192)) || (or1200_except.lsu_addr == or1200_except.eear));
endproperty

property ASSERT_B05;  // bug is in except
	@(posedge clk)
((~((or1200_ctrl.wb_insn & 'hFFFF0000) >> 16 == 8192)) || or1200_except.id_pc != or1200_except.epcr);
endproperty

property ASSERT_B06;  // bug is in alu
	@(posedge clk)
((~((or1200_ctrl.ex_insn & 'hFFE00000) >> 21 == 1826) && (operand_a > operand_b)) || (or1200_sprs.to_sr[9] == 1));
endproperty

property ASSERT_B07;  // bug is in alu
	@(posedge clk)
((~((or1200_ctrl.ex_insn & 'hFFE00000) >> 21 == 1829) && (operand_a <= operand_b)) || (or1200_sprs.to_sr[9] == 1));
endproperty

property ASSERT_B09;  // bug is in except
	@(posedge clk)
((~((or1200_ctrl.wb_insn & 'hFFFF0000) >> 16 == 8192)) || or1200_except.id_pc != or1200_except.epcr);
endproperty

property ASSERT_B10;  // bug is in rf
   @(posedge clk)
((~((or1200_rf.rf_we == 1) && (or1200_rf.rf_addrw == 0))) || (or1200_rf.rf_dataw == 0));
endproperty

property ASSERT_B13;
	@(posedge clk)
((~((or1200_ctrl.ex_insn & 'hFC000000) >> 26 == 1) && (or1200_rf.rf_addrw != 9 )) || (or1200_rf.rf_dataw - or1200_except.ex_pc == 8));
endproperty

property ASSERT_B15;
	@(posedge clk)
((~((or1200_ctrl.wb_insn & 'hFFFF0000) >> 16 == 8192)) || (or1200_except.spr_dat_npc == or1200_except.epcr));
endproperty
