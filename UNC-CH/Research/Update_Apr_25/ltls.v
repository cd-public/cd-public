property assert_SVA_B10;  // bug is in rf
   @(posedge clk)
(rst || ((~((or1200_rf.rf_we == 1) && (or1200_rf.rf_addrw == 0))) || (or1200_rf.rf_dataw == 0)));
endproperty

SVA_B10 : assert property(assert_SVA_B10);

//Verilog
// psl PSL_B10: assert always (rst until ((~((or1200_rf.rf_we == 1) && (or1200_rf.rf_addrw == 0))) || (or1200_rf.rf_dataw == 0)))
// @(posedge clk);

/* *** ATTEMPTING LTL TRANSLATION ***

LTL Bug from ASPLOS 2015:

delta(PC, 4, 4) || assert((INSN = JMP) || (INSN = BR) || (INSN = RFE)) ||
assert((PC & 0xFFFFF0FF) = 0)

In plain language:  "The next PC must be the currnet PC plus four UNLESS the current instruction is a jump or something"

INSN corresponds to "or1200_ctrl.ex_insn"

PC corresponds to "epcr" - sometimes

*/

property ASSERT_B01;  // also B05, B09, B15
	@(posedge clk)
((~((or1200_ctrl.wb_insn & 'hFFFF0000) >> 16 == 8192)) || or1200_except.id_pc != or1200_except.epcr);
endproperty
//  l.sys in delay slot will run into infinite loop
//  EPCR on range exception is incorrect
//  EPCR on illegal instruction exception is incorrect
//  Wrong PC stored during FPU exception trap
//  8192 << 16 = "l.sys"
//  English:  "When l.sys is in writeback, the local program counter settings in the exception handler must be equal"


property ASSERT_B03;  
	@(posedge clk)
((~((or1200_ctrl.ex_insn & 'hFC0003CF) == 'hE000000D)) || (or1200_rf.rf_dataw == operand_a));
endproperty
//  l.extw instructions behave incorrectly
//  E000000D = "l.extws"
//  English:  "When l.extws is executing, the data to be written must be equal to the first operand"

property ASSERT_B04;
	@(posedge clk)
((~((or1200_ctrl.wb_insn & 'hFFFF0000) >> 16 == 8192)) || (or1200_except.lsu_addr == or1200_except.eear));
//  Delay Slot Exception bit is not implemented in SR
//  8192 << 16 = "l.sys"
//  English:  "When l.sys is in writeback, the exception handlers load/save unit address must be the same as EEPROM Address Register"

property ASSERT_B06;  
	@(posedge clk)
((~((or1200_ctrl.ex_insn & 'hFFE00000) >> 21 == 1826) && (operand_a > operand_b)) || (or1200_sprs.to_sr[9] == 1));
endproperty
//  Comparison wrong for unsigned inequality with different MSB
//  1826 << 21 = "l.sfgtu" - "(set cbit (gt rA rB))" or "l.mnemonic"
//  English:  "When l.sfgtu, which is some kind of comparison, is executing and the first operand is great than the second, the ninth lowest bit (some flag) of to_sr must be set"

property ASSERT_B07;
	@(posedge clk)
((~((or1200_ctrl.ex_insn & 'hFFE00000) >> 21 == 1829) && (operand_a <= operand_b)) || (or1200_sprs.to_sr[9] == 1));
endproperty
//  Incorrect unsigned integer less-than compare
//  1826 << 21 = "l.sfgtu" (remaining bits specify registers)
//  English:  "When l.sfgtu, which is some kind of comparison, is executing and the first operand is less than or equal to the second, the ninth lowest bit (some flag) of to_sr must be set"

property ASSERT_B13;
	@(posedge clk)
((~((or1200_ctrl.ex_insn & 'hFC000000) >> 26 == 1) && (or1200_rf.rf_addrw != 9 )) || (or1200_rf.rf_dataw - or1200_except.ex_pc == 8));
endproperty
//  Call return address failure with large displacement
//  1 << 26 = "l.jal"
//  English:  "When l.jal is executing and the write destination isn't R09, the jump destination less the execution program counter local to the execution handle must be 8 apart"