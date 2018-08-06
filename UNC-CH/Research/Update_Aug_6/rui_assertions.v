// instruction temporality note:  if -> id -> ex -> wb

// s01
assert property ((~((or1200_ctrl.ex_insn & 'hFC0007FF) == 'hC0000011)) || (or1200_sprs.to_sr[0] == operand_b[0]) || (rst == 1));
assert property ((~((ex_insn[27:24] == 1 && ex_insn[31:28] == 8))) || (to_sr[0] == operand_b[0]));
// n & n -> t
// less restrictive on legal behavior but same restrictive with opcode constraint

// s02
assert property ((~((or1200_ctrl.wb_insn & 'hFFFF0000) >> 16 == 8192)) || (or1200_sprs.sr == or1200_except.esr) || (rst == 1));
assert property ((~((wb_insn[27:24] == 1 && wb_insn[31:28] == 8))) || (sr == esr));
// n & n -> t
// less restrictive on legal behavior but same restrictive with opcode constraint

// s03
assert property ((~((or1200_ctrl.ex_insn & 'hFC000000) >> 26 == 9)) || (or1200_sprs.to_sr == or1200_except.esr) || (rst == 1));
assert property ((~((ex_insn[27:24] == 4 && ex_insn[31:28] == 2))) || (to_sr == esr));
// n & n -> t
// same restrictive

// s04
//reg  [31:0] prev_sr_reg;
//always @(posedge clk)
//begin
//  prev_sr_reg <= or1200_sprs.sr_reg;
//end
assert property ((~((or1200_ctrl.ex_insn & 'hFC000000) >> 26 == 56)) || ((or1200_sprs.sr_reg & 1) == (prev_sr_reg & 1)) || (rst==1));
assert property ((~((X ex_insn[27:24] == 0 && X ex_insn[31:28] == e))) || (to_sr == X to_sr));
// X n & X n -> delta
// temporal property
// need to check that the transfer from sr_reg to to_sr is fine
// same restrictive

// s05
assert property ((~((or1200_ctrl.ex_insn & 'hFFFF0000) >> 16 == 5376)) || (or1200_rf.rf_addrw == ((or1200_ctrl.ex_insn & 'h03E00000) >> 21)) || (rst == 1));
assert property ((~((ex_insn[19:16] == 6 && ex_insn[23:20] == 7 && ex_insn[27:24] == 3 && ex_insn[31:28] == 5))) || (rf_addrw == ((ex_insn & 'h03E00000) >> 21)));
// n & n & n & n -> t with some kind of shifts, will have to accomodate this
// same restrictive

// s06
assert property ((if_insn == 32'h14610000) || (if_insn == 32'h14410000) || (if_insn == icpu_dat_i ) || (if_insn == 0) || (rst == 1) || (if_insn == or1200_if.insn_saved));
// need cadence
// not an implication

// s07
assert property ((~((or1200_ctrl.ex_insn & 'hFC000000) >> 26 == 9)) || (or1200_sprs.to_sr == or1200_except.esr) || (rst == 1));
// same as s03

// s08
assert property ((~((or1200_ctrl.wb_insn & 'hFFFF0000) >> 16 == 8192)) || (or1200_except.lsu_addr == or1200_except.eear) || (rst == 1));
assert property ((~((wb_insn[27:24] == 1 && wb_insn[31:28] == 8))) || (dcpu_adr_o == eear));
// n & n -> t
// less restrictive on legal behavior but same restrictive with opcode constraint

// s09
assert property ((~((or1200_ctrl.wb_insn & 'hFFFF0000) >> 16 == 8192)) || (or1200_except.spr_dat_npc == or1200_except.epcr) || (rst == 1));
assert property ((~((wb_insn[27:24] == 1 && wb_insn[31:28] == 8))) || (sr == esr));
// n & n -> t
// less restrictive on legal behavior but same restrictive with opcode constraint

// s10
assert property ((~((or1200_ctrl.ex_insn & 'hFC000000) >> 26 == 9)) || (or1200_genpc.pc == or1200_except.epcr) || (rst == 1));
assert property ((~((ex_insn[27:24] == 4 && ex_insn[31:28] == 2))) || (pc == epcr));
// n & n -> t with some kind of shifts, will have to accomodate this
// same restrictive

// s11
assert property ((~((or1200_ctrl.ex_insn & 'hFFFF0000) >> 16 == 8192)) || (or1200_ctrl.id_flushpipe != 0) || (rst == 1));
assert property ((~((ex_insn[27:24] == 1 && ex_insn[31:28] == 8))) || (or1200_ctrl.id_flushpipe != 0));
// n & n -> !b
// less restrictive on legal behavior but same restrictive with opcode constraint

// s12
//reg [31:0] prev_if_insn;
//reg [0:0] prev_id_freeze;
//always @(posedge clk) 
//begin
//  prev_if_insn <= if_insn;
//  prev_id_freeze <= id_freeze;
//end
assert property ((id_insn == 32'h14410000) || (id_insn == 32'h14610000) || (id_insn == prev_if_insn) || (prev_id_freeze) || (rst == 1));
assert property ((X id_insn[19:16] == 1 && (X id_insn[23:20] == 4 || X id_insn[23:20] == 4) && X id_insn[27:24] == 4 && X id_insn[31:28] == 1) || (X id_insn == if_insn) || (id_freeze));
// X n & (X n | X n) & X n & X n | delta | b
// temporal property
// same restrictive

// s13
assert property ((~((or1200_ctrl.ex_insn & 'hFFFF0000) >> 16 == 8192)) || (or1200_rf.rf_addrw == ((or1200_ctrl.ex_insn & 'h03E00000) >> 21)) || (rst == 1));
// same as s05

// s14
assert property ((~((or1200_ctrl.wb_insn & 'hFFFF0000) >> 16 == 8192)) || (or1200_except.spr_dat_npc == or1200_except.epcr) || (rst == 1));
// same as s08

// b01
assert property ((~((or1200_ctrl.wb_insn & 'hFFFF0000) >> 16 == 8192)) || (or1200_except.id_pc == or1200_except.epcr) || (rst == 1));
assert property ((~((wb_insn[27:24] == 1 && wb_insn[31:28] == 8))) || id_pc != epcr);
// n & n -> t
// less restrictive on legal behavior but same restrictive with opcode constraint

// b03
assert property ((~((or1200_ctrl.ex_insn & 'hFC0003CF) == 'hE000000D)) || (or1200_rf.rf_dataw == operand_a) || (or1200_rf.rf_dataw == 0) || (rst == 1));
assert property ((~(((ex_insn[31:28]) == 'hE) && ((ex_insn[27:24] & 'hC) == 0) && ((ex_insn[7:4] & 'hC) == 0) && ((ex_insn[3:0]) == 'hD))) || (rf_dataw == operand_a));
// n & n & n & n -> t
// same restrictive

// b04
assert property ((~((or1200_ctrl.wb_insn & 'hFFFF0000) >> 16 == 8192)) || (or1200_except.lsu_addr == or1200_except.eear) || (rst == 1));
assert property ((!(wb_insn[27:24] == 1 && wb_insn[31:28] == 8)) || (dcpu_adr_o == eear));
// n & n -> t
// less restrictive on legal behavior but same restrictive with opcode constraint

// b05
assert property ((~((or1200_ctrl.wb_insn & 'hFFFF0000) >> 16 == 8192)) || (or1200_except.id_pc == or1200_except.epcr) || (rst == 1));
assert property ((~((wb_insn[27:24] == 1 && wb_insn[31:28] == 8)) || id_pc != epcr);
// n & n -> t
// less restrictive on legal behavior but same restrictive with opcode constraint

// b06
assert property (~(((or1200_ctrl.ex_insn & 'hFFE00000) >> 21  == 1826) && (operand_a > operand_b)) || (or1200_sprs.to_sr[9] == 1) || (rst == 1));
assert property ((~(((ex_insn[23:20]) == 'h8) && ((ex_insn[27:24]) == 'h8) && ((ex_insn[31:28]) == 'hC))) || (to_sr[9] == 1));
// no elegant way to do this one
// same restrictive

// b07
assert property (~(((or1200_ctrl.ex_insn & 'hFFE00000) >> 21  == 1829) && (operand_a <= operand_b)) || (or1200_sprs.to_sr[9] == 1) || (rst == 1));
assert property ((~((ex_insn[31:28] == 'hc) && (ex_insn[27:24] == 'h9))) || (to_sr[9] == 1));
// n & n -> t
// less restrictive on legal behavior but same restrictive with opcode constraint

// b08
assert property ((~((or1200_ctrl.ex_insn & 'hFC0003CF) == 'hE00000C8)) || (((operand_a << (6'd32 - {1'b0, operand_b[4:0]})) | (operand_a >> operand_b[4:0])) == or1200_rf.rf_dataw) || (or1200_rf.rf_dataw == 0) || (rst == 1));
assert property ((~((or1200_ctrl.ex_insn & 'hFC0003CF) == 'hE00000C8)) || (((operand_a << (6'd32 - {1'b0, operand_b[4:0]})) | (operand_a >> operand_b[4:0])) == or1200_rf.rf_dataw) || (or1200_rf.rf_dataw == 0) || (rst == 1));
// um

// b09
assert property ((~((or1200_ctrl.wb_insn & 'hFFFF0000) >> 16 == 8192)) || (or1200_except.id_pc == or1200_except.epcr) || (rst == 1));
assert property ((~((wb_insn[27:24] == 1 && wb_insn[31:28] == 8)) || id_pc != epcr);
// n & n -> t
// less restrictive on legal behavior but same restrictive with opcode constraint

// b10
assert property ((~((or1200_rf.rf_we == 1) && (or1200_rf.rf_addrw == 0))) || (or1200_rf.rf_dataw == 0) || (rst == 1));
assert property (~(rf_addrw == 0) | (rf_dataw == 0));
// n & n -> t
// more restrictive on legal behavior

// b12
assert property ((~((or1200_ctrl.ex_insn & 'hFC000000) >> 26 == 48)) || (or1200_sprs.spr_dat_o == operand_b));
assert property ((~((or1200_ctrl.ex_insn & 'hFC000000) >> 26 == 48)) || (or1200_sprs.spr_dat_o == operand_b));
// n & n -> t
// less restrictive on legal behavior but same restrictive with opcode constraint

// b13
assert property ((~((or1200_ctrl.wb_insn & 'hFC000000) >> 26 == 1))  || (or1200_rf.rf_a.mem[9] - or1200_except.ex_pc == 8) || (rst == 1));
assert property (~(ex_insn[27:24] == 4 && ex_insn[31:28] == 0 && (rf_addrw != 9)));
// n & n -> t
// less restrictive on legal behavior but same restrictive with opcode constraint

// b14
assert property ((~((or1200_ctrl.ex_insn & 'hFC000000) >> 26 == 53)) || ((or1200_lsu.or1200_reg2mem.memdata & 16'hFFFF) == (or1200_lsu.or1200_reg2mem.regdata & 16'hFFFF)) || (rst == 1));
assert property ((~((or1200_ctrl.ex_insn & 'hFC000000) >> 26 == 53)) || ((or1200_lsu.or1200_reg2mem.memdata & 16'hFFFF) == (or1200_lsu.or1200_reg2mem.regdata & 16'hFFFF)) || (rst == 1));
// um

// b15
assert property ((~((or1200_ctrl.wb_insn & 'hFFFF0000) >> 16 == 8192)) || (or1200_except.spr_dat_npc == or1200_except.epcr) || (rst == 1));
assert property ((~((wb_insn[27:24] == 1 && wb_insn[31:28] == 8)) || (spr_dat_npc == epcr));
// n & n -> t
// less restrictive on legal behavior but same restrictive with opcode constraint

// b16
assert property ((~((or1200_ctrl.ex_insn & 'hFC000000) >> 26 == 53)) || ((or1200_lsu.or1200_reg2mem.memdata & 16'hFFFF) == (or1200_lsu.or1200_reg2mem.regdata & 16'hFFFF)) || (rst == 1));
// same as b14

// b17
assert property ((or1200_lsu.dcpu_dat_i == or1200_lsu.or1200_mem2reg.memdata) || (rst == 1));
assert property (dcpu_dat_i == dcpu_dat_o);
// t
// same restrictive
  
// Security checkers - only property is:
// assert never [((mem_source(0)=’1’) and not
// ((opcode>39) and (opcode<44))] @rose(clk)
// which is of the same form as ours - op restrictions in an implication with, in their case, an inequality
  
