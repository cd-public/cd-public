property ASSERT_SVA_B10;  // From Rui
   @(posedge clk)
(rst || ((~((or1200_rf.rf_we == 1) && (or1200_rf.rf_addrw == 0))) || (or1200_rf.rf_dataw == 0)));
endproperty

property ASSERT_CPU_B10;  // Naive CPU translation
   @(posedge clk)
(rst || ((~(((((spr_cs[`OR1200_SPR_GROUP_SYS] & (spr_addr[10:5] == `OR1200_SPR_RF)) & spr_we) | (rfwb_op[0] & ~wb_freeze) & (rst ? rst : ~wb_flushpipe)))
&& ((((spr_cs[`OR1200_SPR_GROUP_SYS] & (spr_addr[10:5] == `OR1200_SPR_RF)) & spr_we) ? spr_addr[4:0] : rf_addrw) == 0))) 
|| ((((spr_cs[`OR1200_SPR_GROUP_SYS] & (spr_addr[10:5] == `OR1200_SPR_RF)) & spr_we) ? spr_dat_cpu : or1200_rf.rf_dataw) == 0))); // or1200_rf.rf_dataw should just be dataw - TODO
endproperty

property ASSERT_ALT_B10;  // CPU translation simplified
   @(posedge clk)
(rst || ((~(spr_cs[`OR1200_SPR_GROUP_SYS] & (spr_addr[10:5] == `OR1200_SPR_RF) & spr_we & spr_addr[4:0]) | spr_dat_cpu == 0) &&
(~(rfwb_op[0] & ~wb_freeze & rf_addrw == 0) | (or1200_rf.rf_dataw == 0))));
endproperty

property ASSERT_AL1_B10;  // Minimal discovered representation
   @(posedge clk)
(~(rf_addrw == 0) | (or1200_rf.rf_dataw == 0));
endproperty
