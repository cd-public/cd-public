property ASSERT_SVA_B10;  // bug is in rf
   @(posedge clk)
(rst || ((~((or1200_rf.rf_we == 1) && (or1200_rf.rf_addrw == 0))) || (or1200_rf.rf_dataw == 0)));
endproperty

SVA_B10 : assert property(ASSERT_SVA_B10);
// psl PSL_B10: assert always (rst || (((or1200_rf.rf_we != 1) || (or1200_rf.rf_addrw != 0)) || (or1200_rf.rf_dataw == 0)))
// @(posedge clk);

// Template:  A until G((B&C)->D)

property ASSERT_SVA_B01;  // also B05, B09, B15
	@(posedge clk)
(rst || (((or1200_ctrl.wb_insn & 'hFFFF0000) >> 16 != 8192) || or1200_except.id_pc != or1200_except.epcr));
endproperty

SVA_B01 : assert property(ASSERT_SVA_B01);
//  l.sys in delay slot will run into infinite loop
//  EPCR on range exception is incorrect
//  EPCR on illegal instruction exception is incorrect
//  Wrong PC stored during FPU exception trap
//  8192 << 16 = "l.sys"
//  English:  "When l.sys is in writeback, the local program counter settings in the exception handler must be equal"

// psl PSL_B01: assert always (rst || (((or1200_ctrl.wb_insn & 'hFFFF0000) >> 16 != 8192) || or1200_except.id_pc != or1200_except.epcr))
// @(posedge clk);

// Template:  A until G(B->C)

property ASSERT_SVA_B03;  
	@(posedge clk)
(rst || ((~((or1200_ctrl.ex_insn & 'hFC0003CF) == 'hE000000D)) || (or1200_rf.rf_dataw == operand_a)));
endproperty

// SVA_B03 : assert property(ASSERT_SVA_B03);
//  l.extw instructions behave incorrectly
//  E000000D = "l.extws"
//  English:  "When l.extws is executing, the data to be written must be equal to the first operand"

// psl PSL_B03: assert always ((rst == 1) || ((~((or1200_ctrl.ex_insn & 'hFC0003CF) == 'hE000000D)) || (or1200_rf.rf_dataw == operand_a)))
// @(posedge clk);

// Template:  A until G(B->C)

property ASSERT_SVA_B04;
	@(posedge clk)
(rst || ((((or1200_ctrl.wb_insn & 'hFFFF0000) >> 16 != 8192)) || (or1200_except.lsu_addr == or1200_except.eear)));
endproperty

SVA_B04 : assert property(ASSERT_SVA_B04);
//  Delay Slot Exception bit is not implemented in SR
//  8192 << 16 = "l.sys"
//  English:  "When l.sys is in writeback, the exception handlers load/save unit address must be the same as EEPROM Address Register"

// psl PSL_B04: assert always (((or1200_ctrl.id_insn & 'hFFFF0000) >> 16 != 8192) || next next (or1200_except.lsu_addr == or1200_except.eear));
// @(posedge clk);

// Template:  A until G(B->C)

property ASSERT_SVA_B06;  
	@(posedge clk)
(rst || ((~((or1200_ctrl.ex_insn & 'hFFE00000) >> 21 == 1826) && (operand_a > operand_b)) || (or1200_sprs.to_sr[9] == 1)));
endproperty

// SVA_B06 : assert property(ASSERT_SVA_B06);
//  Comparison wrong for unsigned inequality with different MSB
//  1826 << 21 = "l.sfgtu" - "(set cbit (gt rA rB))" or "l.mnemonic"
//  English:  "When l.sfgtu, which is some kind of comparison, is executing and the first operand is great than the second, the ninth lowest bit (some flag) of to_sr must be set"

// psl PSL_B06: assert always (rst until ((~((or1200_ctrl.ex_insn & 'hFC0003CF) == 'hE000000D)) || (or1200_rf.rf_dataw == operand_a)))
// @(posedge clk);

// Template:  A until G((B&C)->D)

property ASSERT_SVA_B13;
	@(posedge clk)
(rst || ((~((or1200_ctrl.ex_insn & 'hFC000000) >> 26 == 1) && (or1200_rf.rf_addrw != 9 )) || (or1200_rf.rf_dataw - or1200_except.ex_pc == 8)));
endproperty

// SVA_B13 : assert property(ASSERT_SVA_B13);
//  Call return address failure with large displacement
//  1 << 26 = "l.jal"
//  English:  "When l.jal is executing and the write destination isn't R09, the jump destination less the execution program counter local to the execution handle must be 8 apart"

// psl PSL_B13: assert always (rst until ((~((or1200_ctrl.ex_insn & 'hFC0003CF) == 'hE000000D)) || (or1200_rf.rf_dataw == operand_a)))
// @(posedge clk);

// Template:  A until G((B&C)->D)

property ASSUME_DU;
	@(posedge clk)
(du_stall == 0 && du_addr == 0 && du_dat_du == 0 && du_read == 0 && du_write == 0 && du_except_stop == 0 && du_flush_pipe == 0 && du_except_trig == 0 && du_dsr == 0 && du_dmr1 == 0 && du_hwbkpt == 0 && du_hwbkpt_ls_r == 0 && du_dat_cpu == 0 && du_lsu_store_dat == 0 && du_lsu_load_dat  == 0);
endproperty

// constraint.h ...

property ASSUME_H;
	@(posedge clk)
	(((icpu_dat_i & 'hFC000000) >> 26 == 0) || ((icpu_dat_i & 'hFC000000) >> 26 == 1) || ((icpu_dat_i & 'hFC000000) >> 26 == 3) || ((icpu_dat_i & 'hFC000000) >> 26 == 4) || (((icpu_dat_i & 'hFC000000) >> 26 == 5) && ((icpu_dat_i & 'h3000000) >> 24 == 1)) || (((icpu_dat_i & 'hFC000000) >> 26 == 6) && ((icpu_dat_i & 'h10000) >> 16 == 0)) || (((icpu_dat_i & 'hFC000000) >> 26 == 6) && ((icpu_dat_i & 'h10000) >> 16 == 1)) || (((icpu_dat_i & 'hFC000000) >> 26 == 8) && ((icpu_dat_i & 'h3FF0000) >> 16 == 0)) || (((icpu_dat_i & 'hFC000000) >> 26 == 8) && ((icpu_dat_i & 'h3FF0000) >> 16 == 256)) || (((icpu_dat_i & 'hFC000000) >> 26 == 8) && ((icpu_dat_i & 'h3FF0000) >> 16 == 512)) || (((icpu_dat_i & 'hFC000000) >> 26 == 8) && ((icpu_dat_i & 'h3FF0000) >> 16 == 640)) || (((icpu_dat_i & 'hFC000000) >> 26 == 8) && ((icpu_dat_i & 'h3FF0000) >> 16 == 768)) || ((icpu_dat_i & 'hFC000000) >> 26 == 9) || ((icpu_dat_i & 'hFC000000) >> 26 == 17) || ((icpu_dat_i & 'hFC000000) >> 26 == 18) || ((icpu_dat_i & 'hFC000000) >> 26 == 19) || ((icpu_dat_i & 'hFC000000) >> 26 == 27) || ((icpu_dat_i & 'hFC000000) >> 26 == 32) || ((icpu_dat_i & 'hFC000000) >> 26 == 33) || ((icpu_dat_i & 'hFC000000) >> 26 == 34) || ((icpu_dat_i & 'hFC000000) >> 26 == 35) || ((icpu_dat_i & 'hFC000000) >> 26 == 36) || ((icpu_dat_i & 'hFC000000) >> 26 == 37) || ((icpu_dat_i & 'hFC000000) >> 26 == 38) || ((icpu_dat_i & 'hFC000000) >> 26 == 39) || ((icpu_dat_i & 'hFC000000) >> 26 == 40) ||  ((icpu_dat_i & 'hFC000000) >> 26 == 41) || ((icpu_dat_i & 'hFC000000) >> 26 == 42) || ((icpu_dat_i & 'hFC000000) >> 26 == 43) || ((icpu_dat_i & 'hFC000000) >> 26 == 44) || ((icpu_dat_i & 'hFC000000) >> 26 == 45) || (((icpu_dat_i & 'hFC000000) >> 26 == 46) && ((icpu_dat_i & 192) >> 6 == 0)) || (((icpu_dat_i & 'hFC000000) >> 26 == 46) && ((icpu_dat_i & 192) >> 6 == 1)) || (((icpu_dat_i & 'hFC000000) >> 26 == 46) && ((icpu_dat_i & 192) >> 6 == 2)) || (((icpu_dat_i & 'hFC000000) >> 26 == 46) && ((icpu_dat_i & 192) >> 6 == 3)) || (((icpu_dat_i & 'hFC000000) >> 26 == 47) && ((icpu_dat_i & 'h3E00000) >> 21 == 0)) || (((icpu_dat_i & 'hFC000000) >> 26 == 47) && ((icpu_dat_i & 'h3E00000) >> 21 == 1)) || (((icpu_dat_i & 'hFC000000) >> 26 == 47) && ((icpu_dat_i & 'h3E00000) >> 21 == 2)) || (((icpu_dat_i & 'hFC000000) >> 26 == 47) && ((icpu_dat_i & 'h3E00000) >> 21 == 3)) || (((icpu_dat_i & 'hFC000000) >> 26 == 47) && ((icpu_dat_i & 'h3E00000) >> 21 == 4)) || (((icpu_dat_i & 'hFC000000) >> 26 == 47) && ((icpu_dat_i & 'h3E00000) >> 21 == 5)) || (((icpu_dat_i & 'hFC000000) >> 26 == 47) && ((icpu_dat_i & 'h3E00000) >> 21 == 10)) || (((icpu_dat_i & 'hFC000000) >> 26 == 47) && ((icpu_dat_i & 'h3E00000) >> 21 == 11)) || (((icpu_dat_i & 'hFC000000) >> 26 == 47) && ((icpu_dat_i & 'h3E00000) >> 21 == 12)) || (((icpu_dat_i & 'hFC000000) >> 26 == 47) && ((icpu_dat_i & 'h3E00000) >> 21 == 13)) || ((icpu_dat_i & 'hFC000000) >> 26 == 48) || (((icpu_dat_i & 'hFC000000) >> 26 == 49) && ((icpu_dat_i & 3) >> 0 == 1)) || (((icpu_dat_i & 'hFC000000) >> 26 == 49) && ((icpu_dat_i & 3) >> 0 == 2)) || ((icpu_dat_i & 'hFC000000) >> 26 == 51) || ((icpu_dat_i & 'hFC000000) >> 26 == 52) || ((icpu_dat_i & 'hFC000000) >> 26 == 53) || ((icpu_dat_i & 'hFC000000) >> 26 == 54) || ((icpu_dat_i & 'hFC000000) >> 26 == 55) || (((icpu_dat_i & 'hFC000000) >> 26 == 56) && ((icpu_dat_i & 768) >> 8 == 0) && ((icpu_dat_i & 15) >> 0 == 0)) || (((icpu_dat_i & 'hFC000000) >> 26 == 56) && ((icpu_dat_i & 768) >> 8 == 0) && ((icpu_dat_i & 15) >> 0 == 1)) || (((icpu_dat_i & 'hFC000000) >> 26 == 56) && ((icpu_dat_i & 768) >> 8 == 0) && ((icpu_dat_i & 15) >> 0 == 2)) || (((icpu_dat_i & 'hFC000000) >> 26 == 56) && ((icpu_dat_i & 768) >> 8 == 0) && ((icpu_dat_i & 15) >> 0 == 3)) || (((icpu_dat_i & 'hFC000000) >> 26 == 56) && ((icpu_dat_i & 768) >> 8 == 0) && ((icpu_dat_i & 15) >> 0 == 4)) || (((icpu_dat_i & 'hFC000000) >> 26 == 56) && ((icpu_dat_i & 768) >> 8 == 0) && ((icpu_dat_i & 15) >> 0 == 5)) || (((icpu_dat_i & 'hFC000000) >> 26 == 56) && ((icpu_dat_i & 768) >> 8 == 3) && ((icpu_dat_i & 15) >> 0 == 6)) || (((icpu_dat_i & 'hFC000000) >> 26 == 56) && ((icpu_dat_i & 768) >> 8 == 0) && ((icpu_dat_i & 192) >> 6 == 0) && ((icpu_dat_i & 15) >> 0 == 8)) || (((icpu_dat_i & 'hFC000000) >> 26 == 56) && ((icpu_dat_i & 768) >> 8 == 0) && ((icpu_dat_i & 192) >> 6 == 1) && ((icpu_dat_i & 15) >> 0 == 8)) || (((icpu_dat_i & 'hFC000000) >> 26 == 56) && ((icpu_dat_i & 768) >> 8 == 0) && ((icpu_dat_i & 192) >> 6 == 2) && ((icpu_dat_i & 15) >> 0 == 8)) || (((icpu_dat_i & 'hFC000000) >> 26 == 56) && ((icpu_dat_i & 768) >> 8 == 0) && ((icpu_dat_i & 192) >> 6 == 3) && ((icpu_dat_i & 15) >> 0 == 8)) || (((icpu_dat_i & 'hFC000000) >> 26 == 56) && ((icpu_dat_i & 768) >> 8 == 3) && ((icpu_dat_i & 15) >> 0 == 9)) || (((icpu_dat_i & 'hFC000000) >> 26 == 56) && ((icpu_dat_i & 768) >> 8 == 3) && ((icpu_dat_i & 15) >> 0 == 10)) || (((icpu_dat_i & 'hFC000000) >> 26 == 56) && ((icpu_dat_i & 768) >> 8 == 3) && ((icpu_dat_i & 15) >> 0 == 11)) || (((icpu_dat_i & 'hFC000000) >> 26 == 56) && ((icpu_dat_i & 768) >> 8 == 0) && ((icpu_dat_i & 192) >> 6 == 1) && ((icpu_dat_i & 15) >> 0 == 12)) || (((icpu_dat_i & 'hFC000000) >> 26 == 56) && ((icpu_dat_i & 768) >> 8 == 0) && ((icpu_dat_i & 192) >> 6 == 0) && ((icpu_dat_i & 15) >> 0 == 12)) || (((icpu_dat_i & 'hFC000000) >> 26 == 56) && ((icpu_dat_i & 768) >> 8 == 0) && ((icpu_dat_i & 192) >> 6 == 0) && ((icpu_dat_i & 15) >> 0 == 13)) || (((icpu_dat_i & 'hFC000000) >> 26 == 56) && ((icpu_dat_i & 768) >> 8 == 0) && ((icpu_dat_i & 192) >> 6 == 3) && ((icpu_dat_i & 15) >> 0 == 12)) || (((icpu_dat_i & 'hFC000000) >> 26 == 56) && ((icpu_dat_i & 768) >> 8 == 0) && ((icpu_dat_i & 192) >> 6 == 2) && ((icpu_dat_i & 15) >> 0 == 12)) || (((icpu_dat_i & 'hFC000000) >> 26 == 56) && ((icpu_dat_i & 768) >> 8 == 0) && ((icpu_dat_i & 192) >> 6 == 1) && ((icpu_dat_i & 15) >> 0 == 13)) || (((icpu_dat_i & 'hFC000000) >> 26 == 56) && ((icpu_dat_i & 768) >> 8 == 0) && ((icpu_dat_i & 15) >> 0 == 14)) || (((icpu_dat_i & 'hFC000000) >> 26 == 56) && ((icpu_dat_i & 768) >> 8 == 0) && ((icpu_dat_i & 15) >> 0 == 15)) || (((icpu_dat_i & 'hFC000000) >> 26 == 56) && ((icpu_dat_i & 768) >> 8 == 1) && ((icpu_dat_i & 15) >> 0 == 15)) || (((icpu_dat_i & 'hFC000000) >> 26 == 57) && ((icpu_dat_i & 'h3E00000) >> 216 == 0)) || (((icpu_dat_i & 'hFC000000) >> 26 == 57) && ((icpu_dat_i & 'h3E00000) >> 216 == 1)) || (((icpu_dat_i & 'hFC000000) >> 26 == 57) && ((icpu_dat_i & 'h3E00000) >> 216 == 2)) || (((icpu_dat_i & 'hFC000000) >> 26 == 57) && ((icpu_dat_i & 'h3E00000) >> 216 == 3)) || (((icpu_dat_i & 'hFC000000) >> 26 == 57) && ((icpu_dat_i & 'h3E00000) >> 216 == 4)) || (((icpu_dat_i & 'hFC000000) >> 26 == 57) && ((icpu_dat_i & 'h3E00000) >> 216 == 5)) || (((icpu_dat_i & 'hFC000000) >> 26 == 57) && ((icpu_dat_i & 'h3E00000) >> 216 == 10)) || (((icpu_dat_i & 'hFC000000) >> 26 == 57) && ((icpu_dat_i & 'h3E00000) >> 216 == 11)) || (((icpu_dat_i & 'hFC000000) >> 26 == 57) && ((icpu_dat_i & 'h3E00000) >> 216 == 12)) || (((icpu_dat_i & 'hFC000000) >> 26 == 57) && ((icpu_dat_i & 'h3E00000) >> 216 == 13)));
endproperty
