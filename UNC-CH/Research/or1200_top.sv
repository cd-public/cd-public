//////////////////////////////////////////////////////////////////////
////                                                              ////
////  OR1200 Top Level                                            ////
////                                                              ////
////  This file is part of the OpenRISC 1200 project              ////
////  http://opencores.org/project,or1k                           ////
////                                                              ////
////  Description                                                 ////
////  OR1200 Top Level                                            ////
////                                                              ////
////  To Do:                                                      ////
////   - make it smaller and faster                               ////
////                                                              ////
////  Author(s):                                                  ////
////      - Damjan Lampret, lampret@opencores.org                 ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// CVS Revision History
//
// $Log: or1200_top.v,v $
// Revision 2.0  2010/06/30 11:00:00  ORSoC
// Major update: 
// Structure reordered. 
//

// synopsys translate_off
`timescale 1ps/1ps
// synopsys translate_on

// BEGIN DEFINES
//////////////////////////////////////////////////////////////////////
////                                                              ////
////  OR1200's definitions                                        ////
////                                                              ////
////  This file is part of the OpenRISC 1200 project              ////
////  http://opencores.org/project,or1k                           ////
////                                                              ////
////  Description                                                 ////
////  Defines for the OR1200 core                                 ////
////                                                              ////
////  To Do:                                                      ////
////   - add parameters that are missing                          ////
////                                                              ////
////  Author(s):                                                  ////
////      - Damjan Lampret, lampret@opencores.org                 ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// $Log: or1200_defines.v,v $
// Revision 2.0  2010/06/30 11:00:00  ORSoC
// Minor update: 
// Defines added, bugs fixed. 

//
// Dump VCD
//
//`define OR1200_VCD_DUMP

//
// Generate debug messages during simulation
//
//`define OR1200_VERBOSE

//  `define OR1200_ASIC
////////////////////////////////////////////////////////
//
// Typical configuration for an ASIC
//
`ifdef OR1200_ASIC

//
// Target ASIC memories
//
//`define OR1200_ARTISAN_SSP
//`define OR1200_ARTISAN_SDP
//`define OR1200_ARTISAN_STP
`define OR1200_VIRTUALSILICON_SSP
//`define OR1200_VIRTUALSILICON_STP_T1
//`define OR1200_VIRTUALSILICON_STP_T2

//
// Do not implement Data cache
//
//`define OR1200_NO_DC

//
// Do not implement Insn cache
//
//`define OR1200_NO_IC

//
// Do not implement Data MMU
//
//`define OR1200_NO_DMMU

//
// Do not implement Insn MMU
//
//`define OR1200_NO_IMMU

//
// Select between ASIC optimized and generic multiplier
//
//`define OR1200_ASIC_MULTP2_32X32
`define OR1200_GENERIC_MULTP2_32X32

//
// Size/type of insn/data cache if implemented
//
// `define OR1200_IC_1W_512B
// `define OR1200_IC_1W_4KB
`define OR1200_IC_1W_8KB
// `define OR1200_DC_1W_4KB
`define OR1200_DC_1W_8KB

`else


/////////////////////////////////////////////////////////
//
// Typical configuration for an FPGA
//

//
// Target FPGA memories
//
//`define OR1200_ALTERA_LPM
//`define OR1200_XILINX_RAMB16
//`define OR1200_XILINX_RAMB4
//`define OR1200_XILINX_RAM32X1D
//`define OR1200_USE_RAM16X1D_FOR_RAM32X1D
// Generic models should infer RAM blocks at synthesis time (not only effects 
// single port ram.)
`define OR1200_GENERIC

//
// Do not implement Data cache
//
//`define OR1200_NO_DC

//
// Do not implement Insn cache
//
//`define OR1200_NO_IC

//
// Do not implement Data MMU
//
//`define OR1200_NO_DMMU

//
// Do not implement Insn MMU
//
//`define OR1200_NO_IMMU

//
// Select between ASIC and generic multiplier
//
// (Generic seems to trigger a bug in the Cadence Ncsim simulator)
//
//`define OR1200_ASIC_MULTP2_32X32
`define OR1200_GENERIC_MULTP2_32X32

//
// Size/type of insn/data cache if implemented
// (consider available FPGA memory resources)
//
//`define OR1200_IC_1W_512B
//`define OR1200_IC_1W_4KB
`define OR1200_IC_1W_8KB
//`define OR1200_IC_1W_16KB
//`define OR1200_IC_1W_32KB
//`define OR1200_DC_1W_4KB
`define OR1200_DC_1W_8KB
//`define OR1200_DC_1W_16KB
//`define OR1200_DC_1W_32KB

`endif


//////////////////////////////////////////////////////////
//
// Do not change below unless you know what you are doing
//

//
// Reset active low
//
//`define OR1200_RST_ACT_LOW

//
// Enable RAM BIST
//
// At the moment this only works for Virtual Silicon
// single port RAMs. For other RAMs it has not effect.
// Special wrapper for VS RAMs needs to be provided
// with scan flops to facilitate bist scan.
//
//`define OR1200_BIST

//
// Register OR1200 WISHBONE outputs
// (must be defined/enabled)
//
`define OR1200_REGISTERED_OUTPUTS

//
// Register OR1200 WISHBONE inputs
//
// (must be undefined/disabled)
//
//`define OR1200_REGISTERED_INPUTS

//
// Disable bursts if they are not supported by the
// memory subsystem (only affect cache line fill)
//
//`define OR1200_NO_BURSTS
//

//
// WISHBONE retry counter range
//
// 2^value range for retry counter. Retry counter
// is activated whenever *wb_rty_i is asserted and
// until retry counter expires, corresponding
// WISHBONE interface is deactivated.
//
// To disable retry counters and *wb_rty_i all together,
// undefine this macro.
//
//`define OR1200_WB_RETRY 7

//
// WISHBONE Consecutive Address Burst
//
// This was used prior to WISHBONE B3 specification
// to identify bursts. It is no longer needed but
// remains enabled for compatibility with old designs.
//
// To remove *wb_cab_o ports undefine this macro.
//
//`define OR1200_WB_CAB

//
// WISHBONE B3 compatible interface
//
// This follows the WISHBONE B3 specification.
// It is not enabled by default because most
// designs still don't use WB b3.
//
// To enable *wb_cti_o/*wb_bte_o ports,
// define this macro.
//
`define OR1200_WB_B3

//
// LOG all WISHBONE accesses
//
`define OR1200_LOG_WB_ACCESS

//
// Enable additional synthesis directives if using
// _Synopsys_ synthesis tool
//
//`define OR1200_ADDITIONAL_SYNOPSYS_DIRECTIVES

//
// Enables default statement in some case blocks
// and disables Synopsys synthesis directive full_case
//
// By default it is enabled. When disabled it
// can increase clock frequency.
//
`define OR1200_CASE_DEFAULT

//
// Operand width / register file address width
//
// (DO NOT CHANGE)
//
`define OR1200_OPERAND_WIDTH 32
`define OR1200_REGFILE_ADDR_WIDTH	5

//
// l.add/l.addi/l.and and optional l.addc/l.addic
// also set (compare) flag when result of their
// operation equals zero
//
// At the time of writing this, default or32
// C/C++ compiler doesn't generate code that
// would benefit from this optimization.
//
// By default this optimization is disabled to
// save area.
//
//`define OR1200_ADDITIONAL_FLAG_MODIFIERS

//
// Implement l.addc/l.addic instructions
//
// By default implementation of l.addc/l.addic
// instructions is enabled in case you need them.
// If you don't use them, then disable implementation
// to save area.
//
`define OR1200_IMPL_ADDC

//
// Implement l.sub instruction
//
// By default implementation of l.sub instructions
// is enabled to be compliant with the simulator.
// If you don't use carry bit, then disable
// implementation to save area.
//
`define OR1200_IMPL_SUB

//
// Implement carry bit SR[CY]
//
//
// By default implementation of SR[CY] is enabled
// to be compliant with the simulator. However SR[CY]
// is explicitly only used by l.addc/l.addic/l.sub
// instructions and if these three insns are not
// implemented there is not much point having SR[CY].
//
`define OR1200_IMPL_CY

//
// Implement carry bit SR[OV]
//
// Compiler doesn't use this, but other code may like
// to.
//
`define OR1200_IMPL_OV

//
// Implement carry bit SR[OVE]
//
// Overflow interrupt indicator. When enabled, SR[OV] flag
// does not remain asserted after exception.
//
`define OR1200_IMPL_OVE


//
// Implement rotate in the ALU
//
// At the time of writing this, or32
// C/C++ compiler doesn't generate rotate
// instructions. However or32 assembler
// can assemble code that uses rotate insn.
// This means that rotate instructions
// must be used manually inserted.
//
// By default implementation of rotate
// is disabled to save area and increase
// clock frequency.
//
//`define OR1200_IMPL_ALU_ROTATE

//
// Type of ALU compare to implement
//
// Try to find which synthesizes with
// most efficient logic use or highest speed.
//
//`define OR1200_IMPL_ALU_COMP1
//`define OR1200_IMPL_ALU_COMP2
`define OR1200_IMPL_ALU_COMP3

//
// Implement Find First/Last '1'
//
`define OR1200_IMPL_ALU_FFL1

//
// Implement l.cust5 ALU instruction
//
//`define OR1200_IMPL_ALU_CUST5

//
// Implement l.extXs and l.extXz instructions
//
`define OR1200_IMPL_ALU_EXT

//
// Implement multiplier
//
// By default multiplier is implemented
//
`define OR1200_MULT_IMPLEMENTED

//
// Implement multiply-and-accumulate
//
// By default MAC is implemented. To
// implement MAC, multiplier (non-serial) needs to be
// implemented.
//
//`define OR1200_MAC_IMPLEMENTED

//
// Implement optional l.div/l.divu instructions
//
// By default divide instructions are not implemented
// to save area.
//
//
`define OR1200_DIV_IMPLEMENTED

//
// Serial multiplier.
//
//`define OR1200_MULT_SERIAL

//
// Serial divider.
// Uncomment to use a serial divider, otherwise will
// be a generic parallel implementation.
//
`define OR1200_DIV_SERIAL

//
// Implement HW Single Precision FPU
//
//`define OR1200_FPU_IMPLEMENTED

//
// Clock ratio RISC clock versus WB clock
//
// If you plan to run WB:RISC clock fixed to 1:1, disable
// both defines
//
// For WB:RISC 1:2 or 1:1, enable OR1200_CLKDIV_2_SUPPORTED
// and use clmode to set ratio
//
// For WB:RISC 1:4, 1:2 or 1:1, enable both defines and use
// clmode to set ratio
//
//`define OR1200_CLKDIV_2_SUPPORTED
//`define OR1200_CLKDIV_4_SUPPORTED

//
// Type of register file RAM
//
// Memory macro w/ two ports (see or1200_tpram_32x32.v)
//`define OR1200_RFRAM_TWOPORT
//
// Memory macro dual port (see or1200_dpram.v)
`define OR1200_RFRAM_DUALPORT

//
// Generic (flip-flop based) register file (see or1200_rfram_generic.v)
//`define OR1200_RFRAM_GENERIC
//  Generic register file supports - 16 registers 
`ifdef OR1200_RFRAM_GENERIC
//    `define OR1200_RFRAM_16REG
`endif

//
// Type of mem2reg aligner to implement.
//
// Once OR1200_IMPL_MEM2REG2 yielded faster
// circuit, however with today tools it will
// most probably give you slower circuit.
//
`define OR1200_IMPL_MEM2REG1
//`define OR1200_IMPL_MEM2REG2

//
// Reset value and event
//
`ifdef OR1200_RST_ACT_LOW
  `define OR1200_RST_VALUE      (1'b0)
  `define OR1200_RST_EVENT      negedge
`else
  `define OR1200_RST_VALUE      (1'b1)
  `define OR1200_RST_EVENT      posedge
`endif

//
// ALUOPs
//
`define OR1200_ALUOP_WIDTH	5
`define OR1200_ALUOP_NOP	5'b0_0100
/* LS-nibble encodings correspond to bits [3:0] of instruction */
`define OR1200_ALUOP_ADD	5'b0_0000 // 0
`define OR1200_ALUOP_ADDC	5'b0_0001 // 1
`define OR1200_ALUOP_SUB	5'b0_0010 // 2
`define OR1200_ALUOP_AND	5'b0_0011 // 3
`define OR1200_ALUOP_OR		5'b0_0100 // 4
`define OR1200_ALUOP_XOR	5'b0_0101 // 5
`define OR1200_ALUOP_MUL	5'b0_0110 // 6
`define OR1200_ALUOP_RESERVED	5'b0_0111 // 7
`define OR1200_ALUOP_SHROT	5'b0_1000 // 8
`define OR1200_ALUOP_DIV	5'b0_1001 // 9
`define OR1200_ALUOP_DIVU	5'b0_1010 // a
`define OR1200_ALUOP_MULU	5'b0_1011 // b
`define OR1200_ALUOP_EXTHB	5'b0_1100 // c
`define OR1200_ALUOP_EXTW	5'b0_1101 // d
`define OR1200_ALUOP_CMOV	5'b0_1110 // e
`define OR1200_ALUOP_FFL1	5'b0_1111 // f

/* Values sent to ALU from decode unit - not defined by ISA */
`define OR1200_ALUOP_COMP       5'b1_0000 // Comparison
`define OR1200_ALUOP_MOVHI      5'b1_0001 // Move-high
`define OR1200_ALUOP_CUST5	5'b1_0010 // l.cust5

// ALU instructions second opcode field
`define OR1200_ALUOP2_POS	9:6
`define OR1200_ALUOP2_WIDTH	4

//
// MACOPs
//
`define OR1200_MACOP_WIDTH	3
`define OR1200_MACOP_NOP	3'b000
`define OR1200_MACOP_MAC	3'b001
`define OR1200_MACOP_MSB	3'b010

//
// Shift/rotate ops
//
`define OR1200_SHROTOP_WIDTH	4
`define OR1200_SHROTOP_NOP	4'd0
`define OR1200_SHROTOP_SLL	4'd0
`define OR1200_SHROTOP_SRL	4'd1
`define OR1200_SHROTOP_SRA	4'd2
`define OR1200_SHROTOP_ROR	4'd3

//
// Zero/Sign Extend ops
//
`define OR1200_EXTHBOP_WIDTH      4
`define OR1200_EXTHBOP_BS         4'h1
`define OR1200_EXTHBOP_HS         4'h0
`define OR1200_EXTHBOP_BZ         4'h3
`define OR1200_EXTHBOP_HZ         4'h2
`define OR1200_EXTWOP_WIDTH       4
`define OR1200_EXTWOP_WS          4'h0
`define OR1200_EXTWOP_WZ          4'h1

// Execution cycles per instruction
`define OR1200_MULTICYCLE_WIDTH	3
`define OR1200_ONE_CYCLE		3'd0
`define OR1200_TWO_CYCLES		3'd1

// Execution control which will "wait on" a module to finish
`define OR1200_WAIT_ON_WIDTH 2
`define OR1200_WAIT_ON_NOTHING    `OR1200_WAIT_ON_WIDTH'd0
`define OR1200_WAIT_ON_MULTMAC    `OR1200_WAIT_ON_WIDTH'd1
`define OR1200_WAIT_ON_FPU        `OR1200_WAIT_ON_WIDTH'd2
`define OR1200_WAIT_ON_MTSPR      `OR1200_WAIT_ON_WIDTH'd3


// Operand MUX selects
`define OR1200_SEL_WIDTH		2
`define OR1200_SEL_RF			2'd0
`define OR1200_SEL_IMM			2'd1
`define OR1200_SEL_EX_FORW		2'd2
`define OR1200_SEL_WB_FORW		2'd3

//
// BRANCHOPs
//
`define OR1200_BRANCHOP_WIDTH		3
`define OR1200_BRANCHOP_NOP		3'd0
`define OR1200_BRANCHOP_J		3'd1
`define OR1200_BRANCHOP_JR		3'd2
`define OR1200_BRANCHOP_BAL		3'd3
`define OR1200_BRANCHOP_BF		3'd4
`define OR1200_BRANCHOP_BNF		3'd5
`define OR1200_BRANCHOP_RFE		3'd6

//
// LSUOPs
//
// Bit 0: sign extend
// Bits 1-2: 00 doubleword, 01 byte, 10 halfword, 11 singleword
// Bit 3: 0 load, 1 store
`define OR1200_LSUOP_WIDTH		4
`define OR1200_LSUOP_NOP		4'b0000
`define OR1200_LSUOP_LBZ		4'b0010
`define OR1200_LSUOP_LBS		4'b0011
`define OR1200_LSUOP_LHZ		4'b0100
`define OR1200_LSUOP_LHS		4'b0101
`define OR1200_LSUOP_LWZ		4'b0110
`define OR1200_LSUOP_LWS		4'b0111
`define OR1200_LSUOP_LD			4'b0001
`define OR1200_LSUOP_SD			4'b1000
`define OR1200_LSUOP_SB			4'b1010
`define OR1200_LSUOP_SH			4'b1100
`define OR1200_LSUOP_SW			4'b1110

// Number of bits of load/store EA precalculated in ID stage
// for balancing ID and EX stages.
//
// Valid range: 2,3,...,30,31
`define OR1200_LSUEA_PRECALC		2

// FETCHOPs
`define OR1200_FETCHOP_WIDTH		1
`define OR1200_FETCHOP_NOP		1'b0
`define OR1200_FETCHOP_LW		1'b1

//
// Register File Write-Back OPs
//
// Bit 0: register file write enable
// Bits 3-1: write-back mux selects
//
`define OR1200_RFWBOP_WIDTH		4
`define OR1200_RFWBOP_NOP		4'b0000
`define OR1200_RFWBOP_ALU		3'b000
`define OR1200_RFWBOP_LSU		3'b001
`define OR1200_RFWBOP_SPRS		3'b010
`define OR1200_RFWBOP_LR		3'b011
`define OR1200_RFWBOP_FPU		3'b100

// Compare instructions
`define OR1200_COP_SFEQ       3'b000
`define OR1200_COP_SFNE       3'b001
`define OR1200_COP_SFGT       3'b010
`define OR1200_COP_SFGE       3'b011
`define OR1200_COP_SFLT       3'b100
`define OR1200_COP_SFLE       3'b101
`define OR1200_COP_X          3'b111
`define OR1200_SIGNED_COMPARE 'd3
`define OR1200_COMPOP_WIDTH	4

//
// FP OPs
//
// MSbit indicates FPU operation valid
//
`define OR1200_FPUOP_WIDTH	8
// FPU unit from Usselman takes 5 cycles from decode, so 4 ex. cycles
`define OR1200_FPUOP_CYCLES 3'd4
// FP instruction is double precision if bit 4 is set. We're a 32-bit 
// implementation thus do not support double precision FP 
`define OR1200_FPUOP_DOUBLE_BIT 4
`define OR1200_FPUOP_ADD  8'b0000_0000
`define OR1200_FPUOP_SUB  8'b0000_0001
`define OR1200_FPUOP_MUL  8'b0000_0010
`define OR1200_FPUOP_DIV  8'b0000_0011
`define OR1200_FPUOP_ITOF 8'b0000_0100
`define OR1200_FPUOP_FTOI 8'b0000_0101
`define OR1200_FPUOP_REM  8'b0000_0110
`define OR1200_FPUOP_RESERVED  8'b0000_0111
// FP Compare instructions
`define OR1200_FPCOP_SFEQ 8'b0000_1000
`define OR1200_FPCOP_SFNE 8'b0000_1001
`define OR1200_FPCOP_SFGT 8'b0000_1010
`define OR1200_FPCOP_SFGE 8'b0000_1011
`define OR1200_FPCOP_SFLT 8'b0000_1100
`define OR1200_FPCOP_SFLE 8'b0000_1101

//
// TAGs for instruction bus
//
`define OR1200_ITAG_IDLE	4'h0	// idle bus
`define	OR1200_ITAG_NI		4'h1	// normal insn
`define OR1200_ITAG_BE		4'hb	// Bus error exception
`define OR1200_ITAG_PE		4'hc	// Page fault exception
`define OR1200_ITAG_TE		4'hd	// TLB miss exception

//
// TAGs for data bus
//
`define OR1200_DTAG_IDLE	4'h0	// idle bus
`define	OR1200_DTAG_ND		4'h1	// normal data
`define OR1200_DTAG_AE		4'ha	// Alignment exception
`define OR1200_DTAG_BE		4'hb	// Bus error exception
`define OR1200_DTAG_PE		4'hc	// Page fault exception
`define OR1200_DTAG_TE		4'hd	// TLB miss exception


//////////////////////////////////////////////
//
// ORBIS32 ISA specifics
//

// SHROT_OP position in machine word
`define OR1200_SHROTOP_POS		7:6

//
// Instruction opcode groups (basic)
//
`define OR1200_OR32_J                 6'b000000
`define OR1200_OR32_JAL               6'b000001
`define OR1200_OR32_BNF               6'b000011
`define OR1200_OR32_BF                6'b000100
`define OR1200_OR32_NOP               6'b000101
`define OR1200_OR32_MOVHI             6'b000110
`define OR1200_OR32_MACRC             6'b000110
`define OR1200_OR32_XSYNC             6'b001000
`define OR1200_OR32_RFE               6'b001001
/* */
`define OR1200_OR32_JR                6'b010001
`define OR1200_OR32_JALR              6'b010010
`define OR1200_OR32_MACI              6'b010011
/* */
`define OR1200_OR32_LWZ               6'b100001
`define OR1200_OR32_LWS               6'b100010
`define OR1200_OR32_LBZ               6'b100011
`define OR1200_OR32_LBS               6'b100100
`define OR1200_OR32_LHZ               6'b100101
`define OR1200_OR32_LHS               6'b100110
`define OR1200_OR32_ADDI              6'b100111
`define OR1200_OR32_ADDIC             6'b101000
`define OR1200_OR32_ANDI              6'b101001
`define OR1200_OR32_ORI               6'b101010
`define OR1200_OR32_XORI              6'b101011
`define OR1200_OR32_MULI              6'b101100
`define OR1200_OR32_MFSPR             6'b101101
`define OR1200_OR32_SH_ROTI 	      6'b101110
`define OR1200_OR32_SFXXI             6'b101111
/* */
`define OR1200_OR32_MTSPR             6'b110000
`define OR1200_OR32_MACMSB            6'b110001
`define OR1200_OR32_FLOAT             6'b110010
/* */
`define OR1200_OR32_SW                6'b110101
`define OR1200_OR32_SB                6'b110110
`define OR1200_OR32_SH                6'b110111
`define OR1200_OR32_ALU               6'b111000
`define OR1200_OR32_SFXX              6'b111001
`define OR1200_OR32_CUST5             6'b111100

/////////////////////////////////////////////////////
//
// Exceptions
//

//
// Exception vectors per OR1K architecture:
// 0xPPPPP100 - reset
// 0xPPPPP200 - bus error
// ... etc
// where P represents exception prefix.
//
// Exception vectors can be customized as per
// the following formula:
// 0xPPPPPNVV - exception N
//
// P represents exception prefix
// N represents exception N
// VV represents length of the individual vector space,
//   usually it is 8 bits wide and starts with all bits zero
//

//
// PPPPP and VV parts
//
// Sum of these two defines needs to be 28
//
`define OR1200_EXCEPT_EPH0_P    20'h00000
`define OR1200_EXCEPT_EPH1_P    20'hF0000
`define OR1200_EXCEPT_V		    8'h00

//
// N part width
//
`define OR1200_EXCEPT_WIDTH 4

//
// Definition of exception vectors
//
// To avoid implementation of a certain exception,
// simply comment out corresponding line
//
`define OR1200_EXCEPT_UNUSED		`OR1200_EXCEPT_WIDTH'hf
`define OR1200_EXCEPT_TRAP		`OR1200_EXCEPT_WIDTH'he
`define OR1200_EXCEPT_FLOAT		`OR1200_EXCEPT_WIDTH'hd
`define OR1200_EXCEPT_SYSCALL		`OR1200_EXCEPT_WIDTH'hc
`define OR1200_EXCEPT_RANGE		`OR1200_EXCEPT_WIDTH'hb
`define OR1200_EXCEPT_ITLBMISS		`OR1200_EXCEPT_WIDTH'ha
`define OR1200_EXCEPT_DTLBMISS		`OR1200_EXCEPT_WIDTH'h9
`define OR1200_EXCEPT_INT		`OR1200_EXCEPT_WIDTH'h8
`define OR1200_EXCEPT_ILLEGAL		`OR1200_EXCEPT_WIDTH'h7
`define OR1200_EXCEPT_ALIGN		`OR1200_EXCEPT_WIDTH'h6
`define OR1200_EXCEPT_TICK		`OR1200_EXCEPT_WIDTH'h5
`define OR1200_EXCEPT_IPF		`OR1200_EXCEPT_WIDTH'h4
`define OR1200_EXCEPT_DPF		`OR1200_EXCEPT_WIDTH'h3
`define OR1200_EXCEPT_BUSERR		`OR1200_EXCEPT_WIDTH'h2
`define OR1200_EXCEPT_RESET		`OR1200_EXCEPT_WIDTH'h1
`define OR1200_EXCEPT_NONE		`OR1200_EXCEPT_WIDTH'h0


/////////////////////////////////////////////////////
//
// SPR groups
//

// Bits that define the group
`define OR1200_SPR_GROUP_BITS	15:11

// Width of the group bits
`define OR1200_SPR_GROUP_WIDTH 	5

// Bits that define offset inside the group
`define OR1200_SPR_OFS_BITS 10:0

// List of groups
`define OR1200_SPR_GROUP_SYS	5'd00
`define OR1200_SPR_GROUP_DMMU	5'd01
`define OR1200_SPR_GROUP_IMMU	5'd02
`define OR1200_SPR_GROUP_DC	5'd03
`define OR1200_SPR_GROUP_IC	5'd04
`define OR1200_SPR_GROUP_MAC	5'd05
`define OR1200_SPR_GROUP_DU	5'd06
`define OR1200_SPR_GROUP_PM	5'd08
`define OR1200_SPR_GROUP_PIC	5'd09
`define OR1200_SPR_GROUP_TT	5'd10
`define OR1200_SPR_GROUP_FPU    5'd11

/////////////////////////////////////////////////////
//
// System group
//

//
// System registers
//
`define OR1200_SPR_CFGR		7'd0
`define OR1200_SPR_RF		6'd32	// 1024 >> 5
`define OR1200_SPR_NPC		11'd16
`define OR1200_SPR_SR		11'd17
`define OR1200_SPR_PPC		11'd18
`define OR1200_SPR_FPCSR        11'd20
`define OR1200_SPR_EPCR		11'd32
`define OR1200_SPR_EEAR		11'd48
`define OR1200_SPR_ESR		11'd64

//
// SR bits
//
`define OR1200_SR_WIDTH 17
`define OR1200_SR_SM   0
`define OR1200_SR_TEE  1
`define OR1200_SR_IEE  2
`define OR1200_SR_DCE  3
`define OR1200_SR_ICE  4
`define OR1200_SR_DME  5
`define OR1200_SR_IME  6
`define OR1200_SR_LEE  7
`define OR1200_SR_CE   8
`define OR1200_SR_F    9
`define OR1200_SR_CY   10	// Optional
`define OR1200_SR_OV   11	// Optional
`define OR1200_SR_OVE  12	// Optional
`define OR1200_SR_DSX  13	// Unused
`define OR1200_SR_EPH  14
`define OR1200_SR_FO   15
`define OR1200_SR_TED  16
`define OR1200_SR_CID  31:28	// Unimplemented

//
// Bits that define offset inside the group
//
`define OR1200_SPROFS_BITS 10:0

//
// Default Exception Prefix
//
// 1'b0 - OR1200_EXCEPT_EPH0_P (0x0000_0000)
// 1'b1 - OR1200_EXCEPT_EPH1_P (0xF000_0000)
//
`define OR1200_SR_EPH_DEF	1'b0


//
// FPCSR bits
//
`define OR1200_FPCSR_WIDTH 12
`define OR1200_FPCSR_FPEE  0
`define OR1200_FPCSR_RM    2:1
`define OR1200_FPCSR_OVF   3
`define OR1200_FPCSR_UNF   4
`define OR1200_FPCSR_SNF   5
`define OR1200_FPCSR_QNF   6
`define OR1200_FPCSR_ZF    7
`define OR1200_FPCSR_IXF   8
`define OR1200_FPCSR_IVF   9
`define OR1200_FPCSR_INF   10
`define OR1200_FPCSR_DZF   11
`define OR1200_FPCSR_RES   31:12

/////////////////////////////////////////////////////
//
// Power Management (PM)
//

// Define it if you want PM implemented
//`define OR1200_PM_IMPLEMENTED

// Bit positions inside PMR (don't change)
`define OR1200_PM_PMR_SDF 3:0
`define OR1200_PM_PMR_DME 4
`define OR1200_PM_PMR_SME 5
`define OR1200_PM_PMR_DCGE 6
`define OR1200_PM_PMR_UNUSED 31:7

// PMR offset inside PM group of registers
`define OR1200_PM_OFS_PMR 11'b0

// PM group
`define OR1200_SPRGRP_PM 5'd8

// Define if PMR can be read/written at any address inside PM group
`define OR1200_PM_PARTIAL_DECODING

// Define if reading PMR is allowed
`define OR1200_PM_READREGS

// Define if unused PMR bits should be zero
`define OR1200_PM_UNUSED_ZERO


/////////////////////////////////////////////////////
//
// Debug Unit (DU)
//

// Define it if you want DU implemented
`define OR1200_DU_IMPLEMENTED

//
// Define if you want HW Breakpoints
// (if HW breakpoints are not implemented
// only default software trapping is
// possible with l.trap insn - this is
// however already enough for use
// with or32 gdb)
//
//`define OR1200_DU_HWBKPTS

// Number of DVR/DCR pairs if HW breakpoints enabled
//	Comment / uncomment DU_DVRn / DU_DCRn pairs bellow according to this number ! 
//	DU_DVR0..DU_DVR7 should be uncommented for 8 DU_DVRDCR_PAIRS 
`define OR1200_DU_DVRDCR_PAIRS 8

// Define if you want trace buffer
//	(for now only available for Xilinx Virtex FPGAs)
//`define OR1200_DU_TB_IMPLEMENTED


//
// Address offsets of DU registers inside DU group
//
// To not implement a register, doq not define its address
//
`ifdef OR1200_DU_HWBKPTS
`define OR1200_DU_DVR0		11'd0
`define OR1200_DU_DVR1		11'd1
`define OR1200_DU_DVR2		11'd2
`define OR1200_DU_DVR3		11'd3
`define OR1200_DU_DVR4		11'd4
`define OR1200_DU_DVR5		11'd5
`define OR1200_DU_DVR6		11'd6
`define OR1200_DU_DVR7		11'd7
`define OR1200_DU_DCR0		11'd8
`define OR1200_DU_DCR1		11'd9
`define OR1200_DU_DCR2		11'd10
`define OR1200_DU_DCR3		11'd11
`define OR1200_DU_DCR4		11'd12
`define OR1200_DU_DCR5		11'd13
`define OR1200_DU_DCR6		11'd14
`define OR1200_DU_DCR7		11'd15
`endif
`define OR1200_DU_DMR1		11'd16
`ifdef OR1200_DU_HWBKPTS
`define OR1200_DU_DMR2		11'd17
`define OR1200_DU_DWCR0		11'd18
`define OR1200_DU_DWCR1		11'd19
`endif
`define OR1200_DU_DSR		11'd20
`define OR1200_DU_DRR		11'd21
`ifdef OR1200_DU_TB_IMPLEMENTED
`define OR1200_DU_TBADR		11'h0ff
`define OR1200_DU_TBIA		11'h1??
`define OR1200_DU_TBIM		11'h2??
`define OR1200_DU_TBAR		11'h3??
`define OR1200_DU_TBTS		11'h4??
`endif

// Position of offset bits inside SPR address
`define OR1200_DUOFS_BITS	10:0

// DCR bits
`define OR1200_DU_DCR_DP	0
`define OR1200_DU_DCR_CC	3:1
`define OR1200_DU_DCR_SC	4
`define OR1200_DU_DCR_CT	7:5

// DMR1 bits
`define OR1200_DU_DMR1_CW0	1:0
`define OR1200_DU_DMR1_CW1	3:2
`define OR1200_DU_DMR1_CW2	5:4
`define OR1200_DU_DMR1_CW3	7:6
`define OR1200_DU_DMR1_CW4	9:8
`define OR1200_DU_DMR1_CW5	11:10
`define OR1200_DU_DMR1_CW6	13:12
`define OR1200_DU_DMR1_CW7	15:14
`define OR1200_DU_DMR1_CW8	17:16
`define OR1200_DU_DMR1_CW9	19:18
`define OR1200_DU_DMR1_CW10	21:20
`define OR1200_DU_DMR1_ST	22
`define OR1200_DU_DMR1_BT	23
`define OR1200_DU_DMR1_DXFW	24
`define OR1200_DU_DMR1_ETE	25

// DMR2 bits
`define OR1200_DU_DMR2_WCE0	0
`define OR1200_DU_DMR2_WCE1	1
`define OR1200_DU_DMR2_AWTC	12:2
`define OR1200_DU_DMR2_WGB	23:13

// DWCR bits
`define OR1200_DU_DWCR_COUNT	15:0
`define OR1200_DU_DWCR_MATCH	31:16

// DSR bits
`define OR1200_DU_DSR_WIDTH	14
`define OR1200_DU_DSR_RSTE	0
`define OR1200_DU_DSR_BUSEE	1
`define OR1200_DU_DSR_DPFE	2
`define OR1200_DU_DSR_IPFE	3
`define OR1200_DU_DSR_TTE	4
`define OR1200_DU_DSR_AE	5
`define OR1200_DU_DSR_IIE	6
`define OR1200_DU_DSR_IE	7
`define OR1200_DU_DSR_DME	8
`define OR1200_DU_DSR_IME	9
`define OR1200_DU_DSR_RE	10
`define OR1200_DU_DSR_SCE	11
`define OR1200_DU_DSR_FPE	12
`define OR1200_DU_DSR_TE	13

// DRR bits
`define OR1200_DU_DRR_RSTE	0
`define OR1200_DU_DRR_BUSEE	1
`define OR1200_DU_DRR_DPFE	2
`define OR1200_DU_DRR_IPFE	3
`define OR1200_DU_DRR_TTE	4
`define OR1200_DU_DRR_AE	5
`define OR1200_DU_DRR_IIE	6
`define OR1200_DU_DRR_IE	7
`define OR1200_DU_DRR_DME	8
`define OR1200_DU_DRR_IME	9
`define OR1200_DU_DRR_RE	10
`define OR1200_DU_DRR_SCE	11
`define OR1200_DU_DRR_FPE	12
`define OR1200_DU_DRR_TE	13

// Define if reading DU regs is allowed
`define OR1200_DU_READREGS

// Define if unused DU registers bits should be zero
`define OR1200_DU_UNUSED_ZERO

// Define if IF/LSU status is not needed by devel i/f
`define OR1200_DU_STATUS_UNIMPLEMENTED

/////////////////////////////////////////////////////
//
// Programmable Interrupt Controller (PIC)
//

// Define it if you want PIC implemented
`define OR1200_PIC_IMPLEMENTED

// Define number of interrupt inputs (2-31)
`define OR1200_PIC_INTS 20

// Address offsets of PIC registers inside PIC group
`define OR1200_PIC_OFS_PICMR 2'd0
`define OR1200_PIC_OFS_PICSR 2'd2

// Position of offset bits inside SPR address
`define OR1200_PICOFS_BITS 1:0

// Define if you want these PIC registers to be implemented
`define OR1200_PIC_PICMR
`define OR1200_PIC_PICSR

// Define if reading PIC registers is allowed
`define OR1200_PIC_READREGS

// Define if unused PIC register bits should be zero
`define OR1200_PIC_UNUSED_ZERO


/////////////////////////////////////////////////////
//
// Tick Timer (TT)
//

// Define it if you want TT implemented
`define OR1200_TT_IMPLEMENTED

// Address offsets of TT registers inside TT group
`define OR1200_TT_OFS_TTMR 1'd0
`define OR1200_TT_OFS_TTCR 1'd1

// Position of offset bits inside SPR group
`define OR1200_TTOFS_BITS 0

// Define if you want these TT registers to be implemented
`define OR1200_TT_TTMR
`define OR1200_TT_TTCR

// TTMR bits
`define OR1200_TT_TTMR_TP 27:0
`define OR1200_TT_TTMR_IP 28
`define OR1200_TT_TTMR_IE 29
`define OR1200_TT_TTMR_M 31:30

// Define if reading TT registers is allowed
`define OR1200_TT_READREGS


//////////////////////////////////////////////
//
// MAC
//
`define OR1200_MAC_ADDR		0	// MACLO 0xxxxxxxx1, MACHI 0xxxxxxxx0
`define OR1200_MAC_SPR_WE		// Define if MACLO/MACHI are SPR writable

//
// Shift {MACHI,MACLO} into destination register when executing l.macrc
//
// According to architecture manual there is no shift, so default value is 0.
// However the implementation has deviated in this from the arch manual and had
// hard coded shift by 28 bits which is a useful optimization for MP3 decoding 
// (if using libmad fixed point library). Shifts are no longer default setup, 
// but if you need to remain backward compatible, define your shift bits, which
// were normally
// dest_GPR = {MACHI,MACLO}[59:28]
`define OR1200_MAC_SHIFTBY	0	// 0 = According to arch manual, 28 = obsolete backward compatibility


//////////////////////////////////////////////
//
// Data MMU (DMMU)
//

//
// Address that selects between TLB TR and MR
//
`define OR1200_DTLB_TM_ADDR	7

//
// DTLBMR fields
//
`define	OR1200_DTLBMR_V_BITS	0
`define	OR1200_DTLBMR_CID_BITS	4:1
`define	OR1200_DTLBMR_RES_BITS	11:5
`define OR1200_DTLBMR_VPN_BITS	31:13

//
// DTLBTR fields
//
`define	OR1200_DTLBTR_CC_BITS	0
`define	OR1200_DTLBTR_CI_BITS	1
`define	OR1200_DTLBTR_WBC_BITS	2
`define	OR1200_DTLBTR_WOM_BITS	3
`define	OR1200_DTLBTR_A_BITS	4
`define	OR1200_DTLBTR_D_BITS	5
`define	OR1200_DTLBTR_URE_BITS	6
`define	OR1200_DTLBTR_UWE_BITS	7
`define	OR1200_DTLBTR_SRE_BITS	8
`define	OR1200_DTLBTR_SWE_BITS	9
`define	OR1200_DTLBTR_RES_BITS	11:10
`define OR1200_DTLBTR_PPN_BITS	31:13

//
// DTLB configuration
//
`define	OR1200_DMMU_PS		13					// 13 for 8KB page size
`define	OR1200_DTLB_INDXW	6					// 6 for 64 entry DTLB	7 for 128 entries
`define OR1200_DTLB_INDXL	`OR1200_DMMU_PS				// 13			13
`define OR1200_DTLB_INDXH	`OR1200_DMMU_PS+`OR1200_DTLB_INDXW-1	// 18			19
`define	OR1200_DTLB_INDX	`OR1200_DTLB_INDXH:`OR1200_DTLB_INDXL	// 18:13		19:13
`define OR1200_DTLB_TAGW	32-`OR1200_DTLB_INDXW-`OR1200_DMMU_PS	// 13			12
`define OR1200_DTLB_TAGL	`OR1200_DTLB_INDXH+1			// 19			20
`define	OR1200_DTLB_TAG		31:`OR1200_DTLB_TAGL			// 31:19		31:20
`define	OR1200_DTLBMRW		`OR1200_DTLB_TAGW+1			// +1 because of V bit
`define	OR1200_DTLBTRW		32-`OR1200_DMMU_PS+5			// +5 because of protection bits and CI

//
// Cache inhibit while DMMU is not enabled/implemented
//
// cache inhibited 0GB-4GB		1'b1
// cache inhibited 0GB-2GB		!dcpu_adr_i[31]
// cache inhibited 0GB-1GB 2GB-3GB	!dcpu_adr_i[30]
// cache inhibited 1GB-2GB 3GB-4GB	dcpu_adr_i[30]
// cache inhibited 2GB-4GB (default)	dcpu_adr_i[31]
// cached 0GB-4GB			1'b0
//
`define OR1200_DMMU_CI			dcpu_adr_i[31]


//////////////////////////////////////////////
//
// Insn MMU (IMMU)
//

//
// Address that selects between TLB TR and MR
//
`define OR1200_ITLB_TM_ADDR	7

//
// ITLBMR fields
//
`define	OR1200_ITLBMR_V_BITS	0
`define	OR1200_ITLBMR_CID_BITS	4:1
`define	OR1200_ITLBMR_RES_BITS	11:5
`define OR1200_ITLBMR_VPN_BITS	31:13

//
// ITLBTR fields
//
`define	OR1200_ITLBTR_CC_BITS	0
`define	OR1200_ITLBTR_CI_BITS	1
`define	OR1200_ITLBTR_WBC_BITS	2
`define	OR1200_ITLBTR_WOM_BITS	3
`define	OR1200_ITLBTR_A_BITS	4
`define	OR1200_ITLBTR_D_BITS	5
`define	OR1200_ITLBTR_SXE_BITS	6
`define	OR1200_ITLBTR_UXE_BITS	7
`define	OR1200_ITLBTR_RES_BITS	11:8
`define OR1200_ITLBTR_PPN_BITS	31:13

//
// ITLB configuration
//
`define	OR1200_IMMU_PS		13					// 13 for 8KB page size
`define	OR1200_ITLB_INDXW	6					// 6 for 64 entry ITLB	7 for 128 entries
`define OR1200_ITLB_INDXL	`OR1200_IMMU_PS				// 13			13
`define OR1200_ITLB_INDXH	`OR1200_IMMU_PS+`OR1200_ITLB_INDXW-1	// 18			19
`define	OR1200_ITLB_INDX	`OR1200_ITLB_INDXH:`OR1200_ITLB_INDXL	// 18:13		19:13
`define OR1200_ITLB_TAGW	32-`OR1200_ITLB_INDXW-`OR1200_IMMU_PS	// 13			12
`define OR1200_ITLB_TAGL	`OR1200_ITLB_INDXH+1			// 19			20
`define	OR1200_ITLB_TAG		31:`OR1200_ITLB_TAGL			// 31:19		31:20
`define	OR1200_ITLBMRW		`OR1200_ITLB_TAGW+1			// +1 because of V bit
`define	OR1200_ITLBTRW		32-`OR1200_IMMU_PS+3			// +3 because of protection bits and CI

//
// Cache inhibit while IMMU is not enabled/implemented
// Note: all combinations that use icpu_adr_i cause async loop
//
// cache inhibited 0GB-4GB		1'b1
// cache inhibited 0GB-2GB		!icpu_adr_i[31]
// cache inhibited 0GB-1GB 2GB-3GB	!icpu_adr_i[30]
// cache inhibited 1GB-2GB 3GB-4GB	icpu_adr_i[30]
// cache inhibited 2GB-4GB (default)	icpu_adr_i[31]
// cached 0GB-4GB			1'b0
//
`define OR1200_IMMU_CI			1'b0


/////////////////////////////////////////////////
//
// Insn cache (IC)
//

// 4 for 16 byte line, 5 for 32 byte lines.
`ifdef OR1200_IC_1W_32KB
 `define OR1200_ICLS		5
`else
 `define OR1200_ICLS		4
`endif

//
// IC configurations
//
`ifdef OR1200_IC_1W_512B
`define OR1200_ICSIZE                   9                       // 512
`define OR1200_ICINDX                   `OR1200_ICSIZE-2        // 7
`define OR1200_ICINDXH                  `OR1200_ICSIZE-1        // 8
`define OR1200_ICTAGL                   `OR1200_ICINDXH+1       // 9
`define OR1200_ICTAG                    `OR1200_ICSIZE-`OR1200_ICLS // 5
`define OR1200_ICTAG_W                  24
`endif
`ifdef OR1200_IC_1W_4KB
`define OR1200_ICSIZE			12			// 4096
`define OR1200_ICINDX			`OR1200_ICSIZE-2	// 10
`define OR1200_ICINDXH			`OR1200_ICSIZE-1	// 11
`define OR1200_ICTAGL			`OR1200_ICINDXH+1	// 12
`define	OR1200_ICTAG			`OR1200_ICSIZE-`OR1200_ICLS	// 8
`define	OR1200_ICTAG_W			21
`endif
`ifdef OR1200_IC_1W_8KB
`define OR1200_ICSIZE			13			// 8192
`define OR1200_ICINDX			`OR1200_ICSIZE-2	// 11
`define OR1200_ICINDXH			`OR1200_ICSIZE-1	// 12
`define OR1200_ICTAGL			`OR1200_ICINDXH+1	// 13
`define	OR1200_ICTAG			`OR1200_ICSIZE-`OR1200_ICLS	// 9
`define	OR1200_ICTAG_W			20
`endif
`ifdef OR1200_IC_1W_16KB
`define OR1200_ICSIZE			14			// 16384
`define OR1200_ICINDX			`OR1200_ICSIZE-2	// 12
`define OR1200_ICINDXH			`OR1200_ICSIZE-1	// 13
`define OR1200_ICTAGL			`OR1200_ICINDXH+1	// 14
`define	OR1200_ICTAG			`OR1200_ICSIZE-`OR1200_ICLS	// 10
`define	OR1200_ICTAG_W			19
`endif
`ifdef OR1200_IC_1W_32KB
`define OR1200_ICSIZE			15			// 32768
`define OR1200_ICINDX			`OR1200_ICSIZE-2	// 13
`define OR1200_ICINDXH			`OR1200_ICSIZE-1	// 14
`define OR1200_ICTAGL			`OR1200_ICINDXH+1	// 14
`define	OR1200_ICTAG			`OR1200_ICSIZE-`OR1200_ICLS	// 10
`define	OR1200_ICTAG_W			18
`endif


/////////////////////////////////////////////////
//
// Data cache (DC)
//

// 4 for 16 bytes, 5 for 32 bytes
`ifdef OR1200_DC_1W_32KB
 `define OR1200_DCLS		5
`else
 `define OR1200_DCLS		4
`endif

// Define to enable default behavior of cache as write through
// Turning this off enabled write back statergy
//
`define OR1200_DC_WRITETHROUGH

// Define to enable stores from the stack not doing writethrough.
// EXPERIMENTAL
//`define OR1200_DC_NOSTACKWRITETHROUGH

// Data cache SPR definitions
`define OR1200_SPRGRP_DC_ADR_WIDTH 3
// Data cache group SPR addresses
`define OR1200_SPRGRP_DC_DCCR		3'd0 // Not implemented
`define OR1200_SPRGRP_DC_DCBPR		3'd1 // Not implemented
`define OR1200_SPRGRP_DC_DCBFR		3'd2
`define OR1200_SPRGRP_DC_DCBIR		3'd3
`define OR1200_SPRGRP_DC_DCBWR		3'd4 // Not implemented
`define OR1200_SPRGRP_DC_DCBLR		3'd5 // Not implemented

//
// DC configurations
//
`ifdef OR1200_DC_1W_4KB
`define OR1200_DCSIZE			12			// 4096
`define OR1200_DCINDX			`OR1200_DCSIZE-2	// 10
`define OR1200_DCINDXH			`OR1200_DCSIZE-1	// 11
`define OR1200_DCTAGL			`OR1200_DCINDXH+1	// 12
`define	OR1200_DCTAG			`OR1200_DCSIZE-`OR1200_DCLS	// 8
`define	OR1200_DCTAG_W			21
`endif
`ifdef OR1200_DC_1W_8KB
`define OR1200_DCSIZE			13			// 8192
`define OR1200_DCINDX			`OR1200_DCSIZE-2	// 11
`define OR1200_DCINDXH			`OR1200_DCSIZE-1	// 12
`define OR1200_DCTAGL			`OR1200_DCINDXH+1	// 13
`define	OR1200_DCTAG			`OR1200_DCSIZE-`OR1200_DCLS	// 9
`define	OR1200_DCTAG_W			20
`endif
`ifdef OR1200_DC_1W_16KB
`define OR1200_DCSIZE			14			// 16384
`define OR1200_DCINDX			`OR1200_DCSIZE-2	// 12
`define OR1200_DCINDXH			`OR1200_DCSIZE-1	// 13
`define OR1200_DCTAGL			`OR1200_DCINDXH+1	// 14
`define	OR1200_DCTAG			`OR1200_DCSIZE-`OR1200_DCLS	// 10
`define	OR1200_DCTAG_W			19
`endif
`ifdef OR1200_DC_1W_32KB
`define OR1200_DCSIZE			15			// 32768
`define OR1200_DCINDX			`OR1200_DCSIZE-2	// 13
`define OR1200_DCINDXH			`OR1200_DCSIZE-1	// 14
`define OR1200_DCTAGL			`OR1200_DCINDXH+1	// 15
`define	OR1200_DCTAG			`OR1200_DCSIZE-`OR1200_DCLS	// 10
`define	OR1200_DCTAG_W			18
`endif


/////////////////////////////////////////////////
//
// Store buffer (SB)
//

//
// Store buffer
//
// It will improve performance by "caching" CPU stores
// using store buffer. This is most important for function
// prologues because DC can only work in write though mode
// and all stores would have to complete external WB writes
// to memory.
// Store buffer is between DC and data BIU.
// All stores will be stored into store buffer and immediately
// completed by the CPU, even though actual external writes
// will be performed later. As a consequence store buffer masks
// all data bus errors related to stores (data bus errors
// related to loads are delivered normally).
// All pending CPU loads will wait until store buffer is empty to
// ensure strict memory model. Right now this is necessary because
// we don't make destinction between cached and cache inhibited
// address space, so we simply empty store buffer until loads
// can begin.
//
// It makes design a bit bigger, depending what is the number of
// entries in SB FIFO. Number of entries can be changed further
// down.
//
//`define OR1200_SB_IMPLEMENTED

//
// Number of store buffer entries
//
// Verified number of entries are 4 and 8 entries
// (2 and 3 for OR1200_SB_LOG). OR1200_SB_ENTRIES must
// always match 2**OR1200_SB_LOG.
// To disable store buffer, undefine
// OR1200_SB_IMPLEMENTED.
//
`define OR1200_SB_LOG		2	// 2 or 3
`define OR1200_SB_ENTRIES	4	// 4 or 8


/////////////////////////////////////////////////
//
// Quick Embedded Memory (QMEM)
//

//
// Quick Embedded Memory
//
// Instantiation of dedicated insn/data memory (RAM or ROM).
// Insn fetch has effective throughput 1insn / clock cycle.
// Data load takes two clock cycles / access, data store
// takes 1 clock cycle / access (if there is no insn fetch)).
// Memory instantiation is shared between insn and data,
// meaning if insn fetch are performed, data load/store
// performance will be lower.
//
// Main reason for QMEM is to put some time critical functions
// into this memory and to have predictable and fast access
// to these functions. (soft fpu, context switch, exception
// handlers, stack, etc)
//
// It makes design a bit bigger and slower. QMEM sits behind
// IMMU/DMMU so all addresses are physical (so the MMUs can be
// used with QMEM and QMEM is seen by the CPU just like any other
// memory in the system). IC/DC are sitting behind QMEM so the
// whole design timing might be worse with QMEM implemented.
//
//`define OR1200_QMEM_IMPLEMENTED

//
// Base address and mask of QMEM
//
// Base address defines first address of QMEM. Mask defines
// QMEM range in address space. Actual size of QMEM is however
// determined with instantiated RAM/ROM. However bigger
// mask will reserve more address space for QMEM, but also
// make design faster, while more tight mask will take
// less address space but also make design slower. If
// instantiated RAM/ROM is smaller than space reserved with
// the mask, instatiated RAM/ROM will also be shadowed
// at higher addresses in reserved space.
//
`define OR1200_QMEM_IADDR	32'h0080_0000
`define OR1200_QMEM_IMASK	32'hfff0_0000 // Max QMEM size 1MB
`define OR1200_QMEM_DADDR	32'h0080_0000
`define OR1200_QMEM_DMASK	32'hfff0_0000 // Max QMEM size 1MB

//
// QMEM interface byte-select capability
//
// To enable qmem_sel* ports, define this macro.
//
//`define OR1200_QMEM_BSEL

//
// QMEM interface acknowledge
//
// To enable qmem_ack port, define this macro.
//
//`define OR1200_QMEM_ACK

/////////////////////////////////////////////////////
//
// VR, UPR and Configuration Registers
//
//
// VR, UPR and configuration registers are optional. If 
// implemented, operating system can automatically figure
// out how to use the processor because it knows 
// what units are available in the processor and how they
// are configured.
//
// This section must be last in or1200_defines.v file so
// that all units are already configured and thus
// configuration registers are properly set.
// 

// Define if you want configuration registers implemented
`define OR1200_CFGR_IMPLEMENTED

// Define if you want full address decode inside SYS group
`define OR1200_SYS_FULL_DECODE

// Offsets of VR, UPR and CFGR registers
`define OR1200_SPRGRP_SYS_VR		4'h0
`define OR1200_SPRGRP_SYS_UPR		4'h1
`define OR1200_SPRGRP_SYS_CPUCFGR	4'h2
`define OR1200_SPRGRP_SYS_DMMUCFGR	4'h3
`define OR1200_SPRGRP_SYS_IMMUCFGR	4'h4
`define OR1200_SPRGRP_SYS_DCCFGR	4'h5
`define OR1200_SPRGRP_SYS_ICCFGR	4'h6
`define OR1200_SPRGRP_SYS_DCFGR	4'h7

// VR fields
`define OR1200_VR_REV_BITS		5:0
`define OR1200_VR_RES1_BITS		15:6
`define OR1200_VR_CFG_BITS		23:16
`define OR1200_VR_VER_BITS		31:24

// VR values
`define OR1200_VR_REV			6'h08
`define OR1200_VR_RES1			10'h000
`define OR1200_VR_CFG			8'h00
`define OR1200_VR_VER			8'h13

// UPR fields
`define OR1200_UPR_UP_BITS		0
`define OR1200_UPR_DCP_BITS		1
`define OR1200_UPR_ICP_BITS		2
`define OR1200_UPR_DMP_BITS		3
`define OR1200_UPR_IMP_BITS		4
`define OR1200_UPR_MP_BITS		5
`define OR1200_UPR_DUP_BITS		6
`define OR1200_UPR_PCUP_BITS		7
`define OR1200_UPR_PMP_BITS		8
`define OR1200_UPR_PICP_BITS		9
`define OR1200_UPR_TTP_BITS		10
`define OR1200_UPR_FPP_BITS		11
`define OR1200_UPR_RES1_BITS		23:12
`define OR1200_UPR_CUP_BITS		31:24

// UPR values
`define OR1200_UPR_UP			1'b1
`ifdef OR1200_NO_DC
`define OR1200_UPR_DCP			1'b0
`else
`define OR1200_UPR_DCP			1'b1
`endif
`ifdef OR1200_NO_IC
`define OR1200_UPR_ICP			1'b0
`else
`define OR1200_UPR_ICP			1'b1
`endif
`ifdef OR1200_NO_DMMU
`define OR1200_UPR_DMP			1'b0
`else
`define OR1200_UPR_DMP			1'b1
`endif
`ifdef OR1200_NO_IMMU
`define OR1200_UPR_IMP			1'b0
`else
`define OR1200_UPR_IMP			1'b1
`endif
`ifdef OR1200_MAC_IMPLEMENTED
`define OR1200_UPR_MP			1'b1
`else
`define OR1200_UPR_MP			1'b0
`endif
`ifdef OR1200_DU_IMPLEMENTED
`define OR1200_UPR_DUP			1'b1
`else
`define OR1200_UPR_DUP			1'b0
`endif
`define OR1200_UPR_PCUP			1'b0	// Performance counters not present
`ifdef OR1200_PM_IMPLEMENTED
`define OR1200_UPR_PMP			1'b1
`else
`define OR1200_UPR_PMP			1'b0
`endif
`ifdef OR1200_PIC_IMPLEMENTED
`define OR1200_UPR_PICP			1'b1
`else
`define OR1200_UPR_PICP			1'b0
`endif
`ifdef OR1200_TT_IMPLEMENTED
`define OR1200_UPR_TTP			1'b1
`else
`define OR1200_UPR_TTP			1'b0
`endif
`ifdef OR1200_FPU_IMPLEMENTED
`define OR1200_UPR_FPP			1'b1
`else
`define OR1200_UPR_FPP			1'b0
`endif
`define OR1200_UPR_RES1			12'h000
`define OR1200_UPR_CUP			8'h00

// CPUCFGR fields
`define OR1200_CPUCFGR_NSGF_BITS	3:0
`define OR1200_CPUCFGR_HGF_BITS     4
`define OR1200_CPUCFGR_OB32S_BITS	5
`define OR1200_CPUCFGR_OB64S_BITS	6
`define OR1200_CPUCFGR_OF32S_BITS	7
`define OR1200_CPUCFGR_OF64S_BITS	8
`define OR1200_CPUCFGR_OV64S_BITS	9
`define OR1200_CPUCFGR_RES1_BITS	31:10

// CPUCFGR values
`define OR1200_CPUCFGR_NSGF		    4'h0
`ifdef OR1200_RFRAM_16REG
    `define OR1200_CPUCFGR_HGF  		1'b1
`else
    `define OR1200_CPUCFGR_HGF  		1'b0
`endif
`define OR1200_CPUCFGR_OB32S		1'b1
`define OR1200_CPUCFGR_OB64S		1'b0
`ifdef OR1200_FPU_IMPLEMENTED
 `define OR1200_CPUCFGR_OF32S		1'b1
`else
 `define OR1200_CPUCFGR_OF32S		1'b0
`endif

`define OR1200_CPUCFGR_OF64S		1'b0
`define OR1200_CPUCFGR_OV64S		1'b0
`define OR1200_CPUCFGR_RES1		22'h000000

// DMMUCFGR fields
`define OR1200_DMMUCFGR_NTW_BITS	1:0
`define OR1200_DMMUCFGR_NTS_BITS	4:2
`define OR1200_DMMUCFGR_NAE_BITS	7:5
`define OR1200_DMMUCFGR_CRI_BITS	8
`define OR1200_DMMUCFGR_PRI_BITS	9
`define OR1200_DMMUCFGR_TEIRI_BITS	10
`define OR1200_DMMUCFGR_HTR_BITS	11
`define OR1200_DMMUCFGR_RES1_BITS	31:12

// DMMUCFGR values
`ifdef OR1200_NO_DMMU
`define OR1200_DMMUCFGR_NTW		2'h0	// Irrelevant
`define OR1200_DMMUCFGR_NTS		3'h0	// Irrelevant
`define OR1200_DMMUCFGR_NAE		3'h0	// Irrelevant
`define OR1200_DMMUCFGR_CRI		1'b0	// Irrelevant
`define OR1200_DMMUCFGR_PRI		1'b0	// Irrelevant
`define OR1200_DMMUCFGR_TEIRI		1'b0	// Irrelevant
`define OR1200_DMMUCFGR_HTR		1'b0	// Irrelevant
`define OR1200_DMMUCFGR_RES1		20'h00000
`else
`define OR1200_DMMUCFGR_NTW		2'h0	// 1 TLB way
`define OR1200_DMMUCFGR_NTS 3'h`OR1200_DTLB_INDXW	// Num TLB sets
`define OR1200_DMMUCFGR_NAE		3'h0	// No ATB entries
`define OR1200_DMMUCFGR_CRI		1'b0	// No control register
`define OR1200_DMMUCFGR_PRI		1'b0	// No protection reg
`define OR1200_DMMUCFGR_TEIRI		1'b0	// TLB entry inv reg NOT impl.
`define OR1200_DMMUCFGR_HTR		1'b0	// No HW TLB reload
`define OR1200_DMMUCFGR_RES1		20'h00000
`endif

// IMMUCFGR fields
`define OR1200_IMMUCFGR_NTW_BITS	1:0
`define OR1200_IMMUCFGR_NTS_BITS	4:2
`define OR1200_IMMUCFGR_NAE_BITS	7:5
`define OR1200_IMMUCFGR_CRI_BITS	8
`define OR1200_IMMUCFGR_PRI_BITS	9
`define OR1200_IMMUCFGR_TEIRI_BITS	10
`define OR1200_IMMUCFGR_HTR_BITS	11
`define OR1200_IMMUCFGR_RES1_BITS	31:12

// IMMUCFGR values
`ifdef OR1200_NO_IMMU
`define OR1200_IMMUCFGR_NTW		2'h0	// Irrelevant
`define OR1200_IMMUCFGR_NTS		3'h0	// Irrelevant
`define OR1200_IMMUCFGR_NAE		3'h0	// Irrelevant
`define OR1200_IMMUCFGR_CRI		1'b0	// Irrelevant
`define OR1200_IMMUCFGR_PRI		1'b0	// Irrelevant
`define OR1200_IMMUCFGR_TEIRI		1'b0	// Irrelevant
`define OR1200_IMMUCFGR_HTR		1'b0	// Irrelevant
`define OR1200_IMMUCFGR_RES1		20'h00000
`else
`define OR1200_IMMUCFGR_NTW		2'h0	// 1 TLB way
`define OR1200_IMMUCFGR_NTS 3'h`OR1200_ITLB_INDXW	// Num TLB sets
`define OR1200_IMMUCFGR_NAE		3'h0	// No ATB entry
`define OR1200_IMMUCFGR_CRI		1'b0	// No control reg
`define OR1200_IMMUCFGR_PRI		1'b0	// No protection reg
`define OR1200_IMMUCFGR_TEIRI		1'b0	// TLB entry inv reg NOT impl
`define OR1200_IMMUCFGR_HTR		1'b0	// No HW TLB reload
`define OR1200_IMMUCFGR_RES1		20'h00000
`endif

// DCCFGR fields
`define OR1200_DCCFGR_NCW_BITS		2:0
`define OR1200_DCCFGR_NCS_BITS		6:3
`define OR1200_DCCFGR_CBS_BITS		7
`define OR1200_DCCFGR_CWS_BITS		8
`define OR1200_DCCFGR_CCRI_BITS		9
`define OR1200_DCCFGR_CBIRI_BITS	10
`define OR1200_DCCFGR_CBPRI_BITS	11
`define OR1200_DCCFGR_CBLRI_BITS	12
`define OR1200_DCCFGR_CBFRI_BITS	13
`define OR1200_DCCFGR_CBWBRI_BITS	14
`define OR1200_DCCFGR_RES1_BITS	31:15

// DCCFGR values
`ifdef OR1200_NO_DC
`define OR1200_DCCFGR_NCW		3'h0	// Irrelevant
`define OR1200_DCCFGR_NCS		4'h0	// Irrelevant
`define OR1200_DCCFGR_CBS		1'b0	// Irrelevant
`define OR1200_DCCFGR_CWS		1'b0	// Irrelevant
`define OR1200_DCCFGR_CCRI		1'b0	// Irrelevant
`define OR1200_DCCFGR_CBIRI		1'b0	// Irrelevant
`define OR1200_DCCFGR_CBPRI		1'b0	// Irrelevant
`define OR1200_DCCFGR_CBLRI		1'b0	// Irrelevant
`define OR1200_DCCFGR_CBFRI		1'b0	// Irrelevant
`define OR1200_DCCFGR_CBWBRI		1'b0	// Irrelevant
`define OR1200_DCCFGR_RES1		17'h00000
`else
`define OR1200_DCCFGR_NCW		3'h0	// 1 cache way
`define OR1200_DCCFGR_NCS (`OR1200_DCTAG)	// Num cache sets
`define OR1200_DCCFGR_CBS `OR1200_DCLS==4 ? 1'b0 : 1'b1 // 16 byte cache block
`ifdef OR1200_DC_WRITETHROUGH
 `define OR1200_DCCFGR_CWS		1'b0	// Write-through strategy
`else
 `define OR1200_DCCFGR_CWS		1'b1	// Write-back strategy
`endif
`define OR1200_DCCFGR_CCRI		1'b1	// Cache control reg impl.
`define OR1200_DCCFGR_CBIRI		1'b1	// Cache block inv reg impl.
`define OR1200_DCCFGR_CBPRI		1'b0	// Cache block prefetch reg not impl.
`define OR1200_DCCFGR_CBLRI		1'b0	// Cache block lock reg not impl.
`define OR1200_DCCFGR_CBFRI		1'b1	// Cache block flush reg impl.
`ifdef OR1200_DC_WRITETHROUGH
 `define OR1200_DCCFGR_CBWBRI		1'b0	// Cache block WB reg not impl.
`else
 `define OR1200_DCCFGR_CBWBRI		1'b1	// Cache block WB reg impl.
`endif
`define OR1200_DCCFGR_RES1		17'h00000
`endif

// ICCFGR fields
`define OR1200_ICCFGR_NCW_BITS		2:0
`define OR1200_ICCFGR_NCS_BITS		6:3
`define OR1200_ICCFGR_CBS_BITS		7
`define OR1200_ICCFGR_CWS_BITS		8
`define OR1200_ICCFGR_CCRI_BITS		9
`define OR1200_ICCFGR_CBIRI_BITS	10
`define OR1200_ICCFGR_CBPRI_BITS	11
`define OR1200_ICCFGR_CBLRI_BITS	12
`define OR1200_ICCFGR_CBFRI_BITS	13
`define OR1200_ICCFGR_CBWBRI_BITS	14
`define OR1200_ICCFGR_RES1_BITS	31:15

// ICCFGR values
`ifdef OR1200_NO_IC
`define OR1200_ICCFGR_NCW		3'h0	// Irrelevant
`define OR1200_ICCFGR_NCS 		4'h0	// Irrelevant
`define OR1200_ICCFGR_CBS 		1'b0	// Irrelevant
`define OR1200_ICCFGR_CWS		1'b0	// Irrelevant
`define OR1200_ICCFGR_CCRI		1'b0	// Irrelevant
`define OR1200_ICCFGR_CBIRI		1'b0	// Irrelevant
`define OR1200_ICCFGR_CBPRI		1'b0	// Irrelevant
`define OR1200_ICCFGR_CBLRI		1'b0	// Irrelevant
`define OR1200_ICCFGR_CBFRI		1'b0	// Irrelevant
`define OR1200_ICCFGR_CBWBRI		1'b0	// Irrelevant
`define OR1200_ICCFGR_RES1		17'h00000
`else
`define OR1200_ICCFGR_NCW		3'h0	// 1 cache way
`define OR1200_ICCFGR_NCS (`OR1200_ICTAG)	// Num cache sets
`define OR1200_ICCFGR_CBS `OR1200_ICLS==4 ? 1'b0: 1'b1	// 16 byte cache block
`define OR1200_ICCFGR_CWS		1'b0	// Irrelevant
`define OR1200_ICCFGR_CCRI		1'b1	// Cache control reg impl.
`define OR1200_ICCFGR_CBIRI		1'b1	// Cache block inv reg impl.
`define OR1200_ICCFGR_CBPRI		1'b0	// Cache block prefetch reg not impl.
`define OR1200_ICCFGR_CBLRI		1'b0	// Cache block lock reg not impl.
`define OR1200_ICCFGR_CBFRI		1'b1	// Cache block flush reg impl.
`define OR1200_ICCFGR_CBWBRI		1'b0	// Irrelevant
`define OR1200_ICCFGR_RES1		17'h00000
`endif

// DCFGR fields
`define OR1200_DCFGR_NDP_BITS		3:0
`define OR1200_DCFGR_WPCI_BITS		4
`define OR1200_DCFGR_RES1_BITS		31:5

// DCFGR values
`ifdef OR1200_DU_HWBKPTS
`define OR1200_DCFGR_NDP		4'h`OR1200_DU_DVRDCR_PAIRS // # of DVR/DCR pairs
`ifdef OR1200_DU_DWCR0
`define OR1200_DCFGR_WPCI		1'b1
`else
`define OR1200_DCFGR_WPCI		1'b0	// WP counters not impl.
`endif
`else
`define OR1200_DCFGR_NDP		4'h0	// Zero DVR/DCR pairs
`define OR1200_DCFGR_WPCI		1'b0	// WP counters not impl.
`endif
`define OR1200_DCFGR_RES1		27'd0

///////////////////////////////////////////////////////////////////////////////
// Boot Address Selection                                                    //
//                                                                           //
// Allows a definable boot address, potentially different to the usual reset //
// vector to allow for power-on code to be run, if desired.                  //
//                                                                           //
// OR1200_BOOT_ADR should be the 32-bit address of the boot location         //
//                                                                           //
// For default reset behavior uncomment the settings under the "Boot 0x100"  //
// comment below.                                                            //
//                                                                           //
///////////////////////////////////////////////////////////////////////////////
// Boot from 0xf0000100
//`define OR1200_BOOT_ADR 32'hf0000100
// Boot from 0x100
 `define OR1200_BOOT_ADR 32'h00000100

// END DEFINES

// BEGIN CPU

//////////////////////////////////////////////////////////////////////
////                                                              ////
////  OR1200's CPU                                                ////
////                                                              ////
////  This file is part of the OpenRISC 1200 project              ////
////  http://www.opencores.org/project,or1k                       ////
////                                                              ////
////  Description                                                 ////
////  Instantiation of internal CPU blocks. IFETCH, SPRS, FRZ,    ////
////  ALU, EXCEPT, ID, WBMUX, OPERANDMUX, RF etc.                 ////
////                                                              ////
////  To Do:                                                      ////
////   - make it smaller and faster                               ////
////                                                              ////
////  Author(s):                                                  ////
////      - Damjan Lampret, lampret@opencores.org                 ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// $Log: or1200_cpu.v,v $
// Revision 2.0  2010/06/30 11:00:00  ORSoC
// Major update: 
// Structure reordered and bugs fixed. 

 

module or1200_cpu(
	// Clk & Rst
	clk, rst,

	// Insn interface
	ic_en,
	icpu_adr_o, icpu_cycstb_o, icpu_sel_o, icpu_tag_o,
	icpu_dat_i, icpu_ack_i, icpu_rty_i, icpu_err_i, icpu_adr_i, icpu_tag_i,
	immu_en,

	// Debug unit
	id_void, id_insn, ex_void, 
	ex_insn, ex_freeze, wb_insn, wb_freeze, id_pc, ex_pc, wb_pc, branch_op,
	spr_dat_npc, rf_dataw, ex_flushpipe, 
	du_stall, du_addr, du_dat_du, du_read, du_write, du_except_stop, du_flush_pipe,
	du_except_trig, du_dsr, du_dmr1, du_hwbkpt, du_hwbkpt_ls_r, du_dat_cpu,
	du_lsu_store_dat, du_lsu_load_dat, 
	abort_mvspr, abort_ex,
	
	// Data interface
	dc_en,
	dcpu_adr_o, dcpu_cycstb_o, dcpu_we_o, dcpu_sel_o, dcpu_tag_o, 
        dcpu_dat_o, dcpu_dat_i, dcpu_ack_i, dcpu_rty_i, dcpu_err_i, dcpu_tag_i,
	sb_en, dmmu_en, dc_no_writethrough,

	// SR Interface
	boot_adr_sel_i,

	// Interrupt & tick exceptions
	sig_int, sig_tick,

	// SPR interface
	supv, spr_addr, spr_dat_cpu, spr_dat_pic, spr_dat_tt, spr_dat_pm,
	spr_dat_dmmu, spr_dat_immu, spr_dat_du, spr_cs, spr_we, mtspr_dc_done
);

parameter boot_adr = `OR1200_BOOT_ADR;

//
// I/O ports
//

//
// Clk & Rst
//
input 				clk;
input 				rst;

//
// Insn (IC) interface
//
output				ic_en;
output	[31:0]			icpu_adr_o;
output				icpu_cycstb_o;
output	[3:0]			icpu_sel_o;
output	[3:0]			icpu_tag_o;
input	[31:0]			icpu_dat_i;
input				icpu_ack_i;
input				icpu_rty_i;
input				icpu_err_i;
input	[31:0]			icpu_adr_i;
input	[3:0]			icpu_tag_i;

//
// Insn (IMMU) interface
//
output				immu_en;

//
// Debug interface
//
output                          id_void;
output	[31:0]			id_insn;
output                          ex_void;
output	[31:0]			ex_insn;
output				ex_freeze;
output	[31:0]			wb_insn;
output				wb_freeze;
output	[31:0]			id_pc;
output	[31:0]			ex_pc;
output	[31:0]			wb_pc;
output                          ex_flushpipe;
output	[`OR1200_BRANCHOP_WIDTH-1:0]	branch_op;

input				du_stall;
input	[31:0]		du_addr;
input	[31:0]		du_dat_du;
input				du_read;
input				du_write;
input	[`OR1200_DU_DSR_WIDTH-1:0]	du_dsr;
input	[24:0]			du_dmr1;
input				du_hwbkpt;
input				du_hwbkpt_ls_r;
output	[13:0]			du_except_trig;
output	[13:0]			du_except_stop;
output	[31:0]		du_dat_cpu;
output	[31:0]		rf_dataw;
output	[31:0]		du_lsu_store_dat;
output	[31:0]		du_lsu_load_dat;
input				du_flush_pipe;

//
// Data (DC) interface
//
output	[31:0]			dcpu_adr_o;
output				dcpu_cycstb_o;
output				dcpu_we_o;
output	[3:0]			dcpu_sel_o;
output	[3:0]			dcpu_tag_o;
output	[31:0]			dcpu_dat_o;
input	[31:0]			dcpu_dat_i;
input				dcpu_ack_i;
input				dcpu_rty_i;
input				dcpu_err_i;
input	[3:0]			dcpu_tag_i;
output				dc_en;
output  			dc_no_writethrough;
   
//
// Data (DMMU) interface
//
output				sb_en;
output				dmmu_en;
output				abort_ex;
output				abort_mvspr;

//
// SR Interface 
//
input				boot_adr_sel_i;

//
// SPR interface
//
output				supv;
input	[31:0]		spr_dat_pic;
input	[31:0]		spr_dat_tt;
input	[31:0]		spr_dat_pm;
input	[31:0]		spr_dat_dmmu;
input	[31:0]		spr_dat_immu;
input	[31:0]		spr_dat_du;
output	[31:0]		spr_addr;
output	[31:0]		spr_dat_cpu;
output	[31:0]		spr_dat_npc;
output	[31:0]			spr_cs;
output				spr_we;
input   			mtspr_dc_done;
   
//
// Interrupt exceptions
//
input				sig_int;
input				sig_tick;

//
// Internal wires
//
wire	[31:0]			if_insn;
wire				saving_if_insn;
wire	[31:0]			if_pc;
wire	[4:0]		rf_addrw;
wire	[4:0] 		rf_addra;
wire	[4:0] 		rf_addrb;
wire				rf_rda;
wire				rf_rdb;
wire	[31:0]		id_simm;
wire	[31:2]		id_branch_addrtarget;
wire	[31:2]		ex_branch_addrtarget;
wire	[`OR1200_ALUOP_WIDTH-1:0]	alu_op;
wire	[`OR1200_ALUOP2_WIDTH-1:0]	alu_op2;
wire	[`OR1200_COMPOP_WIDTH-1:0]	comp_op;
wire	[`OR1200_BRANCHOP_WIDTH-1:0]	pre_branch_op;
wire	[`OR1200_BRANCHOP_WIDTH-1:0]	branch_op;
wire	[`OR1200_LSUOP_WIDTH-1:0]	id_lsu_op;
wire				genpc_freeze;
wire				if_freeze;
wire				id_freeze;
wire				ex_freeze;
wire				wb_freeze;
wire	[`OR1200_SEL_WIDTH-1:0]	sel_a;
wire	[`OR1200_SEL_WIDTH-1:0]	sel_b;
wire	[`OR1200_RFWBOP_WIDTH-1:0]	rfwb_op;
wire    [`OR1200_FPUOP_WIDTH-1:0]       fpu_op;
wire	[31:0]		rf_dataw;
wire	[31:0]		rf_dataa;
wire	[31:0]		rf_datab;
wire	[31:0]		muxed_a;
wire	[31:0]		muxed_b;
wire	[31:0]		wb_forw;
wire				wbforw_valid;
wire	[31:0]		operand_a;
wire	[31:0]		operand_b;
wire	[31:0]		alu_dataout;
wire	[31:0]		lsu_dataout;
wire	[31:0]		sprs_dataout;
wire	[31:0]		fpu_dataout;
wire     			fpu_done;
wire	[31:0]			ex_simm;
wire	[`OR1200_MULTICYCLE_WIDTH-1:0]	multicycle;
wire    [`OR1200_WAIT_ON_WIDTH-1:0]	wait_on;      
wire	[`OR1200_EXCEPT_WIDTH-1:0]	except_type;
wire	[4:0]			cust5_op;
wire	[5:0]			cust5_limm;
wire				if_flushpipe;
wire				id_flushpipe;
wire				ex_flushpipe;
wire				wb_flushpipe;
wire				extend_flush;
wire				ex_branch_taken;
wire				flag;
wire				flagforw;
wire				flag_we;
wire				flagforw_alu;   
wire				flag_we_alu;
wire				flagforw_fpu;
wire				flag_we_fpu;
wire				carry;
wire				cyforw;
wire				cy_we_alu;
wire				ovforw;
wire				ov_we_alu;
wire				ovforw_mult_mac;
wire				ov_we_mult_mac;   
wire				cy_we_rf;
wire				lsu_stall;
wire				epcr_we;
wire				eear_we;
wire				esr_we;
wire				pc_we;
wire	[31:0]			epcr;
wire	[31:0]			eear;
wire	[`OR1200_SR_WIDTH-1:0]	esr;
wire 	[`OR1200_FPCSR_WIDTH-1:0]       fpcsr;
wire 				fpcsr_we;   
wire				sr_we;
wire	[`OR1200_SR_WIDTH-1:0]	to_sr;
wire	[`OR1200_SR_WIDTH-1:0]	sr;
wire    			dsx;
wire				except_flushpipe;
wire				except_start;
wire				except_started;
wire    			fpu_except_started;   
wire	[31:0]			wb_insn;
wire				sig_syscall;
wire				sig_trap;
wire    			sig_range;
wire				sig_fp;
wire	[31:0]			spr_dat_cfgr;
wire	[31:0]			spr_dat_rf;
wire    [31:0]                  spr_dat_npc;
wire	[31:0]			spr_dat_ppc;
wire	[31:0]			spr_dat_mac;
wire [31:0] 			spr_dat_fpu;
wire     			mtspr_done;
wire				force_dslot_fetch;
wire				no_more_dslot;
wire				ex_void;
wire				ex_spr_read;
wire				ex_spr_write;
wire				if_stall;
wire				id_macrc_op;
wire				ex_macrc_op;
wire	[`OR1200_MACOP_WIDTH-1:0] id_mac_op;
wire	[`OR1200_MACOP_WIDTH-1:0] mac_op;
wire	[31:0]			mult_mac_result;
wire				mult_mac_stall;
wire	[13:0]			except_trig;
wire	[13:0]			except_stop;
wire				genpc_refetch;
wire				rfe;
wire				lsu_unstall;
wire				except_align;
wire				except_dtlbmiss;
wire				except_dmmufault;
wire				except_illegal;
wire				except_itlbmiss;
wire				except_immufault;
wire				except_ibuserr;
wire				except_dbuserr;
wire				abort_ex;
wire				abort_mvspr;

//
// Send exceptions to Debug Unit
//
assign du_except_trig = except_trig;
assign du_except_stop = except_stop;
assign du_lsu_store_dat = operand_b;
assign du_lsu_load_dat  = lsu_dataout;

//
// Data cache enable
//
`ifdef OR1200_NO_DC
assign dc_en = 1'b0;
`else
   assign dc_en = sr[`OR1200_SR_DCE];
`endif

//
// Instruction cache enable
//
`ifdef OR1200_NO_IC
assign ic_en = 1'b0;
`else
assign ic_en = sr[`OR1200_SR_ICE];
`endif

//
// SB enable
//
`ifdef OR1200_SB_IMPLEMENTED
//assign sb_en = sr[`OR1200_SR_SBE]; // SBE not defined  -- jb
`else
assign sb_en = 1'b0;
`endif

//
// DMMU enable
//
`ifdef OR1200_NO_DMMU
assign dmmu_en = 1'b0;
`else
assign dmmu_en = sr[`OR1200_SR_DME];
`endif

//
// IMMU enable
//
`ifdef OR1200_NO_IMMU
assign immu_en = 1'b0;
`else
assign immu_en = sr[`OR1200_SR_IME] & ~except_started;
`endif

//
// SUPV bit
//
assign supv = sr[`OR1200_SR_SM];

//
// FLAG write enable
//
assign flagforw = (flag_we_alu & flagforw_alu) | (flagforw_fpu & flag_we_fpu);
assign flag_we = (flag_we_alu | flag_we_fpu) & ~abort_mvspr;

//
// Flag for any MTSPR instructions, that must block execution, to indicate done
//
assign mtspr_done = mtspr_dc_done;

//
// Range exception
//
assign sig_range = sr[`OR1200_SR_OV];
   
   
   
//
// Instantiation of instruction fetch block
//
or1200_genpc #(.boot_adr(boot_adr)) or1200_genpc(
	.clk(clk),
	.rst(rst),
	.icpu_adr_o(icpu_adr_o),
	.icpu_cycstb_o(icpu_cycstb_o),
	.icpu_sel_o(icpu_sel_o),
	.icpu_tag_o(icpu_tag_o),
	.icpu_rty_i(icpu_rty_i),
	.icpu_adr_i(icpu_adr_i),

	.pre_branch_op(pre_branch_op),
	.branch_op(branch_op),
	.except_type(except_type),
	.except_start(except_start),
	.except_prefix(sr[`OR1200_SR_EPH]),
	.id_branch_addrtarget(id_branch_addrtarget),
	.ex_branch_addrtarget(ex_branch_addrtarget),
	.muxed_b(muxed_b),
	.operand_b(operand_b),
	.flag(flag),
	.flagforw(flagforw),
	.ex_branch_taken(ex_branch_taken),
	.epcr(epcr),
	.spr_dat_i(spr_dat_cpu),
	.spr_pc_we(pc_we),
	.genpc_refetch(genpc_refetch),
	.genpc_freeze(genpc_freeze),
	.no_more_dslot(no_more_dslot),
	.lsu_stall(lsu_stall),
	.du_flush_pipe(du_flush_pipe),
	.spr_dat_npc(spr_dat_npc)
);

//
// Instantiation of instruction fetch block
//
or1200_if or1200_if(
	.clk(clk),
	.rst(rst),
	.icpu_dat_i(icpu_dat_i),
	.icpu_ack_i(icpu_ack_i),
	.icpu_err_i(icpu_err_i),
	.icpu_adr_i(icpu_adr_i),
	.icpu_tag_i(icpu_tag_i),

	.if_freeze(if_freeze),
	.if_insn(if_insn),
	.if_pc(if_pc),
	.saving_if_insn(saving_if_insn),
	.if_flushpipe(if_flushpipe),
	.if_stall(if_stall),
	.no_more_dslot(no_more_dslot),
	.genpc_refetch(genpc_refetch),
	.rfe(rfe),
	.except_itlbmiss(except_itlbmiss),
	.except_immufault(except_immufault),
	.except_ibuserr(except_ibuserr)
);

//
// Instantiation of instruction decode/control logic
//
or1200_ctrl or1200_ctrl(
	.clk(clk),
	.rst(rst),
	.id_freeze(id_freeze),
	.ex_freeze(ex_freeze),
	.wb_freeze(wb_freeze),
	.if_flushpipe(if_flushpipe),
	.id_flushpipe(id_flushpipe),
	.ex_flushpipe(ex_flushpipe),
	.wb_flushpipe(wb_flushpipe),
	.extend_flush(extend_flush),
	.except_flushpipe(except_flushpipe),
	.abort_mvspr(abort_mvspr),
	.if_insn(if_insn),
	.id_insn(id_insn),
	.ex_insn(ex_insn),
	.id_branch_op(pre_branch_op),
	.ex_branch_op(branch_op),
	.ex_branch_taken(ex_branch_taken),
	.rf_addra(rf_addra),
	.rf_addrb(rf_addrb),
	.rf_rda(rf_rda),
	.rf_rdb(rf_rdb),
	.alu_op(alu_op),
	.alu_op2(alu_op2),			
	.mac_op(mac_op),
	.comp_op(comp_op),
	.rf_addrw(rf_addrw),
	.rfwb_op(rfwb_op),
	.fpu_op(fpu_op),			
	.pc_we(pc_we),
	.wb_insn(wb_insn),
	.id_simm(id_simm),
	.id_branch_addrtarget(id_branch_addrtarget),
	.ex_branch_addrtarget(ex_branch_addrtarget),
	.ex_simm(ex_simm),
	.sel_a(sel_a),
	.sel_b(sel_b),
	.id_lsu_op(id_lsu_op),
	.cust5_op(cust5_op),
	.cust5_limm(cust5_limm),
	.id_pc(id_pc),
	.ex_pc(ex_pc),
	.multicycle(multicycle),
        .wait_on(wait_on),			
	.wbforw_valid(wbforw_valid),
	.sig_syscall(sig_syscall),
	.sig_trap(sig_trap),
	.force_dslot_fetch(force_dslot_fetch),
	.no_more_dslot(no_more_dslot),
	.id_void(id_void),
	.ex_void(ex_void),
	.ex_spr_read(ex_spr_read),
	.ex_spr_write(ex_spr_write),
	.id_mac_op(id_mac_op),
	.id_macrc_op(id_macrc_op),
	.ex_macrc_op(ex_macrc_op),
	.rfe(rfe),
	.du_hwbkpt(du_hwbkpt),
	.except_illegal(except_illegal),
	.dc_no_writethrough(dc_no_writethrough),
	.du_flush_pipe(du_flush_pipe)
);

//
// Instantiation of register file
//
or1200_rf or1200_rf(
	.clk(clk),
	.rst(rst),
	.cy_we_i(cy_we_alu),
	.cy_we_o(cy_we_rf),
	.supv(sr[`OR1200_SR_SM]),
	.wb_freeze(wb_freeze),
	.addrw(rf_addrw),
	.dataw(rf_dataw),
	.id_freeze(id_freeze),
	.we(rfwb_op[0]),
	.flushpipe(wb_flushpipe),
	.addra(rf_addra),
	.rda(rf_rda),
	.dataa(rf_dataa),
	.addrb(rf_addrb),
	.rdb(rf_rdb),
	.datab(rf_datab),
	.spr_cs(spr_cs[`OR1200_SPR_GROUP_SYS]),
	.spr_write(spr_we),
	.spr_addr(spr_addr),
	.spr_dat_i(spr_dat_cpu),
	.spr_dat_o(spr_dat_rf),
	.du_read(du_read)
);

//
// Instantiation of operand muxes
//
or1200_operandmuxes or1200_operandmuxes(
	.clk(clk),
	.rst(rst),
	.id_freeze(id_freeze),
	.ex_freeze(ex_freeze),
	.rf_dataa(rf_dataa),
	.rf_datab(rf_datab),
	.ex_forw(rf_dataw),
	.wb_forw(wb_forw),
	.simm(id_simm),
	.sel_a(sel_a),
	.sel_b(sel_b),
	.operand_a(operand_a),
	.operand_b(operand_b),
	.muxed_a(muxed_a),
	.muxed_b(muxed_b)
);

//
// Instantiation of CPU's ALU
//
or1200_alu or1200_alu(
	.a(operand_a),
	.b(operand_b),
	.mult_mac_result(mult_mac_result),
	.macrc_op(ex_macrc_op),
	.alu_op(alu_op),
	.alu_op2(alu_op2),		      
	.comp_op(comp_op),
	.cust5_op(cust5_op),
	.cust5_limm(cust5_limm),
	.result(alu_dataout),
	.flagforw(flagforw_alu),
	.flag_we(flag_we_alu),
	.cyforw(cyforw),
	.cy_we(cy_we_alu),
	.ovforw(ovforw),
	.ov_we(ov_we_alu),		      
	.flag(flag),
	.carry(carry)
);

   
//
// FPU's exception is being dealt with
//    
assign fpu_except_started = except_started && (except_type == `OR1200_EXCEPT_FLOAT);
   
//
// Instantiation of FPU
//
or1200_fpu or1200_fpu(
	.clk(clk),
	.rst(rst),
	.ex_freeze(ex_freeze),
	.a(operand_a),
	.b(operand_b),
	.fpu_op(fpu_op),
	.result(fpu_dataout),
	.done(fpu_done),
	.flagforw(flagforw_fpu),
	.flag_we(flag_we_fpu),
        .sig_fp(sig_fp),
	.except_started(fpu_except_started),
	.fpcsr_we(fpcsr_we),
	.fpcsr(fpcsr),		      
	.spr_cs(spr_cs[`OR1200_SPR_GROUP_FPU]),
	.spr_write(spr_we),
	.spr_addr(spr_addr),
	.spr_dat_i(spr_dat_cpu),
	.spr_dat_o(spr_dat_fpu)
);

   
//
// Instantiation of CPU's multiply unit
//
or1200_mult_mac or1200_mult_mac(
	.clk(clk),
	.rst(rst),
	.ex_freeze(ex_freeze),
	.id_macrc_op(id_macrc_op),
	.macrc_op(ex_macrc_op),
	.a(operand_a),
	.b(operand_b),
	.mac_op(mac_op),
	.alu_op(alu_op),
	.result(mult_mac_result),
	.ovforw(ovforw_mult_mac), 
	.ov_we(ov_we_mult_mac),
	.mult_mac_stall(mult_mac_stall),
	.spr_cs(spr_cs[`OR1200_SPR_GROUP_MAC]),
	.spr_write(spr_we),
	.spr_addr(spr_addr),
	.spr_dat_i(spr_dat_cpu),
	.spr_dat_o(spr_dat_mac)
);

//
// Instantiation of CPU's SPRS block
//
or1200_sprs or1200_sprs(
	.clk(clk),
	.rst(rst),
	.addrbase(operand_a),
	.addrofs(ex_simm[15:0]),
	.dat_i(operand_b),
	.ex_spr_read(ex_spr_read),
	.ex_spr_write(ex_spr_write),
	.flagforw(flagforw),
	.flag_we(flag_we),
	.flag(flag),
	.cyforw(cyforw),
	.cy_we(cy_we_rf),
	.carry(carry),
	.ovforw(ovforw | ovforw_mult_mac),
	.ov_we(ov_we_alu | ov_we_mult_mac),
	.to_wbmux(sprs_dataout),

	.du_addr(du_addr),
	.du_dat_du(du_dat_du),
	.du_read(du_read),
	.du_write(du_write),
	.du_dat_cpu(du_dat_cpu),
	.boot_adr_sel_i(boot_adr_sel_i),
	.spr_addr(spr_addr),
	.spr_dat_pic(spr_dat_pic),
	.spr_dat_tt(spr_dat_tt),
	.spr_dat_pm(spr_dat_pm),
	.spr_dat_cfgr(spr_dat_cfgr),
	.spr_dat_rf(spr_dat_rf),
	.spr_dat_npc(spr_dat_npc),
        .spr_dat_ppc(spr_dat_ppc),
	.spr_dat_mac(spr_dat_mac),
	.spr_dat_dmmu(spr_dat_dmmu),
	.spr_dat_immu(spr_dat_immu),
	.spr_dat_du(spr_dat_du),
	.spr_dat_o(spr_dat_cpu),
	.spr_cs(spr_cs),
	.spr_we(spr_we),

	.epcr_we(epcr_we),
	.eear_we(eear_we),
	.esr_we(esr_we),
	.pc_we(pc_we),
	.epcr(epcr),
	.eear(eear),
	.esr(esr),
	.except_started(except_started),

	.fpcsr(fpcsr),
	.fpcsr_we(fpcsr_we),			
	.spr_dat_fpu(spr_dat_fpu),
			
	.sr_we(sr_we),
	.to_sr(to_sr),
	.sr(sr),
	.branch_op(branch_op),
	.dsx(dsx)
);

//
// Instantiation of load/store unit
//
or1200_lsu or1200_lsu(
	.clk(clk),
	.rst(rst),
	.id_addrbase(muxed_a),
	.id_addrofs(id_simm),
	.ex_addrbase(operand_a),
	.ex_addrofs(ex_simm),
	.id_lsu_op(id_lsu_op),
	.lsu_datain(operand_b),
	.lsu_dataout(lsu_dataout),
	.lsu_stall(lsu_stall),
	.lsu_unstall(lsu_unstall),
	.du_stall(du_stall),
	.except_align(except_align),
	.except_dtlbmiss(except_dtlbmiss),
	.except_dmmufault(except_dmmufault),
	.except_dbuserr(except_dbuserr),
	.id_freeze(id_freeze),
	.ex_freeze(ex_freeze),
	.flushpipe(ex_flushpipe),

	.dcpu_adr_o(dcpu_adr_o),
	.dcpu_cycstb_o(dcpu_cycstb_o),
	.dcpu_we_o(dcpu_we_o),
	.dcpu_sel_o(dcpu_sel_o),
	.dcpu_tag_o(dcpu_tag_o),
	.dcpu_dat_o(dcpu_dat_o),
	.dcpu_dat_i(dcpu_dat_i),
	.dcpu_ack_i(dcpu_ack_i),
	.dcpu_rty_i(dcpu_rty_i),
	.dcpu_err_i(dcpu_err_i),
	.dcpu_tag_i(dcpu_tag_i)
);

//
// Instantiation of write-back muxes
//
or1200_wbmux or1200_wbmux(
	.clk(clk),
	.rst(rst),
	.wb_freeze(wb_freeze),
	.rfwb_op(rfwb_op),
	.muxin_a(alu_dataout),
	.muxin_b(lsu_dataout),
	.muxin_c(sprs_dataout),
	.muxin_d(ex_pc),
        .muxin_e(fpu_dataout),
	.muxout(rf_dataw),
	.muxreg(wb_forw),
	.muxreg_valid(wbforw_valid)
);

//
// Instantiation of freeze logic
//
or1200_freeze or1200_freeze(
	.clk(clk),
	.rst(rst),
	.multicycle(multicycle),
        .wait_on(wait_on),
	.fpu_done(fpu_done),
	.mtspr_done(mtspr_done),
	.flushpipe(wb_flushpipe),
	.extend_flush(extend_flush),
	.lsu_stall(lsu_stall),
	.if_stall(if_stall),
	.lsu_unstall(lsu_unstall),
	.force_dslot_fetch(force_dslot_fetch),
	.abort_ex(abort_ex),
	.du_stall(du_stall),
	.mac_stall(mult_mac_stall),
	.saving_if_insn(saving_if_insn),
	.genpc_freeze(genpc_freeze),
	.if_freeze(if_freeze),
	.id_freeze(id_freeze),
	.ex_freeze(ex_freeze),
	.wb_freeze(wb_freeze),
	.icpu_ack_i(icpu_ack_i),
	.icpu_err_i(icpu_err_i)
);

//
// Instantiation of exception block
//
or1200_except or1200_except(
	.clk(clk),
	.rst(rst),
	.sig_ibuserr(except_ibuserr),
	.sig_dbuserr(except_dbuserr),
	.sig_illegal(except_illegal),
	.sig_align(except_align),
	.sig_range(sig_range),
	.sig_dtlbmiss(except_dtlbmiss),
	.sig_dmmufault(except_dmmufault),
	.sig_int(sig_int),
	.sig_syscall(sig_syscall),
	.sig_trap(sig_trap),
	.sig_itlbmiss(except_itlbmiss),
	.sig_immufault(except_immufault),
	.sig_tick(sig_tick),
	.sig_fp(sig_fp),
	.fpcsr_fpee(fpcsr[`OR1200_FPCSR_FPEE]),
	.ex_branch_taken(ex_branch_taken),
	.icpu_ack_i(icpu_ack_i),
	.icpu_err_i(icpu_err_i),
	.dcpu_ack_i(dcpu_ack_i),
	.dcpu_err_i(dcpu_err_i),
	.genpc_freeze(genpc_freeze),
        .id_freeze(id_freeze),
        .ex_freeze(ex_freeze),
        .wb_freeze(wb_freeze),
	.if_stall(if_stall),
	.if_pc(if_pc),
	.id_pc(id_pc),
	.ex_pc(ex_pc),
	.wb_pc(wb_pc),
	.id_flushpipe(id_flushpipe),
	.ex_flushpipe(ex_flushpipe),
	.extend_flush(extend_flush),
	.except_flushpipe(except_flushpipe),
	.abort_mvspr(abort_mvspr),
	.except_type(except_type),
	.except_start(except_start),
	.except_started(except_started),
	.except_stop(except_stop),
	.except_trig(except_trig),
	.ex_void(ex_void),
	.spr_dat_ppc(spr_dat_ppc),
	.spr_dat_npc(spr_dat_npc),

	.datain(spr_dat_cpu),
	.branch_op(branch_op),
	.du_dsr(du_dsr),
	.du_dmr1(du_dmr1),
	.du_hwbkpt(du_hwbkpt),
	.du_hwbkpt_ls_r(du_hwbkpt_ls_r),
	.epcr_we(epcr_we),
	.eear_we(eear_we),
	.esr_we(esr_we),
	.pc_we(pc_we),
        .epcr(epcr),
	.eear(eear),
	.esr(esr),

	.lsu_addr(dcpu_adr_o),
	.sr_we(sr_we),
	.to_sr(to_sr),
	.sr(sr),
	.abort_ex(abort_ex),
	.dsx(dsx)
);

//
// Instantiation of configuration registers
//
or1200_cfgr or1200_cfgr(
	.spr_addr(spr_addr),
	.spr_dat_o(spr_dat_cfgr)
);

endmodule

// END CPU

// BEGIN ALU

//////////////////////////////////////////////////////////////////////
////                                                              ////
////  OR1200's ALU                                                ////
////                                                              ////
////  This file is part of the OpenRISC 1200 project              ////
////  http://www.opencores.org/project,or1k                       ////
////                                                              ////
////  Description                                                 ////
////  ALU                                                         ////
////                                                              ////
////  To Do:                                                      ////
////   - make it smaller and faster                               ////
////                                                              ////
////  Author(s):                                                  ////
////      - Damjan Lampret, lampret@opencores.org                 ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// $Log: or1200_alu.v,v $
// Revision 2.0  2010/06/30 11:00:00  ORSoC
// Minor update: 
// Defines added, flags are corrected. 

 

module or1200_alu(
	a, b, mult_mac_result, macrc_op,
	alu_op, alu_op2, comp_op,
	cust5_op, cust5_limm,
	result, flagforw, flag_we,
	ovforw, ov_we,
	cyforw, cy_we, carry, flag
);

parameter width = `OR1200_OPERAND_WIDTH;

//
// I/O
//
input	[width-1:0]		a;
input	[width-1:0]		b;
input	[width-1:0]		mult_mac_result;
input				macrc_op;
input	[`OR1200_ALUOP_WIDTH-1:0]	alu_op;
input	[`OR1200_ALUOP2_WIDTH-1:0]	alu_op2;
input	[`OR1200_COMPOP_WIDTH-1:0]	comp_op;
input	[4:0]			cust5_op;
input	[5:0]			cust5_limm;
output	[width-1:0]		result;
output				flagforw;
output				flag_we;
output				cyforw;
output				cy_we;
output				ovforw;
output				ov_we;
input				carry;
input         flag;

//
// Internal wires and regs
//
reg	[width-1:0]		result;
reg	[width-1:0]		shifted_rotated;
reg	[width-1:0]		extended;   
`ifdef OR1200_IMPL_ALU_CUST5
reg	[width-1:0]		result_cust5;
`endif
reg				flagforw;
reg				flagcomp;
reg				flag_we;
reg				cyforw;
reg				cy_we;
reg				ovforw;
reg				ov_we;   
wire	[width-1:0]		comp_a;
wire	[width-1:0]		comp_b;
wire				a_eq_b;
wire				a_lt_b;
wire	[width-1:0]		result_sum;
wire	[width-1:0]		result_and;
wire				cy_sum;
`ifdef OR1200_IMPL_SUB
wire				cy_sub;
`endif
wire    			ov_sum;
wire    [width-1:0] 		carry_in;

wire    [width-1:0]		b_mux;
   
   

//
// Combinatorial logic
//

assign comp_a = {a[width-1] ^ comp_op[3] , a[width-2:0]};
assign comp_b = {b[width-1] ^ comp_op[3] , b[width-2:0]};
`ifdef OR1200_IMPL_ALU_COMP1
assign a_eq_b = (comp_a == comp_b);
assign a_lt_b = (comp_a < comp_b);
`endif
`ifdef OR1200_IMPL_ALU_COMP3
assign a_eq_b = !(|result_sum);
// signed compare when comp_op[3] is set
assign a_lt_b = comp_op[3] ? ((a[width-1] & !b[width-1]) |  
			      (!a[width-1] & !b[width-1] & result_sum[width-1])|
			      (a[width-1] & b[width-1] & result_sum[width-1])):
		(a < b);

`endif
   
`ifdef OR1200_IMPL_SUB
 `ifdef OR1200_IMPL_ALU_COMP3
assign cy_sub =	a_lt_b;
 `else			      
assign cy_sub = (comp_a < comp_b);
 `endif			      
`endif
   
`ifdef OR1200_IMPL_ADDC   
assign carry_in = (alu_op==`OR1200_ALUOP_ADDC) ? 
		  {{width-1{1'b0}},carry} : {width{1'b0}};
`else
assign carry_in = {width-1{1'b0}};
`endif

`ifdef OR1200_IMPL_ALU_COMP3
`ifdef OR1200_IMPL_SUB
assign b_mux = ((alu_op==`OR1200_ALUOP_SUB) | (alu_op==`OR1200_ALUOP_COMP)) ? 
		(~b)+1 : b;
`else
assign b_mux = (alu_op==`OR1200_ALUOP_COMP) ? (~b)+1 : b;
`endif
`else // ! `ifdef OR1200_IMPL_ALU_COMP3
`ifdef OR1200_IMPL_SUB
assign b_mux = (alu_op==`OR1200_ALUOP_SUB) ? (~b)+1 : b;
`else
assign b_mux = b;
`endif
`endif			      
assign {cy_sum, result_sum} = (a + b_mux) + carry_in;
// Numbers either both +ve and bit 31 of result set
assign ov_sum = ((!a[width-1] & !b_mux[width-1]) & result_sum[width-1]) |
`ifdef OR1200_IMPL_SUB
		// Subtract larger negative from smaller positive
		((!a[width-1] & b_mux[width-1]) & result_sum[width-1] &
		 alu_op==`OR1200_ALUOP_SUB) |
`endif
// or both -ve and bit 31 of result clear
		((a[width-1] & b_mux[width-1]) & !result_sum[width-1]);  
assign result_and = a & b;

//
// Simulation check for bad ALU behavior
//
`ifdef OR1200_WARNINGS
// synopsys translate_off
always @(result) begin
	if (result === 32'bx)
		$display("%t: WARNING: 32'bx detected on ALU result bus. Please check !", $time);
end
// synopsys translate_on
`endif

//
// Central part of the ALU
//
always @(alu_op or alu_op2 or a or b or result_sum or result_and or macrc_op
	 or shifted_rotated or mult_mac_result or flag or carry
`ifdef OR1200_IMPL_ALU_EXT
         or extended
`endif	 
`ifdef OR1200_IMPL_ALU_CUST5
	 or result_cust5
`endif
) begin
`ifdef OR1200_CASE_DEFAULT
	casez (alu_op)		// synopsys parallel_case
`else
	casez (alu_op)		// synopsys full_case parallel_case
`endif
`ifdef OR1200_IMPL_ALU_FFL1	  
		`OR1200_ALUOP_FFL1: begin
`ifdef OR1200_CASE_DEFAULT
		   casez (alu_op2) // synopsys parallel_case
`else
		   casez (alu_op2) // synopsys full_case parallel_case
`endif
		     0: begin // FF1
			result = a[0] ? 1 : a[1] ? 2 : a[2] ? 3 : a[3] ? 4 : a[4] ? 5 : a[5] ? 6 : a[6] ? 7 : a[7] ? 8 : a[8] ? 9 : a[9] ? 10 : a[10] ? 11 : a[11] ? 12 : a[12] ? 13 : a[13] ? 14 : a[14] ? 15 : a[15] ? 16 : a[16] ? 17 : a[17] ? 18 : a[18] ? 19 : a[19] ? 20 : a[20] ? 21 : a[21] ? 22 : a[22] ? 23 : a[23] ? 24 : a[24] ? 25 : a[25] ? 26 : a[26] ? 27 : a[27] ? 28 : a[28] ? 29 : a[29] ? 30 : a[30] ? 31 : a[31] ? 32 : 0;
		     end
		     default: begin // FL1
			result = a[31] ? 32 : a[30] ? 31 : a[29] ? 30 : a[28] ? 29 : a[27] ? 28 : a[26] ? 27 : a[25] ? 26 : a[24] ? 25 : a[23] ? 24 : a[22] ? 23 : a[21] ? 22 : a[20] ? 21 : a[19] ? 20 : a[18] ? 19 : a[17] ? 18 : a[16] ? 17 : a[15] ? 16 : a[14] ? 15 : a[13] ? 14 : a[12] ? 13 : a[11] ? 12 : a[10] ? 11 : a[9] ? 10 : a[8] ? 9 : a[7] ? 8 : a[6] ? 7 : a[5] ? 6 : a[4] ? 5 : a[3] ? 4 : a[2] ? 3 : a[1] ? 2 : a[0] ? 1 : 0 ;
		     end
		   endcase // casez (alu_op2)
		end // case: `OR1200_ALUOP_FFL1
`endif //  `ifdef OR1200_IMPL_ALU_FFL1
`ifdef OR1200_IMPL_ALU_CUST5
	  
		`OR1200_ALUOP_CUST5 : begin 
				result = result_cust5;
		end
`endif		     
		`OR1200_ALUOP_SHROT : begin 
				result = shifted_rotated;
		end
`ifdef OR1200_IMPL_ADDC
		`OR1200_ALUOP_ADDC,
`endif
`ifdef OR1200_IMPL_SUB
		`OR1200_ALUOP_SUB,
`endif	 
		`OR1200_ALUOP_ADD : begin
				result = result_sum;
		end
		`OR1200_ALUOP_XOR : begin
				result = a ^ b;
		end
		`OR1200_ALUOP_OR  : begin
				result = a | b;
		end
`ifdef OR1200_IMPL_ALU_EXT		     
		`OR1200_ALUOP_EXTHB  : begin
		                result = extended;
		end
		`OR1200_ALUOP_EXTW  : begin
		                result = a;
		end		
`endif     
		`OR1200_ALUOP_MOVHI : begin
				if (macrc_op) begin
					result = mult_mac_result;
				end
				else begin
					result = b << 16;
				end
		end
`ifdef OR1200_MULT_IMPLEMENTED
`ifdef OR1200_DIV_IMPLEMENTED
		`OR1200_ALUOP_DIV,
		`OR1200_ALUOP_DIVU,
`endif
		`OR1200_ALUOP_MUL,
		`OR1200_ALUOP_MULU : begin
				result = mult_mac_result;
		end
`endif
		`OR1200_ALUOP_CMOV: begin
			result = flag ? a : b;
		end

`ifdef OR1200_CASE_DEFAULT
		default: begin
`else
		`OR1200_ALUOP_COMP, `OR1200_ALUOP_AND: begin
`endif
			result=result_and;
		end 
	endcase
end

//
// Generate flag and flag write enable
//
always @(alu_op or result_sum or result_and or flagcomp
) begin
	casez (alu_op)		// synopsys parallel_case
`ifdef OR1200_ADDITIONAL_FLAG_MODIFIERS
`ifdef OR1200_IMPL_ADDC
		`OR1200_ALUOP_ADDC,
`endif	 
		`OR1200_ALUOP_ADD : begin
			flagforw = (result_sum == 32'h0000_0000);
			flag_we = 1'b1;
		end
		`OR1200_ALUOP_AND: begin
			flagforw = (result_and == 32'h0000_0000);
			flag_we = 1'b1;
		end
`endif
		`OR1200_ALUOP_COMP: begin
			flagforw = flagcomp;
			flag_we = 1'b1;
		end
		default: begin
			flagforw = flagcomp;
			flag_we = 1'b0;
		end
	endcase
end

//
// Generate SR[CY] write enable
//
always @(alu_op or cy_sum
`ifdef OR1200_IMPL_CY
`ifdef OR1200_IMPL_SUB
	or cy_sub
`endif
`endif
) begin
	casez (alu_op)		// synopsys parallel_case
`ifdef OR1200_IMPL_CY
`ifdef OR1200_IMPL_ADDC
		`OR1200_ALUOP_ADDC,
`endif	  
		`OR1200_ALUOP_ADD : begin
			cyforw = cy_sum;
			cy_we = 1'b1;
		end
`ifdef OR1200_IMPL_SUB
		`OR1200_ALUOP_SUB: begin
			cyforw = cy_sub;
			cy_we = 1'b1;
		end
`endif
`endif
		default: begin
			cyforw = 1'b0;
			cy_we = 1'b0;
		end
	endcase
end


//
// Generate SR[OV] write enable
//
always @(alu_op or ov_sum) begin
	casez (alu_op)		// synopsys parallel_case
`ifdef OR1200_IMPL_OV
`ifdef OR1200_IMPL_ADDC
		`OR1200_ALUOP_ADDC,
`endif
`ifdef OR1200_IMPL_SUB
		`OR1200_ALUOP_SUB,
`endif	 
		`OR1200_ALUOP_ADD : begin
			ovforw = ov_sum;
			ov_we = 1'b1;
		end
`endif	  
		default: begin
			ovforw = 1'b0;
			ov_we = 1'b0;
		end
	endcase
end
   
//
// Shifts and rotation
//
always @(alu_op2 or a or b) begin
	case (alu_op2)		// synopsys parallel_case
	  `OR1200_SHROTOP_SLL :
				shifted_rotated = (a << b[4:0]);
	  `OR1200_SHROTOP_SRL :
				shifted_rotated = (a >> b[4:0]);

`ifdef OR1200_IMPL_ALU_ROTATE
	  `OR1200_SHROTOP_ROR :
	                        shifted_rotated = (a << (6'd32-{1'b0,b[4:0]})) |
						  (a >> b[4:0]);
`endif
	  default:
	                        shifted_rotated = ({32{a[31]}} << 
						   (6'd32-{1'b0, b[4:0]})) | 
						  a >> b[4:0];
	endcase
end

//
// First type of compare implementation
//
`ifdef OR1200_IMPL_ALU_COMP1
always @(comp_op or a_eq_b or a_lt_b) begin
	case(comp_op[2:0])	// synopsys parallel_case
		`OR1200_COP_SFEQ:
			flagcomp = a_eq_b;
		`OR1200_COP_SFNE:
			flagcomp = ~a_eq_b;
		`OR1200_COP_SFGT:
			flagcomp = ~(a_eq_b | a_lt_b);
		`OR1200_COP_SFGE:
			flagcomp = ~a_lt_b;
		`OR1200_COP_SFLT:
			flagcomp = a_lt_b;
		`OR1200_COP_SFLE:
			flagcomp = a_eq_b | a_lt_b;
		default:
			flagcomp = 1'b0;
	endcase
end
`endif

//
// Second type of compare implementation
//
`ifdef OR1200_IMPL_ALU_COMP2
always @(comp_op or comp_a or comp_b) begin
	case(comp_op[2:0])	// synopsys parallel_case
		`OR1200_COP_SFEQ:
			flagcomp = (comp_a == comp_b);
		`OR1200_COP_SFNE:
			flagcomp = (comp_a != comp_b);
		`OR1200_COP_SFGT:
			flagcomp = (comp_a > comp_b);
		`OR1200_COP_SFGE:
			flagcomp = (comp_a >= comp_b);
		`OR1200_COP_SFLT:
			flagcomp = (comp_a < comp_b);
		`OR1200_COP_SFLE:
			flagcomp = (comp_a <= comp_b);
		default:
			flagcomp = 1'b0;
	endcase
end
`endif //  `ifdef OR1200_IMPL_ALU_COMP2

`ifdef OR1200_IMPL_ALU_COMP3
always @(comp_op or a_eq_b or a_lt_b) begin
	case(comp_op[2:0])	// synopsys parallel_case
		`OR1200_COP_SFEQ:
			flagcomp = a_eq_b;
		`OR1200_COP_SFNE:
			flagcomp = ~a_eq_b;
		`OR1200_COP_SFGT:
			flagcomp = ~(a_eq_b | a_lt_b);
		`OR1200_COP_SFGE:
			flagcomp = ~a_lt_b;
		`OR1200_COP_SFLT:
			flagcomp = a_lt_b;
		`OR1200_COP_SFLE:
			flagcomp = a_eq_b | a_lt_b;
		default:
			flagcomp = 1'b0;
	endcase
end
`endif
   

`ifdef OR1200_IMPL_ALU_EXT
   always @(alu_op or alu_op2 or a) begin
      casez (alu_op2)
	`OR1200_EXTHBOP_HS : extended = {{16{a[15]}},a[15:0]};
	`OR1200_EXTHBOP_BS : extended = {{24{a[7]}},a[7:0]};
	`OR1200_EXTHBOP_HZ : extended = {16'd0,a[15:0]};
	`OR1200_EXTHBOP_BZ : extended = {24'd0,a[7:0]};
	default: extended = a; // Used for l.extw instructions
      endcase // casez (alu_op2)
   end
`endif 
	     

//
// l.cust5 custom instructions
//
`ifdef OR1200_IMPL_ALU_CUST5
// Examples for move byte, set bit and clear bit
//
always @(cust5_op or cust5_limm or a or b) begin
	casez (cust5_op)		// synopsys parallel_case
		5'h1 : begin 
			casez (cust5_limm[1:0])
			  2'h0: result_cust5 = {a[31:8], b[7:0]};
			  2'h1: result_cust5 = {a[31:16], b[7:0], a[7:0]};
			  2'h2: result_cust5 = {a[31:24], b[7:0], a[15:0]};
			  2'h3: result_cust5 = {b[7:0], a[23:0]};
			endcase
		end
		5'h2 :
			result_cust5 = a | (1 << cust5_limm);
		5'h3 :
			result_cust5 = a & (32'hffffffff ^ (1 << cust5_limm));
//
// *** Put here new l.cust5 custom instructions ***
//
		default: begin
			result_cust5 = a;
		end
	endcase
end // always @ (cust5_op or cust5_limm or a or b)
`endif   

endmodule

// END ALU

// BEGIN CFGR

//////////////////////////////////////////////////////////////////////
////                                                              ////
////  OR1200's VR, UPR and Configuration Registers                ////
////                                                              ////
////  This file is part of the OpenRISC 1200 project              ////
////  http://www.opencores.org/project,or1k                       ////
////                                                              ////
////  Description                                                 ////
////  According to OR1K architectural and OR1200 specifications.  ////
////                                                              ////
////  To Do:                                                      ////
////   - done                                                     ////
////                                                              ////
////  Author(s):                                                  ////
////      - Damjan Lampret, lampret@opencores.org                 ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
//
// $Log: or1200_cfgr.v,v $
// Revision 2.0  2010/06/30 11:00:00  ORSoC
// No update 

 

module or1200_cfgr(
		   // RISC Internal Interface
		   spr_addr, spr_dat_o
		   );

   //
   // RISC Internal Interface
   //
   input	[31:0]	spr_addr;	// SPR Address
   output [31:0] 	spr_dat_o;	// SPR Read Data

   //
   // Internal wires & registers
   //
   reg [31:0] 		spr_dat_o;	// SPR Read Data

`ifdef OR1200_CFGR_IMPLEMENTED

   //
   // Implementation of VR, UPR and configuration registers
   //
   always @(spr_addr)
 `ifdef OR1200_SYS_FULL_DECODE
     if (~|spr_addr[31:4])
 `endif
       case(spr_addr[3:0])		// synopsys parallel_case
	 `OR1200_SPRGRP_SYS_VR: begin
	    spr_dat_o[`OR1200_VR_REV_BITS] = `OR1200_VR_REV;
	    spr_dat_o[`OR1200_VR_RES1_BITS] = `OR1200_VR_RES1;
	    spr_dat_o[`OR1200_VR_CFG_BITS] = `OR1200_VR_CFG;
	    spr_dat_o[`OR1200_VR_VER_BITS] = `OR1200_VR_VER;
	 end
	 `OR1200_SPRGRP_SYS_UPR: begin
	    spr_dat_o[`OR1200_UPR_UP_BITS] = `OR1200_UPR_UP;
	    spr_dat_o[`OR1200_UPR_DCP_BITS] = `OR1200_UPR_DCP;
	    spr_dat_o[`OR1200_UPR_ICP_BITS] = `OR1200_UPR_ICP;
	    spr_dat_o[`OR1200_UPR_DMP_BITS] = `OR1200_UPR_DMP;
	    spr_dat_o[`OR1200_UPR_IMP_BITS] = `OR1200_UPR_IMP;
	    spr_dat_o[`OR1200_UPR_MP_BITS] = `OR1200_UPR_MP;
	    spr_dat_o[`OR1200_UPR_DUP_BITS] = `OR1200_UPR_DUP;
	    spr_dat_o[`OR1200_UPR_PCUP_BITS] = `OR1200_UPR_PCUP;
	    spr_dat_o[`OR1200_UPR_PMP_BITS] = `OR1200_UPR_PMP;
	    spr_dat_o[`OR1200_UPR_PICP_BITS] = `OR1200_UPR_PICP;
	    spr_dat_o[`OR1200_UPR_TTP_BITS] = `OR1200_UPR_TTP;
	    spr_dat_o[`OR1200_UPR_FPP_BITS] = `OR1200_UPR_FPP;
	    spr_dat_o[`OR1200_UPR_RES1_BITS] = `OR1200_UPR_RES1;
	    spr_dat_o[`OR1200_UPR_CUP_BITS] = `OR1200_UPR_CUP;
	 end
	 `OR1200_SPRGRP_SYS_CPUCFGR: begin
	    spr_dat_o[`OR1200_CPUCFGR_NSGF_BITS] = `OR1200_CPUCFGR_NSGF;
	    spr_dat_o[`OR1200_CPUCFGR_HGF_BITS] = `OR1200_CPUCFGR_HGF;
	    spr_dat_o[`OR1200_CPUCFGR_OB32S_BITS] = `OR1200_CPUCFGR_OB32S;
	    spr_dat_o[`OR1200_CPUCFGR_OB64S_BITS] = `OR1200_CPUCFGR_OB64S;
	    spr_dat_o[`OR1200_CPUCFGR_OF32S_BITS] = `OR1200_CPUCFGR_OF32S;
	    spr_dat_o[`OR1200_CPUCFGR_OF64S_BITS] = `OR1200_CPUCFGR_OF64S;
	    spr_dat_o[`OR1200_CPUCFGR_OV64S_BITS] = `OR1200_CPUCFGR_OV64S;
	    spr_dat_o[`OR1200_CPUCFGR_RES1_BITS] = `OR1200_CPUCFGR_RES1;
	 end
	 `OR1200_SPRGRP_SYS_DMMUCFGR: begin
	    spr_dat_o[`OR1200_DMMUCFGR_NTW_BITS] = `OR1200_DMMUCFGR_NTW;
	    spr_dat_o[`OR1200_DMMUCFGR_NTS_BITS] = `OR1200_DMMUCFGR_NTS;
	    spr_dat_o[`OR1200_DMMUCFGR_NAE_BITS] = `OR1200_DMMUCFGR_NAE;
	    spr_dat_o[`OR1200_DMMUCFGR_CRI_BITS] = `OR1200_DMMUCFGR_CRI;
	    spr_dat_o[`OR1200_DMMUCFGR_PRI_BITS] = `OR1200_DMMUCFGR_PRI;
	    spr_dat_o[`OR1200_DMMUCFGR_TEIRI_BITS] = `OR1200_DMMUCFGR_TEIRI;
	    spr_dat_o[`OR1200_DMMUCFGR_HTR_BITS] = `OR1200_DMMUCFGR_HTR;
	    spr_dat_o[`OR1200_DMMUCFGR_RES1_BITS] = `OR1200_DMMUCFGR_RES1;
	 end
	 `OR1200_SPRGRP_SYS_IMMUCFGR: begin
	    spr_dat_o[`OR1200_IMMUCFGR_NTW_BITS] = `OR1200_IMMUCFGR_NTW;
	    spr_dat_o[`OR1200_IMMUCFGR_NTS_BITS] = `OR1200_IMMUCFGR_NTS;
	    spr_dat_o[`OR1200_IMMUCFGR_NAE_BITS] = `OR1200_IMMUCFGR_NAE;
	    spr_dat_o[`OR1200_IMMUCFGR_CRI_BITS] = `OR1200_IMMUCFGR_CRI;
	    spr_dat_o[`OR1200_IMMUCFGR_PRI_BITS] = `OR1200_IMMUCFGR_PRI;
	    spr_dat_o[`OR1200_IMMUCFGR_TEIRI_BITS] = `OR1200_IMMUCFGR_TEIRI;
	    spr_dat_o[`OR1200_IMMUCFGR_HTR_BITS] = `OR1200_IMMUCFGR_HTR;
	    spr_dat_o[`OR1200_IMMUCFGR_RES1_BITS] = `OR1200_IMMUCFGR_RES1;
	 end
	 `OR1200_SPRGRP_SYS_DCCFGR: begin
	    spr_dat_o[`OR1200_DCCFGR_NCW_BITS] = `OR1200_DCCFGR_NCW;
	    spr_dat_o[`OR1200_DCCFGR_NCS_BITS] = `OR1200_DCCFGR_NCS;
	    spr_dat_o[`OR1200_DCCFGR_CBS_BITS] = `OR1200_DCCFGR_CBS;
	    spr_dat_o[`OR1200_DCCFGR_CWS_BITS] = `OR1200_DCCFGR_CWS;
	    spr_dat_o[`OR1200_DCCFGR_CCRI_BITS] = `OR1200_DCCFGR_CCRI;
	    spr_dat_o[`OR1200_DCCFGR_CBIRI_BITS] = `OR1200_DCCFGR_CBIRI;
	    spr_dat_o[`OR1200_DCCFGR_CBPRI_BITS] = `OR1200_DCCFGR_CBPRI;
	    spr_dat_o[`OR1200_DCCFGR_CBLRI_BITS] = `OR1200_DCCFGR_CBLRI;
	    spr_dat_o[`OR1200_DCCFGR_CBFRI_BITS] = `OR1200_DCCFGR_CBFRI;
	    spr_dat_o[`OR1200_DCCFGR_CBWBRI_BITS] = `OR1200_DCCFGR_CBWBRI;
	    spr_dat_o[`OR1200_DCCFGR_RES1_BITS] = `OR1200_DCCFGR_RES1;
	 end
	 `OR1200_SPRGRP_SYS_ICCFGR: begin
	    spr_dat_o[`OR1200_ICCFGR_NCW_BITS] = `OR1200_ICCFGR_NCW;
	    spr_dat_o[`OR1200_ICCFGR_NCS_BITS] = `OR1200_ICCFGR_NCS;
	    spr_dat_o[`OR1200_ICCFGR_CBS_BITS] = `OR1200_ICCFGR_CBS;
	    spr_dat_o[`OR1200_ICCFGR_CWS_BITS] = `OR1200_ICCFGR_CWS;
	    spr_dat_o[`OR1200_ICCFGR_CCRI_BITS] = `OR1200_ICCFGR_CCRI;
	    spr_dat_o[`OR1200_ICCFGR_CBIRI_BITS] = `OR1200_ICCFGR_CBIRI;
	    spr_dat_o[`OR1200_ICCFGR_CBPRI_BITS] = `OR1200_ICCFGR_CBPRI;
	    spr_dat_o[`OR1200_ICCFGR_CBLRI_BITS] = `OR1200_ICCFGR_CBLRI;
	    spr_dat_o[`OR1200_ICCFGR_CBFRI_BITS] = `OR1200_ICCFGR_CBFRI;
	    spr_dat_o[`OR1200_ICCFGR_CBWBRI_BITS] = `OR1200_ICCFGR_CBWBRI;
	    spr_dat_o[`OR1200_ICCFGR_RES1_BITS] = `OR1200_ICCFGR_RES1;
	 end
	 `OR1200_SPRGRP_SYS_DCFGR: begin
	    spr_dat_o[`OR1200_DCFGR_NDP_BITS] = `OR1200_DCFGR_NDP;
	    spr_dat_o[`OR1200_DCFGR_WPCI_BITS] = `OR1200_DCFGR_WPCI;
	    spr_dat_o[`OR1200_DCFGR_RES1_BITS] = `OR1200_DCFGR_RES1;
	 end
	 default: spr_dat_o = 32'h0000_0000;
       endcase
 `ifdef OR1200_SYS_FULL_DECODE
     else
       spr_dat_o = 32'h0000_0000;
 `endif

`else

   //
   // When configuration registers are not implemented, only
   // implement VR and UPR
   //
   always @(spr_addr)
 `ifdef OR1200_SYS_FULL_DECODE
     if (spr_addr[31:4] == 28'h0)
 `endif
       case(spr_addr[3:0])
	 `OR1200_SPRGRP_SYS_VR: begin
	    spr_dat_o[`OR1200_VR_REV_BITS] = `OR1200_VR_REV;
	    spr_dat_o[`OR1200_VR_RES1_BITS] = `OR1200_VR_RES1;
	    spr_dat_o[`OR1200_VR_CFG_BITS] = `OR1200_VR_CFG;
	    spr_dat_o[`OR1200_VR_VER_BITS] = `OR1200_VR_VER;
	 end
	 `OR1200_SPRGRP_SYS_UPR: begin
	    spr_dat_o[`OR1200_UPR_UP_BITS] = `OR1200_UPR_UP;
	    spr_dat_o[`OR1200_UPR_DCP_BITS] = `OR1200_UPR_DCP;
	    spr_dat_o[`OR1200_UPR_ICP_BITS] = `OR1200_UPR_ICP;
	    spr_dat_o[`OR1200_UPR_DMP_BITS] = `OR1200_UPR_DMP;
	    spr_dat_o[`OR1200_UPR_IMP_BITS] = `OR1200_UPR_IMP;
	    spr_dat_o[`OR1200_UPR_MP_BITS] = `OR1200_UPR_MP;
	    spr_dat_o[`OR1200_UPR_DUP_BITS] = `OR1200_UPR_DUP;
	    spr_dat_o[`OR1200_UPR_PCUP_BITS] = `OR1200_UPR_PCUP;
	    spr_dat_o[`OR1200_UPR_PMP_BITS] = `OR1200_UPR_PMP;
	    spr_dat_o[`OR1200_UPR_PICP_BITS] = `OR1200_UPR_PICP;
	    spr_dat_o[`OR1200_UPR_TTP_BITS] = `OR1200_UPR_TTP;
	    spr_dat_o[`OR1200_UPR_RES1_BITS] = `OR1200_UPR_RES1;
	    spr_dat_o[`OR1200_UPR_CUP_BITS] = `OR1200_UPR_CUP;
	 end
	 default: spr_dat_o = 32'h0000_0000;
       endcase
 `ifdef OR1200_SYS_FULL_DECODE
     else
       spr_dat_o = 32'h0000_0000;
 `endif

`endif

endmodule


// END CFGR

// BEGIN CTRL

//////////////////////////////////////////////////////////////////////
////                                                              ////
////  OR1200's Instruction decode                                 ////
////                                                              ////
////  This file is part of the OpenRISC 1200 project              ////
////  http://www.opencores.org/project,or1k                       ////
////                                                              ////
////  Description                                                 ////
////  Majority of instruction decoding is performed here.         ////
////                                                              ////
////  To Do:                                                      ////
////   - make it smaller and faster                               ////
////                                                              ////
////  Author(s):                                                  ////
////      - Damjan Lampret, lampret@opencores.org                 ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
//
// $Log: or1200_ctrl.v,v $
// Revision 2.0  2010/06/30 11:00:00  ORSoC
// Major update: 
// Structure reordered and bugs fixed. 

 

module or1200_ctrl
  (
   // Clock and reset
   clk, rst,
   
   // Internal i/f
   except_flushpipe, extend_flush, if_flushpipe, id_flushpipe, ex_flushpipe, 
   wb_flushpipe,
   id_freeze, ex_freeze, wb_freeze, if_insn, id_insn, ex_insn, abort_mvspr, 
   id_branch_op, ex_branch_op, ex_branch_taken, pc_we, 
   rf_addra, rf_addrb, rf_rda, rf_rdb, alu_op, alu_op2, mac_op,
   comp_op, rf_addrw, rfwb_op, fpu_op,
   wb_insn, id_simm, ex_simm, id_branch_addrtarget, ex_branch_addrtarget, sel_a,
   sel_b, id_lsu_op,
   cust5_op, cust5_limm, id_pc, ex_pc, du_hwbkpt, 
   multicycle, wait_on, wbforw_valid, sig_syscall, sig_trap,
   force_dslot_fetch, no_more_dslot, id_void, ex_void, ex_spr_read, 
   ex_spr_write, du_flush_pipe,
   id_mac_op, id_macrc_op, ex_macrc_op, rfe, except_illegal, dc_no_writethrough
   );

//
// I/O
//
input					clk;
input					rst;
input					id_freeze;
input					ex_freeze /* verilator public */;
input					wb_freeze /* verilator public */;
output					if_flushpipe;
output					id_flushpipe;
output					ex_flushpipe;
output					wb_flushpipe;
input					extend_flush;
input					except_flushpipe;
input                           abort_mvspr ;
input	[31:0]			if_insn;
output	[31:0]			id_insn;
output	[31:0]			ex_insn /* verilator public */;
output	[`OR1200_BRANCHOP_WIDTH-1:0]		ex_branch_op;
output	[`OR1200_BRANCHOP_WIDTH-1:0]		id_branch_op;
input						ex_branch_taken;
output	[`OR1200_REGFILE_ADDR_WIDTH-1:0]	rf_addrw;
output	[`OR1200_REGFILE_ADDR_WIDTH-1:0]	rf_addra;
output	[`OR1200_REGFILE_ADDR_WIDTH-1:0]	rf_addrb;
output					rf_rda;
output					rf_rdb;
output	[`OR1200_ALUOP_WIDTH-1:0]		alu_op;
output [`OR1200_ALUOP2_WIDTH-1:0] 		alu_op2;
output	[`OR1200_MACOP_WIDTH-1:0]		mac_op;
output	[`OR1200_RFWBOP_WIDTH-1:0]		rfwb_op;
output  [`OR1200_FPUOP_WIDTH-1:0] 		fpu_op;      
input					pc_we;
output	[31:0]				wb_insn;
output	[31:2]				id_branch_addrtarget;
output	[31:2]				ex_branch_addrtarget;
output	[`OR1200_SEL_WIDTH-1:0]		sel_a;
output	[`OR1200_SEL_WIDTH-1:0]		sel_b;
output	[`OR1200_LSUOP_WIDTH-1:0]		id_lsu_op;
output	[`OR1200_COMPOP_WIDTH-1:0]		comp_op;
output	[`OR1200_MULTICYCLE_WIDTH-1:0]		multicycle;
output  [`OR1200_WAIT_ON_WIDTH-1:0] 		wait_on;   
output	[4:0]				cust5_op;
output	[5:0]				cust5_limm;
input   [31:0]                          id_pc;
input   [31:0]                          ex_pc;
output	[31:0]				id_simm;
output	[31:0]				ex_simm;
input					wbforw_valid;
input					du_hwbkpt;
output					sig_syscall;
output					sig_trap;
output					force_dslot_fetch;
output					no_more_dslot;
output					id_void;
output					ex_void;
output					ex_spr_read;
output					ex_spr_write;
output	[`OR1200_MACOP_WIDTH-1:0]	id_mac_op;
output					id_macrc_op;
output					ex_macrc_op;
output					rfe;
output					except_illegal;
output  				dc_no_writethrough;
input					du_flush_pipe;

//
// Internal wires and regs
//
reg	[`OR1200_BRANCHOP_WIDTH-1:0]		id_branch_op;
reg	[`OR1200_BRANCHOP_WIDTH-1:0]		ex_branch_op;
reg	[`OR1200_ALUOP_WIDTH-1:0]		alu_op;
reg [`OR1200_ALUOP2_WIDTH-1:0]      		alu_op2;
wire					if_maci_op;
`ifdef OR1200_MAC_IMPLEMENTED
reg	[`OR1200_MACOP_WIDTH-1:0]		ex_mac_op;
reg	[`OR1200_MACOP_WIDTH-1:0]		id_mac_op;
wire	[`OR1200_MACOP_WIDTH-1:0]		mac_op;
reg					ex_macrc_op;
`else
wire	[`OR1200_MACOP_WIDTH-1:0]		mac_op;
wire					ex_macrc_op;
`endif
reg	[31:0]				id_insn /* verilator public */;
reg	[31:0]				ex_insn /* verilator public */;
reg	[31:0]				wb_insn /* verilator public */;
reg	[`OR1200_REGFILE_ADDR_WIDTH-1:0]	rf_addrw;
reg	[`OR1200_REGFILE_ADDR_WIDTH-1:0]	wb_rfaddrw;
reg	[`OR1200_RFWBOP_WIDTH-1:0]		rfwb_op;
reg	[`OR1200_SEL_WIDTH-1:0]		sel_a;
reg	[`OR1200_SEL_WIDTH-1:0]		sel_b;
reg					sel_imm;
reg	[`OR1200_LSUOP_WIDTH-1:0]		id_lsu_op;
reg	[`OR1200_COMPOP_WIDTH-1:0]		comp_op;
reg	[`OR1200_MULTICYCLE_WIDTH-1:0]		multicycle;
reg     [`OR1200_WAIT_ON_WIDTH-1:0] 		wait_on;      
reg 	[31:0]				id_simm;
reg 	[31:0]				ex_simm;
reg					sig_syscall;
reg					sig_trap;
reg					except_illegal;
wire					id_void;
wire					ex_void;
wire                                    wb_void;
reg                                     ex_delayslot_dsi;
reg                                     ex_delayslot_nop;
reg					spr_read;
reg					spr_write;
reg     [31:2]				ex_branch_addrtarget;
`ifdef OR1200_DC_NOSTACKWRITETHROUGH
reg 					dc_no_writethrough;
`endif
   
//
// Register file read addresses
//
assign rf_addra = if_insn[20:16];
assign rf_addrb = if_insn[15:11];
assign rf_rda = if_insn[31] || if_maci_op;
assign rf_rdb = if_insn[30];

//
// Force fetch of delay slot instruction when jump/branch is preceeded by 
// load/store instructions
//
assign force_dslot_fetch = 1'b0;
assign no_more_dslot = (|ex_branch_op & !id_void & ex_branch_taken) | 
		       (ex_branch_op == `OR1200_BRANCHOP_RFE);

assign id_void = (id_insn[31:26] == `OR1200_OR32_NOP) & id_insn[16];
assign ex_void = (ex_insn[31:26] == `OR1200_OR32_NOP) & ex_insn[16];
assign wb_void = (wb_insn[31:26] == `OR1200_OR32_NOP) & wb_insn[16];

assign ex_spr_write = spr_write && !abort_mvspr;
assign ex_spr_read = spr_read && !abort_mvspr;

//
// ex_delayslot_dsi: delay slot insn is in EX stage
// ex_delayslot_nop: (filler) nop insn is in EX stage (before nops 
//                   jump/branch was executed)
//
//  ex_delayslot_dsi & !ex_delayslot_nop - DS insn in EX stage
//  !ex_delayslot_dsi & ex_delayslot_nop - NOP insn in EX stage, 
//       next different is DS insn, previous different was Jump/Branch
//  !ex_delayslot_dsi & !ex_delayslot_nop - normal insn in EX stage
//
always @(posedge clk or `OR1200_RST_EVENT rst) begin
        if (rst == `OR1200_RST_VALUE) begin
		ex_delayslot_nop <=  1'b0;
		ex_delayslot_dsi <=  1'b0;
	end
	else if (!ex_freeze & !ex_delayslot_dsi & ex_delayslot_nop) begin
		ex_delayslot_nop <=  id_void;
		ex_delayslot_dsi <=  !id_void;
	end
	else if (!ex_freeze & ex_delayslot_dsi & !ex_delayslot_nop) begin
		ex_delayslot_nop <=  1'b0;
		ex_delayslot_dsi <=  1'b0;
	end
	else if (!ex_freeze) begin
		ex_delayslot_nop <=  id_void && ex_branch_taken && 
				     (ex_branch_op != `OR1200_BRANCHOP_NOP) && 
				     (ex_branch_op != `OR1200_BRANCHOP_RFE);
	        ex_delayslot_dsi <=  !id_void && ex_branch_taken && 
				     (ex_branch_op != `OR1200_BRANCHOP_NOP) && 
				     (ex_branch_op != `OR1200_BRANCHOP_RFE);
	end
end

//
// Flush pipeline
//
assign if_flushpipe = except_flushpipe | pc_we | extend_flush | du_flush_pipe;
assign id_flushpipe = except_flushpipe | pc_we | extend_flush | du_flush_pipe;
assign ex_flushpipe = except_flushpipe | pc_we | extend_flush | du_flush_pipe;
assign wb_flushpipe = except_flushpipe | pc_we | extend_flush | du_flush_pipe;

//
// EX Sign/Zero extension of immediates
//
always @(posedge clk or `OR1200_RST_EVENT rst) begin
	if (rst == `OR1200_RST_VALUE)
		ex_simm <=  32'h0000_0000;
	else if (!ex_freeze) begin
		ex_simm <=  id_simm;
	end
end

//
// ID Sign/Zero extension of immediate
//
always @(id_insn) begin
	case (id_insn[31:26])     // synopsys parallel_case

	// l.addi
	`OR1200_OR32_ADDI:
		id_simm = {{16{id_insn[15]}}, id_insn[15:0]};

	// l.addic
	`OR1200_OR32_ADDIC:
		id_simm = {{16{id_insn[15]}}, id_insn[15:0]};

	// l.lxx (load instructions)
	`OR1200_OR32_LWZ, `OR1200_OR32_LWS,
   `OR1200_OR32_LBZ, `OR1200_OR32_LBS,
	`OR1200_OR32_LHZ, `OR1200_OR32_LHS:
		id_simm = {{16{id_insn[15]}}, id_insn[15:0]};

	// l.muli
	`ifdef OR1200_MULT_IMPLEMENTED
	`OR1200_OR32_MULI:
		id_simm = {{16{id_insn[15]}}, id_insn[15:0]};
	`endif

	// l.maci
	`ifdef OR1200_MAC_IMPLEMENTED
	`OR1200_OR32_MACI:
		id_simm = {{16{id_insn[15]}}, id_insn[15:0]};
	`endif

	// l.mtspr
	`OR1200_OR32_MTSPR:
		id_simm = {16'b0, id_insn[25:21], id_insn[10:0]};

	// l.sxx (store instructions)
	`OR1200_OR32_SW, `OR1200_OR32_SH, `OR1200_OR32_SB:
		id_simm = {{16{id_insn[25]}}, id_insn[25:21], id_insn[10:0]};

	// l.xori
	`OR1200_OR32_XORI:
		id_simm = {{16{id_insn[15]}}, id_insn[15:0]};

	// l.sfxxi (SFXX with immediate)
	`OR1200_OR32_SFXXI:
		id_simm = {{16{id_insn[15]}}, id_insn[15:0]};

	// Instructions with no or zero extended immediate
	default:
		id_simm = {{16'b0}, id_insn[15:0]};

	endcase
end

//
// ID Sign extension of branch offset
//
assign id_branch_addrtarget = {{4{id_insn[25]}}, id_insn[25:0]} + id_pc[31:2];

//
// EX Sign extension of branch offset
//

// pipeline ID and EX branch target address 
always @(posedge clk or `OR1200_RST_EVENT rst) begin
	if (rst == `OR1200_RST_VALUE)
		ex_branch_addrtarget <=  0;
	else if (!ex_freeze) 
		ex_branch_addrtarget <=  id_branch_addrtarget;
end
// not pipelined
//assign ex_branch_addrtarget = {{4{ex_insn[25]}}, ex_insn[25:0]} + ex_pc[31:2];

//
// l.maci in IF stage
//
`ifdef OR1200_MAC_IMPLEMENTED
assign if_maci_op = (if_insn[31:26] == `OR1200_OR32_MACI);
`else
assign if_maci_op = 1'b0;
`endif

//
// l.macrc in ID stage
//
`ifdef OR1200_MAC_IMPLEMENTED
assign id_macrc_op = (id_insn[31:26] == `OR1200_OR32_MACRC) & id_insn[16];
`else
assign id_macrc_op = 1'b0;
`endif

//
// l.macrc in EX stage
//
`ifdef OR1200_MAC_IMPLEMENTED
always @(posedge clk or `OR1200_RST_EVENT rst) begin
	if (rst == `OR1200_RST_VALUE)
		ex_macrc_op <=  1'b0;
	else if (!ex_freeze & id_freeze | ex_flushpipe)
		ex_macrc_op <=  1'b0;
	else if (!ex_freeze)
		ex_macrc_op <=  id_macrc_op;
end
`else
assign ex_macrc_op = 1'b0;
`endif

//
// cust5_op, cust5_limm (L immediate)
//
assign cust5_op = ex_insn[4:0];
assign cust5_limm = ex_insn[10:5];

//
//
//
assign rfe = (id_branch_op == `OR1200_BRANCHOP_RFE) | 
	     (ex_branch_op == `OR1200_BRANCHOP_RFE);

   
`ifdef verilator
   // Function to access wb_insn (for Verilator). Have to hide this from
   // simulator, since functions with no inputs are not allowed in IEEE
   function [31:0] get_wb_insn;
   // 1364-2001.
      // verilator public
      get_wb_insn = wb_insn;
   endfunction // get_wb_insn

   // Function to access id_insn (for Verilator). Have to hide this from
   // simulator, since functions with no inputs are not allowed in IEEE
   // 1364-2001.
   function [31:0] get_id_insn;
      // verilator public
      get_id_insn = id_insn;
   endfunction // get_id_insn

   // Function to access ex_insn (for Verilator). Have to hide this from
   // simulator, since functions with no inputs are not allowed in IEEE
   // 1364-2001.
   function [31:0] get_ex_insn;
      // verilator public
      get_ex_insn = ex_insn;
   endfunction // get_ex_insn
   
`endif

   
//
// Generation of sel_a
//
always @(rf_addrw or id_insn or rfwb_op or wbforw_valid or wb_rfaddrw)
	if ((id_insn[20:16] == rf_addrw) && rfwb_op[0])
		sel_a = `OR1200_SEL_EX_FORW;
	else if ((id_insn[20:16] == wb_rfaddrw) && wbforw_valid)
		sel_a = `OR1200_SEL_WB_FORW;
	else
		sel_a = `OR1200_SEL_RF;

//
// Generation of sel_b
//
always @(rf_addrw or sel_imm or id_insn or rfwb_op or wbforw_valid or 
	 wb_rfaddrw)
	if (sel_imm)
		sel_b = `OR1200_SEL_IMM;
	else if ((id_insn[15:11] == rf_addrw) && rfwb_op[0])
		sel_b = `OR1200_SEL_EX_FORW;
	else if ((id_insn[15:11] == wb_rfaddrw) && wbforw_valid)
		sel_b = `OR1200_SEL_WB_FORW;
	else
		sel_b = `OR1200_SEL_RF;

//
// Decode of multicycle
//
always @(id_insn) begin
  case (id_insn[31:26])		// synopsys parallel_case
    // l.rfe
    `OR1200_OR32_RFE,
    // l.mfspr
    `OR1200_OR32_MFSPR:
      multicycle = `OR1200_TWO_CYCLES;	// to read from ITLB/DTLB (sync RAMs)
    // Single cycle instructions
    default: begin
      multicycle = `OR1200_ONE_CYCLE;
    end    
  endcase
end // always @ (id_insn)

//
// Encode wait_on signal
//    
always @(id_insn) begin
   case (id_insn[31:26])		// synopsys parallel_case
     `OR1200_OR32_ALU: 
       wait_on =  ( 1'b0
`ifdef OR1200_DIV_IMPLEMENTED
                     | (id_insn[4:0] == `OR1200_ALUOP_DIV)
		     | (id_insn[4:0] == `OR1200_ALUOP_DIVU)
`endif
`ifdef OR1200_MULT_IMPLEMENTED
		     | (id_insn[4:0] == `OR1200_ALUOP_MUL)
		     | (id_insn[4:0] == `OR1200_ALUOP_MULU)
`endif
		    ) ? `OR1200_WAIT_ON_MULTMAC : `OR1200_WAIT_ON_NOTHING;
`ifdef OR1200_MULT_IMPLEMENTED
`ifdef OR1200_MAC_IMPLEMENTED
     `OR1200_OR32_MACMSB,
     `OR1200_OR32_MACI,
`endif
     `OR1200_OR32_MULI:       
	 wait_on = `OR1200_WAIT_ON_MULTMAC;
`endif
`ifdef OR1200_MAC_IMPLEMENTED
     `OR1200_OR32_MACRC:
         wait_on = id_insn[16] ? `OR1200_WAIT_ON_MULTMAC : 
		                 `OR1200_WAIT_ON_NOTHING;
`endif		   
`ifdef OR1200_FPU_IMPLEMENTED
       `OR1200_OR32_FLOAT: begin
	 wait_on = id_insn[`OR1200_FPUOP_DOUBLE_BIT] ? 0 : `OR1200_WAIT_ON_FPU;
       end
`endif
`ifndef OR1200_DC_WRITEHROUGH
     // l.mtspr
     `OR1200_OR32_MTSPR: begin
	wait_on = `OR1200_WAIT_ON_MTSPR;
     end
`endif
     default: begin
	wait_on = `OR1200_WAIT_ON_NOTHING;
     end
   endcase // case (id_insn[31:26])
end // always @ (id_insn)
   
   
   
   
//
// Register file write address
//
always @(posedge clk or `OR1200_RST_EVENT rst) begin
	if (rst == `OR1200_RST_VALUE)
		rf_addrw <=  5'd0;
	else if (!ex_freeze & id_freeze)
		rf_addrw <=  5'd00;
	else if (!ex_freeze)
		case (id_insn[31:26])	// synopsys parallel_case
			`OR1200_OR32_JAL, `OR1200_OR32_JALR:
				rf_addrw <=  5'd09;	// link register r9
			default:
				rf_addrw <=  id_insn[25:21];
		endcase
end

//
// rf_addrw in wb stage (used in forwarding logic)
//
always @(posedge clk or `OR1200_RST_EVENT rst) begin
	if (rst == `OR1200_RST_VALUE)
		wb_rfaddrw <=  5'd0;
	else if (!wb_freeze)
		wb_rfaddrw <=  rf_addrw;
end

//
// Instruction latch in id_insn
//
always @(posedge clk or `OR1200_RST_EVENT rst) begin
	if (rst == `OR1200_RST_VALUE)
		id_insn <=  {`OR1200_OR32_NOP, 26'h041_0000};
        else if (id_flushpipe)
                id_insn <=  {`OR1200_OR32_NOP, 26'h041_0000};        // NOP -> id_insn[16] must be 1
	else if (!id_freeze) begin
		id_insn <=  if_insn;
`ifdef OR1200_VERBOSE
// synopsys translate_off
		$display("%t: id_insn <= %h", $time, if_insn);
// synopsys translate_on
`endif
	end
end

//
// Instruction latch in ex_insn
//
always @(posedge clk or `OR1200_RST_EVENT rst) begin
	if (rst == `OR1200_RST_VALUE)
		ex_insn <=  {`OR1200_OR32_NOP, 26'h041_0000};
	else if (!ex_freeze & id_freeze | ex_flushpipe)
		ex_insn <=  {`OR1200_OR32_NOP, 26'h041_0000};	// NOP -> ex_insn[16] must be 1
	else if (!ex_freeze) begin
		ex_insn <=  id_insn;
`ifdef OR1200_VERBOSE
// synopsys translate_off
		$display("%t: ex_insn <= %h", $time, id_insn);
// synopsys translate_on
`endif
	end
end
   
//
// Instruction latch in wb_insn
//
always @(posedge clk or `OR1200_RST_EVENT rst) begin
	if (rst == `OR1200_RST_VALUE)
		wb_insn <=  {`OR1200_OR32_NOP, 26'h041_0000};
	// wb_insn should not be changed by exceptions due to correct 
	// recording of display_arch_state in the or1200_monitor! 
	// wb_insn changed by exception is not used elsewhere! 
	else if (!wb_freeze) begin
		wb_insn <=  ex_insn;
	end
end

//
// Decode of sel_imm
//
always @(posedge clk or `OR1200_RST_EVENT rst) begin
	if (rst == `OR1200_RST_VALUE)
		sel_imm <=  1'b0;
	else if (!id_freeze) begin
	  case (if_insn[31:26])		// synopsys parallel_case

	    // j.jalr
	    `OR1200_OR32_JALR:
	      sel_imm <=  1'b0;
	    
	    // l.jr
	    `OR1200_OR32_JR:
	      sel_imm <=  1'b0;
	    
	    // l.rfe
	    `OR1200_OR32_RFE:
	      sel_imm <=  1'b0;
	    
	    // l.mfspr
	    `OR1200_OR32_MFSPR:
	      sel_imm <=  1'b0;
	    
	    // l.mtspr
	    `OR1200_OR32_MTSPR:
	      sel_imm <=  1'b0;
	    
	    // l.sys, l.brk and all three sync insns
	    `OR1200_OR32_XSYNC:
	      sel_imm <=  1'b0;
	    
	    // l.mac/l.msb
`ifdef OR1200_MAC_IMPLEMENTED
	    `OR1200_OR32_MACMSB:
	      sel_imm <=  1'b0;
`endif

	    // l.sw
	    `OR1200_OR32_SW:
	      sel_imm <=  1'b0;
	    
	    // l.sb
	    `OR1200_OR32_SB:
	      sel_imm <=  1'b0;
	    
	    // l.sh
	    `OR1200_OR32_SH:
	      sel_imm <=  1'b0;
	    
	    // ALU instructions except the one with immediate
	    `OR1200_OR32_ALU:
	      sel_imm <=  1'b0;
	    
	    // SFXX instructions
	    `OR1200_OR32_SFXX:
	      sel_imm <=  1'b0;

`ifdef OR1200_IMPL_ALU_CUST5
	    // l.cust5 instructions
	    `OR1200_OR32_CUST5:
	      sel_imm <=  1'b0;
`endif
`ifdef OR1200_FPU_IMPLEMENTED
	    // FPU instructions
	    `OR1200_OR32_FLOAT:
	      sel_imm <=  1'b0;
`endif
	    // l.nop
	    `OR1200_OR32_NOP:
	      sel_imm <=  1'b0;

	    // All instructions with immediates
	    default: begin
	      sel_imm <=  1'b1;
	    end
	    
	  endcase
	  
	end
end

//
// Decode of except_illegal
//
always @(posedge clk or `OR1200_RST_EVENT rst) begin
	if (rst == `OR1200_RST_VALUE)
		except_illegal <=  1'b0;
	else if (!ex_freeze & id_freeze | ex_flushpipe)
		except_illegal <=  1'b0;
	else if (!ex_freeze) begin
		case (id_insn[31:26])		// synopsys parallel_case

		`OR1200_OR32_J,
		`OR1200_OR32_JAL,
		`OR1200_OR32_JALR,
		`OR1200_OR32_JR,
		`OR1200_OR32_BNF,
		`OR1200_OR32_BF,
		`OR1200_OR32_RFE,
		`OR1200_OR32_MOVHI,
		`OR1200_OR32_MFSPR,
		`OR1200_OR32_XSYNC,
`ifdef OR1200_MAC_IMPLEMENTED
		`OR1200_OR32_MACI,
`endif
		`OR1200_OR32_LWZ,
		`OR1200_OR32_LWS,
		`OR1200_OR32_LBZ,
		`OR1200_OR32_LBS,
		`OR1200_OR32_LHZ,
		`OR1200_OR32_LHS,
		`OR1200_OR32_ADDI,
		`OR1200_OR32_ADDIC,
		`OR1200_OR32_ANDI,
		`OR1200_OR32_ORI,
		`OR1200_OR32_XORI,
`ifdef OR1200_MULT_IMPLEMENTED
		`OR1200_OR32_MULI,
`endif
`ifdef OR1200_IMPL_ALU_ROTATE		  
		`OR1200_OR32_SH_ROTI,
`endif
		`OR1200_OR32_SFXXI,
		`OR1200_OR32_MTSPR,
`ifdef OR1200_MAC_IMPLEMENTED
		`OR1200_OR32_MACMSB,
`endif
		`OR1200_OR32_SW,
		`OR1200_OR32_SB,
		`OR1200_OR32_SH,
		`OR1200_OR32_SFXX,
`ifdef OR1200_IMPL_ALU_CUST5
		`OR1200_OR32_CUST5,
`endif
	`OR1200_OR32_NOP:
		except_illegal <=  1'b0;
`ifdef OR1200_FPU_IMPLEMENTED
	    `OR1200_OR32_FLOAT:
                // Check it's not a double precision instruction
                except_illegal <=  id_insn[`OR1200_FPUOP_DOUBLE_BIT];
`endif	      

	`OR1200_OR32_ALU:
		except_illegal <=  1'b0 

`ifdef OR1200_MULT_IMPLEMENTED
`ifdef OR1200_DIV_IMPLEMENTED
`else 
		| (id_insn[4:0] == `OR1200_ALUOP_DIV)
		| (id_insn[4:0] == `OR1200_ALUOP_DIVU)
`endif
`else
		| (id_insn[4:0] == `OR1200_ALUOP_DIV)
		| (id_insn[4:0] == `OR1200_ALUOP_DIVU)
		| (id_insn[4:0] == `OR1200_ALUOP_MUL)
`endif

`ifdef OR1200_IMPL_ADDC
`else
		| (id_insn[4:0] == `OR1200_ALUOP_ADDC)
`endif

`ifdef OR1200_IMPL_ALU_FFL1
`else
		| (id_insn[4:0] == `OR1200_ALUOP_FFL1)
`endif

`ifdef OR1200_IMPL_ALU_ROTATE
`else
		| ((id_insn[4:0] == `OR1200_ALUOP_SHROT) &
		   (id_insn[9:6] == `OR1200_SHROTOP_ROR))
`endif

`ifdef OR1200_IMPL_SUB
`else
		| (id_insn[4:0] == `OR1200_ALUOP_SUB)
`endif
`ifdef OR1200_IMPL_ALU_EXT
`else
		| (id_insn[4:0] == `OR1200_ALUOP_EXTHB)
		| (id_insn[4:0] == `OR1200_ALUOP_EXTW)
`endif
		;

		// Illegal and OR1200 unsupported instructions
	default:
		except_illegal <=  1'b1;

	endcase
	end // if (!ex_freeze)
end
   

//
// Decode of alu_op
//
always @(posedge clk or `OR1200_RST_EVENT rst) begin
	if (rst == `OR1200_RST_VALUE)
		alu_op <=  `OR1200_ALUOP_NOP;
	else if (!ex_freeze & id_freeze | ex_flushpipe)
		alu_op <=  `OR1200_ALUOP_NOP;
	else if (!ex_freeze) begin
	  case (id_insn[31:26])		// synopsys parallel_case
	    
	    // l.movhi
	    `OR1200_OR32_MOVHI:
	      alu_op <=  `OR1200_ALUOP_MOVHI;
	    
	    // l.addi
	    `OR1200_OR32_ADDI:
	      alu_op <=  `OR1200_ALUOP_ADD;
	    
	    // l.addic
	    `OR1200_OR32_ADDIC:
	      alu_op <=  `OR1200_ALUOP_ADDC;
	    
	    // l.andi
	    `OR1200_OR32_ANDI:
	      alu_op <=  `OR1200_ALUOP_AND;
	    
	    // l.ori
	    `OR1200_OR32_ORI:
	      alu_op <=  `OR1200_ALUOP_OR;
	    
	    // l.xori
	    `OR1200_OR32_XORI:
	      alu_op <=  `OR1200_ALUOP_XOR;
	    
	    // l.muli
`ifdef OR1200_MULT_IMPLEMENTED
	    `OR1200_OR32_MULI:
	      alu_op <=  `OR1200_ALUOP_MUL;
`endif
`ifdef OR1200_IMPL_ALU_ROTATE	    
	    // Shift and rotate insns with immediate
	    `OR1200_OR32_SH_ROTI:
	      alu_op <=  `OR1200_ALUOP_SHROT;
`endif  
	    // SFXX insns with immediate
	    `OR1200_OR32_SFXXI:
	      alu_op <=  `OR1200_ALUOP_COMP;
	    
	    // ALU instructions except the one with immediate
	    `OR1200_OR32_ALU:
	      alu_op <=  {1'b0,id_insn[3:0]};
	    
	    // SFXX instructions
	    `OR1200_OR32_SFXX:
	      alu_op <=  `OR1200_ALUOP_COMP;
`ifdef OR1200_IMPL_ALU_CUST5	    
	    // l.cust5
	    `OR1200_OR32_CUST5:
	      alu_op <=  `OR1200_ALUOP_CUST5;
`endif	    
	    // Default
	    default: begin
	      alu_op <=  `OR1200_ALUOP_NOP;
	    end
	      
	  endcase
	  
	end
end


//
// Decode of second ALU operation field [9:6]
//
always @(posedge clk or `OR1200_RST_EVENT rst) begin
	if (rst == `OR1200_RST_VALUE)
		alu_op2 <=  0;
	else if (!ex_freeze & id_freeze | ex_flushpipe)
	        alu_op2 <= 0;
   	else if (!ex_freeze) begin
		alu_op2 <=  id_insn[`OR1200_ALUOP2_POS];
	end
end

//
// Decode of spr_read, spr_write
//
always @(posedge clk or `OR1200_RST_EVENT rst) begin
	if (rst == `OR1200_RST_VALUE) begin
		spr_read <=  1'b0;
		spr_write <=  1'b0;
	end
	else if (!ex_freeze & id_freeze | ex_flushpipe) begin
		spr_read <=  1'b0;
		spr_write <=  1'b0;
	end
	else if (!ex_freeze) begin
		case (id_insn[31:26])     // synopsys parallel_case

		// l.mfspr
		`OR1200_OR32_MFSPR: begin
			spr_read <=  1'b1;
			spr_write <=  1'b0;
		end

		// l.mtspr
		`OR1200_OR32_MTSPR: begin
			spr_read <=  1'b0;
			spr_write <=  1'b1;
		end

		// Default
		default: begin
			spr_read <=  1'b0;
			spr_write <=  1'b0;
		end

		endcase
	end
end

//
// Decode of mac_op
//
`ifdef OR1200_MAC_IMPLEMENTED
always @(id_insn) begin
	case (id_insn[31:26])		// synopsys parallel_case

	// l.maci
	`OR1200_OR32_MACI:
		id_mac_op =  `OR1200_MACOP_MAC;

	// l.mac, l.msb
	`OR1200_OR32_MACMSB:
		id_mac_op =  id_insn[2:0];

	// Illegal and OR1200 unsupported instructions
	default:
		id_mac_op =  `OR1200_MACOP_NOP;

	endcase
end

always @(posedge clk or `OR1200_RST_EVENT rst) begin
	if (rst == `OR1200_RST_VALUE)
		ex_mac_op <=  `OR1200_MACOP_NOP;
	else if (!ex_freeze & id_freeze | ex_flushpipe)
		ex_mac_op <=  `OR1200_MACOP_NOP;
	else if (!ex_freeze)
		ex_mac_op <=  id_mac_op;
end

assign mac_op = abort_mvspr ? `OR1200_MACOP_NOP : ex_mac_op;
`else
assign id_mac_op = `OR1200_MACOP_NOP;
assign mac_op = `OR1200_MACOP_NOP;
`endif


//
// Decode of rfwb_op
//
always @(posedge clk or `OR1200_RST_EVENT rst) begin
	if (rst == `OR1200_RST_VALUE)
		rfwb_op <=  `OR1200_RFWBOP_NOP;
	else  if (!ex_freeze & id_freeze | ex_flushpipe)
		rfwb_op <=  `OR1200_RFWBOP_NOP;
	else  if (!ex_freeze) begin
		case (id_insn[31:26])		// synopsys parallel_case

		// j.jal
		`OR1200_OR32_JAL:
			rfwb_op <=  {`OR1200_RFWBOP_LR, 1'b1};
		  
		// j.jalr
		`OR1200_OR32_JALR:
			rfwb_op <=  {`OR1200_RFWBOP_LR, 1'b1};
		  
		// l.movhi
		`OR1200_OR32_MOVHI:
			rfwb_op <=  {`OR1200_RFWBOP_ALU, 1'b1};
		  
		// l.mfspr
		`OR1200_OR32_MFSPR:
			rfwb_op <=  {`OR1200_RFWBOP_SPRS, 1'b1};
		  
		// l.lwz
		`OR1200_OR32_LWZ:
			rfwb_op <=  {`OR1200_RFWBOP_LSU, 1'b1};

		// l.lws
		`OR1200_OR32_LWS:
			rfwb_op <=  {`OR1200_RFWBOP_LSU, 1'b1};

		// l.lbz
		`OR1200_OR32_LBZ:
			rfwb_op <=  {`OR1200_RFWBOP_LSU, 1'b1};
		  
		// l.lbs
		`OR1200_OR32_LBS:
			rfwb_op <=  {`OR1200_RFWBOP_LSU, 1'b1};
		  
		// l.lhz
		`OR1200_OR32_LHZ:
			rfwb_op <=  {`OR1200_RFWBOP_LSU, 1'b1};
		  
		// l.lhs
		`OR1200_OR32_LHS:
			rfwb_op <=  {`OR1200_RFWBOP_LSU, 1'b1};
		  
		// l.addi
		`OR1200_OR32_ADDI:
			rfwb_op <=  {`OR1200_RFWBOP_ALU, 1'b1};
		  
		// l.addic
		`OR1200_OR32_ADDIC:
			rfwb_op <=  {`OR1200_RFWBOP_ALU, 1'b1};
		  
		// l.andi
		`OR1200_OR32_ANDI:
			rfwb_op <=  {`OR1200_RFWBOP_ALU, 1'b1};
		  
		// l.ori
		`OR1200_OR32_ORI:
			rfwb_op <=  {`OR1200_RFWBOP_ALU, 1'b1};
		  
		// l.xori
		`OR1200_OR32_XORI:
			rfwb_op <=  {`OR1200_RFWBOP_ALU, 1'b1};
		  
		// l.muli
`ifdef OR1200_MULT_IMPLEMENTED
		`OR1200_OR32_MULI:
			rfwb_op <=  {`OR1200_RFWBOP_ALU, 1'b1};
`endif
		  
		// Shift and rotate insns with immediate
`ifdef OR1200_IMPL_ALU_ROTATE
		`OR1200_OR32_SH_ROTI:
			rfwb_op <=  {`OR1200_RFWBOP_ALU, 1'b1};
`endif
		// ALU instructions except the one with immediate
		`OR1200_OR32_ALU:
			rfwb_op <=  {`OR1200_RFWBOP_ALU, 1'b1};

`ifdef OR1200_ALU_IMPL_CUST5
		// l.cust5 instructions
		`OR1200_OR32_CUST5:
			rfwb_op <=  {`OR1200_RFWBOP_ALU, 1'b1};
`endif
`ifdef OR1200_FPU_IMPLEMENTED
		  // FPU instructions, lf.XXX.s, except sfxx
		  `OR1200_OR32_FLOAT:
		    rfwb_op <=  {`OR1200_RFWBOP_FPU,!id_insn[3]};
`endif
		// Instructions w/o register-file write-back
		default: 
			rfwb_op <=  `OR1200_RFWBOP_NOP;


		endcase
	end
end

//
// Decode of id_branch_op
//
always @(posedge clk or `OR1200_RST_EVENT rst) begin
	if (rst == `OR1200_RST_VALUE)
		id_branch_op <=  `OR1200_BRANCHOP_NOP;
	else if (id_flushpipe)
		id_branch_op <=  `OR1200_BRANCHOP_NOP;
	else if (!id_freeze) begin
		case (if_insn[31:26])		// synopsys parallel_case

		// l.j
		`OR1200_OR32_J:
			id_branch_op <=  `OR1200_BRANCHOP_J;
		  
		// j.jal
		`OR1200_OR32_JAL:
			id_branch_op <=  `OR1200_BRANCHOP_J;
		  
		// j.jalr
		`OR1200_OR32_JALR:
			id_branch_op <=  `OR1200_BRANCHOP_JR;
		  
		// l.jr
		`OR1200_OR32_JR:
			id_branch_op <=  `OR1200_BRANCHOP_JR;
		  
		// l.bnf
		`OR1200_OR32_BNF:
			id_branch_op <=  `OR1200_BRANCHOP_BNF;
		  
		// l.bf
		`OR1200_OR32_BF:
			id_branch_op <=  `OR1200_BRANCHOP_BF;
		  
		// l.rfe
		`OR1200_OR32_RFE:
			id_branch_op <=  `OR1200_BRANCHOP_RFE;
		  
		// Non branch instructions
		default:
			id_branch_op <=  `OR1200_BRANCHOP_NOP;

		endcase
	end
end

//
// Generation of ex_branch_op
//
always @(posedge clk or `OR1200_RST_EVENT rst)
	if (rst == `OR1200_RST_VALUE)
		ex_branch_op <=  `OR1200_BRANCHOP_NOP;
	else if (!ex_freeze & id_freeze | ex_flushpipe)
		ex_branch_op <=  `OR1200_BRANCHOP_NOP;		
	else if (!ex_freeze)
		ex_branch_op <=  id_branch_op;

//
// Decode of id_lsu_op
//
always @(id_insn) begin
	case (id_insn[31:26])		// synopsys parallel_case

	// l.lwz
	`OR1200_OR32_LWZ:
		id_lsu_op =  `OR1200_LSUOP_LWZ;

	// l.lws
	`OR1200_OR32_LWS:
		id_lsu_op =  `OR1200_LSUOP_LWS;

	// l.lbz
	`OR1200_OR32_LBZ:
		id_lsu_op =  `OR1200_LSUOP_LBZ;

	// l.lbs
	`OR1200_OR32_LBS:
		id_lsu_op =  `OR1200_LSUOP_LBS;

	// l.lhz
	`OR1200_OR32_LHZ:
		id_lsu_op =  `OR1200_LSUOP_LHZ;

	// l.lhs
	`OR1200_OR32_LHS:
		id_lsu_op =  `OR1200_LSUOP_LHS;

	// l.sw
	`OR1200_OR32_SW:
		id_lsu_op =  `OR1200_LSUOP_SW;

	// l.sb
	`OR1200_OR32_SB:
		id_lsu_op =  `OR1200_LSUOP_SB;

	// l.sh
	`OR1200_OR32_SH:
		id_lsu_op =  `OR1200_LSUOP_SH;

	// Non load/store instructions
	default:
		id_lsu_op =  `OR1200_LSUOP_NOP;

	endcase
end

//
// Decode of comp_op
//
always @(posedge clk or `OR1200_RST_EVENT rst) begin
	if (rst == `OR1200_RST_VALUE) begin
		comp_op <=  4'd0;
	end else if (!ex_freeze & id_freeze | ex_flushpipe)
		comp_op <=  4'd0;
	else if (!ex_freeze)
		comp_op <=  id_insn[24:21];
end

`ifdef OR1200_FPU_IMPLEMENTED
//
// Decode of FPU ops
//
   assign fpu_op = {(id_insn[31:26] == `OR1200_OR32_FLOAT), 
		    id_insn[`OR1200_FPUOP_WIDTH-2:0]};
`else
   assign fpu_op = {`OR1200_FPUOP_WIDTH{1'b0}};
`endif

   
//
// Decode of l.sys
//
always @(posedge clk or `OR1200_RST_EVENT rst) begin
	if (rst == `OR1200_RST_VALUE)
		sig_syscall <=  1'b0;
	else if (!ex_freeze & id_freeze | ex_flushpipe)
		sig_syscall <=  1'b0;
	else if (!ex_freeze) begin
`ifdef OR1200_VERBOSE
// synopsys translate_off
		if (id_insn[31:23] == {`OR1200_OR32_XSYNC, 3'b000})
			$display("Generating sig_syscall");
// synopsys translate_on
`endif
		sig_syscall <=  (id_insn[31:23] == {`OR1200_OR32_XSYNC, 3'b000});
	end
end

//
// Decode of l.trap
//
always @(posedge clk or `OR1200_RST_EVENT rst) begin
	if (rst == `OR1200_RST_VALUE)
		sig_trap <=  1'b0;
	else if (!ex_freeze & id_freeze | ex_flushpipe)
		sig_trap <=  1'b0;
	else if (!ex_freeze) begin
`ifdef OR1200_VERBOSE
// synopsys translate_off
		if (id_insn[31:23] == {`OR1200_OR32_XSYNC, 3'b010})
			$display("Generating sig_trap");
// synopsys translate_on
`endif
		sig_trap <=  (id_insn[31:23] == {`OR1200_OR32_XSYNC, 3'b010})
			| du_hwbkpt;
	end
end

// Decode destination register address for data cache to check if store ops
// are being done from the stack register (r1) or frame pointer register (r2)
`ifdef OR1200_DC_NOSTACKWRITETHROUGH   
always @(posedge clk or `OR1200_RST_EVENT rst) begin
   if (rst == `OR1200_RST_VALUE)
     dc_no_writethrough <= 0;
   else if (!ex_freeze)
     dc_no_writethrough <= (id_insn[20:16] == 5'd1) | (id_insn[20:16] == 5'd2);
end
`else
   
   assign dc_no_writethrough = 0;
  
`endif      
   
endmodule


// END CTRL

// BEGIN EXCEPT

//////////////////////////////////////////////////////////////////////
////                                                              ////
////  OR1200's Exception logic                                    ////
////                                                              ////
////  This file is part of the OpenRISC 1200 project              ////
////  http://www.opencores.org/project,or1k                       ////
////                                                              ////
////  Description                                                 ////
////  Handles all OR1K exceptions inside CPU block.               ////
////                                                              ////
////  To Do:                                                      ////
////   - make it smaller and faster                               ////
////                                                              ////
////  Author(s):                                                  ////
////      - Damjan Lampret, lampret@opencores.org                 ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// $Log: or1200_except.v,v $
//
// Revision 2.0  2010/06/30 11:00:00  ORSoC
// Major update: 
// Structure reordered and bugs fixed. 

 

`define OR1200_EXCEPTFSM_WIDTH 3
`define OR1200_EXCEPTFSM_IDLE	`OR1200_EXCEPTFSM_WIDTH'd0
`define OR1200_EXCEPTFSM_FLU1 	`OR1200_EXCEPTFSM_WIDTH'd1
`define OR1200_EXCEPTFSM_FLU2 	`OR1200_EXCEPTFSM_WIDTH'd2
`define OR1200_EXCEPTFSM_FLU3 	`OR1200_EXCEPTFSM_WIDTH'd3
`define OR1200_EXCEPTFSM_FLU4 	`OR1200_EXCEPTFSM_WIDTH'd4
`define OR1200_EXCEPTFSM_FLU5 	`OR1200_EXCEPTFSM_WIDTH'd5

//
// Exception recognition and sequencing
//

module or1200_except
  (
   // Clock and reset
   clk, rst, 
   
   // Internal i/f
   sig_ibuserr, sig_dbuserr, sig_illegal, sig_align, sig_range, sig_dtlbmiss, 
   sig_dmmufault, sig_int, sig_syscall, sig_trap, sig_itlbmiss, sig_immufault, 
   sig_tick, ex_branch_taken, genpc_freeze, id_freeze, ex_freeze, wb_freeze,  
   if_stall,  if_pc, id_pc, ex_pc, wb_pc, id_flushpipe, ex_flushpipe, 
   extend_flush, except_flushpipe, except_type, except_start, except_started, 
   except_stop, except_trig, ex_void, abort_mvspr, branch_op, spr_dat_ppc, 
   spr_dat_npc, datain, du_dsr, epcr_we, eear_we, esr_we, pc_we, epcr, eear, 
   du_dmr1, du_hwbkpt, du_hwbkpt_ls_r, esr, sr_we, to_sr, sr, lsu_addr, 
   abort_ex, icpu_ack_i, icpu_err_i, dcpu_ack_i, dcpu_err_i, sig_fp, fpcsr_fpee,
   dsx
   
);

//
// I/O
//
input				clk;
input				rst;
input				sig_ibuserr;
input				sig_dbuserr;
input				sig_illegal;
input				sig_align;
input				sig_range;
input				sig_dtlbmiss;
input				sig_dmmufault;
input				sig_int;
input				sig_syscall;
input				sig_trap;
input				sig_itlbmiss;
input				sig_immufault;
input				sig_tick;
input   			sig_fp;
input    			fpcsr_fpee;   
input				ex_branch_taken;
input				genpc_freeze;
input				id_freeze;
input				ex_freeze;
input				wb_freeze;
input				if_stall;
input	[31:0]		if_pc;
output	[31:0]		id_pc;
output  [31:0]      ex_pc;
output  [31:0]      wb_pc;
input	[31:0]		datain;
input   [`OR1200_DU_DSR_WIDTH-1:0]     du_dsr;
input   [24:0]                       du_dmr1;
input			du_hwbkpt;
input			du_hwbkpt_ls_r;
input				epcr_we;
input				eear_we;
input				esr_we;
input				pc_we;
output	[31:0]			epcr;
output	[31:0]			eear;
output	[`OR1200_SR_WIDTH-1:0]	esr;
input	[`OR1200_SR_WIDTH-1:0]	to_sr;
input				sr_we;
input	[`OR1200_SR_WIDTH-1:0]	sr;
input	[31:0]			lsu_addr;
input              	id_flushpipe;
input              	ex_flushpipe;
output				except_flushpipe;
output				extend_flush;
output	[`OR1200_EXCEPT_WIDTH-1:0]	except_type;
output				except_start;
output				except_started;
output	[13:0]		except_stop;
output	[13:0]		except_trig;
input				ex_void;
input   [`OR1200_BRANCHOP_WIDTH-1:0]    branch_op; 
output	[31:0]			spr_dat_ppc;
output	[31:0]			spr_dat_npc;
output				abort_ex;
output              abort_mvspr;
input				icpu_ack_i;
input				icpu_err_i;
input				dcpu_ack_i;
input				dcpu_err_i;
output 			        dsx;
   
//
// Internal regs and wires
//
reg	[`OR1200_EXCEPT_WIDTH-1:0]	except_type /* verilator public */;
reg	[31:0]			id_pc /* verilator public */;
reg                 id_pc_val;
reg	[31:0]			ex_pc /* verilator public */;
reg                 ex_pc_val;
reg	[31:0]			wb_pc /* verilator public */;
reg [31:0]          dl_pc;
reg	[31:0]			epcr;
reg	[31:0]			eear;
reg	[`OR1200_SR_WIDTH-1:0]		esr;
reg	[2:0]			id_exceptflags;
reg	[2:0]			ex_exceptflags;
reg	[`OR1200_EXCEPTFSM_WIDTH-1:0]	state;
reg				extend_flush;
reg				extend_flush_last;
reg				ex_dslot /* verilator public */;
reg				delayed1_ex_dslot;
reg				delayed2_ex_dslot;
wire				except_started;
wire				except_flushpipe /* verilator public */;
reg	[2:0]			delayed_iee;
reg	[2:0]			delayed_tee;
wire				int_pending;
wire				tick_pending;
wire    			fp_pending;
wire    			range_pending;
reg 				dsx;
			
reg trace_trap      ;
reg ex_freeze_prev;
reg sr_ted_prev;
reg dsr_te_prev;
reg dmr1_st_prev    ;
reg dmr1_bt_prev    ;
wire dsr_te = ex_freeze_prev ? dsr_te_prev : du_dsr[`OR1200_DU_DSR_TE];
wire sr_ted = ex_freeze_prev ? sr_ted_prev : sr[`OR1200_SR_TED];
wire dmr1_st = ex_freeze_prev ? dmr1_st_prev: du_dmr1[`OR1200_DU_DMR1_ST] ;
wire dmr1_bt = ex_freeze_prev ? dmr1_bt_prev: du_dmr1[`OR1200_DU_DMR1_BT] ;

//
// Simple combinatorial logic
//
assign except_started = extend_flush & except_start;
   
assign except_start = (except_type != `OR1200_EXCEPT_NONE) & extend_flush;
   
assign int_pending = sig_int & (sr[`OR1200_SR_IEE] | 
				(sr_we & to_sr[`OR1200_SR_IEE])) 
		    & id_pc_val & delayed_iee[2] & ~ex_freeze & ~ex_branch_taken
		     & ~ex_dslot & ~(sr_we & ~to_sr[`OR1200_SR_IEE]);
   
assign tick_pending = sig_tick & (sr[`OR1200_SR_TEE] | 
				  (sr_we & to_sr[`OR1200_SR_TEE])) & id_pc_val
		      & delayed_tee[2] & ~ex_freeze & ~ex_branch_taken 
		      & ~ex_dslot & ~(sr_we & ~to_sr[`OR1200_SR_TEE]);

assign fp_pending = sig_fp & fpcsr_fpee & ~ex_freeze & ~ex_branch_taken 
		    & ~ex_dslot;

`ifdef OR1200_IMPL_OVE   
assign range_pending =  sig_range & sr[`OR1200_SR_OVE] & ~ex_freeze & 
		       ~ex_branch_taken & ~ex_dslot;
`else
assign range_pending = 0;
`endif   
   
// Abort write into RF by load & other instructions   
assign abort_ex = sig_dbuserr | sig_dmmufault | sig_dtlbmiss | sig_align | 
		  sig_illegal | ((du_hwbkpt | trace_trap) & ex_pc_val 
				 & !sr_ted & !dsr_te);

// abort spr read/writes   
assign abort_mvspr  = sig_illegal | ((du_hwbkpt | trace_trap) & ex_pc_val 
				     & !sr_ted & !dsr_te) ; 
assign spr_dat_ppc = wb_pc;
   
assign spr_dat_npc = ex_void ? id_pc : ex_pc;

//
// Order defines exception detection priority
//
assign except_trig = {
		      ex_exceptflags[1]	& ~du_dsr[`OR1200_DU_DSR_IME],
		      ex_exceptflags[0]	& ~du_dsr[`OR1200_DU_DSR_IPFE],
		      ex_exceptflags[2]	& ~du_dsr[`OR1200_DU_DSR_BUSEE],
		      sig_illegal       & ~du_dsr[`OR1200_DU_DSR_IIE],
		      sig_align		& ~du_dsr[`OR1200_DU_DSR_AE],
		      sig_dtlbmiss	& ~du_dsr[`OR1200_DU_DSR_DME],
		      sig_trap		& ~du_dsr[`OR1200_DU_DSR_TE],
		      sig_syscall       & ~du_dsr[`OR1200_DU_DSR_SCE] & ~ex_freeze,
		      sig_dmmufault	& ~du_dsr[`OR1200_DU_DSR_DPFE],
		      sig_dbuserr	& ~du_dsr[`OR1200_DU_DSR_BUSEE],
		      range_pending	& ~du_dsr[`OR1200_DU_DSR_RE],
		      fp_pending	& ~du_dsr[`OR1200_DU_DSR_FPE],
		      int_pending 	& ~du_dsr[`OR1200_DU_DSR_IE],
		      tick_pending	& ~du_dsr[`OR1200_DU_DSR_TTE]
		      };

wire    trace_cond  = !ex_freeze && !ex_void && (1'b0
`ifdef OR1200_DU_DMR1_ST
    ||  dmr1_st
`endif
`ifdef OR1200_DU_DMR1_BT
    ||  ((branch_op != `OR1200_BRANCHOP_NOP) && (branch_op != `OR1200_BRANCHOP_RFE) && dmr1_bt)
`endif
    );

assign except_stop = {
			tick_pending		& du_dsr[`OR1200_DU_DSR_TTE],
			int_pending 		& du_dsr[`OR1200_DU_DSR_IE],
			ex_exceptflags[1]	& du_dsr[`OR1200_DU_DSR_IME],
			ex_exceptflags[0]	& du_dsr[`OR1200_DU_DSR_IPFE],
			ex_exceptflags[2]	& du_dsr[`OR1200_DU_DSR_BUSEE],
			sig_illegal		& du_dsr[`OR1200_DU_DSR_IIE],
			sig_align		& du_dsr[`OR1200_DU_DSR_AE],
			sig_dtlbmiss		& du_dsr[`OR1200_DU_DSR_DME],
			sig_dmmufault		& du_dsr[`OR1200_DU_DSR_DPFE],
			sig_dbuserr		& du_dsr[`OR1200_DU_DSR_BUSEE],
			range_pending		& du_dsr[`OR1200_DU_DSR_RE],
			sig_trap		& du_dsr[`OR1200_DU_DSR_TE],
		        fp_pending  		& du_dsr[`OR1200_DU_DSR_FPE],
			sig_syscall		& du_dsr[`OR1200_DU_DSR_SCE] & ~ex_freeze
		};

always @(posedge clk or `OR1200_RST_EVENT rst) begin
	if (rst == `OR1200_RST_VALUE) begin
		trace_trap  <=  1'b0 ;
	end 
	else if (!(trace_trap && !ex_pc_val)) begin
		trace_trap  <=  trace_cond & !dsr_te & !sr_ted ;
	end
end

always @(posedge clk or `OR1200_RST_EVENT rst) begin
	if (rst == `OR1200_RST_VALUE) begin
        ex_freeze_prev  <=  1'b0 ;
        sr_ted_prev     <=  1'b0 ;
        dsr_te_prev     <=  1'b0 ;
        dmr1_st_prev    <=  1'b0 ;
        dmr1_bt_prev    <=  1'b0 ;
    end 
    else begin
        ex_freeze_prev  <=  ex_freeze ;
        if (!ex_freeze_prev || ex_void) begin
            sr_ted_prev     <=  sr     [`OR1200_SR_TED    ] ;
            dsr_te_prev     <=  du_dsr [`OR1200_DU_DSR_TE ] ;
            dmr1_st_prev    <=  du_dmr1[`OR1200_DU_DMR1_ST] ;
            dmr1_bt_prev    <=  du_dmr1[`OR1200_DU_DMR1_BT] ;
        end
    end
end

`ifdef verilator
   // Function to access wb_pc (for Verilator). Have to hide this from
   // simulator, since functions with no inputs are not allowed in IEEE
   // 1364-2001.
   function [31:0] get_wb_pc;
      // verilator public
      get_wb_pc = wb_pc;
   endfunction // get_wb_pc

   // Function to access id_pc (for Verilator). Have to hide this from
   // simulator, since functions with no inputs are not allowed in IEEE
   // 1364-2001.
   function [31:0] get_id_pc;
      // verilator public
      get_id_pc = id_pc;
   endfunction // get_id_pc

   // Function to access ex_pc (for Verilator). Have to hide this from
   // simulator, since functions with no inputs are not allowed in IEEE
   // 1364-2001.
   function [31:0] get_ex_pc;
      // verilator public
      get_ex_pc = ex_pc;
   endfunction // get_ex_pc
   // Function to access except_type[3:0] (for Verilator). Have to hide this from
   // simulator, since functions with no inputs are not allowed in IEEE
   // 1364-2001.
   function [3:0] get_except_type;
      // verilator public
      get_except_type = except_type;
   endfunction // get_except_type
   
`endif
   
   
//
// PC and Exception flags pipelines
//
always @(posedge clk or `OR1200_RST_EVENT rst) begin
	if (rst == `OR1200_RST_VALUE) begin
		id_pc <=  32'd0;
        id_pc_val <=  1'b0 ;
		id_exceptflags <=  3'b000;
	end
	else if (id_flushpipe) begin
        id_pc_val <=  1'b0 ;
		id_exceptflags <=  3'b000;
	end
	else if (!id_freeze) begin
		id_pc <=  if_pc;
        id_pc_val <=  1'b1 ;
		id_exceptflags <=  { sig_ibuserr, sig_itlbmiss, sig_immufault };
	end
end

//
// delayed_iee
//
// SR[IEE] should not enable interrupts right away
// when it is restored with l.rfe. Instead delayed_iee
// together with SR[IEE] enables interrupts once
// pipeline is again ready.
//
always @(`OR1200_RST_EVENT rst or posedge clk)
	if (rst == `OR1200_RST_VALUE)
		delayed_iee <=  3'b000;
	else if (!sr[`OR1200_SR_IEE])
		delayed_iee <=  3'b000;
	else
		delayed_iee <=  {delayed_iee[1:0], 1'b1};

//
// delayed_tee
//
// SR[TEE] should not enable tick exceptions right away
// when it is restored with l.rfe. Instead delayed_tee
// together with SR[TEE] enables tick exceptions once
// pipeline is again ready.
//
always @(`OR1200_RST_EVENT rst or posedge clk)
	if (rst == `OR1200_RST_VALUE)
		delayed_tee <=  3'b000;
	else if (!sr[`OR1200_SR_TEE])
		delayed_tee <=  3'b000;
	else
		delayed_tee <=  {delayed_tee[1:0], 1'b1};

//
// PC and Exception flags pipelines
//
always @(posedge clk or `OR1200_RST_EVENT rst) begin
	if (rst == `OR1200_RST_VALUE) begin
		ex_dslot <=  1'b0;
		ex_pc <=  32'd0;
                ex_pc_val <=  1'b0 ;
		ex_exceptflags <=  3'b000;
		delayed1_ex_dslot <=  1'b0;
		delayed2_ex_dslot <=  1'b0;
	end
	else if (ex_flushpipe) begin
		ex_dslot <=  1'b0;
                ex_pc_val <=  1'b0 ;
		ex_exceptflags <=  3'b000;
		delayed1_ex_dslot <=  1'b0;
		delayed2_ex_dslot <=  1'b0;
	end
	else if (!ex_freeze & id_freeze) begin
		ex_dslot <=  1'b0;
		ex_pc <=  id_pc;
                ex_pc_val <=  id_pc_val ;
		ex_exceptflags <=  3'b000;
		delayed1_ex_dslot <=  ex_dslot;
		delayed2_ex_dslot <=  delayed1_ex_dslot;
	end
	else if (!ex_freeze) begin
		ex_dslot <=  ex_branch_taken;
		ex_pc <=  id_pc;
                ex_pc_val <=  id_pc_val ;
		ex_exceptflags <=  id_exceptflags;
		delayed1_ex_dslot <=  ex_dslot;
		delayed2_ex_dslot <=  delayed1_ex_dslot;
	end
end

//
// PC and Exception flags pipelines
//
always @(posedge clk or `OR1200_RST_EVENT rst) begin
	if (rst == `OR1200_RST_VALUE) begin
		wb_pc <=  32'd0;
        dl_pc <=  32'd0;
	end
	else if (!wb_freeze) begin
		wb_pc <=  ex_pc;
        dl_pc <=  wb_pc;
	end
end

//
// We have started execution of exception handler:
//  1. Asserted for 3 clock cycles
//  2. Don't execute any instruction that is still in pipeline and is not part of exception handler
//
assign except_flushpipe = |except_trig & ~|state;

//
// Exception FSM that sequences execution of exception handler
//
// except_type signals which exception handler we start fetching in:
//  1. Asserted in next clock cycle after exception is recognized
//
   always @(posedge clk or `OR1200_RST_EVENT rst) begin
      if (rst == `OR1200_RST_VALUE) begin
	 state <=  `OR1200_EXCEPTFSM_IDLE;
	 except_type <=  `OR1200_EXCEPT_NONE;
	 extend_flush <=  1'b0;
	 epcr <=  32'b0;
	 eear <=  32'b0;
	 esr <=  {2'h1, {`OR1200_SR_WIDTH-3{1'b0}}, 1'b1};
	 extend_flush_last <=  1'b0;
	 dsx <= 1'b0;
      end
      else begin
`ifdef OR1200_CASE_DEFAULT
	 case (state)	// synopsys parallel_case
`else
	   case (state)	// synopsys full_case parallel_case
`endif
	     `OR1200_EXCEPTFSM_IDLE:
	       if (except_flushpipe) begin
		  state <=  `OR1200_EXCEPTFSM_FLU1;
		  extend_flush <=  1'b1;
		  esr <=  sr_we ? to_sr : sr;
		  casez (except_trig)
`ifdef OR1200_EXCEPT_ITLBMISS
		    14'b1?_????_????_????: begin
		       except_type <=  `OR1200_EXCEPT_ITLBMISS;
		       eear <=  ex_dslot ? 
			       ex_pc : ex_pc;
		       epcr <=  ex_dslot ? 
			       wb_pc : ex_pc;
		       dsx <= ex_dslot;
		    end
`endif
`ifdef OR1200_EXCEPT_IPF
		    14'b01_????_????_????: begin
		       except_type <=  `OR1200_EXCEPT_IPF;
		       eear <=  ex_dslot ? 
			       ex_pc : delayed1_ex_dslot ? 
			       id_pc : delayed2_ex_dslot ? 
			       id_pc : id_pc;
		       epcr <=  ex_dslot ? 
			       wb_pc : delayed1_ex_dslot ? 
			       id_pc : delayed2_ex_dslot ? 
			       id_pc : id_pc;
		       dsx <= ex_dslot;
		    end
`endif
`ifdef OR1200_EXCEPT_BUSERR
		    14'b00_1???_????_????: begin	// Insn. Bus Error
		       except_type <=  `OR1200_EXCEPT_BUSERR;
		       eear <=  ex_dslot ? 
			       wb_pc : ex_pc;
		       epcr <=  ex_dslot ? 
			       wb_pc : ex_pc;
		       dsx <= ex_dslot;
		    end
`endif
`ifdef OR1200_EXCEPT_ILLEGAL
		    14'b00_01??_????_????: begin
		       except_type <=  `OR1200_EXCEPT_ILLEGAL;
		       eear <=  ex_pc;
		       epcr <=  ex_dslot ? 
			       wb_pc : ex_pc;
		       dsx <= ex_dslot;
		    end
`endif
`ifdef OR1200_EXCEPT_ALIGN
		    14'b00_001?_????_????: begin
		       except_type <=  `OR1200_EXCEPT_ALIGN;
		       eear <=  lsu_addr;
		       epcr <=  ex_dslot ? 
			       wb_pc : ex_pc;
		       dsx <= ex_dslot;
		    end
`endif
`ifdef OR1200_EXCEPT_DTLBMISS
		    14'b00_0001_????_????: begin
		       except_type <=  `OR1200_EXCEPT_DTLBMISS;
		       eear <=  lsu_addr;
		       epcr <=  ex_dslot ? 
			       wb_pc : delayed1_ex_dslot ? 
			       dl_pc : ex_pc;
		       dsx <= ex_dslot;
		    end
`endif
`ifdef OR1200_EXCEPT_TRAP			
		    14'b00_0000_1???_????: begin
		       except_type <=  `OR1200_EXCEPT_TRAP;
		       epcr <=  ex_dslot ? 
			       wb_pc : delayed1_ex_dslot ? 
			       id_pc : ex_pc;
		       dsx <= ex_dslot;
		    end
`endif
`ifdef OR1200_EXCEPT_SYSCALL
		    14'b00_0000_01??_????: begin
		       except_type <=  `OR1200_EXCEPT_SYSCALL;
		       epcr <=  ex_dslot ? 
			       wb_pc : delayed1_ex_dslot ? 
			       id_pc : delayed2_ex_dslot ? 
			       id_pc : id_pc;
		       dsx <= ex_dslot;
		    end
`endif
`ifdef OR1200_EXCEPT_DPF
		    14'b00_0000_001?_????: begin
		       except_type <=  `OR1200_EXCEPT_DPF;
		       eear <=  lsu_addr;
		       epcr <=  ex_dslot ? 
			       wb_pc : delayed1_ex_dslot ? 
			       dl_pc : ex_pc;
		       dsx <= ex_dslot;
		    end
`endif
`ifdef OR1200_EXCEPT_BUSERR
		    14'b00_0000_0001_????: begin	// Data Bus Error
		       except_type <=  `OR1200_EXCEPT_BUSERR;
		       eear <=  lsu_addr;
		       epcr <=  ex_dslot ? 
			       wb_pc : delayed1_ex_dslot ? 
			       dl_pc : ex_pc;
		       dsx <= ex_dslot;
		    end
`endif
`ifdef OR1200_EXCEPT_RANGE
		    14'b00_0000_0000_1???: begin
		       except_type <=  `OR1200_EXCEPT_RANGE;
		       epcr <=  ex_dslot ? 
			       wb_pc : delayed1_ex_dslot ? 
			       dl_pc : delayed2_ex_dslot ? 
			       id_pc : ex_pc;
		       dsx <= ex_dslot;
		    end
`endif
`ifdef OR1200_EXCEPT_FLOAT
		    14'b00_0000_0000_01??: begin
		       except_type <=  `OR1200_EXCEPT_FLOAT;
		       epcr <=  id_pc;
		       dsx <= ex_dslot;
		    end
`endif
`ifdef OR1200_EXCEPT_INT
		    14'b00_0000_0000_001?: begin
		       except_type <=  `OR1200_EXCEPT_INT;
		       epcr <=  id_pc;
		       dsx <= ex_dslot;
		    end
`endif
`ifdef OR1200_EXCEPT_TICK
		    14'b00_0000_0000_0001: begin
		       except_type <=  `OR1200_EXCEPT_TICK;
		       epcr <=  id_pc;
		       dsx <= ex_dslot;
		    end
`endif
		    default:
		      except_type <=  `OR1200_EXCEPT_NONE;
		  endcase
	       end
	       else if (pc_we) begin
		  state <=  `OR1200_EXCEPTFSM_FLU1;
		  extend_flush <=  1'b1;
	       end
	       else begin
		  if (epcr_we)
		    epcr <=  datain;
		  if (eear_we)
		    eear <=  datain;
		  if (esr_we)
		    esr <=  {datain[`OR1200_SR_WIDTH-1], 1'b1, datain[`OR1200_SR_WIDTH-3:0]};
	       end
	     `OR1200_EXCEPTFSM_FLU1:
	       if (icpu_ack_i | icpu_err_i | genpc_freeze)
		 state <=  `OR1200_EXCEPTFSM_FLU2;
	     `OR1200_EXCEPTFSM_FLU2:
`ifdef OR1200_EXCEPT_TRAP
	       if (except_type == `OR1200_EXCEPT_TRAP) begin
		  state <=  `OR1200_EXCEPTFSM_IDLE;
		  extend_flush <=  1'b0;
		  extend_flush_last <=  1'b0;
		  except_type <=  `OR1200_EXCEPT_NONE;
	       end
               else
`endif
		 state <=  `OR1200_EXCEPTFSM_FLU3;
	     `OR1200_EXCEPTFSM_FLU3:
	       begin
		  state <=  `OR1200_EXCEPTFSM_FLU4;
	       end
	     `OR1200_EXCEPTFSM_FLU4: begin
		state <=  `OR1200_EXCEPTFSM_FLU5;
		extend_flush <=  1'b0;
		extend_flush_last <=  1'b0; // damjan
	     end
`ifdef OR1200_CASE_DEFAULT
	     default: begin
`else
		`OR1200_EXCEPTFSM_FLU5: begin
`endif
		   if (!if_stall && !id_freeze) begin
		      state <=  `OR1200_EXCEPTFSM_IDLE;
		      except_type <=  `OR1200_EXCEPT_NONE;
		      extend_flush_last <=  1'b0;
		   end
		end
	   endcase
	 end
   end

endmodule

// END EXPECT

// BEGIN FPU

//////////////////////////////////////////////////////////////////////
////                                                              ////
////  OR1200's FPU Wrapper                                        ////
////                                                              ////
////  This file is part of the OpenRISC 1200 project              ////
////  http://opencores.org/project,or1k                           ////
////                                                              ////
////  Description                                                 ////
////  Wrapper for floating point unit.                            ////
////  Interface based on MULT/MAC unit.                           ////
////                                                              ////
////  To Do:                                                      ////
////   - lf.rem.s and lf.madd.s instruction support               ////
////   - implement FP SPRs as needed                              ////
////                                                              ////
////  Author(s):                                                  ////
////      - Julius Baxter, julius@opencores.org                   ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2009,2010 Authors and OPENCORES.ORG            ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////

 

module or1200_fpu(
		  // Clock and reset
		  clk, rst,

		  // FPU interface
		  ex_freeze, a, b, fpu_op, result, done,

		  // Flag controls
		  flagforw, flag_we,

		  // Exception signal
		  sig_fp, except_started,

		  // FPCSR system register
		  fpcsr_we, fpcsr,
		  
		  // SPR interface -- currently unused
		  spr_cs, spr_write, spr_addr, spr_dat_i, spr_dat_o
		  );

   parameter width = `OR1200_OPERAND_WIDTH;

   //
   // I/O
   //

   //
   // Clock and reset
   //
   input				clk;
   input				rst;

   //
   // FPU interface
   //
   input				ex_freeze;
   input [width-1:0] 			a;
   input [width-1:0] 			b;
   input [`OR1200_FPUOP_WIDTH-1:0] 	fpu_op;
   output [width-1:0] 			result;
   output 				done;
   
   //
   // Flag signals
   //
   output 				flagforw;
   output 				flag_we;

   //
   // FPCSR interface
   //  
   input 				fpcsr_we;   
   output [`OR1200_FPCSR_WIDTH-1:0] 	fpcsr;   

   //
   // Exception signal
   //   
   output 				sig_fp;
   input 				except_started;
   
   
   //
   // SPR interface
   //
   input				spr_cs;
   input				spr_write;
   input [31:0] 			spr_addr;
   input [31:0] 			spr_dat_i;
   output [31:0] 			spr_dat_o;


`ifndef OR1200_FPU_IMPLEMENTED
   
   // No FPU needed
   assign result = 0;
   assign flagforw  = 0;
   assign flag_we = 0;
   assign sig_fp = 0;
   assign spr_dat_o = 0;
   assign fpcsr = 0;
   assign done = 1;   
`else

   
   //
   // Internals
   //
   wire 				fpu_op_is_arith, fpu_op_is_conv, 
					fpu_op_is_comp;
   wire 				fpu_op_r_is_arith, fpu_op_r_is_conv, 
					fpu_op_r_is_comp;
   wire 				fpu_arith_done, fpu_conv_done, 
					fpu_comp_done;
   wire [width-1:0] 			result_arith, result_conv;
   
   reg [`OR1200_FPUOP_WIDTH-1:0] 	fpu_op_r;   
   reg [`OR1200_FPCSR_WIDTH-1:0] 	fpcsr_r;
   wire 				fpu_op_valid;
   reg 					fpu_op_valid_re;   
   wire 				fpu_check_op;   
   wire 				inf, inv_inf_op_in,snan, snan_in,qnan, 
					ine, overflow, underflow, zero, dbz, 
					dbz_in, mul_z_inf, nan_in;
   wire 				altb, blta, aeqb, inf_cmp, zero_cmp, 
					unordered ;
   wire 				snan_conv, ine_conv, inv_conv, 
					zero_conv, underflow_conv, 
					overflow_conv;
   wire 				inv_comp;   
   reg 					flag;

   
   assign spr_dat_o = 0;
   
   assign fpcsr = fpcsr_r;
   
   assign sig_fp = fpcsr_r[`OR1200_FPCSR_FPEE] 
	    & (|fpcsr_r[`OR1200_FPCSR_WIDTH-1:`OR1200_FPCSR_OVF]);

   // Top bit indicates FPU instruction
   assign fpu_op_valid = fpu_op[`OR1200_FPUOP_WIDTH-1];

   assign fpu_check_op = !ex_freeze & fpu_op_valid;   
      
   // Generate signals to latch fpu_op from decode instruction, then latch 
   // operands when they appear during execute stage
   
   assign fpu_op_is_arith = !(|fpu_op[3:2]);
   assign fpu_op_is_conv = fpu_op[2] & !fpu_op[3];   
   assign fpu_op_is_comp = fpu_op[3];

   assign fpu_op_r_is_arith = !(|fpu_op_r[3:2]);
   assign fpu_op_r_is_conv = fpu_op_r[2] & !fpu_op_r[3];   
   assign fpu_op_r_is_comp = fpu_op_r[3];

   assign done = (fpu_op_r_is_arith & fpu_arith_done) |
		 (fpu_op_r_is_conv & fpu_conv_done)   |
		 (fpu_op_r_is_comp & fpu_comp_done)   ;
   
   // Register fpu_op (remove FPU op valid bit [7], replace with 0)
   always @(posedge clk)
     if (fpu_check_op)
       fpu_op_r <= {1'b0,fpu_op[`OR1200_FPUOP_WIDTH-2:0]}; 

   // Indicate new FPU op
   always @(posedge clk or `OR1200_RST_EVENT rst)
     if (rst == `OR1200_RST_VALUE) 
       fpu_op_valid_re <= 0;
     else if (fpu_op_valid_re)
       fpu_op_valid_re <= 0;
     else if (fpu_check_op)
       fpu_op_valid_re <= 1;   
   
   //
   // FPCSR system group register implementation
   //   
   always @(posedge clk or `OR1200_RST_EVENT rst) begin
      if (rst == `OR1200_RST_VALUE)
	fpcsr_r <= 0;
      else
	begin
	   if (fpcsr_we)
	     fpcsr_r <= b[`OR1200_FPCSR_WIDTH-1:0];
           else if (done)
	     begin
		fpcsr_r[`OR1200_FPCSR_OVF] <= (overflow & fpu_op_r_is_arith);
		fpcsr_r[`OR1200_FPCSR_UNF] <= (underflow & fpu_op_r_is_arith) |
					  (underflow_conv  & fpu_op_r_is_conv);
		fpcsr_r[`OR1200_FPCSR_SNF] <= (snan  & fpu_op_r_is_arith)|
					      (snan_conv & fpu_op_r_is_conv);
		fpcsr_r[`OR1200_FPCSR_QNF] <= (qnan  & fpu_op_r_is_arith);
		fpcsr_r[`OR1200_FPCSR_ZF]  <= (zero  & fpu_op_r_is_arith) | 
					      (zero_cmp & fpu_op_r_is_comp) |
					      (zero_conv & fpu_op_r_is_conv);
		fpcsr_r[`OR1200_FPCSR_IXF] <= (ine  & fpu_op_r_is_arith) |
					      (ine_conv & fpu_op_r_is_conv);
		fpcsr_r[`OR1200_FPCSR_IVF] <= 
				((snan_in | dbz_in | inv_inf_op_in | mul_z_inf) & 
					   fpu_op_r_is_arith) |
				  ((inv_conv | snan_conv) & fpu_op_r_is_conv) |
					      (inv_comp & fpu_op_r_is_comp);
		fpcsr_r[`OR1200_FPCSR_INF] <= (inf  & fpu_op_r_is_arith) | 
					      (inf_cmp & fpu_op_r_is_comp);
		fpcsr_r[`OR1200_FPCSR_DZF] <= (dbz & fpu_op_r_is_arith);
	     end // if (fpu_arith_done | fpu_conv_done)	   
	   if (except_started)
	     fpcsr_r[`OR1200_FPCSR_FPEE] <= 0;
	end // else: !if(rst)
   end // always @ (posedge clk or `OR1200_RST_EVENT rst)

   //
   // Comparison flag generation
   //
   always @*
     begin
	// Get rid of top bit - is FPU op valid bit
	case({1'b0,fpu_op_r[`OR1200_FPUOP_WIDTH-2:0]})
	  `OR1200_FPCOP_SFEQ: begin
	     flag = aeqb;
	  end
	  `OR1200_FPCOP_SFNE: begin
	     flag = !aeqb;
	       end
	  `OR1200_FPCOP_SFGT: begin
	     flag = blta & !aeqb;
	  end
	  `OR1200_FPCOP_SFGE: begin
	     flag = blta | aeqb;
	  end
	  `OR1200_FPCOP_SFLT: begin
	     flag = altb & !aeqb;
	  end
	  `OR1200_FPCOP_SFLE: begin
	     flag = altb | aeqb;
	  end
	  default: begin
	     flag = 0;
	  end
	endcase // case (fpu_op_r)
     end // always@ (posedge clk)
   
   assign flagforw = flag;
   
   // Determine here where we do the write, ie how much we pipeline the 
   // comparison
   assign flag_we = fpu_op_r_is_comp & fpu_comp_done;

   // MUX for outputs from arith and conversion modules
   assign result = fpu_op_r_is_conv ? result_conv : result_arith;   

   //
   // Instantiate FPU modules
   //
   
   // FPU 100 VHDL core from OpenCores.org: http://opencores.org/project,fpu100
   // Used only for add,sub,mul,div
   or1200_fpu_arith fpu_arith
     (
      .clk_i(clk),
      .opa_i(a),
      .opb_i(b),
      .fpu_op_i({1'b0,fpu_op_r[1:0]}), // Only bottom 2 bits
      .rmode_i(fpcsr_r[`OR1200_FPCSR_RM]),
      .output_o(result_arith),
      .start_i(fpu_op_valid_re & fpu_op_r_is_arith),
      .ready_o(fpu_arith_done),
      .ine_o(ine),
      .overflow_o(overflow),
      .underflow_o(underflow),
      .div_zero_o(dbz),
      .inf_o(inf),
      .zero_o(zero),
      .qnan_o(qnan),
      .snan_o(snan)
      );

   // Logic for detection of signaling NaN on input
   // signaling NaN: exponent is 8hff, [22] is zero, rest of fract is non-zero
   // quiet NaN: exponent is 8hff, [22] is 1
   reg a_is_snan, b_is_snan;
   reg a_is_qnan, b_is_qnan;
   
   always @(posedge clk)
     begin
	a_is_snan <= (a[30:23]==8'hff) & !a[22] & (|a[21:0]);
	b_is_snan <= (b[30:23]==8'hff) & !b[22] & (|b[21:0]);
	a_is_qnan <= (a[30:23]==8'hff) & a[22];
	b_is_qnan <= (b[30:23]==8'hff) & b[22];	
     end
   // Signal to indicate there was a signaling NaN on input
   assign snan_in = a_is_snan | b_is_snan;

   // Check for, add with opposite signed infinities, or subtract with 
   // same signed infinities.
   reg a_is_inf, b_is_inf, a_b_sign_xor;
   
   always @(posedge clk)
     begin
	a_is_inf <= (a[30:23]==8'hff) & !(|a[22:0]);
	b_is_inf <= (b[30:23]==8'hff) & !(|a[22:0]);
	a_b_sign_xor <= a[31] ^ b[31];
     end
   
   assign inv_inf_op_in = (a_is_inf & b_is_inf) & 
			  ((a_b_sign_xor & 
			    ({1'b0,fpu_op_r[`OR1200_FPUOP_WIDTH-2:0]} == 
			     `OR1200_FPUOP_ADD)) |
			   (!a_b_sign_xor & 
			    ({1'b0,fpu_op_r[`OR1200_FPUOP_WIDTH-2:0]} == 
			     `OR1200_FPUOP_SUB))) ;
   
   // Check if it's 0.0/0.0 to generate invalid signal (ignore sign bit)
   reg a_is_zero, b_is_zero;
   
   always @(posedge clk)
     begin
	a_is_zero <= !(|a[30:0]);
	b_is_zero <= !(|b[30:0]);
     end
   assign dbz_in = ({1'b0,fpu_op_r[`OR1200_FPUOP_WIDTH-2:0]} == 
		    `OR1200_FPUOP_DIV) & (a_is_zero & b_is_zero);
   
   
   assign mul_z_inf = ({1'b0,fpu_op_r[`OR1200_FPUOP_WIDTH-2:0]} == 
		       `OR1200_FPUOP_MUL) & 
		      ((a_is_zero & b_is_inf) | (b_is_zero & a_is_inf));
   
   assign nan_in = (a_is_snan | b_is_snan | a_is_qnan | b_is_qnan);

   // 32-bit integer <-> single precision floating point conversion unit
   or1200_fpu_intfloat_conv fpu_intfloat_conv
     ( 
       .clk(clk),
       .rmode(fpcsr_r[`OR1200_FPCSR_RM]),
       .fpu_op(fpu_op_r[2:0]),
       .opa(a),
       .out(result_conv),
       .snan(snan_conv),
       .ine(ine_conv),
       .inv(inv_conv),
       .overflow(overflow_conv),
       .underflow(underflow_conv),
       .zero(zero_conv)
       );

   // 5-long shift reg for conversion ready counter
   reg [6:0] fpu_conv_shr;
   always @(posedge clk)
     fpu_conv_shr <= {fpu_conv_shr[5:0],fpu_check_op & fpu_op_is_conv};
   assign fpu_conv_done = fpu_conv_shr[6];

   // Single precision floating point number comparison module
   or1200_fpu_fcmp fpu_fcmp
     (
      .opa(a), 
      .opb(b), 
      .unordered(unordered),
      // I am convinced the comparison logic is wrong way around in this 
      // module, simplest to swap them on output -- julius       
      .altb(blta), 
      .blta(altb), 
      .aeqb(aeqb), 
      .inf(inf_cmp), 
      .zero(zero_cmp));

   reg 	     fpu_op_valid_re_r;
   always @(posedge clk)
     fpu_op_valid_re_r  <= fpu_op_valid_re;
   
   assign fpu_comp_done = fpu_op_valid_re_r & fpu_op_r_is_comp;

   // Comparison invalid when sNaN in on an equal comparison, or any NaN 
   // for any other comparison.
   assign inv_comp =  (snan_in & ({1'b0,fpu_op_r[`OR1200_FPUOP_WIDTH-2:0]} 
				  == `OR1200_FPCOP_SFEQ)) | 
		      (nan_in & ({1'b0,fpu_op_r[`OR1200_FPUOP_WIDTH-2:0]} 
				 != `OR1200_FPCOP_SFEQ));
   
`endif // !`ifndef OR1200_FPU_IMPLEMENTED
   
endmodule // or1200_fpu


// END FPU

// BEGIN FREEZE

//////////////////////////////////////////////////////////////////////
////                                                              ////
////  OR1200's Freeze logic                                       ////
////                                                              ////
////  This file is part of the OpenRISC 1200 project              ////
////  http://www.opencores.org/project,or1k                       ////
////                                                              ////
////  Description                                                 ////
////  Generates all freezes and stalls inside RISC                ////
////                                                              ////
////  To Do:                                                      ////
////   - make it smaller and faster                               ////
////                                                              ////
////  Author(s):                                                  ////
////      - Damjan Lampret, lampret@opencores.org                 ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// $Log: or1200_freeze.v,v $
// Revision 2.0  2010/06/30 11:00:00  ORSoC
// Minor update: 
// Bugs fixed. 
//

 

`define OR1200_NO_FREEZE	3'd0
`define OR1200_FREEZE_BYDC	3'd1
`define OR1200_FREEZE_BYMULTICYCLE	3'd2
`define OR1200_WAIT_LSU_TO_FINISH	3'd3
`define OR1200_WAIT_IC			3'd4

//
// Freeze logic (stalls CPU pipeline, ifetcher etc.)
//
module or1200_freeze
  (
   // Clock and reset
   clk, rst,
   
   // Internal i/f
   multicycle, wait_on, flushpipe, extend_flush, lsu_stall, if_stall,
   lsu_unstall, du_stall, mac_stall, 
   force_dslot_fetch, abort_ex,
   genpc_freeze, if_freeze, id_freeze, ex_freeze, wb_freeze, saving_if_insn,
   fpu_done, mtspr_done,
   icpu_ack_i, icpu_err_i
   );

//
// I/O
//
input				clk;
input				rst;
input	[`OR1200_MULTICYCLE_WIDTH-1:0]	multicycle;
input   [`OR1200_WAIT_ON_WIDTH-1:0] 	wait_on;   
input				flushpipe;
input				extend_flush;
input				lsu_stall;
input				if_stall;
input				lsu_unstall;
input				force_dslot_fetch;
input				abort_ex;
input				du_stall;
input				mac_stall;
output				genpc_freeze;
output				if_freeze;
output				id_freeze;
output				ex_freeze;
output				wb_freeze;
input                           saving_if_insn;
input   			fpu_done;
input   			mtspr_done;   
input				icpu_ack_i;
input				icpu_err_i;

//
// Internal wires and regs
//
wire				multicycle_freeze;
reg	[`OR1200_MULTICYCLE_WIDTH-1:0]	multicycle_cnt;
reg				flushpipe_r;
reg [`OR1200_WAIT_ON_WIDTH-1:0]	waiting_on;
   
//
// Pipeline freeze
//
// Rules how to create freeze signals:
// 1. Not overwriting pipeline stages:
// Freeze signals at the beginning of pipeline (such as if_freeze) can be 
// asserted more often than freeze signals at the of pipeline (such as 
// wb_freeze). In other words, wb_freeze must never be asserted when ex_freeze 
// is not. ex_freeze must never be asserted when id_freeze is not etc.
//
// 2. Inserting NOPs in the middle of pipeline only if supported:
// At this time, only ex_freeze (and wb_freeze) can be deassrted when id_freeze
// (and if_freeze) are asserted.
// This way NOP is asserted from stage ID into EX stage.
//

assign genpc_freeze = (du_stall & !saving_if_insn) | flushpipe_r;
assign if_freeze = id_freeze | extend_flush;

assign id_freeze = (lsu_stall | (~lsu_unstall & if_stall) | multicycle_freeze 
		    | (|waiting_on) | force_dslot_fetch) | du_stall;
assign ex_freeze = wb_freeze;

assign wb_freeze = (lsu_stall | (~lsu_unstall & if_stall) | multicycle_freeze 
		    | (|waiting_on)) | du_stall | abort_ex;

//
// registered flushpipe
//
always @(posedge clk or `OR1200_RST_EVENT rst)
	if (rst == `OR1200_RST_VALUE)
		flushpipe_r <=  1'b0;
	else if (icpu_ack_i | icpu_err_i)
//	else if (!if_stall)
		flushpipe_r <=  flushpipe;
	else if (!flushpipe)
		flushpipe_r <=  1'b0;
		
//
// Multicycle freeze
//
assign multicycle_freeze = |multicycle_cnt;

//
// Multicycle counter
//
always @(posedge clk or `OR1200_RST_EVENT rst)
	if (rst == `OR1200_RST_VALUE)
		multicycle_cnt <=  `OR1200_MULTICYCLE_WIDTH'd0;
	else if (|multicycle_cnt)
		multicycle_cnt <=  multicycle_cnt - `OR1200_MULTICYCLE_WIDTH'd1;
	else if (|multicycle & !ex_freeze)
		multicycle_cnt <=  multicycle;


//
// Waiting on generation
//
always @(posedge clk or `OR1200_RST_EVENT rst)
  if (rst == `OR1200_RST_VALUE)
    waiting_on <= 0;
  else if ((waiting_on == `OR1200_WAIT_ON_MULTMAC) & !mac_stall)
    waiting_on <= 0;   
  else if ((waiting_on == `OR1200_WAIT_ON_FPU) & fpu_done)
    waiting_on <= 0;
  else if ((waiting_on == `OR1200_WAIT_ON_MTSPR) & mtspr_done)
    waiting_on <= 0;
  else if (!ex_freeze)
    waiting_on <= wait_on;
   
	   
endmodule


// END FREEZE

// BEGIN GENPC

//////////////////////////////////////////////////////////////////////
////                                                              ////
////  OR1200's generate PC                                        ////
////                                                              ////
////  This file is part of the OpenRISC 1200 project              ////
////  http://www.opencores.org/project,or1k                       ////
////                                                              ////
////  Description                                                 ////
////  PC, interface to IC.                                        ////
////                                                              ////
////  To Do:                                                      ////
////   - make it smaller and faster                               ////
////                                                              ////
////  Author(s):                                                  ////
////      - Damjan Lampret, lampret@opencores.org                 ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// $Log: or1200_genpc.v,v $
// Revision 2.0  2010/06/30 11:00:00  ORSoC
// Major update: 
// Structure reordered and bugs fixed. 

 

module or1200_genpc(
	// Clock and reset
	clk, rst,

	// External i/f to IC
	icpu_adr_o, icpu_cycstb_o, icpu_sel_o, icpu_tag_o,
	icpu_rty_i, icpu_adr_i,

	// Internal i/f
	pre_branch_op, branch_op, except_type, except_prefix,
	id_branch_addrtarget, ex_branch_addrtarget, muxed_b, operand_b, 
	flag, flagforw, ex_branch_taken, except_start,
	epcr, spr_dat_i, spr_pc_we, genpc_refetch,
	genpc_freeze, no_more_dslot, lsu_stall, du_flush_pipe, spr_dat_npc
);

//
// I/O
//

//
// Clock and reset
//
input				clk;
input				rst;

//
// External i/f to IC
//
output	[31:0]			icpu_adr_o;
output				icpu_cycstb_o;
output	[3:0]			icpu_sel_o;
output	[3:0]			icpu_tag_o;
input				icpu_rty_i;
input	[31:0]			icpu_adr_i;

//
// Internal i/f
//
input   [`OR1200_BRANCHOP_WIDTH-1:0]    pre_branch_op;
input	[`OR1200_BRANCHOP_WIDTH-1:0]	branch_op;
input	[`OR1200_EXCEPT_WIDTH-1:0]	except_type;
input					except_prefix;
input	[31:2]			id_branch_addrtarget;
input	[31:2]			ex_branch_addrtarget;
input	[31:0]			muxed_b;
input	[31:0]			operand_b;
input				flag;
input				flagforw;
output				ex_branch_taken;
input				except_start;
input	[31:0]			epcr;
input	[31:0]			spr_dat_i;
input				spr_pc_we;
input [31:0] 			spr_dat_npc;
input				genpc_refetch;
input				genpc_freeze;
input				no_more_dslot;
input				lsu_stall;
input				du_flush_pipe;

parameter boot_adr = `OR1200_BOOT_ADR;
//
// Internal wires and regs
//
reg	[31:2]			pcreg_default;
reg				pcreg_select;
reg	[31:2]			pcreg;
reg	[31:0]			pc;
// Set in event of jump or taken branch   
reg				ex_branch_taken;
reg				genpc_refetch_r;
reg				wait_lsu;

   //
   // Address of insn to be fecthed
   //
   assign icpu_adr_o = !no_more_dslot & !except_start & !spr_pc_we & !du_flush_pipe
		       & (icpu_rty_i | genpc_refetch) ? 
		       icpu_adr_i : {pc[31:2], 1'b0, ex_branch_taken|spr_pc_we};

   //
   // Control access to IC subsystem
   //
   assign icpu_cycstb_o = ~(genpc_freeze | (|pre_branch_op && !icpu_rty_i) | wait_lsu);
   assign icpu_sel_o = 4'b1111;
   assign icpu_tag_o = `OR1200_ITAG_NI;

   //
   // wait_lsu
   //
   always @(posedge clk or `OR1200_RST_EVENT rst)
     if (rst == `OR1200_RST_VALUE)
       wait_lsu <=  1'b0;
     else if (!wait_lsu & |pre_branch_op & lsu_stall)
       wait_lsu <=  1'b1;
     else if (wait_lsu & ~|pre_branch_op)
       wait_lsu <=  1'b0;

   //
   // genpc_freeze_r
   //
   always @(posedge clk or `OR1200_RST_EVENT rst)
     if (rst == `OR1200_RST_VALUE)
       genpc_refetch_r <=  1'b0;
     else if (genpc_refetch)
       genpc_refetch_r <=  1'b1;
     else
       genpc_refetch_r <=  1'b0;

   //
   // Async calculation of new PC value. This value is used for addressing the
   // IC.
   //
   always @(pcreg or ex_branch_addrtarget or flag or branch_op or except_type
	    or except_start or operand_b or epcr or spr_pc_we or spr_dat_i or 
	    except_prefix or du_flush_pipe) 
     begin
	casez ({du_flush_pipe, spr_pc_we, except_start, branch_op}) // synopsys parallel_case
	  {3'b000, `OR1200_BRANCHOP_NOP}: begin
	     pc = {pcreg + 30'd1, 2'b0};
	     ex_branch_taken = 1'b0;
	  end
	  {3'b000, `OR1200_BRANCHOP_J}: begin
`ifdef OR1200_VERBOSE
	     // synopsys translate_off
	     $display("%t: BRANCHOP_J: pc <= ex_branch_addrtarget %h"
		      , $time, ex_branch_addrtarget);
	     // synopsys translate_on
`endif
	     pc = {ex_branch_addrtarget, 2'b00};
	     ex_branch_taken = 1'b1;
	  end
	  {3'b000, `OR1200_BRANCHOP_JR}: begin
`ifdef OR1200_VERBOSE
	     // synopsys translate_off
	     $display("%t: BRANCHOP_JR: pc <= operand_b %h", 
		      $time, operand_b);
	     // synopsys translate_on
`endif
	     pc = operand_b;
	     ex_branch_taken = 1'b1;
	  end
	  {3'b000, `OR1200_BRANCHOP_BF}:
	    if (flag) begin
`ifdef OR1200_VERBOSE
	       // synopsys translate_off
	       $display("%t: BRANCHOP_BF: pc <= ex_branch_addrtarget %h", 
			$time, ex_branch_addrtarget);
	       // synopsys translate_on
`endif
	       pc = {ex_branch_addrtarget, 2'b00};
	       ex_branch_taken = 1'b1;
	    end
	    else begin
`ifdef OR1200_VERBOSE
	       // synopsys translate_off
	       $display("%t: BRANCHOP_BF: not taken", $time);
	       // synopsys translate_on
`endif
	       pc = {pcreg + 30'd1, 2'b0};
	       ex_branch_taken = 1'b0;
	    end
	  {3'b000, `OR1200_BRANCHOP_BNF}:
	    if (flag) begin
`ifdef OR1200_VERBOSE
	       // synopsys translate_off
	       $display("%t: BRANCHOP_BNF: not taken", $time);
	       // synopsys translate_on
`endif
	       pc = {pcreg + 30'd1, 2'b0};
	       ex_branch_taken = 1'b0;
	    end
	    else begin
`ifdef OR1200_VERBOSE
	       // synopsys translate_off
	       $display("%t: BRANCHOP_BNF: pc <= ex_branch_addrtarget %h", 
			$time, ex_branch_addrtarget);
	       // synopsys translate_on
`endif
	       pc = {ex_branch_addrtarget, 2'b00};
	       ex_branch_taken = 1'b1;
	    end
	  {3'b000, `OR1200_BRANCHOP_RFE}: begin
`ifdef OR1200_VERBOSE
	     // synopsys translate_off
	     $display("%t: BRANCHOP_RFE: pc <= epcr %h", 
		      $time, epcr);
	     // synopsys translate_on
`endif
	     pc = epcr;
	     ex_branch_taken = 1'b1;
	  end
	  {3'b100, 3'b???}: begin
`ifdef OR1200_VERBOSE
	     // synopsys translate_off
	     $display("Reload breaked ins at : %h.", spr_dat_npc);
	     // synopsys translate_on
`endif
	     pc = spr_dat_npc;
	     ex_branch_taken = 1'b1;
	  end
	  {3'b001, 3'b???}: begin
`ifdef OR1200_VERBOSE
	     // synopsys translate_off
	     $display("Starting exception: %h.", except_type);
	     // synopsys translate_on
`endif
	     pc = {(except_prefix ? 
		    `OR1200_EXCEPT_EPH1_P : `OR1200_EXCEPT_EPH0_P), 
		   except_type, `OR1200_EXCEPT_V};
	     ex_branch_taken = 1'b1;
	  end
	  default: begin
`ifdef OR1200_VERBOSE
	     // synopsys translate_off
	     $display("l.mtspr writing into PC: %h.", spr_dat_i);
	     // synopsys translate_on
`endif
	     pc = spr_dat_i;
	     ex_branch_taken = 1'b0;
	  end
	endcase
     end

   // select async. value for pcreg after reset - PC jumps to the address selected
   // after boot.
   wire [31:0] pcreg_boot = boot_adr;

   //
   // PC register
   //
   always @(posedge clk or `OR1200_RST_EVENT rst)
     // default value 
     if (rst == `OR1200_RST_VALUE) begin
	pcreg_default <=  (boot_adr >>2) - 4;
	pcreg_select <=  1'b1;// select async. value due to reset state
     end
   // selected value (different from default) is written into FF after
   // reset state
     else if (pcreg_select) begin
	// dynamic value can only be assigned to FF out of reset! 
	pcreg_default <=  pcreg_boot[31:2];	
	pcreg_select <=  1'b0;		// select FF value 
     end
     else if (spr_pc_we) begin
	pcreg_default <=  spr_dat_i[31:2];
     end
     else if (du_flush_pipe | no_more_dslot | except_start | !genpc_freeze & !icpu_rty_i 
	      & !genpc_refetch) begin
	pcreg_default <=  pc[31:2];
     end

   always @(pcreg_boot or pcreg_default or pcreg_select)
     if (pcreg_select)
       // async. value is selected due to reset state 
       pcreg = pcreg_boot[31:2];
     else
       // FF value is selected 2nd clock after reset state 
       pcreg = pcreg_default ;

endmodule


// END GENPC

// BEGIN IF

//////////////////////////////////////////////////////////////////////
////                                                              ////
////  OR1200's instruction fetch                                  ////
////                                                              ////
////  This file is part of the OpenRISC 1200 project              ////
////  http://www.opencores.org/project,or1k                       ////
////                                                              ////
////  Description                                                 ////
////  PC, instruction fetch, interface to IC.                     ////
////                                                              ////
////  To Do:                                                      ////
////   - make it smaller and faster                               ////
////                                                              ////
////  Author(s):                                                  ////
////      - Damjan Lampret, lampret@opencores.org                 ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// $Log: or1200_if.v,v $
// Revision 2.0  2010/06/30 11:00:00  ORSoC
// Major update: 
// Structure reordered and bugs fixed. 

 

module or1200_if(
	// Clock and reset
	clk, rst,

	// External i/f to IC
	icpu_dat_i, icpu_ack_i, icpu_err_i, icpu_adr_i, icpu_tag_i,

	// Internal i/f
	if_freeze, if_insn, if_pc, if_flushpipe, saving_if_insn, 
	if_stall, no_more_dslot, genpc_refetch, rfe,
	except_itlbmiss, except_immufault, except_ibuserr
);

//
// I/O
//

//
// Clock and reset
//
input				clk;
input				rst;

//
// External i/f to IC
//
input	[31:0]			icpu_dat_i;
input				icpu_ack_i;
input				icpu_err_i;
input	[31:0]			icpu_adr_i;
input	[3:0]			icpu_tag_i;

//
// Internal i/f
//
input				if_freeze;
output	[31:0]			if_insn;
output	[31:0]			if_pc;
input				if_flushpipe;
output				saving_if_insn;
output				if_stall;
input				no_more_dslot;
output				genpc_refetch;
input				rfe;
output				except_itlbmiss;
output				except_immufault;
output				except_ibuserr;

//
// Internal wires and regs
//
wire			save_insn;
wire			if_bypass;
reg			if_bypass_reg;
reg	[31:0]		insn_saved;
reg	[31:0]		addr_saved;
reg	[2:0]		err_saved;
reg			saved;

assign save_insn = (icpu_ack_i | icpu_err_i) & if_freeze & !saved;
assign saving_if_insn = !if_flushpipe & save_insn;

//
// IF bypass 
//
assign if_bypass = icpu_adr_i[0] ? 1'b0 : if_bypass_reg | if_flushpipe;

always @(posedge clk or `OR1200_RST_EVENT rst)
	if (rst == `OR1200_RST_VALUE)
		if_bypass_reg <=  1'b0;
	else
		if_bypass_reg <=  if_bypass;

//
// IF stage insn
//
assign if_insn = no_more_dslot | rfe | if_bypass ? {`OR1200_OR32_NOP, 26'h041_0000} : saved ? insn_saved : icpu_ack_i ? icpu_dat_i : {`OR1200_OR32_NOP, 26'h061_0000};
assign if_pc = saved ? addr_saved : {icpu_adr_i[31:2], 2'h0};
assign if_stall = !icpu_err_i & !icpu_ack_i & !saved;
assign genpc_refetch = saved & icpu_ack_i;
assign except_itlbmiss = no_more_dslot ? 1'b0 : saved ? err_saved[0] : icpu_err_i & (icpu_tag_i == `OR1200_ITAG_TE);
assign except_immufault = no_more_dslot ? 1'b0 : saved ? err_saved[1] : icpu_err_i & (icpu_tag_i == `OR1200_ITAG_PE);
assign except_ibuserr = no_more_dslot ? 1'b0 : saved ? err_saved[2] : icpu_err_i & (icpu_tag_i == `OR1200_ITAG_BE);

//
// Flag for saved insn/address
//
always @(posedge clk or `OR1200_RST_EVENT rst)
	if (rst == `OR1200_RST_VALUE)
		saved <=  1'b0;
	else if (if_flushpipe)
		saved <=  1'b0;
	else if (save_insn)
		saved <=  1'b1;
	else if (!if_freeze)
		saved <=  1'b0;

//
// Store fetched instruction
//
always @(posedge clk or `OR1200_RST_EVENT rst)
	if (rst == `OR1200_RST_VALUE)
		insn_saved <=  {`OR1200_OR32_NOP, 26'h041_0000};
	else if (if_flushpipe)
		insn_saved <=  {`OR1200_OR32_NOP, 26'h041_0000};
	else if (save_insn)
		insn_saved <=  icpu_err_i ? {`OR1200_OR32_NOP, 26'h041_0000} : icpu_dat_i;
	else if (!if_freeze)
		insn_saved <=  {`OR1200_OR32_NOP, 26'h041_0000};

//
// Store fetched instruction's address
//
always @(posedge clk or `OR1200_RST_EVENT rst)
	if (rst == `OR1200_RST_VALUE)
		addr_saved <=  32'h00000000;
	else if (if_flushpipe)
		addr_saved <=  32'h00000000;
	else if (save_insn)
		addr_saved <=  {icpu_adr_i[31:2], 2'b00};
	else if (!if_freeze)
		addr_saved <=  {icpu_adr_i[31:2], 2'b00};

//
// Store fetched instruction's error tags 
//
always @(posedge clk or `OR1200_RST_EVENT rst)
	if (rst == `OR1200_RST_VALUE)
		err_saved <=  3'b000;
	else if (if_flushpipe)
		err_saved <=  3'b000;
	else if (save_insn) begin
		err_saved[0] <=  icpu_err_i & (icpu_tag_i == `OR1200_ITAG_TE);
		err_saved[1] <=  icpu_err_i & (icpu_tag_i == `OR1200_ITAG_PE);
		err_saved[2] <=  icpu_err_i & (icpu_tag_i == `OR1200_ITAG_BE);
	end
	else if (!if_freeze)
		err_saved <=  3'b000;


endmodule


// END IF

// BEGIN LSU

//////////////////////////////////////////////////////////////////////
////                                                              ////
////  OR1200's Load/Store unit                                    ////
////                                                              ////
////  This file is part of the OpenRISC 1200 project              ////
////  http://opencores.org/project,or1k                           ////
////                                                              ////
////  Description                                                 ////
////  Interface between CPU and DC.                               ////
////                                                              ////
////  To Do:                                                      ////
////   - make it smaller and faster                               ////
////                                                              ////
////  Author(s):                                                  ////
////      - Damjan Lampret, lampret@opencores.org                 ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
//
// $Log: or1200_lsu.v,v $
// Revision 2.0  2010/06/30 11:00:00  ORSoC
// Major update: 
// Structure reordered and bugs fixed. 
//

 

module or1200_lsu(
	// Clock and Reset
	clk, rst,

	// Internal i/f
	id_addrbase, ex_addrbase, id_addrofs, ex_addrofs, id_lsu_op, 
	lsu_datain, lsu_dataout, lsu_stall, lsu_unstall,
	du_stall, except_align, except_dtlbmiss, except_dmmufault, except_dbuserr,
	id_freeze, ex_freeze, flushpipe,

	// External i/f to DC
	dcpu_adr_o, dcpu_cycstb_o, dcpu_we_o, dcpu_sel_o, dcpu_tag_o, dcpu_dat_o,
	dcpu_dat_i, dcpu_ack_i, dcpu_rty_i, dcpu_err_i, dcpu_tag_i
);

parameter dw = `OR1200_OPERAND_WIDTH;
parameter aw = `OR1200_REGFILE_ADDR_WIDTH;

//
// I/O
//

//
// Clock and reset
//
input				clk;
input				rst;

//
// Internal i/f
//
input	[31:0]			id_addrbase;
input	[31:0]			ex_addrbase;
input	[31:0]			id_addrofs;
input	[31:0]			ex_addrofs;
input	[`OR1200_LSUOP_WIDTH-1:0] id_lsu_op;
input	[31:0]		lsu_datain;
output	[31:0]		lsu_dataout;
output				lsu_stall;
output				lsu_unstall;
input                           du_stall;
output				except_align;
output				except_dtlbmiss;
output				except_dmmufault;
output				except_dbuserr;
input                           id_freeze;
input                           ex_freeze;
input                           flushpipe;

//
// External i/f to DC
//
output	[31:0]			dcpu_adr_o;
output				dcpu_cycstb_o;
output				dcpu_we_o;
output	[3:0]			dcpu_sel_o;
output	[3:0]			dcpu_tag_o;
output	[31:0]			dcpu_dat_o;
input	[31:0]			dcpu_dat_i;
input				dcpu_ack_i;
input				dcpu_rty_i;
input				dcpu_err_i;
input	[3:0]			dcpu_tag_i;

//
// Internal wires/regs
//
reg	[3:0]			dcpu_sel_o;

reg	[`OR1200_LSUOP_WIDTH-1:0] ex_lsu_op;
wire	[`OR1200_LSUEA_PRECALC:0] id_precalc_sum;
reg	[`OR1200_LSUEA_PRECALC:0] dcpu_adr_r;
reg				except_align;

//
// ex_lsu_op
//
always @(posedge clk or `OR1200_RST_EVENT rst) begin
    if (rst == `OR1200_RST_VALUE)
        ex_lsu_op <=  `OR1200_LSUOP_NOP;
    else if (!ex_freeze & id_freeze | flushpipe)
        ex_lsu_op <=  `OR1200_LSUOP_NOP;
    else if (!ex_freeze)
        ex_lsu_op <=  id_lsu_op;
end

//
// Precalculate part of load/store EA in ID stage
//
assign id_precalc_sum = id_addrbase[`OR1200_LSUEA_PRECALC-1:0] +
                        id_addrofs[`OR1200_LSUEA_PRECALC-1:0];

always @(posedge clk or `OR1200_RST_EVENT rst) begin
    if (rst == `OR1200_RST_VALUE)
        dcpu_adr_r <=  {`OR1200_LSUEA_PRECALC+1{1'b0}};
    else if (!ex_freeze)
        dcpu_adr_r <=  id_precalc_sum;
end

//
// Generate except_align in ID stage
//
always @(posedge clk or `OR1200_RST_EVENT rst) begin
    if (rst == `OR1200_RST_VALUE)
        except_align <=  1'b0;
    else if (!ex_freeze & id_freeze | flushpipe)
        except_align <=  1'b0;
    else if (!ex_freeze)
        except_align <=  ((id_lsu_op == `OR1200_LSUOP_SH) |
                            (id_lsu_op == `OR1200_LSUOP_LHZ) |
                            (id_lsu_op == `OR1200_LSUOP_LHS)) & id_precalc_sum[0]
		        |  ((id_lsu_op == `OR1200_LSUOP_SW) |
		            (id_lsu_op == `OR1200_LSUOP_LWZ) |
		            (id_lsu_op == `OR1200_LSUOP_LWS)) & |id_precalc_sum[1:0];
end

//
// Internal I/F assignments
//
assign lsu_stall = dcpu_rty_i & dcpu_cycstb_o;
assign lsu_unstall = dcpu_ack_i;
assign except_dtlbmiss = dcpu_err_i & (dcpu_tag_i == `OR1200_DTAG_TE);
assign except_dmmufault = dcpu_err_i & (dcpu_tag_i == `OR1200_DTAG_PE);
assign except_dbuserr = dcpu_err_i & (dcpu_tag_i == `OR1200_DTAG_BE);

//
// External I/F assignments
//
assign dcpu_adr_o[31:`OR1200_LSUEA_PRECALC] = 
				   ex_addrbase[31:`OR1200_LSUEA_PRECALC] + 
				   (ex_addrofs[31:`OR1200_LSUEA_PRECALC] +
				    // carry from precalc, pad to 30-bits
				   {{(32-`OR1200_LSUEA_PRECALC)-1{1'b0}},
				    dcpu_adr_r[`OR1200_LSUEA_PRECALC]});
assign dcpu_adr_o[`OR1200_LSUEA_PRECALC-1:0] = dcpu_adr_r[`OR1200_LSUEA_PRECALC-1:0];
assign dcpu_cycstb_o = du_stall | lsu_unstall | except_align ? 
		       1'b0 : |ex_lsu_op;
assign dcpu_we_o = ex_lsu_op[3];
assign dcpu_tag_o = dcpu_cycstb_o ? `OR1200_DTAG_ND : `OR1200_DTAG_IDLE;
always @(ex_lsu_op or dcpu_adr_o)
	casez({ex_lsu_op, dcpu_adr_o[1:0]})
		{`OR1200_LSUOP_SB, 2'b00} : dcpu_sel_o = 4'b1000;
		{`OR1200_LSUOP_SB, 2'b01} : dcpu_sel_o = 4'b0100;
		{`OR1200_LSUOP_SB, 2'b10} : dcpu_sel_o = 4'b0010;
		{`OR1200_LSUOP_SB, 2'b11} : dcpu_sel_o = 4'b0001;
		{`OR1200_LSUOP_SH, 2'b00} : dcpu_sel_o = 4'b1100;
		{`OR1200_LSUOP_SH, 2'b10} : dcpu_sel_o = 4'b0011;
		{`OR1200_LSUOP_SW, 2'b00} : dcpu_sel_o = 4'b1111;
		{`OR1200_LSUOP_LBZ, 2'b00}, {`OR1200_LSUOP_LBS, 2'b00} : dcpu_sel_o = 4'b1000;
		{`OR1200_LSUOP_LBZ, 2'b01}, {`OR1200_LSUOP_LBS, 2'b01} : dcpu_sel_o = 4'b0100;
		{`OR1200_LSUOP_LBZ, 2'b10}, {`OR1200_LSUOP_LBS, 2'b10} : dcpu_sel_o = 4'b0010;
		{`OR1200_LSUOP_LBZ, 2'b11}, {`OR1200_LSUOP_LBS, 2'b11} : dcpu_sel_o = 4'b0001;
		{`OR1200_LSUOP_LHZ, 2'b00}, {`OR1200_LSUOP_LHS, 2'b00} : dcpu_sel_o = 4'b1100;
		{`OR1200_LSUOP_LHZ, 2'b10}, {`OR1200_LSUOP_LHS, 2'b10} : dcpu_sel_o = 4'b0011;
		{`OR1200_LSUOP_LWZ, 2'b00}, {`OR1200_LSUOP_LWS, 2'b00} : dcpu_sel_o = 4'b1111;
		default : dcpu_sel_o = 4'b0000;
	endcase

//
// Instantiation of Memory-to-regfile aligner
//
or1200_mem2reg or1200_mem2reg(
	.addr(dcpu_adr_o[1:0]),
	.lsu_op(ex_lsu_op),
	.memdata(dcpu_dat_i),
	.regdata(lsu_dataout)
);

//
// Instantiation of Regfile-to-memory aligner
//
or1200_reg2mem or1200_reg2mem(
        .addr(dcpu_adr_o[1:0]),
        .lsu_op(ex_lsu_op),
        .regdata(lsu_datain),
        .memdata(dcpu_dat_o)
);

endmodule


// END LSU

// BEGIN MEM2REG

//////////////////////////////////////////////////////////////////////
////                                                              ////
////  OR1200's mem2reg alignment                                  ////
////                                                              ////
////  This file is part of the OpenRISC 1200 project              ////
////  http://www.opencores.org/cores/or1k/                        ////
////                                                              ////
////  Description                                                 ////
////  Two versions of Memory to register data alignment.          ////
////                                                              ////
////  To Do:                                                      ////
////   - make it smaller and faster                               ////
////                                                              ////
////  Author(s):                                                  ////
////      - Damjan Lampret, lampret@opencores.org                 ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// CVS Revision History
//
// $Log: or1200_mem2reg.v,v $
// Revision 2.0  2010/06/30 11:00:00  ORSoC
// No update 
//
// Revision 1.5  2002/09/03 22:28:21  lampret
// As per Taylor Su suggestion all case blocks are full case by default and optionally (OR1200_CASE_DEFAULT) can be disabled to increase clock frequncy.
//
// Revision 1.4  2002/03/29 15:16:56  lampret
// Some of the warnings fixed.
//
// Revision 1.3  2002/03/28 19:14:10  lampret
// Changed define name from OR1200_MEM2REG_FAST to OR1200_IMPL_MEM2REG2
//
// Revision 1.2  2002/01/14 06:18:22  lampret
// Fixed mem2reg bug in FAST implementation. Updated debug unit to work with new genpc/if.
//
// Revision 1.1  2002/01/03 08:16:15  lampret
// New prefixes for RTL files, prefixed module names. Updated cache controllers and MMUs.
//
// Revision 1.9  2001/10/21 17:57:16  lampret
// Removed params from generic_XX.v. Added translate_off/on in sprs.v and id.v. Removed spr_addr from dc.v and ic.v. Fixed CR+LF.
//
// Revision 1.8  2001/10/19 23:28:46  lampret
// Fixed some synthesis warnings. Configured with caches and MMUs.
//
// Revision 1.7  2001/10/14 13:12:09  lampret
// MP3 version.
//
// Revision 1.1.1.1  2001/10/06 10:18:36  igorm
// no message
//
// Revision 1.2  2001/08/09 13:39:33  lampret
// Major clean-up.
//
// Revision 1.1  2001/07/20 00:46:03  lampret
// Development version of RTL. Libraries are missing.
//
//

 

module or1200_mem2reg(addr, lsu_op, memdata, regdata);

parameter width = `OR1200_OPERAND_WIDTH;

//
// I/O
//
input	[1:0]			addr;
input	[`OR1200_LSUOP_WIDTH-1:0]	lsu_op;
input	[width-1:0]		memdata;
output	[width-1:0]		regdata;


//
// In the past faster implementation of mem2reg (today probably slower)
//
`ifdef OR1200_IMPL_MEM2REG2

`define OR1200_M2R_BYTE0 4'b0000
`define OR1200_M2R_BYTE1 4'b0001
`define OR1200_M2R_BYTE2 4'b0010
`define OR1200_M2R_BYTE3 4'b0011
`define OR1200_M2R_EXTB0 4'b0100
`define OR1200_M2R_EXTB1 4'b0101
`define OR1200_M2R_EXTB2 4'b0110
`define OR1200_M2R_EXTB3 4'b0111
`define OR1200_M2R_ZERO  4'b0000

reg	[7:0]			regdata_hh;
reg	[7:0]			regdata_hl;
reg	[7:0]			regdata_lh;
reg	[7:0]			regdata_ll;
reg	[width-1:0]		aligned;
reg	[3:0]			sel_byte0, sel_byte1,
				sel_byte2, sel_byte3;

assign regdata = {regdata_hh, regdata_hl, regdata_lh, regdata_ll};

//
// Byte select 0
//
always @(addr or lsu_op) begin
	casex({lsu_op[2:0], addr})	// synopsys parallel_case
		{3'b01x, 2'b00}:			// lbz/lbs 0
			sel_byte0 = `OR1200_M2R_BYTE3;	// take byte 3
		{3'b01x, 2'b01},			// lbz/lbs 1
		{3'b10x, 2'b00}:			// lhz/lhs 0
			sel_byte0 = `OR1200_M2R_BYTE2;	// take byte 2
		{3'b01x, 2'b10}:			// lbz/lbs 2
			sel_byte0 = `OR1200_M2R_BYTE1;	// take byte 1
		default:				// all other cases
			sel_byte0 = `OR1200_M2R_BYTE0;	// take byte 0
	endcase
end

//
// Byte select 1
//
always @(addr or lsu_op) begin
	casex({lsu_op[2:0], addr})	// synopsys parallel_case
		{3'b010, 2'bxx}:			// lbz
			sel_byte1 = `OR1200_M2R_ZERO;	// zero extend
		{3'b011, 2'b00}:			// lbs 0
			sel_byte1 = `OR1200_M2R_EXTB3;	// sign extend from byte 3
		{3'b011, 2'b01}:			// lbs 1
			sel_byte1 = `OR1200_M2R_EXTB2;	// sign extend from byte 2
		{3'b011, 2'b10}:			// lbs 2
			sel_byte1 = `OR1200_M2R_EXTB1;	// sign extend from byte 1
		{3'b011, 2'b11}:			// lbs 3
			sel_byte1 = `OR1200_M2R_EXTB0;	// sign extend from byte 0
		{3'b10x, 2'b00}:			// lhz/lhs 0
			sel_byte1 = `OR1200_M2R_BYTE3;	// take byte 3
		default:				// all other cases
			sel_byte1 = `OR1200_M2R_BYTE1;	// take byte 1
	endcase
end

//
// Byte select 2
//
always @(addr or lsu_op) begin
	casex({lsu_op[2:0], addr})	// synopsys parallel_case
		{3'b010, 2'bxx},			// lbz
		{3'b100, 2'bxx}:			// lhz
			sel_byte2 = `OR1200_M2R_ZERO;	// zero extend
		{3'b011, 2'b00},			// lbs 0
		{3'b101, 2'b00}:			// lhs 0
			sel_byte2 = `OR1200_M2R_EXTB3;	// sign extend from byte 3
		{3'b011, 2'b01}:			// lbs 1
			sel_byte2 = `OR1200_M2R_EXTB2;	// sign extend from byte 2
		{3'b011, 2'b10},			// lbs 2
		{3'b101, 2'b10}:			// lhs 0
			sel_byte2 = `OR1200_M2R_EXTB1;	// sign extend from byte 1
		{3'b011, 2'b11}:			// lbs 3
			sel_byte2 = `OR1200_M2R_EXTB0;	// sign extend from byte 0
		default:				// all other cases
			sel_byte2 = `OR1200_M2R_BYTE2;	// take byte 2
	endcase
end

//
// Byte select 3
//
always @(addr or lsu_op) begin
	casex({lsu_op[2:0], addr}) // synopsys parallel_case
		{3'b010, 2'bxx},			// lbz
		{3'b100, 2'bxx}:			// lhz
			sel_byte3 = `OR1200_M2R_ZERO;	// zero extend
		{3'b011, 2'b00},			// lbs 0
		{3'b101, 2'b00}:			// lhs 0
			sel_byte3 = `OR1200_M2R_EXTB3;	// sign extend from byte 3
		{3'b011, 2'b01}:			// lbs 1
			sel_byte3 = `OR1200_M2R_EXTB2;	// sign extend from byte 2
		{3'b011, 2'b10},			// lbs 2
		{3'b101, 2'b10}:			// lhs 0
			sel_byte3 = `OR1200_M2R_EXTB1;	// sign extend from byte 1
		{3'b011, 2'b11}:			// lbs 3
			sel_byte3 = `OR1200_M2R_EXTB0;	// sign extend from byte 0
		default:				// all other cases
			sel_byte3 = `OR1200_M2R_BYTE3;	// take byte 3
	endcase
end

//
// Byte 0
//
always @(sel_byte0 or memdata) begin
`ifdef OR1200_ADDITIONAL_SYNOPSYS_DIRECTIVES
`ifdef OR1200_CASE_DEFAULT
	case(sel_byte0) // synopsys parallel_case infer_mux
`else
	case(sel_byte0) // synopsys full_case parallel_case infer_mux
`endif
`else
`ifdef OR1200_CASE_DEFAULT
	case(sel_byte0) // synopsys parallel_case
`else
	case(sel_byte0) // synopsys full_case parallel_case
`endif
`endif
		`OR1200_M2R_BYTE0: begin
				regdata_ll = memdata[7:0];
			end
		`OR1200_M2R_BYTE1: begin
				regdata_ll = memdata[15:8];
			end
		`OR1200_M2R_BYTE2: begin
				regdata_ll = memdata[23:16];
			end
`ifdef OR1200_CASE_DEFAULT
		default: begin
`else
		`OR1200_M2R_BYTE3: begin
`endif
				regdata_ll = memdata[31:24];
			end
	endcase
end

//
// Byte 1
//
always @(sel_byte1 or memdata) begin
`ifdef OR1200_ADDITIONAL_SYNOPSYS_DIRECTIVES
`ifdef OR1200_CASE_DEFAULT
	case(sel_byte1) // synopsys parallel_case infer_mux
`else
	case(sel_byte1) // synopsys full_case parallel_case infer_mux
`endif
`else
`ifdef OR1200_CASE_DEFAULT
	case(sel_byte1) // synopsys parallel_case
`else
	case(sel_byte1) // synopsys full_case parallel_case
`endif
`endif
		`OR1200_M2R_ZERO: begin
				regdata_lh = 8'h00;
			end
		`OR1200_M2R_BYTE1: begin
				regdata_lh = memdata[15:8];
			end
		`OR1200_M2R_BYTE3: begin
				regdata_lh = memdata[31:24];
			end
		`OR1200_M2R_EXTB0: begin
				regdata_lh = {8{memdata[7]}};
			end
		`OR1200_M2R_EXTB1: begin
				regdata_lh = {8{memdata[15]}};
			end
		`OR1200_M2R_EXTB2: begin
				regdata_lh = {8{memdata[23]}};
			end
`ifdef OR1200_CASE_DEFAULT
		default: begin
`else
		`OR1200_M2R_EXTB3: begin
`endif
				regdata_lh = {8{memdata[31]}};
			end
	endcase
end

//
// Byte 2
//
always @(sel_byte2 or memdata) begin
`ifdef OR1200_ADDITIONAL_SYNOPSYS_DIRECTIVES
`ifdef OR1200_CASE_DEFAULT
	case(sel_byte2) // synopsys parallel_case infer_mux
`else
	case(sel_byte2) // synopsys full_case parallel_case infer_mux
`endif
`else
`ifdef OR1200_CASE_DEFAULT
	case(sel_byte2) // synopsys parallel_case
`else
	case(sel_byte2) // synopsys full_case parallel_case
`endif
`endif
		`OR1200_M2R_ZERO: begin
				regdata_hl = 8'h00;
			end
		`OR1200_M2R_BYTE2: begin
				regdata_hl = memdata[23:16];
			end
		`OR1200_M2R_EXTB0: begin
				regdata_hl = {8{memdata[7]}};
			end
		`OR1200_M2R_EXTB1: begin
				regdata_hl = {8{memdata[15]}};
			end
		`OR1200_M2R_EXTB2: begin
				regdata_hl = {8{memdata[23]}};
			end
`ifdef OR1200_CASE_DEFAULT
		default: begin
`else
		`OR1200_M2R_EXTB3: begin
`endif
				regdata_hl = {8{memdata[31]}};
			end
	endcase
end

//
// Byte 3
//
always @(sel_byte3 or memdata) begin
`ifdef OR1200_ADDITIONAL_SYNOPSYS_DIRECTIVES
`ifdef OR1200_CASE_DEFAULT
	case(sel_byte3) // synopsys parallel_case infer_mux
`else
	case(sel_byte3) // synopsys full_case parallel_case infer_mux
`endif
`else
`ifdef OR1200_CASE_DEFAULT
	case(sel_byte3) // synopsys parallel_case
`else
	case(sel_byte3) // synopsys full_case parallel_case
`endif
`endif
		`OR1200_M2R_ZERO: begin
				regdata_hh = 8'h00;
			end
		`OR1200_M2R_BYTE3: begin
				regdata_hh = memdata[31:24];
			end
		`OR1200_M2R_EXTB0: begin
				regdata_hh = {8{memdata[7]}};
			end
		`OR1200_M2R_EXTB1: begin
				regdata_hh = {8{memdata[15]}};
			end
		`OR1200_M2R_EXTB2: begin
				regdata_hh = {8{memdata[23]}};
			end
`ifdef OR1200_CASE_DEFAULT
		`OR1200_M2R_EXTB3: begin
`else
		`OR1200_M2R_EXTB3: begin
`endif
				regdata_hh = {8{memdata[31]}};
			end
	endcase
end

`else

//
// Straightforward implementation of mem2reg
//

reg	[width-1:0]		regdata;
reg	[width-1:0]		aligned;

//
// Alignment
//
always @(addr or memdata) begin
`ifdef OR1200_ADDITIONAL_SYNOPSYS_DIRECTIVES
	case(addr) // synopsys parallel_case infer_mux
`else
	case(addr) // synopsys parallel_case
`endif
		2'b00:
			aligned = memdata;
		2'b01:
			aligned = {memdata[23:0], 8'b0};
		2'b10:
			aligned = {memdata[15:0], 16'b0};
		2'b11:
			aligned = {memdata[7:0], 24'b0};
	endcase
end

//
// Bytes
//
always @(lsu_op or aligned) begin
`ifdef OR1200_ADDITIONAL_SYNOPSYS_DIRECTIVES
	case(lsu_op) // synopsys parallel_case infer_mux
`else
	case(lsu_op) // synopsys parallel_case
`endif
		`OR1200_LSUOP_LBZ: begin
				regdata[7:0] = aligned[31:24];
				regdata[31:8] = 24'b0;
			end
		`OR1200_LSUOP_LBS: begin
				regdata[7:0] = aligned[31:24];
				regdata[31:8] = {24{aligned[31]}};
			end
		`OR1200_LSUOP_LHZ: begin
				regdata[15:0] = aligned[31:16];
				regdata[31:16] = 16'b0;
			end
		`OR1200_LSUOP_LHS: begin
				regdata[15:0] = aligned[31:16];
				regdata[31:16] = {16{aligned[31]}};
			end
		default:
				regdata = aligned;
	endcase
end

`endif

endmodule


// END MEM2REG

// BEGIN REG2MEM

//////////////////////////////////////////////////////////////////////
////                                                              ////
////  OR1200's reg2mem aligner                                    ////
////                                                              ////
////  This file is part of the OpenRISC 1200 project              ////
////  http://www.opencores.org/cores/or1k/                        ////
////                                                              ////
////  Description                                                 ////
////  Aligns register data to memory alignment.                   ////
////                                                              ////
////  To Do:                                                      ////
////   - make it smaller and faster                               ////
////                                                              ////
////  Author(s):                                                  ////
////      - Damjan Lampret, lampret@opencores.org                 ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// CVS Revision History
//
// $Log: or1200_reg2mem.v,v $
// Revision 2.0  2010/06/30 11:00:00  ORSoC
// No update 
//
// Revision 1.2  2002/03/29 15:16:56  lampret
// Some of the warnings fixed.
//
// Revision 1.1  2002/01/03 08:16:15  lampret
// New prefixes for RTL files, prefixed module names. Updated cache controllers and MMUs.
//
// Revision 1.9  2001/10/21 17:57:16  lampret
// Removed params from generic_XX.v. Added translate_off/on in sprs.v and id.v. Removed spr_addr from dc.v and ic.v. Fixed CR+LF.
//
// Revision 1.8  2001/10/19 23:28:46  lampret
// Fixed some synthesis warnings. Configured with caches and MMUs.
//
// Revision 1.7  2001/10/14 13:12:10  lampret
// MP3 version.
//
// Revision 1.1.1.1  2001/10/06 10:18:36  igorm
// no message
//
// Revision 1.2  2001/08/09 13:39:33  lampret
// Major clean-up.
//
// Revision 1.1  2001/07/20 00:46:21  lampret
// Development version of RTL. Libraries are missing.
//
//

 

module or1200_reg2mem(addr, lsu_op, regdata, memdata);

parameter width = `OR1200_OPERAND_WIDTH;

//
// I/O
//
input	[1:0]			addr;
input	[`OR1200_LSUOP_WIDTH-1:0]	lsu_op;
input	[width-1:0]		regdata;
output	[width-1:0]		memdata;

//
// Internal regs and wires
//
reg	[7:0]			memdata_hh;
reg	[7:0]			memdata_hl;
reg	[7:0]			memdata_lh;
reg	[7:0]			memdata_ll;

assign memdata = {memdata_hh, memdata_hl, memdata_lh, memdata_ll};

//
// Mux to memdata[31:24]
//
always @(lsu_op or addr or regdata) begin
	casez({lsu_op, addr[1:0]})	// synopsys parallel_case
		{`OR1200_LSUOP_SB, 2'b00} : memdata_hh = regdata[7:0];
		{`OR1200_LSUOP_SH, 2'b00} : memdata_hh = regdata[15:8];
		default : memdata_hh = regdata[31:24];
	endcase
end

//
// Mux to memdata[23:16]
//
always @(lsu_op or addr or regdata) begin
	casez({lsu_op, addr[1:0]})	// synopsys parallel_case
		{`OR1200_LSUOP_SW, 2'b00} : memdata_hl = regdata[23:16];
		default : memdata_hl = regdata[7:0];
	endcase
end

//
// Mux to memdata[15:8]
//
always @(lsu_op or addr or regdata) begin
	casez({lsu_op, addr[1:0]})	// synopsys parallel_case
		{`OR1200_LSUOP_SB, 2'b10} : memdata_lh = regdata[7:0];
		default : memdata_lh = regdata[15:8];
	endcase
end

//
// Mux to memdata[7:0]
//
always @(regdata)
	memdata_ll = regdata[7:0];

endmodule


// END REG2MEM

// BEGIN MULT_MAC

//////////////////////////////////////////////////////////////////////
////                                                              ////
////  OR1200's Top level multiplier, divider and MAC              ////
////                                                              ////
////  This file is part of the OpenRISC 1200 project              ////
////  http://opencores.org/project,or1k                           ////
////                                                              ////
////  Description                                                 ////
////  Multiplier is 32x32 however multiply instructions only      ////
////  use lower 32 bits of the result. MAC is 32x32=64+64.        ////
////                                                              ////
////  To Do:                                                      ////
////   - make signed division better, w/o negating the operands   ////
////   - implement non-serial divider that is synthesizable       ////
////                                                              ////
////  Author(s):                                                  ////
////      - Damjan Lampret, lampret@opencores.org                 ////
////      - Julius Baxter, julius@opencores.org                   ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000, 2010 Authors and OPENCORES.ORG           ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// CVS Revision History
//
// $Log: or1200_mult_mac.v,v $
// Revision 2.0  2010/06/30 11:00:00  ORSoC
// Minor update: 
// Bugs fixed. 
//

 

module or1200_mult_mac(
		       // Clock and reset
		       clk, rst,

		       // Multiplier/MAC interface
		       ex_freeze, id_macrc_op, macrc_op, a, b, mac_op, alu_op, 
		       result, mult_mac_stall,

		       // Overflow
		       ovforw, ov_we,
		       
		       // SPR interface
		       spr_cs, spr_write, spr_addr, spr_dat_i, spr_dat_o
		       );

   parameter width = `OR1200_OPERAND_WIDTH;

   //
   // I/O
   //

   //
   // Clock and reset
   //
   input				clk;
   input				rst;

   //
   // Multiplier/MAC interface
   //
   input				ex_freeze;
   input				id_macrc_op;
   input				macrc_op;
   input [width-1:0] 			a;
   input [width-1:0] 			b;
   input [`OR1200_MACOP_WIDTH-1:0] 	mac_op;
   input [`OR1200_ALUOP_WIDTH-1:0] 	alu_op;
   output [width-1:0] 			result;
   output				mult_mac_stall;
   output 				ovforw, ov_we;
   
   //
   // SPR interface
   //
   input				spr_cs;
   input				spr_write;
   input [31:0] 			spr_addr;
   input [31:0] 			spr_dat_i;
   output [31:0] 			spr_dat_o;

   //
   // Internal wires and regs
   //
   reg [width-1:0] 			result;
   reg 					ex_freeze_r;
   wire 				alu_op_mul;
   wire 				alu_op_smul;      
`ifdef OR1200_MULT_IMPLEMENTED
   reg [2*width-1:0] 			mul_prod_r;
   wire 				alu_op_umul;   
 `ifdef OR1200_MULT_SERIAL
   reg [5:0] 				serial_mul_cnt;   
   reg 					mul_free;   
 `endif
`else
   wire [2*width-1:0] 			mul_prod_r;
`endif
   wire [2*width-1:0] 			mul_prod;
   wire 				mul_stall;
   reg [1:0] 				mul_stall_count;   
   wire [`OR1200_MACOP_WIDTH-1:0] 	mac_op;
`ifdef OR1200_MAC_IMPLEMENTED
   reg [`OR1200_MACOP_WIDTH-1:0] 	mac_op_r1;
   reg [`OR1200_MACOP_WIDTH-1:0] 	mac_op_r2;
   reg [`OR1200_MACOP_WIDTH-1:0] 	mac_op_r3;
   reg 					mac_stall_r;
   reg [63:0] 				mac_r;
`else
   wire [`OR1200_MACOP_WIDTH-1:0] 	mac_op_r1;
   wire [`OR1200_MACOP_WIDTH-1:0] 	mac_op_r2;
   wire [`OR1200_MACOP_WIDTH-1:0] 	mac_op_r3;
   wire 				mac_stall_r;
   wire [63:0] 				mac_r;
`endif
   wire [width-1:0] 			x;
   wire [width-1:0] 			y;
   wire 				spr_maclo_we;
   wire 				spr_machi_we; 
   wire 				alu_op_div;  
   wire 				alu_op_udiv;
   wire 				alu_op_sdiv;
   reg 					div_free;
   wire 			        div_stall;
`ifdef OR1200_DIV_IMPLEMENTED
 `ifdef OR1200_DIV_SERIAL
   reg [2*width-1:0] 			div_quot_r;   
   wire [width-1:0] 			div_tmp;
   reg [5:0] 				div_cntr;
 `else
   reg [width-1:0] 			div_quot_r;      
   reg [width-1:0] 			div_quot_generic;   
 `endif
   wire 				div_by_zero;
`endif
   reg 					ovforw, ov_we;
   
   //
   // Combinatorial logic
   //
`ifdef OR1200_MULT_IMPLEMENTED
   assign alu_op_smul = (alu_op == `OR1200_ALUOP_MUL);
   assign alu_op_umul = (alu_op == `OR1200_ALUOP_MULU);
   assign alu_op_mul = alu_op_smul | alu_op_umul;
`else
   assign alu_op_smul = 0;
   assign alu_op_mul = 0;
`endif
`ifdef OR1200_MAC_IMPLEMENTED
   assign spr_maclo_we = spr_cs & spr_write & spr_addr[`OR1200_MAC_ADDR];
   assign spr_machi_we = spr_cs & spr_write & !spr_addr[`OR1200_MAC_ADDR];
   assign spr_dat_o = spr_addr[`OR1200_MAC_ADDR] ? mac_r[31:0] : mac_r[63:32];
`else
   assign spr_maclo_we = 1'b0;
   assign spr_machi_we = 1'b0;
   assign spr_dat_o = 32'h0000_0000;
`endif
`ifdef OR1200_DIV_IMPLEMENTED
   assign alu_op_sdiv = (alu_op == `OR1200_ALUOP_DIV);
   assign alu_op_udiv = (alu_op == `OR1200_ALUOP_DIVU);
   assign alu_op_div = alu_op_sdiv | alu_op_udiv;   
`else
   assign alu_op_udiv = 1'b0;
   assign alu_op_sdiv = 1'b0;
   assign alu_op_div = 1'b0;   
`endif

   assign x = (alu_op_sdiv | alu_op_smul) & a[31] ? ~a + 32'b1 : 
	      alu_op_div | alu_op_mul | (|mac_op) ? a : 32'd0;
   assign y = (alu_op_sdiv | alu_op_smul) & b[31] ? ~b + 32'b1 : 
	      alu_op_div | alu_op_mul | (|mac_op) ? b : 32'd0;

   assign div_by_zero = !(|b) & alu_op_div;
   

   // Used to indicate when we should check for new multiply or MAC ops
   always @(posedge clk or `OR1200_RST_EVENT rst)
     if (rst == `OR1200_RST_VALUE)
       ex_freeze_r <= 1'b1;
     else
       ex_freeze_r <= ex_freeze;

   //
   // Select result of current ALU operation to be forwarded
   // to next instruction and to WB stage
   //
   always @*
     casez(alu_op)	// synopsys parallel_case
`ifdef OR1200_DIV_IMPLEMENTED
       `OR1200_ALUOP_DIV: begin
	  result = a[31] ^ b[31] ? ~div_quot_r[31:0] + 32'd1 : div_quot_r[31:0];
       end
       `OR1200_ALUOP_DIVU: begin
	  result = div_quot_r[31:0];
       end
`endif
`ifdef OR1200_MULT_IMPLEMENTED    
       `OR1200_ALUOP_MUL: begin
	  result = a[31] ^ b[31] ? ~mul_prod_r[31:0] + 32'd1 : mul_prod_r[31:0];
       end
	 `OR1200_ALUOP_MULU: begin
	  result = mul_prod_r[31:0];
       end
`endif    
       default:
`ifdef OR1200_MAC_IMPLEMENTED      
 `ifdef OR1200_MAC_SHIFTBY
	 result = mac_r[`OR1200_MAC_SHIFTBY+31:`OR1200_MAC_SHIFTBY];
 `else
       result = mac_r[31:0];
 `endif
`else
       result = {width{1'b0}};    
`endif    
     endcase // casez (alu_op)


   //
   // Overflow generation
   //
   always @*
     casez(alu_op)	// synopsys parallel_case
`ifdef OR1200_IMPL_OV       
 `ifdef OR1200_MULT_IMPLEMENTED
       `OR1200_ALUOP_MUL: begin
	  // Actually doing unsigned multiply internally, and then negate on
	  // output as appropriate, so if sign bit is set, then is overflow
          // unless incoming signs differ and result is 2^(width-1)
          ovforw = (mul_prod_r[width-1] && 
                    !((a[width-1]^b[width-1]) && ~|mul_prod_r[width-2:0])) ||
                   |mul_prod_r[2*width-1:32];

	  ov_we = 1;
       end
       `OR1200_ALUOP_MULU : begin
	  // Overflow on unsigned multiply is simpler.
	  ovforw = |mul_prod_r[2*width-1:32];
	  ov_we = 1;
       end
 `endif //  `ifdef OR1200_MULT_IMPLEMENTED
 `ifdef OR1200_DIV_IMPLEMENTED
       `OR1200_ALUOP_DIVU,
       `OR1200_ALUOP_DIV: begin
	  // Overflow on divide by zero or -2^(width-1)/-1
	  ovforw = div_by_zero || (a==32'h8000_0000 && b==32'hffff_ffff);
	  ov_we = 1;
       end
 `endif
`endif //  `ifdef OR1200_IMPL_OV
       default: begin
	  ovforw = 0;
	  ov_we = 0;
       end
     endcase // casez (alu_op)
   

`ifdef OR1200_MULT_IMPLEMENTED
 `ifdef OR1200_MULT_SERIAL

   always @(`OR1200_RST_EVENT rst or posedge clk)
     if (rst == `OR1200_RST_VALUE) begin
	mul_prod_r <=  64'h0000_0000_0000_0000;
	serial_mul_cnt <= 6'd0;
	mul_free <= 1'b1;
	
     end
     else if (|serial_mul_cnt) begin
	serial_mul_cnt <= serial_mul_cnt - 6'd1;
	if (mul_prod_r[0])
	  mul_prod_r[(width*2)-1:width-1] <= mul_prod_r[(width*2)-1:width] + x;
	else
	  mul_prod_r[(width*2)-1:width-1] <= {1'b0,mul_prod_r[(width*2)-1:
							      width]};
	mul_prod_r[width-2:0] <= mul_prod_r[width-1:1];
	
     end
     else if (alu_op_mul && mul_free) begin
	mul_prod_r <= {32'd0, y};
	mul_free <= 0;
	serial_mul_cnt <= 6'b10_0000;
     end
     else if (!ex_freeze | mul_free) begin
	mul_free <= 1'b1;	
     end

   assign mul_stall = (|serial_mul_cnt) | (alu_op_mul & !ex_freeze_r);
   
 `else
   
   //
   // Instantiation of the multiplier
   //
  `ifdef OR1200_ASIC_MULTP2_32X32
   or1200_amultp2_32x32 or1200_amultp2_32x32(
					     .X(x),
					     .Y(y),
					     .RST(rst),
					     .CLK(clk),
					     .P(mul_prod)
					     );
  `else // OR1200_ASIC_MULTP2_32X32
   or1200_gmultp2_32x32 or1200_gmultp2_32x32(
					     .X(x),
					     .Y(y),
					     .RST(rst),
					     .CLK(clk),
					     .P(mul_prod)
					     );
  `endif // OR1200_ASIC_MULTP2_32X32   
   
   //
   // Registered output from the multiplier
   //
   always @(`OR1200_RST_EVENT rst or posedge clk)
     if (rst == `OR1200_RST_VALUE) begin
	mul_prod_r <=  64'h0000_0000_0000_0000;
     end
     else begin
	mul_prod_r <=  mul_prod[63:0];
     end

   //
   // Generate stall signal during multiplication
   //
   always @(`OR1200_RST_EVENT rst or posedge clk)
     if (rst == `OR1200_RST_VALUE)
       mul_stall_count <= 0;
     else if (!(|mul_stall_count))
       mul_stall_count <= {mul_stall_count[0], alu_op_mul & !ex_freeze_r};
     else 
       mul_stall_count <= {mul_stall_count[0],1'b0};
       
   assign mul_stall = (|mul_stall_count) | 
		      (!(|mul_stall_count) & alu_op_mul & !ex_freeze_r);
   
 `endif // !`ifdef OR1200_MULT_SERIAL   
   
`else // OR1200_MULT_IMPLEMENTED
   assign mul_prod = {2*width{1'b0}};
   assign mul_prod_r = {2*width{1'b0}};
   assign mul_stall = 0;   
`endif // OR1200_MULT_IMPLEMENTED

`ifdef OR1200_MAC_IMPLEMENTED
   
   //
   // Propagation of l.mac opcode, only register it for one cycle
   //
   always @(posedge clk or `OR1200_RST_EVENT rst)
     if (rst == `OR1200_RST_VALUE)
       mac_op_r1 <=  `OR1200_MACOP_WIDTH'b0;
     else
       mac_op_r1 <=  !ex_freeze_r ? mac_op : `OR1200_MACOP_WIDTH'b0;

   //
   // Propagation of l.mac opcode
   //
   always @(posedge clk or `OR1200_RST_EVENT rst)
     if (rst == `OR1200_RST_VALUE)
       mac_op_r2 <=  `OR1200_MACOP_WIDTH'b0;
     else
       mac_op_r2 <=  mac_op_r1;

   //
   // Propagation of l.mac opcode
   //
   always @(posedge clk or `OR1200_RST_EVENT rst)
     if (rst == `OR1200_RST_VALUE)
       mac_op_r3 <=  `OR1200_MACOP_WIDTH'b0;
     else
       mac_op_r3 <=  mac_op_r2;

   //
   // Implementation of MAC
   //
   always @(`OR1200_RST_EVENT rst or posedge clk)
     if (rst == `OR1200_RST_VALUE)
       mac_r <=  64'h0000_0000_0000_0000;
 `ifdef OR1200_MAC_SPR_WE
     else if (spr_maclo_we)
       mac_r[31:0] <=  spr_dat_i;
     else if (spr_machi_we)
       mac_r[63:32] <=  spr_dat_i;
 `endif
     else if (mac_op_r3 == `OR1200_MACOP_MAC)
       mac_r <=  mac_r + mul_prod_r;
     else if (mac_op_r3 == `OR1200_MACOP_MSB)
       mac_r <=  mac_r - mul_prod_r;
     else if (macrc_op && !ex_freeze)
       mac_r <=  64'h0000_0000_0000_0000;

   //
   // Stall CPU if l.macrc is in ID and MAC still has to process l.mac 
   // instructions in EX stage (e.g. inside multiplier)
   // This stall signal is also used by the divider.
   //
   always @(`OR1200_RST_EVENT rst or posedge clk)
     if (rst == `OR1200_RST_VALUE)
       mac_stall_r <=  1'b0;
     else
       mac_stall_r <=  (|mac_op | (|mac_op_r1) | (|mac_op_r2)) & 
		       (id_macrc_op | mac_stall_r);
   
`else // OR1200_MAC_IMPLEMENTED
   assign mac_stall_r = 1'b0;
   assign mac_r = {2*width{1'b0}};
   assign mac_op_r1 = `OR1200_MACOP_WIDTH'b0;
   assign mac_op_r2 = `OR1200_MACOP_WIDTH'b0;
   assign mac_op_r3 = `OR1200_MACOP_WIDTH'b0;
`endif // OR1200_MAC_IMPLEMENTED

`ifdef OR1200_DIV_IMPLEMENTED   
   
   //
   // Serial division
   //
 `ifdef OR1200_DIV_SERIAL
   assign div_tmp = div_quot_r[63:32] - y;   
   always @(`OR1200_RST_EVENT rst or posedge clk)
     if (rst == `OR1200_RST_VALUE) begin
	div_quot_r <=  64'h0000_0000_0000_0000;
	div_free <=  1'b1;
	div_cntr <=  6'b00_0000;
     end
     else if (div_by_zero) begin
	div_quot_r <=  64'h0000_0000_0000_0000;
	div_free <=  1'b1;
	div_cntr <=  6'b00_0000;
     end
     else if (|div_cntr) begin
	if (div_tmp[31])
	  div_quot_r <=  {div_quot_r[62:0], 1'b0};
	else
	  div_quot_r <=  {div_tmp[30:0], div_quot_r[31:0], 1'b1};
	div_cntr <=  div_cntr - 6'd1;
     end
     else if (alu_op_div && div_free) begin
	div_quot_r <=  {31'b0, x[31:0], 1'b0};
	div_cntr <=  6'b10_0000;
	div_free <=  1'b0;
     end
     else if (div_free | !ex_freeze) begin
	div_free <=  1'b1;
     end

   assign div_stall = (|div_cntr) | (!ex_freeze_r & alu_op_div);


 `else // !`ifdef OR1200_DIV_SERIAL

   // Full divider
   // TODO: Perhaps provide module that can be technology dependent.
   always @(`OR1200_RST_EVENT rst or posedge clk) begin     
      if (rst == `OR1200_RST_VALUE) begin
	 div_quot_r <=  32'd0;	   
	 div_quot_generic <= 32'd0;	   
      end
      else begin
	 if (alu_op_udiv & !(|y)) // unsigned divide by 0 - force to MAX
	   div_quot_generic[31:0] <= 32'hffff_ffff;	   
	 else if (alu_op_div)
	   div_quot_generic[31:0] <= x / y;
      end

      // Add any additional statges of pipelining as required here. Ensure
      // ends with div_quot_r.
      // Then add logic to ensure div_stall stays high for as long as the
      // division should take.      
      
      div_quot_r[31:0] <= div_quot_generic;

   end     
   
   assign div_stall = 0;
   
 `endif   

`else // !`ifdef OR1200_DIV_IMPLEMENTED

   assign div_stall = 0;

`endif // !`ifdef OR1200_DIV_IMPLEMENTED
   
   
   //   
   // Stall output
   //
   assign mult_mac_stall = mac_stall_r | div_stall | mul_stall;
   
endmodule


// END MULT_MAC

// BEGIN GMULTP2_32X32

//////////////////////////////////////////////////////////////////////
////                                                              ////
////  Generic 32x32 multiplier                                    ////
////                                                              ////
////  This file is part of the OpenRISC 1200 project              ////
////  http://www.opencores.org/project,or1k                       ////
////                                                              ////
////  Description                                                 ////
////  Generic 32x32 multiplier with pipeline stages.              ////
////                                                              ////
////  To Do:                                                      ////
////   - make it smaller and faster                               ////
////                                                              ////
////  Author(s):                                                  ////
////      - Damjan Lampret, lampret@opencores.org                 ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// CVS Revision History
//
// $Log: or1200_gmultp2_32x32.v,v $
// Revision 2.0  2010/06/30 11:00:00  ORSoC
// No update 
//

 

// 32x32 multiplier, no input/output registers
// Registers inside Wallace trees every 8 full adder levels,
// with first pipeline after level 4

`ifdef OR1200_GENERIC_MULTP2_32X32

`define OR1200_W 32
`define OR1200_WW 64

module or1200_gmultp2_32x32 ( X, Y, CLK, RST, P );

input   [`OR1200_W-1:0]  X;
input   [`OR1200_W-1:0]  Y;
input           CLK;
input           RST;
output  [`OR1200_WW-1:0]  P;

reg     [`OR1200_W-1:0]  X_saved;
reg     [`OR1200_W-1:0]  Y_saved;
reg     [`OR1200_WW-1:0]  p1;
integer 		  xi;
integer 		  yi;

// BEGIN EDIT : COMMENTING OUT THESE TWO ALWAYS STATEMENTS

//
// Conversion unsigned to signed
//
//always @(X_saved)
//	xi = X_saved;

//
// Conversion unsigned to signed
//
//always @(Y_saved)
//	yi = Y_saved;

// END EDIT : COMMENTING OUT THESE TWO ALWAYS STATEMENTS

//
// First multiply stage
//
always @(posedge CLK or `OR1200_RST_EVENT RST)
        if (RST == `OR1200_RST_VALUE) begin
           X_saved <= `OR1200_W'b0;
	   Y_saved <= `OR1200_W'b0;
	end
        else begin
           X_saved <= X;
	   Y_saved <= Y;
	end

//
// Second multiply stage
//
always @(posedge CLK or `OR1200_RST_EVENT RST)
        if (RST == `OR1200_RST_VALUE)
          p1 <= `OR1200_WW'b0;
        else
          p1 <=  xi * yi;

assign P = p1;

endmodule

`endif


// END GMULTP2_32X32

// BEGIN OPERANDMUXES

//////////////////////////////////////////////////////////////////////
////                                                              ////
////  OR1200's register file read operands mux                    ////
////                                                              ////
////  This file is part of the OpenRISC 1200 project              ////
////  http://www.opencores.org/project,or1k                       ////
////                                                              ////
////  Description                                                 ////
////  Mux for two register file read operands.                    ////
////                                                              ////
////  To Do:                                                      ////
////   - make it smaller and faster                               ////
////                                                              ////
////  Author(s):                                                  ////
////      - Damjan Lampret, lampret@opencores.org                 ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// $Log: or1200_operandmuxes.v,v $
// Revision 2.0  2010/06/30 11:00:00  ORSoC
// Minor update: 
// Bugs fixed. 

 

module or1200_operandmuxes(
	// Clock and reset
	clk, rst,

	// Internal i/f
	id_freeze, ex_freeze, rf_dataa, rf_datab, ex_forw, wb_forw,
	simm, sel_a, sel_b, operand_a, operand_b, muxed_a, muxed_b
);

parameter width = `OR1200_OPERAND_WIDTH;

//
// I/O
//
input				clk;
input				rst;
input				id_freeze;
input				ex_freeze;
input	[width-1:0]		rf_dataa;
input	[width-1:0]		rf_datab;
input	[width-1:0]		ex_forw;
input	[width-1:0]		wb_forw;
input	[width-1:0]		simm;
input	[`OR1200_SEL_WIDTH-1:0]	sel_a;
input	[`OR1200_SEL_WIDTH-1:0]	sel_b;
output	[width-1:0]		operand_a;
output	[width-1:0]		operand_b;
output	[width-1:0]		muxed_a;
output	[width-1:0]		muxed_b;

//
// Internal wires and regs
//
reg	[width-1:0]		operand_a;
reg	[width-1:0]		operand_b;
reg	[width-1:0]		muxed_a;
reg	[width-1:0]		muxed_b;
reg				saved_a;
reg				saved_b;

//
// Operand A register
//
always @(posedge clk or `OR1200_RST_EVENT rst) begin
	if (rst == `OR1200_RST_VALUE) begin
		operand_a <=  32'd0;
		saved_a <=  1'b0;
	end else if (!ex_freeze && id_freeze && !saved_a) begin
		operand_a <=  muxed_a;
		saved_a <=  1'b1;
	end else if (!ex_freeze && !saved_a) begin
		operand_a <=  muxed_a;
	end else if (!ex_freeze && !id_freeze)
		saved_a <=  1'b0;
end

//
// Operand B register
//
always @(posedge clk or `OR1200_RST_EVENT rst) begin
	if (rst == `OR1200_RST_VALUE) begin
		operand_b <=  32'd0;
		saved_b <=  1'b0;
	end else if (!ex_freeze && id_freeze && !saved_b) begin
		operand_b <=  muxed_b;
		saved_b <=  1'b1;
	end else if (!ex_freeze && !saved_b) begin
		operand_b <=  muxed_b;
	end else if (!ex_freeze && !id_freeze)
		saved_b <=  1'b0;
end

//
// Forwarding logic for operand A register
//
always @(ex_forw or wb_forw or rf_dataa or sel_a) begin
`ifdef OR1200_ADDITIONAL_SYNOPSYS_DIRECTIVES
	casez (sel_a)	// synopsys parallel_case infer_mux
`else
	casez (sel_a)	// synopsys parallel_case
`endif
		`OR1200_SEL_EX_FORW:
			muxed_a = ex_forw;
		`OR1200_SEL_WB_FORW:
			muxed_a = wb_forw;
		default:
			muxed_a = rf_dataa;
	endcase
end

//
// Forwarding logic for operand B register
//
always @(simm or ex_forw or wb_forw or rf_datab or sel_b) begin
`ifdef OR1200_ADDITIONAL_SYNOPSYS_DIRECTIVES
	casez (sel_b)	// synopsys parallel_case infer_mux
`else
	casez (sel_b)	// synopsys parallel_case
`endif
		`OR1200_SEL_IMM:
			muxed_b = simm;
		`OR1200_SEL_EX_FORW:
			muxed_b = ex_forw;
		`OR1200_SEL_WB_FORW:
			muxed_b = wb_forw;
		default:
			muxed_b = rf_datab;
	endcase
end

endmodule

// END OPERANDMUXES

// BEGIN RF

//////////////////////////////////////////////////////////////////////
////                                                              ////
////  OR1200's register file inside CPU                           ////
////                                                              ////
////  This file is part of the OpenRISC 1200 project              ////
////  http://www.opencores.org/project,or1k                       ////
////                                                              ////
////  Description                                                 ////
////  Instantiation of register file memories                     ////
////                                                              ////
////  To Do:                                                      ////
////   - make it smaller and faster                               ////
////                                                              ////
////  Author(s):                                                  ////
////      - Damjan Lampret, lampret@opencores.org                 ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// $Log: or1200_rf.v,v $
// Revision 2.0  2010/06/30 11:00:00  ORSoC
// Minor update: 
// Bugs fixed, coding style changed. 
//

 

module or1200_rf(
	// Clock and reset
	clk, rst,

	// Write i/f
	cy_we_i, cy_we_o, supv, wb_freeze, addrw, dataw, we, flushpipe,

	// Read i/f
	id_freeze, addra, addrb, dataa, datab, rda, rdb,

	// Debug
	spr_cs, spr_write, spr_addr, spr_dat_i, spr_dat_o, du_read
);

parameter dw = `OR1200_OPERAND_WIDTH;
parameter aw = `OR1200_REGFILE_ADDR_WIDTH;

//
// I/O
//

//
// Clock and reset
//
input				clk;
input				rst;

//
// Write i/f
//
input				cy_we_i;
output				cy_we_o;
input				supv;
input				wb_freeze;
input	[aw-1:0]		addrw;
input	[31:0]		dataw;
input				we;
input				flushpipe;

//
// Read i/f
//
input				id_freeze;
input	[aw-1:0]		addra;
input	[aw-1:0]		addrb;
output	[31:0]		dataa;
output	[31:0]		datab;
input				rda;
input				rdb;

//
// SPR access for debugging purposes
//
input				spr_cs;
input				spr_write;
input	[31:0]			spr_addr;
input	[31:0]			spr_dat_i;
output	[31:0]			spr_dat_o;
input    			du_read;
   
//
// Internal wires and regs
//
wire	[31:0]		from_rfa;
wire	[31:0]		from_rfb;
wire	[aw-1:0]		rf_addra;
wire	[aw-1:0]		rf_addrw;
wire	[31:0]		rf_dataw;
wire				rf_we;
wire				spr_valid;
wire				rf_ena;
wire				rf_enb;
reg				rf_we_allow;

   // Logic to restore output on RFA after debug unit has read out via SPR if.
   // Problem was that the incorrect output would be on RFA after debug unit
   // had read out  - this is bad if that output is relied upon by execute
   // stage for next instruction. We simply save the last address for rf A and
   // and re-read it whenever the SPR select goes low, so we must remember
   // the last address and generate a signal for falling edge of SPR cs.
   // -- Julius
   
   // Detect falling edge of SPR select 
   reg 				spr_du_cs;
   wire 			spr_cs_fe;
   // Track RF A's address each time it's enabled
   reg	[aw-1:0]		addra_last;


   always @(posedge clk)
     if (rf_ena & !(spr_cs_fe | (du_read & spr_cs)))
       addra_last <= addra;

   always @(posedge clk)
     spr_du_cs <= spr_cs & du_read;

   assign spr_cs_fe = spr_du_cs & !(spr_cs & du_read);

   
//
// SPR access is valid when spr_cs is asserted and
// SPR address matches GPR addresses
//
assign spr_valid = spr_cs & (spr_addr[10:5] == `OR1200_SPR_RF);

//
// SPR data output is always from RF A
//
assign spr_dat_o = from_rfa;

//
// Operand A comes from RF or from saved A register
//
assign dataa = from_rfa;

//
// Operand B comes from RF or from saved B register
//
assign datab = from_rfb;

//
// RF A read address is either from SPRS or normal from CPU control
//
assign rf_addra = (spr_valid & !spr_write) ? spr_addr[4:0] : 
		  spr_cs_fe ? addra_last : addra;

//
// RF write address is either from SPRS or normal from CPU control
//
assign rf_addrw = (spr_valid & spr_write) ? spr_addr[4:0] : addrw;

//
// RF write data is either from SPRS or normal from CPU datapath
//
assign rf_dataw = (spr_valid & spr_write) ? spr_dat_i : dataw;

//
// RF write enable is either from SPRS or normal from CPU control
//
always @(`OR1200_RST_EVENT rst or posedge clk)
	if (rst == `OR1200_RST_VALUE)
		rf_we_allow <=  1'b1;
	else if (~wb_freeze)
		rf_we_allow <=  ~flushpipe;

assign rf_we = ((spr_valid & spr_write) | (we & ~wb_freeze)) & rf_we_allow;

assign cy_we_o = cy_we_i && ~wb_freeze && rf_we_allow;
   
//
// CS RF A asserted when instruction reads operand A and ID stage
// is not stalled
//
assign rf_ena = (rda & ~id_freeze) | (spr_valid & !spr_write) | spr_cs_fe;

//
// CS RF B asserted when instruction reads operand B and ID stage
// is not stalled
//
assign rf_enb = rdb & ~id_freeze;

`ifdef OR1200_RFRAM_TWOPORT

//
// Instantiation of register file two-port RAM A
//
or1200_tpram_32x32 rf_a(
	// Port A
	.clk_a(clk),
	.rst_a(rst),
	.ce_a(rf_ena),
	.we_a(1'b0),
	.oe_a(1'b1),
	.addr_a(rf_addra),
	.di_a(32'h0000_0000),
	.do_a(from_rfa),

	// Port B
	.clk_b(clk),
	.rst_b(rst),
	.ce_b(rf_we),
	.we_b(rf_we),
	.oe_b(1'b0),
	.addr_b(rf_addrw),
	.di_b(rf_dataw),
	.do_b()
);

//
// Instantiation of register file two-port RAM B
//
or1200_tpram_32x32 rf_b(
	// Port A
	.clk_a(clk),
	.rst_a(rst),
	.ce_a(rf_enb),
	.we_a(1'b0),
	.oe_a(1'b1),
	.addr_a(addrb),
	.di_a(32'h0000_0000),
	.do_a(from_rfb),

	// Port B
	.clk_b(clk),
	.rst_b(rst),
	.ce_b(rf_we),
	.we_b(rf_we),
	.oe_b(1'b0),
	.addr_b(rf_addrw),
	.di_b(rf_dataw),
	.do_b()
);

`else

`ifdef OR1200_RFRAM_DUALPORT

//
// Instantiation of register file two-port RAM A
//
   or1200_dpram #
     (
      .aw(5),
      .dw(32)
      )
   rf_a
     (
      // Port A
      .clk_a(clk),
      .ce_a(rf_ena),
      .addr_a(rf_addra),
      .do_a(from_rfa),
      
      // Port B
      .clk_b(clk),
      .ce_b(rf_we),
      .we_b(rf_we),
      .addr_b(rf_addrw),
      .di_b(rf_dataw)
      );

   //
   // Instantiation of register file two-port RAM B
   //
   or1200_dpram #
     (
      .aw(5),
      .dw(32)
      )
   rf_b
     (
      // Port A
      .clk_a(clk),
      .ce_a(rf_enb),
      .addr_a(addrb),
      .do_a(from_rfb),
      
      // Port B
      .clk_b(clk),
      .ce_b(rf_we),
      .we_b(rf_we),
      .addr_b(rf_addrw),
      .di_b(rf_dataw)
      );
   
`else

`ifdef OR1200_RFRAM_GENERIC

//
// Instantiation of generic (flip-flop based) register file
//
or1200_rfram_generic rf_a(
	// Clock and reset
	.clk(clk),
	.rst(rst),

	// Port A
	.ce_a(rf_ena),
	.addr_a(rf_addra),
	.do_a(from_rfa),

	// Port B
	.ce_b(rf_enb),
	.addr_b(addrb),
	.do_b(from_rfb),

	// Port W
	.ce_w(rf_we),
	.we_w(rf_we),
	.addr_w(rf_addrw),
	.di_w(rf_dataw)
);

`else

//
// RFRAM type not specified
//
initial begin
	$display("Define RFRAM type.");
	$finish;
end

`endif
`endif
`endif

// ADDED:  Monster assume from stripped.h

assume property (((icpu_dat_i & 4227858432) >> 26 == 0) | 
((icpu_dat_i & 4227858432) >> 26 == 1) | 
((icpu_dat_i & 4227858432) >> 26 == 3) |
((icpu_dat_i & 4227858432) >> 26 == 4) | 
(((icpu_dat_i & 4227858432) >> 26 == 5) & 
((icpu_dat_i & 50331648) >> 24 == 1)) | 
(((icpu_dat_i & 4227858432) >> 26 == 6) & 
((icpu_dat_i & 65536) >> 16 == 0)) | 
(((icpu_dat_i & 4227858432) >> 26 == 6) & 
((icpu_dat_i & 65536) >> 16 == 1)) | 
(((icpu_dat_i & 4227858432) >> 26 == 8) & 
((icpu_dat_i & 67043328) >> 16 == 0)) |
(((icpu_dat_i & 4227858432) >> 26 == 8) & 
((icpu_dat_i & 67043328) >> 16 == 256)) | 
(((icpu_dat_i & 4227858432) >> 26 == 8) & 
((icpu_dat_i & 67043328) >> 16 == 512)) | 
(((icpu_dat_i & 4227858432) >> 26 == 8) & 
((icpu_dat_i & 67043328) >> 16 == 640)) |
(((icpu_dat_i & 4227858432) >> 26 == 8) & 
((icpu_dat_i & 67043328) >> 16 == 768)) | 
((icpu_dat_i & 4227858432) >> 26 == 9) | 
((icpu_dat_i & 4227858432) >> 26 == 17) | 
((icpu_dat_i & 4227858432) >> 26 == 18) | 
((icpu_dat_i & 4227858432) >> 26 == 19) | 
((icpu_dat_i & 4227858432) >> 26 == 27) | 
((icpu_dat_i & 4227858432) >> 26 == 32) | 
((icpu_dat_i & 4227858432) >> 26 == 33) | 
((icpu_dat_i & 4227858432) >> 26 == 34) | 
((icpu_dat_i & 4227858432) >> 26 == 35) | 
((icpu_dat_i & 4227858432) >> 26 == 36) | 
((icpu_dat_i & 4227858432) >> 26 == 37) | 
((icpu_dat_i & 4227858432) >> 26 == 38) | 
((icpu_dat_i & 4227858432) >> 26 == 39) |  
((icpu_dat_i & 4227858432) >> 26 == 40) |  
((icpu_dat_i & 4227858432) >> 26 == 41) | 
((icpu_dat_i & 4227858432) >> 26 == 42) | 
((icpu_dat_i & 4227858432) >> 26 == 43) | 
((icpu_dat_i & 4227858432) >> 26 == 44) | 
((icpu_dat_i & 4227858432) >> 26 == 45) | 
(((icpu_dat_i & 4227858432) >> 26 == 46) & 
((icpu_dat_i & 192) >> 6 == 0)) |
(((icpu_dat_i & 4227858432) >> 26 == 46) & 
((icpu_dat_i & 192) >> 6 == 1)) | 
(((icpu_dat_i & 4227858432) >> 26 == 46) & 
((icpu_dat_i & 192) >> 6 == 2)) | 
(((icpu_dat_i & 4227858432) >> 26 == 46) & 
((icpu_dat_i & 192) >> 6 == 3)) | 
(((icpu_dat_i & 4227858432) >> 26 == 47) & 
((icpu_dat_i & 65011712) >> 21 == 0)) |
(((icpu_dat_i & 4227858432) >> 26 == 47) & 
((icpu_dat_i & 65011712) >> 21 == 1)) | 
(((icpu_dat_i & 4227858432) >> 26 == 47) & 
((icpu_dat_i & 65011712) >> 21 == 2)) | 
(((icpu_dat_i & 4227858432) >> 26 == 47) & 
((icpu_dat_i & 65011712) >> 21 == 3)) | 
(((icpu_dat_i & 4227858432) >> 26 == 47) & 
((icpu_dat_i & 65011712) >> 21 == 4)) | 
(((icpu_dat_i & 4227858432) >> 26 == 47) & 
((icpu_dat_i & 65011712) >> 21 == 5)) | 
(((icpu_dat_i & 4227858432) >> 26 == 47) & 
((icpu_dat_i & 65011712) >> 21 == 10)) | 
(((icpu_dat_i & 4227858432) >> 26 == 47) & 
((icpu_dat_i & 65011712) >> 21 == 11)) | 
(((icpu_dat_i & 4227858432) >> 26 == 47) & 
((icpu_dat_i & 65011712) >> 21 == 12)) | 
(((icpu_dat_i & 4227858432) >> 26 == 47) & 
((icpu_dat_i & 65011712) >> 21 == 13)) | 
((icpu_dat_i & 4227858432) >> 26 == 48) | 
(((icpu_dat_i & 4227858432) >> 26 == 49) & 
((icpu_dat_i & 3) >> 0 == 1)) | 
(((icpu_dat_i & 4227858432) >> 26 == 49) & 
((icpu_dat_i & 3) >> 0 == 2)) | 
((icpu_dat_i & 4227858432) >> 26 == 51) | 
((icpu_dat_i & 4227858432) >> 26 == 52) | 
((icpu_dat_i & 4227858432) >> 26 == 53) | 
((icpu_dat_i & 4227858432) >> 26 == 54) | 
((icpu_dat_i & 4227858432) >> 26 == 55) | 
(((icpu_dat_i & 4227858432) >> 26 == 56) & 
((icpu_dat_i & 768) >> 8 == 0) & 
((icpu_dat_i & 15) >> 0 == 0)) | 
(((icpu_dat_i & 4227858432) >> 26 == 56) & 
((icpu_dat_i & 768) >> 8 == 0) & 
((icpu_dat_i & 15) >> 0 == 1)) | 
(((icpu_dat_i & 4227858432) >> 26 == 56) & 
((icpu_dat_i & 768) >> 8 == 0) & 
((icpu_dat_i & 15) >> 0 == 2)) | 
(((icpu_dat_i & 4227858432) >> 26 == 56) & 
((icpu_dat_i & 768) >> 8 == 0) & 
((icpu_dat_i & 15) >> 0 == 3)) | 
(((icpu_dat_i & 4227858432) >> 26 == 56) & 
((icpu_dat_i & 768) >> 8 == 0) & 
((icpu_dat_i & 15) >> 0 == 4)) | 
(((icpu_dat_i & 4227858432) >> 26 == 56) & 
((icpu_dat_i & 768) >> 8 == 0) & 
((icpu_dat_i & 15) >> 0 == 5)) | 
(((icpu_dat_i & 4227858432) >> 26 == 56) & 
((icpu_dat_i & 768) >> 8 == 3) & 
((icpu_dat_i & 15) >> 0 == 6)) | 
(((icpu_dat_i & 4227858432) >> 26 == 56) & 
((icpu_dat_i & 768) >> 8 == 0) & 
((icpu_dat_i & 192) >> 6 == 0) & 
((icpu_dat_i & 15) >> 0 == 8)) | 
(((icpu_dat_i & 4227858432) >> 26 == 56) & 
((icpu_dat_i & 768) >> 8 == 0) & 
((icpu_dat_i & 192) >> 6 == 1) & 
((icpu_dat_i & 15) >> 0 == 8)) | 
(((icpu_dat_i & 4227858432) >> 26 == 56) & 
((icpu_dat_i & 768) >> 8 == 0) & 
((icpu_dat_i & 192) >> 6 == 2) & 
((icpu_dat_i & 15) >> 0 == 8)) | 
(((icpu_dat_i & 4227858432) >> 26 == 56) & 
((icpu_dat_i & 768) >> 8 == 0) & 
((icpu_dat_i & 192) >> 6 == 3) & 
((icpu_dat_i & 15) >> 0 == 8)) | 
(((icpu_dat_i & 4227858432) >> 26 == 56) & 
((icpu_dat_i & 768) >> 8 == 3) & 
((icpu_dat_i & 15) >> 0 == 9)) | 
(((icpu_dat_i & 4227858432) >> 26 == 56) & 
((icpu_dat_i & 768) >> 8 == 3) & 
((icpu_dat_i & 15) >> 0 == 10)) | 
(((icpu_dat_i & 4227858432) >> 26 == 56) & 
((icpu_dat_i & 768) >> 8 == 3) & 
((icpu_dat_i & 15) >> 0 == 11)) | 
(((icpu_dat_i & 4227858432) >> 26 == 56) & 
((icpu_dat_i & 768) >> 8 == 0) & 
((icpu_dat_i & 192) >> 6 == 1) & 
((icpu_dat_i & 15) >> 0 == 12)) | 
(((icpu_dat_i & 4227858432) >> 26 == 56) & 
((icpu_dat_i & 768) >> 8 == 0) & 
((icpu_dat_i & 192) >> 6 == 0) & 
((icpu_dat_i & 15) >> 0 == 12)) | 
(((icpu_dat_i & 4227858432) >> 26 == 56) & 
((icpu_dat_i & 768) >> 8 == 0) & 
((icpu_dat_i & 192) >> 6 == 0) & 
((icpu_dat_i & 15) >> 0 == 13)) | 
(((icpu_dat_i & 4227858432) >> 26 == 56) & 
((icpu_dat_i & 768) >> 8 == 0) & 
((icpu_dat_i & 192) >> 6 == 3) & 
((icpu_dat_i & 15) >> 0 == 12)) | 
(((icpu_dat_i & 4227858432) >> 26 == 56) & 
((icpu_dat_i & 768) >> 8 == 0) & 
((icpu_dat_i & 192) >> 6 == 2) & 
((icpu_dat_i & 15) >> 0 == 12)) | 
(((icpu_dat_i & 4227858432) >> 26 == 56) & 
((icpu_dat_i & 768) >> 8 == 0) & 
((icpu_dat_i & 192) >> 6 == 1) & 
((icpu_dat_i & 15) >> 0 == 13)) | 
(((icpu_dat_i & 4227858432) >> 26 == 56) & 
((icpu_dat_i & 768) >> 8 == 0) & 
((icpu_dat_i & 15) >> 0 == 14)) | 
(((icpu_dat_i & 4227858432) >> 26 == 56) & 
((icpu_dat_i & 768) >> 8 == 0) & 
((icpu_dat_i & 15) >> 0 == 15)) | 
(((icpu_dat_i & 4227858432) >> 26 == 56) & 
((icpu_dat_i & 768) >> 8 == 1) & 
((icpu_dat_i & 15) >> 0 == 15)) | 
(((icpu_dat_i & 4227858432) >> 26 == 57) & 
((icpu_dat_i & 65011712) >> 21 == 0)) | 
(((icpu_dat_i & 4227858432) >> 26 == 57) & 
((icpu_dat_i & 65011712) >> 21 == 1)) | 
(((icpu_dat_i & 4227858432) >> 26 == 57) & 
((icpu_dat_i & 65011712) >> 21 == 2)) | 
(((icpu_dat_i & 4227858432) >> 26 == 57) & 
((icpu_dat_i & 65011712) >> 21 == 3)) | 
(((icpu_dat_i & 4227858432) >> 26 == 57) & 
((icpu_dat_i & 65011712) >> 21 == 4)) | 
(((icpu_dat_i & 4227858432) >> 26 == 57) & 
((icpu_dat_i & 65011712) >> 21 == 5)) | 
(((icpu_dat_i & 4227858432) >> 26 == 57) & 
((icpu_dat_i & 65011712) >> 21 == 10)) | 
(((icpu_dat_i & 4227858432) >> 26 == 57) & 
((icpu_dat_i & 65011712) >> 21 == 11)) |
(((icpu_dat_i & 4227858432) >> 26 == 57) & 
((icpu_dat_i & 65011712) >> 21 == 12)) | 
(((icpu_dat_i & 4227858432) >> 26 == 57) & 
((icpu_dat_i & 65011712) >> 21 == 13)));

// ADDED:  Assert property
// From Rui:  if (or1200_rf.we == 1 && or1200_rf.addrw == 0)   or1200_rf.dataw == 0
// The variables actually appear to be named rf_we, rf_addrw, rf_dataw
// Recall that p→q is equivalent to ¬p∨q
assert property (~(rf_we == 1 && rf_addrw == 0) || (rf_dataw == 0));

endmodule

// END RF

// BEGIN DPRAM

//////////////////////////////////////////////////////////////////////
////                                                              ////
////  Generic Double-Port Synchronous RAM                         ////
////                                                              ////
////  This file is part of memory library available from          ////
////  http://www.opencores.org/cvsweb.shtml/generic_memories/     ////
////                                                              ////
////  Description                                                 ////
////  This block is a wrapper with common double-port             ////
////  synchronous memory interface for different                  ////
////  types of ASIC and FPGA RAMs. Beside universal memory        ////
////  interface it also provides behavioral model of generic      ////
////  double-port synchronous RAM.                                ////
////  It should be used in all OPENCORES designs that want to be  ////
////  portable accross different target technologies and          ////
////  independent of target memory.                               ////
////                                                              ////
////  Author(s):                                                  ////
////      - Michael Unneback, unneback@opencores.org              ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// CVS Revision History
//
// $Log: or1200_dpram_32x32.v,v $
// Revision 2.0  2010/06/30 11:00:00  ORSoC
// New 
//

 

module or1200_dpram
  (
   // Generic synchronous double-port RAM interface
   clk_a, ce_a, addr_a, do_a,
   clk_b, ce_b, we_b, addr_b, di_b
   );
   
   //
   // Default address and data buses width
   //
   parameter aw = 5;
   parameter dw = 32;
   
   //
   // Generic synchronous double-port RAM interface
   //
   input			clk_a;	// Clock
   input			ce_a;	// Chip enable input
   input [aw-1:0] 		addr_a;	// address bus inputs
   output [31:0] 		do_a;	// output data bus
   input			clk_b;	// Clock
   input			ce_b;	// Chip enable input
   input			we_b;	// Write enable input
   input [aw-1:0] 		addr_b;	// address bus inputs
   input [31:0] 		di_b;	// input data bus
   
   //
   // Internal wires and registers
   //
   
   //
   // Generic double-port synchronous RAM model
   //
   
   //
   // Generic RAM's registers and wires
   //
   reg [31:0] 		mem [(1<<aw)-1:0] /*synthesis syn_ramstyle = "no_rw_check"*/;	// RAM content
   reg [aw-1:0] 		addr_a_reg;		// RAM address registered


   // Function to access GPRs (for use by Verilator). No need to hide this one
   // from the simulator, since it has an input (as required by IEEE 1364-2001).
   function [31:0] get_gpr;
      // verilator public
      input [aw-1:0] 		gpr_no;

      get_gpr = mem[gpr_no];
      
   endfunction // get_gpr

   function [31:0] set_gpr;
      // verilator public
      input [aw-1:0] 		gpr_no;
      input [31:0] 		value;
      begin
	 mem[gpr_no] = value;
	 set_gpr = 0;
      end
   endfunction // get_gpr
   
   //
   // Data output drivers
   //
   //assign do_a = (oe_a) ? mem[addr_a_reg] : {dw{1'b0}};
   assign do_a = mem[addr_a_reg];
   
   
   //
   // RAM read
   //
   always @(posedge clk_a)
     if (ce_a)
       addr_a_reg <=  addr_a;
   
   //
   // RAM write
   //
   always @(posedge clk_b)
     if (ce_b & we_b)
       mem[addr_b] <=  di_b;
   
endmodule // or1200_dpram

// END DPRAM

// BEGIN SPRS

//////////////////////////////////////////////////////////////////////
////                                                              ////
////  OR1200's interface to SPRs                                  ////
////                                                              ////
////  This file is part of the OpenRISC 1200 project              ////
////  http://www.opencores.org/project,or1k                       ////
////                                                              ////
////  Description                                                 ////
////  Decoding of SPR addresses and access to SPRs                ////
////                                                              ////
////  To Do:                                                      ////
////   - make it smaller and faster                               ////
////                                                              ////
////  Author(s):                                                  ////
////      - Damjan Lampret, lampret@opencores.org                 ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// $Log: or1200_sprs.v,v $
// Revision 2.0  2010/06/30 11:00:00  ORSoC
// Major update: 
// Structure reordered and bugs fixed. 

 

module or1200_sprs(
		   // Clk & Rst
		   clk, rst,

		   // Internal CPU interface
		   flagforw, flag_we, flag, cyforw, cy_we, carry,
		   ovforw, ov_we, dsx,
		   addrbase, addrofs, dat_i, branch_op, ex_spr_read, 
		   ex_spr_write, 
		   epcr, eear, esr, except_started,
		   to_wbmux, epcr_we, eear_we, esr_we, pc_we, sr_we, to_sr, sr,
		   spr_dat_cfgr, spr_dat_rf, spr_dat_npc, spr_dat_ppc, 
		   spr_dat_mac,
		   
		   boot_adr_sel_i,

		   // Floating point SPR input
		   fpcsr, fpcsr_we, spr_dat_fpu,

		   // From/to other RISC units
		   spr_dat_pic, spr_dat_tt, spr_dat_pm,
		   spr_dat_dmmu, spr_dat_immu, spr_dat_du,
		   spr_addr, spr_dat_o, spr_cs, spr_we,

		   du_addr, du_dat_du, du_read,
		   du_write, du_dat_cpu

		   );

   parameter width = `OR1200_OPERAND_WIDTH;

   //
   // I/O Ports
   //

   //
   // Internal CPU interface
   //
   input				clk; 		// Clock
   input 				rst;		// Reset
   input 				flagforw;	// From ALU
   input 				flag_we;	// From ALU
   output 				flag;		// SR[F]
   input 				cyforw;		// From ALU
   input 				cy_we;		// From ALU
   output 				carry;		// SR[CY]
   input 				ovforw;		// From ALU
   input 				ov_we;		// From ALU
   input                                dsx;            // From except
   input [width-1:0] 			addrbase;	// SPR base address
   input [15:0] 			addrofs;	// SPR offset
   input [width-1:0] 			dat_i;		// SPR write data
   input 				ex_spr_read;	// l.mfspr in EX
   input 				ex_spr_write;	// l.mtspr in EX
   input [`OR1200_BRANCHOP_WIDTH-1:0] 	branch_op;	// Branch operation
   input [width-1:0] 			epcr /* verilator public */;// EPCR0
   input [width-1:0] 			eear /* verilator public */;// EEAR0
   input [`OR1200_SR_WIDTH-1:0] 	esr /* verilator public */; // ESR0
   input 				except_started; // Exception was started
   output [width-1:0] 			to_wbmux;	// For l.mfspr
   output				epcr_we;	// EPCR0 write enable
   output				eear_we;	// EEAR0 write enable
   output				esr_we;		// ESR0 write enable
   output				pc_we;		// PC write enable
   output 				sr_we;		// Write enable SR
   output [`OR1200_SR_WIDTH-1:0] 	to_sr;		// Data to SR
   output [`OR1200_SR_WIDTH-1:0] 	sr /* verilator public */;// SR
   input [31:0] 			spr_dat_cfgr;	// Data from CFGR
   input [31:0] 			spr_dat_rf;	// Data from RF
   input [31:0] 			spr_dat_npc;	// Data from NPC
   input [31:0] 			spr_dat_ppc;	// Data from PPC   
   input [31:0] 			spr_dat_mac;	// Data from MAC
   input				boot_adr_sel_i;

   input [`OR1200_FPCSR_WIDTH-1:0] 	fpcsr;	// FPCSR
   output 				fpcsr_we;	// Write enable FPCSR   
   input [31:0] 			spr_dat_fpu;    // Data from FPU
   
   //
   // To/from other RISC units
   //
   input [31:0] 			spr_dat_pic;	// Data from PIC
   input [31:0] 			spr_dat_tt;	// Data from TT
   input [31:0] 			spr_dat_pm;	// Data from PM
   input [31:0] 			spr_dat_dmmu;	// Data from DMMU
   input [31:0] 			spr_dat_immu;	// Data from IMMU
   input [31:0] 			spr_dat_du;	// Data from DU
   output [31:0] 			spr_addr;	// SPR Address
   output [31:0] 			spr_dat_o;	// Data to unit
   output [31:0] 			spr_cs;		// Unit select
   output				spr_we;		// SPR write enable

   //
   // To/from Debug Unit
   //
   input [width-1:0] 			du_addr;	// Address
   input [width-1:0] 			du_dat_du;	// Data from DU to SPRS
   input				du_read;	// Read qualifier
   input				du_write;	// Write qualifier
   output [width-1:0] 			du_dat_cpu;	// Data from SPRS to DU

   //
   // Internal regs & wires
   //
   reg [`OR1200_SR_WIDTH-1:0] 		sr_reg;		// SR
   reg 					sr_reg_bit_eph;	// SR_EPH bit
   reg 					sr_reg_bit_eph_select;// SR_EPH select
   wire 				sr_reg_bit_eph_muxed;// SR_EPH muxed bit
   reg [`OR1200_SR_WIDTH-1:0] 		sr;			// SR
   reg [width-1:0] 			to_wbmux;	// For l.mfspr
   wire 				cfgr_sel;	// Select for cfg regs
   wire 				rf_sel;		// Select for RF
   wire 				npc_sel;	// Select for NPC
   wire 				ppc_sel;	// Select for PPC
   wire 				sr_sel;		// Select for SR	
   wire 				epcr_sel;	// Select for EPCR0
   wire 				eear_sel;	// Select for EEAR0
   wire 				esr_sel;	// Select for ESR0
   wire 				fpcsr_sel;	// Select for FPCSR   
   wire [31:0] 				sys_data;// Read data from system SPRs
   wire 				du_access;// Debug unit access
   reg [31:0] 				unqualified_cs;	// Unqualified selects
   wire 				ex_spr_write; // jb
   
   //
   // Decide if it is debug unit access
   //
   assign du_access = du_read | du_write;

   //
   // Generate SPR address from base address and offset
   // OR from debug unit address
   //
   assign spr_addr = du_access ? du_addr : (addrbase | {16'h0000, addrofs});

   //
   // SPR is written by debug unit or by l.mtspr
   //
   assign spr_dat_o = du_write ? du_dat_du : dat_i;

   //
   // debug unit data input:
   //  - read of SPRS by debug unit
   //  - write into debug unit SPRs by debug unit itself
   //  - write into debug unit SPRs by l.mtspr
   //
   assign du_dat_cpu = du_read ? to_wbmux : du_write ? du_dat_du : dat_i;

   //
   // Write into SPRs when DU or l.mtspr
   //
   assign spr_we = du_write | ( ex_spr_write & !du_access );


   //
   // Qualify chip selects
   //
   assign spr_cs = unqualified_cs & {32{du_read | du_write | ex_spr_read | 
					(ex_spr_write & sr[`OR1200_SR_SM])}};

   //
   // Decoding of groups
   //
   always @(spr_addr)
     case (spr_addr[`OR1200_SPR_GROUP_BITS])	// synopsys parallel_case
       `OR1200_SPR_GROUP_WIDTH'd00: unqualified_cs 
	 = 32'b00000000_00000000_00000000_00000001;
       `OR1200_SPR_GROUP_WIDTH'd01: unqualified_cs 
	 = 32'b00000000_00000000_00000000_00000010;
       `OR1200_SPR_GROUP_WIDTH'd02: unqualified_cs 
	 = 32'b00000000_00000000_00000000_00000100;
       `OR1200_SPR_GROUP_WIDTH'd03: unqualified_cs 
	 = 32'b00000000_00000000_00000000_00001000;
       `OR1200_SPR_GROUP_WIDTH'd04: unqualified_cs 
	 = 32'b00000000_00000000_00000000_00010000;
       `OR1200_SPR_GROUP_WIDTH'd05: unqualified_cs 
	 = 32'b00000000_00000000_00000000_00100000;
       `OR1200_SPR_GROUP_WIDTH'd06: unqualified_cs 
	 = 32'b00000000_00000000_00000000_01000000;
       `OR1200_SPR_GROUP_WIDTH'd07: unqualified_cs 
	 = 32'b00000000_00000000_00000000_10000000;
       `OR1200_SPR_GROUP_WIDTH'd08: unqualified_cs 
	 = 32'b00000000_00000000_00000001_00000000;
       `OR1200_SPR_GROUP_WIDTH'd09: unqualified_cs 
	 = 32'b00000000_00000000_00000010_00000000;
       `OR1200_SPR_GROUP_WIDTH'd10: unqualified_cs 
	 = 32'b00000000_00000000_00000100_00000000;
       `OR1200_SPR_GROUP_WIDTH'd11: unqualified_cs 
	 = 32'b00000000_00000000_00001000_00000000;
       `OR1200_SPR_GROUP_WIDTH'd12: unqualified_cs 
	 = 32'b00000000_00000000_00010000_00000000;
       `OR1200_SPR_GROUP_WIDTH'd13: unqualified_cs 
	 = 32'b00000000_00000000_00100000_00000000;
       `OR1200_SPR_GROUP_WIDTH'd14: unqualified_cs 
	 = 32'b00000000_00000000_01000000_00000000;
       `OR1200_SPR_GROUP_WIDTH'd15: unqualified_cs 
	 = 32'b00000000_00000000_10000000_00000000;
       `OR1200_SPR_GROUP_WIDTH'd16: unqualified_cs 
	 = 32'b00000000_00000001_00000000_00000000;
       `OR1200_SPR_GROUP_WIDTH'd17: unqualified_cs 
	 = 32'b00000000_00000010_00000000_00000000;
       `OR1200_SPR_GROUP_WIDTH'd18: unqualified_cs 
	 = 32'b00000000_00000100_00000000_00000000;
       `OR1200_SPR_GROUP_WIDTH'd19: unqualified_cs 
	 = 32'b00000000_00001000_00000000_00000000;
       `OR1200_SPR_GROUP_WIDTH'd20: unqualified_cs 
	 = 32'b00000000_00010000_00000000_00000000;
       `OR1200_SPR_GROUP_WIDTH'd21: unqualified_cs 
	 = 32'b00000000_00100000_00000000_00000000;
       `OR1200_SPR_GROUP_WIDTH'd22: unqualified_cs 
	 = 32'b00000000_01000000_00000000_00000000;
       `OR1200_SPR_GROUP_WIDTH'd23: unqualified_cs 
	 = 32'b00000000_10000000_00000000_00000000;
       `OR1200_SPR_GROUP_WIDTH'd24: unqualified_cs 
	 = 32'b00000001_00000000_00000000_00000000;
       `OR1200_SPR_GROUP_WIDTH'd25: unqualified_cs 
	 = 32'b00000010_00000000_00000000_00000000;
       `OR1200_SPR_GROUP_WIDTH'd26: unqualified_cs 
	 = 32'b00000100_00000000_00000000_00000000;
       `OR1200_SPR_GROUP_WIDTH'd27: unqualified_cs 
	 = 32'b00001000_00000000_00000000_00000000;
       `OR1200_SPR_GROUP_WIDTH'd28: unqualified_cs 
	 = 32'b00010000_00000000_00000000_00000000;
       `OR1200_SPR_GROUP_WIDTH'd29: unqualified_cs 
	 = 32'b00100000_00000000_00000000_00000000;
       `OR1200_SPR_GROUP_WIDTH'd30: unqualified_cs 
	 = 32'b01000000_00000000_00000000_00000000;
       `OR1200_SPR_GROUP_WIDTH'd31: unqualified_cs 
	 = 32'b10000000_00000000_00000000_00000000;
     endcase

   //
   // SPRs System Group
   //

   //
   // What to write into SR
   //
   assign to_sr[`OR1200_SR_FO:`OR1200_SR_OVE] 
	    = (except_started) ? {sr[`OR1200_SR_FO:`OR1200_SR_EPH],dsx,1'b0} :
	      (branch_op == `OR1200_BRANCHOP_RFE) ? 
	      esr[`OR1200_SR_FO:`OR1200_SR_OVE] : (spr_we && sr_sel) ? 
	      {1'b1, spr_dat_o[`OR1200_SR_FO-1:`OR1200_SR_OVE]} :
	      sr[`OR1200_SR_FO:`OR1200_SR_OVE];
   assign to_sr[`OR1200_SR_TED] 
	    = (except_started) ? 1'b1 :
	      (branch_op == `OR1200_BRANCHOP_RFE) ? esr[`OR1200_SR_TED] :
	      (spr_we && sr_sel) ? spr_dat_o[`OR1200_SR_TED] :
	      sr[`OR1200_SR_TED];
   assign to_sr[`OR1200_SR_OV] 
	    = (except_started) ? sr[`OR1200_SR_OV] :
	      (branch_op == `OR1200_BRANCHOP_RFE) ? esr[`OR1200_SR_OV] :
	      ov_we ? ovforw :
	      (spr_we && sr_sel) ? spr_dat_o[`OR1200_SR_OV] :
	      sr[`OR1200_SR_OV];
   assign to_sr[`OR1200_SR_CY] 
	    = (except_started) ? sr[`OR1200_SR_CY] :
	      (branch_op == `OR1200_BRANCHOP_RFE) ? esr[`OR1200_SR_CY] :
	      cy_we ? cyforw :
	      (spr_we && sr_sel) ? spr_dat_o[`OR1200_SR_CY] :
	      sr[`OR1200_SR_CY];
   assign to_sr[`OR1200_SR_F] 
	    = (except_started) ? sr[`OR1200_SR_F] :
	      (branch_op == `OR1200_BRANCHOP_RFE) ? esr[`OR1200_SR_F] :
	      flag_we ? flagforw :
	      (spr_we && sr_sel) ? spr_dat_o[`OR1200_SR_F] :
	      sr[`OR1200_SR_F];
   
   assign to_sr[`OR1200_SR_CE:`OR1200_SR_SM] 
	    = (except_started) ? {sr[`OR1200_SR_CE:`OR1200_SR_LEE], 2'b00, 
				  sr[`OR1200_SR_ICE:`OR1200_SR_DCE], 3'b001} :
	      (branch_op == `OR1200_BRANCHOP_RFE) ? 
	      esr[`OR1200_SR_CE:`OR1200_SR_SM] : (spr_we && sr_sel) ? 
	      spr_dat_o[`OR1200_SR_CE:`OR1200_SR_SM] :
	      sr[`OR1200_SR_CE:`OR1200_SR_SM];

   //
   // Selects for system SPRs
   //
   assign cfgr_sel = (spr_cs[`OR1200_SPR_GROUP_SYS] && 
		      (spr_addr[10:4] == `OR1200_SPR_CFGR));
   assign rf_sel = (spr_cs[`OR1200_SPR_GROUP_SYS] && 
		    (spr_addr[10:5] == `OR1200_SPR_RF));
   assign npc_sel = (spr_cs[`OR1200_SPR_GROUP_SYS] && 
		     (spr_addr[10:0] == `OR1200_SPR_NPC));
   assign ppc_sel = (spr_cs[`OR1200_SPR_GROUP_SYS] && 
		     (spr_addr[10:0] == `OR1200_SPR_PPC));
   assign sr_sel = (spr_cs[`OR1200_SPR_GROUP_SYS] && 
		    (spr_addr[10:0] == `OR1200_SPR_SR));
   assign epcr_sel = (spr_cs[`OR1200_SPR_GROUP_SYS] && 
		      (spr_addr[10:0] == `OR1200_SPR_EPCR));
   assign eear_sel = (spr_cs[`OR1200_SPR_GROUP_SYS] && 
		      (spr_addr[10:0] == `OR1200_SPR_EEAR));
   assign esr_sel = (spr_cs[`OR1200_SPR_GROUP_SYS] && 
		     (spr_addr[10:0] == `OR1200_SPR_ESR));
   assign fpcsr_sel = (spr_cs[`OR1200_SPR_GROUP_SYS] && 
		       (spr_addr[10:0] == `OR1200_SPR_FPCSR));


   //
   // Write enables for system SPRs
   //
   assign sr_we = (spr_we && sr_sel) | (branch_op == `OR1200_BRANCHOP_RFE) | 
		  flag_we | cy_we | ov_we;
   assign pc_we = (du_write && (npc_sel | ppc_sel));
   assign epcr_we = (spr_we && epcr_sel);
   assign eear_we = (spr_we && eear_sel);
   assign esr_we = (spr_we && esr_sel);
   assign fpcsr_we = (spr_we && fpcsr_sel);
   
   //
   // Output from system SPRs
   //
   assign sys_data = (spr_dat_cfgr & {32{cfgr_sel}}) |
		     (spr_dat_rf & {32{rf_sel}}) |
		     (spr_dat_npc & {32{npc_sel}}) |
		     (spr_dat_ppc & {32{ppc_sel}}) |
		     ({{32-`OR1200_SR_WIDTH{1'b0}},sr} & {32{sr_sel}}) |
		     (epcr & {32{epcr_sel}}) |
		     (eear & {32{eear_sel}}) |
		     ({{32-`OR1200_FPCSR_WIDTH{1'b0}},fpcsr} & 
		      {32{fpcsr_sel}}) |
		     ({{32-`OR1200_SR_WIDTH{1'b0}},esr} & {32{esr_sel}});

   //
   // Flag alias
   //
   assign flag = sr[`OR1200_SR_F];

   //
   // Carry alias
   //
   assign carry = sr[`OR1200_SR_CY];
   
   //
   // Supervision register
   //
   always @(posedge clk or `OR1200_RST_EVENT rst)
     if (rst == `OR1200_RST_VALUE)
       sr_reg <=  {2'b01, // Fixed one.
		   `OR1200_SR_EPH_DEF, {`OR1200_SR_WIDTH-4{1'b0}}, 1'b1};
     else if (except_started)
       sr_reg <=  to_sr[`OR1200_SR_WIDTH-1:0];
     else if (sr_we)
       sr_reg <=  to_sr[`OR1200_SR_WIDTH-1:0];

   // EPH part of Supervision register
   always @(posedge clk or `OR1200_RST_EVENT rst)
     // default value 
     if (rst == `OR1200_RST_VALUE) begin
	sr_reg_bit_eph <=  `OR1200_SR_EPH_DEF;
	// select async. value due to reset state
	sr_reg_bit_eph_select <=  1'b1;	
     end
   // selected value (different from default) is written into FF after reset 
   // state
     else if (sr_reg_bit_eph_select) begin
	// dynamic value can only be assigned to FF out of reset!
	sr_reg_bit_eph <=  boot_adr_sel_i;
	sr_reg_bit_eph_select <=  1'b0;	// select FF value
     end
     else if (sr_we) begin
	sr_reg_bit_eph <=  to_sr[`OR1200_SR_EPH];
     end

   // select async. value of EPH bit after reset 
   assign	sr_reg_bit_eph_muxed = (sr_reg_bit_eph_select) ? 
				       boot_adr_sel_i : sr_reg_bit_eph;

   // EPH part joined together with rest of Supervision register
   always @(sr_reg or sr_reg_bit_eph_muxed)
     sr = {sr_reg[`OR1200_SR_WIDTH-1:`OR1200_SR_WIDTH-2], sr_reg_bit_eph_muxed,
	   sr_reg[`OR1200_SR_WIDTH-4:0]};

`ifdef verilator
   // Function to access various sprs (for Verilator). Have to hide this from
   // simulator, since functions with no inputs are not allowed in IEEE
   // 1364-2001.

   function [31:0] get_sr;
      // verilator public
      get_sr = {{32-`OR1200_SR_WIDTH{1'b0}},sr};
   endfunction // get_sr

   function [31:0] get_epcr;
      // verilator public
      get_epcr = epcr;
   endfunction // get_epcr

   function [31:0] get_eear;
      // verilator public
      get_eear = eear;
   endfunction // get_eear

   function [31:0] get_esr;
      // verilator public
      get_esr = {{32-`OR1200_SR_WIDTH{1'b0}},esr};
   endfunction // get_esr

`endif
   
   //
   // MTSPR/MFSPR interface
   //
   always @(spr_addr or sys_data or spr_dat_mac or spr_dat_pic or spr_dat_pm or
	    spr_dat_fpu or
	    spr_dat_dmmu or spr_dat_immu or spr_dat_du or spr_dat_tt) begin
      casez (spr_addr[`OR1200_SPR_GROUP_BITS]) // synopsys parallel_case
	`OR1200_SPR_GROUP_SYS:
	  to_wbmux = sys_data;
	`OR1200_SPR_GROUP_TT:
	  to_wbmux = spr_dat_tt;
	`OR1200_SPR_GROUP_PIC:
	  to_wbmux = spr_dat_pic;
	`OR1200_SPR_GROUP_PM:
	  to_wbmux = spr_dat_pm;
	`OR1200_SPR_GROUP_DMMU:
	  to_wbmux = spr_dat_dmmu;
	`OR1200_SPR_GROUP_IMMU:
	  to_wbmux = spr_dat_immu;
	`OR1200_SPR_GROUP_MAC:
	  to_wbmux = spr_dat_mac;
	`OR1200_SPR_GROUP_FPU:
	  to_wbmux = spr_dat_fpu;
	default: //`OR1200_SPR_GROUP_DU:
	  to_wbmux = spr_dat_du;
      endcase
   end

endmodule

// END SPRS

// BEGIN WBMUX

//////////////////////////////////////////////////////////////////////
////                                                              ////
////  OR1200's Write-back Mux                                     ////
////                                                              ////
////  This file is part of the OpenRISC 1200 project              ////
////  http://www.opencores.org/project,or1k                       ////
////                                                              ////
////  Description                                                 ////
////  CPU's write-back stage of the pipeline                      ////
////                                                              ////
////  To Do:                                                      ////
////   - make it smaller and faster                               ////
////                                                              ////
////  Author(s):                                                  ////
////      - Damjan Lampret, lampret@opencores.org                 ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
//
// $Log: or1200_wbmux.v,v $
// Revision 2.0  2010/06/30 11:00:00  ORSoC
// No update 

 

module or1200_wbmux(
	// Clock and reset
	clk, rst,

	// Internal i/f
	wb_freeze, rfwb_op,
	muxin_a, muxin_b, muxin_c, muxin_d, muxin_e,
	muxout, muxreg, muxreg_valid
);

parameter width = `OR1200_OPERAND_WIDTH;

//
// I/O
//

//
// Clock and reset
//
input				clk;
input				rst;

//
// Internal i/f
//
input				wb_freeze;
input	[`OR1200_RFWBOP_WIDTH-1:0]	rfwb_op;
input	[width-1:0]		muxin_a;
input	[width-1:0]		muxin_b;
input	[width-1:0]		muxin_c;
input	[width-1:0]		muxin_d;
input	[width-1:0]		muxin_e;   
output	[width-1:0]		muxout;
output	[width-1:0]		muxreg;
output				muxreg_valid;

//
// Internal wires and regs
//
reg	[width-1:0]		muxout;
reg	[width-1:0]		muxreg;
reg				muxreg_valid;

//
// Registered output from the write-back multiplexer
//
always @(posedge clk or `OR1200_RST_EVENT rst) begin
	if (rst == `OR1200_RST_VALUE) begin
		muxreg <=  32'd0;
		muxreg_valid <=  1'b0;
	end
	else if (!wb_freeze) begin
		muxreg <=  muxout;
		muxreg_valid <=  rfwb_op[0];
	end
end

//
// Write-back multiplexer
//
always @(muxin_a or muxin_b or muxin_c or muxin_d or muxin_e or rfwb_op) begin
`ifdef OR1200_ADDITIONAL_SYNOPSYS_DIRECTIVES
	casez(rfwb_op[`OR1200_RFWBOP_WIDTH-1:1]) // synopsys parallel_case infer_mux
`else
	casez(rfwb_op[`OR1200_RFWBOP_WIDTH-1:1]) // synopsys parallel_case
`endif
		`OR1200_RFWBOP_ALU: muxout = muxin_a;
		`OR1200_RFWBOP_LSU: begin
			muxout = muxin_b;
`ifdef OR1200_VERBOSE
// synopsys translate_off
			$display("  WBMUX: muxin_b %h", muxin_b);
// synopsys translate_on
`endif
		end
		`OR1200_RFWBOP_SPRS: begin
			muxout = muxin_c;
`ifdef OR1200_VERBOSE
// synopsys translate_off
			$display("  WBMUX: muxin_c %h", muxin_c);
// synopsys translate_on
`endif
		end
		`OR1200_RFWBOP_LR: begin
			muxout = muxin_d + 32'h8;
`ifdef OR1200_VERBOSE
// synopsys translate_off
			$display("  WBMUX: muxin_d %h", muxin_d + 4'h8);
// synopsys translate_on
`endif
		end
`ifdef OR1200_FPU_IMPLEMENTED
	        `OR1200_RFWBOP_FPU : begin
	     muxout = muxin_e;	     
 `ifdef OR1200_VERBOSE
// synopsys translate_off
			$display("  WBMUX: muxin_e %h", muxin_e);
// synopsys translate_on
`endif
	       end		      
`endif
	  default : begin
	     muxout = 0;
	  end
	  
	endcase
end

endmodule

// END WBMUX

// BEGIN DC_TOP

//////////////////////////////////////////////////////////////////////
////                                                              ////
////  OR1200's Data Cache top level                               ////
////                                                              ////
////  This file is part of the OpenRISC 1200 project              ////
////  http://opencores.org/project,or1k                           ////
////                                                              ////
////  Description                                                 ////
////  Instantiation of all DC blocks.                             ////
////                                                              ////
////  To Do:                                                      ////
////   - Test error during line read or write                     ////
////                                                              ////
////  Author(s):                                                  ////
////      - Damjan Lampret, lampret@opencores.org                 ////
////      - Julius Baxter, julius@opencores.org                   ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000, 2010 Authors and OPENCORES.ORG           ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
//
// $Log: or1200_dc_top.v,v $
// Revision 2.0  2010/06/30 11:00:00  ORSoC
// Minor update: 
// Bugs fixed. 
//

 

//
// Data cache
//
module or1200_dc_top(
	// Rst, clk and clock control
	clk, rst,

	// External i/f
	dcsb_dat_o, dcsb_adr_o, dcsb_cyc_o, dcsb_stb_o, dcsb_we_o, dcsb_sel_o, 
	dcsb_cab_o, dcsb_dat_i, dcsb_ack_i, dcsb_err_i,

	// Internal i/f
	dc_en,
	dcqmem_adr_i, dcqmem_cycstb_i, dcqmem_ci_i,
	dcqmem_we_i, dcqmem_sel_i, dcqmem_tag_i, dcqmem_dat_i,
	dcqmem_dat_o, dcqmem_ack_o, dcqmem_rty_o, dcqmem_err_o, dcqmem_tag_o,
	
        dc_no_writethrough,

`ifdef OR1200_BIST
	// RAM BIST
	mbist_si_i, mbist_so_o, mbist_ctrl_i,
`endif

	// SPRs
	spr_cs, spr_write, spr_dat_i, spr_addr, mtspr_dc_done
);

parameter dw = `OR1200_OPERAND_WIDTH;
parameter aw = `OR1200_OPERAND_WIDTH;
   
//
// I/O
//

//
// Clock and reset
//
input				clk;
input				rst;

//
// External I/F
//
output	[31:0]		dcsb_dat_o;
output	[31:0]			dcsb_adr_o;
output				dcsb_cyc_o;
output				dcsb_stb_o;
output				dcsb_we_o;
output	[3:0]			dcsb_sel_o;
output				dcsb_cab_o;
input	[31:0]		dcsb_dat_i;
input				dcsb_ack_i;
input				dcsb_err_i;

//
// Internal I/F
//
input				dc_en;
input	[31:0]			dcqmem_adr_i;
input				dcqmem_cycstb_i;
input				dcqmem_ci_i;
input				dcqmem_we_i;
input	[3:0]			dcqmem_sel_i;
input	[3:0]			dcqmem_tag_i;
input	[31:0]		dcqmem_dat_i;
output	[31:0]		dcqmem_dat_o;
output				dcqmem_ack_o;
output				dcqmem_rty_o;
output				dcqmem_err_o;
output	[3:0]			dcqmem_tag_o;

input   			dc_no_writethrough;
   
`ifdef OR1200_BIST
//
// RAM BIST
//
input mbist_si_i;
input [`OR1200_MBIST_CTRL_WIDTH - 1:0] mbist_ctrl_i;
output mbist_so_o;
`endif

//
// SPR access
//
input				spr_cs;
input				spr_write;
input	[31:0]			spr_dat_i;
input	[aw-1:0]	        spr_addr;
output  			mtspr_dc_done;

`ifdef OR1200_NO_DC

// Bypass cache

// IF to external memory
assign dcsb_dat_o = dcqmem_dat_i;
assign dcsb_adr_o = dcqmem_adr_i;
assign dcsb_cyc_o = dcqmem_cycstb_i;
assign dcsb_stb_o = dcqmem_cycstb_i;
assign dcsb_we_o = dcqmem_we_i;
assign dcsb_sel_o = dcqmem_sel_i;
assign dcsb_cab_o = 1'b0;

// IF to internal memory
assign dcqmem_dat_o = dcsb_dat_i;
assign dcqmem_ack_o = dcsb_ack_i;
assign dcqmem_err_o = dcsb_err_i;   
assign dcqmem_rty_o = ~dcqmem_ack_o;
assign dcqmem_tag_o = dcqmem_err_o ? `OR1200_DTAG_BE : dcqmem_tag_i;

assign mtspr_dc_done = 1'b1;

`else   
   
//
// Internal wires and regs
//
wire				tag_v;
wire	[`OR1200_DCTAG_W-2:0]	tag;
wire    			dirty;   
wire	[31:0]		to_dcram;
wire	[31:0]		from_dcram;
wire	[3:0]			dcram_we;
wire				dctag_we;
wire	[31:0]			dc_addr;
wire				dcfsm_biu_read;
wire				dcfsm_biu_write;
wire                            dcfsm_dcram_di_sel;
wire                            dcfsm_biu_do_sel;   
reg				tagcomp_miss;
wire	[`OR1200_DCINDXH:`OR1200_DCLS]	dctag_addr;
wire				dctag_en;
wire				dctag_v;
wire    			dctag_dirty;
   
wire				dc_block_invalidate;
wire 			        dc_block_flush;
wire 			        dc_block_writeback;   
wire				dcfsm_first_hit_ack;
wire				dcfsm_first_miss_ack;
wire				dcfsm_first_miss_err;
wire				dcfsm_burst;
wire				dcfsm_tag_we;
wire    			dcfsm_tag_valid;
wire    			dcfsm_tag_dirty;
   
`ifdef OR1200_BIST
//
// RAM BIST
//
wire				mbist_ram_so;
wire				mbist_tag_so;
wire				mbist_ram_si = mbist_si_i;
wire				mbist_tag_si = mbist_ram_so;
assign				mbist_so_o = mbist_tag_so;
`endif

// Address out to external bus - always from FSM   
assign dcsb_adr_o = dc_addr;
//
// SPR register decodes
//
`ifdef OR1200_DC_WRITETHROUGH
assign dc_block_invalidate = spr_cs & spr_write & 
       ((spr_addr[`OR1200_SPRGRP_DC_ADR_WIDTH-1:0]==`OR1200_SPRGRP_DC_DCBIR) |
	(spr_addr[`OR1200_SPRGRP_DC_ADR_WIDTH-1:0]==`OR1200_SPRGRP_DC_DCBFR));
assign dc_block_flush = 0;
assign dc_block_writeback = 0;
`else   
assign dc_block_invalidate = spr_cs & spr_write & 
	  (spr_addr[`OR1200_SPRGRP_DC_ADR_WIDTH-1:0]==`OR1200_SPRGRP_DC_DCBIR);
assign dc_block_flush =    spr_cs & spr_write &
	   (spr_addr[`OR1200_SPRGRP_DC_ADR_WIDTH-1:0]==`OR1200_SPRGRP_DC_DCBFR);
assign dc_block_writeback =    spr_cs & spr_write &
	   (spr_addr[`OR1200_SPRGRP_DC_ADR_WIDTH-1:0]==`OR1200_SPRGRP_DC_DCBWR);
`endif // !`ifdef OR1200_DC_WRITETHROUGH
   
assign dctag_we = dcfsm_tag_we | dc_block_invalidate;
assign dctag_addr = dc_block_invalidate ? 
		    spr_dat_i[`OR1200_DCINDXH:`OR1200_DCLS] :
		    dc_addr[`OR1200_DCINDXH:`OR1200_DCLS];
assign dctag_en = dc_block_invalidate | dc_en;

assign dctag_v = dc_block_invalidate ? 1'b0 : dcfsm_tag_valid;
assign dctag_dirty = dc_block_invalidate ? 1'b0 : dcfsm_tag_dirty;
   
//
// Data to BIU is from DCRAM when bursting lines back into memory
//
assign dcsb_dat_o = dcfsm_biu_do_sel ? from_dcram : dcqmem_dat_i;


//
// Bypases of the DC when DC is disabled
//
assign dcsb_cyc_o = (dc_en) ? 
		    dcfsm_biu_read | dcfsm_biu_write : dcqmem_cycstb_i;
   
assign dcsb_stb_o = (dc_en) ? 
		    dcfsm_biu_read | dcfsm_biu_write : dcqmem_cycstb_i;
   
assign dcsb_we_o = (dc_en) ? 
		   dcfsm_biu_write : dcqmem_we_i;

assign dcsb_sel_o = (dc_en & dcfsm_burst) ? 
		    4'b1111 : dcqmem_sel_i;

assign dcsb_cab_o = dc_en & dcfsm_burst & dcsb_cyc_o;
assign dcqmem_rty_o = ~dcqmem_ack_o;
assign dcqmem_tag_o = dcqmem_err_o ? `OR1200_DTAG_BE : dcqmem_tag_i;

//
// DC/LSU normal and error termination
//
assign dcqmem_ack_o = dc_en ? 
		      dcfsm_first_hit_ack | dcfsm_first_miss_ack : dcsb_ack_i;
   
assign dcqmem_err_o = dc_en ? dcfsm_first_miss_err : dcsb_err_i;
   
//
// Select between input data generated by LSU or by BIU
//
assign to_dcram = (dcfsm_dcram_di_sel) ? dcsb_dat_i : dcqmem_dat_i;

//
// Select between data generated by DCRAM or passed by BIU
//
assign dcqmem_dat_o = dcfsm_first_miss_ack | !dc_en ? dcsb_dat_i : from_dcram;

//
// Tag comparison
//
   wire [31:`OR1200_DCTAGL]  dcqmem_adr_i_tag;
   assign dcqmem_adr_i_tag = dcqmem_adr_i[31:`OR1200_DCTAGL];
   
always @(tag or dcqmem_adr_i_tag or tag_v) begin
	if ((tag != dcqmem_adr_i_tag) || !tag_v)
		tagcomp_miss = 1'b1;
	else
		tagcomp_miss = 1'b0;
end

//
// Instantiation of DC Finite State Machine
//
or1200_dc_fsm or1200_dc_fsm(
	.clk(clk),
	.rst(rst),
	.dc_en(dc_en),
	.dcqmem_cycstb_i(dcqmem_cycstb_i),
	.dcqmem_ci_i(dcqmem_ci_i),
	.dcqmem_we_i(dcqmem_we_i),
	.dcqmem_sel_i(dcqmem_sel_i),
	.tagcomp_miss(tagcomp_miss),
	.tag(tag),
        .tag_v(tag_v),
	.dirty(dirty),
	.biudata_valid(dcsb_ack_i),
	.biudata_error(dcsb_err_i),
	.lsu_addr(dcqmem_adr_i),
	.dcram_we(dcram_we),
	.biu_read(dcfsm_biu_read),
	.biu_write(dcfsm_biu_write),
	.dcram_di_sel(dcfsm_dcram_di_sel),
	.biu_do_sel(dcfsm_biu_do_sel),
	.first_hit_ack(dcfsm_first_hit_ack),
	.first_miss_ack(dcfsm_first_miss_ack),
	.first_miss_err(dcfsm_first_miss_err),
	.burst(dcfsm_burst),
	.tag_we(dcfsm_tag_we),
        .tag_valid(dcfsm_tag_valid),
	.tag_dirty(dcfsm_tag_dirty),
	.dc_addr(dc_addr),
	.dc_no_writethrough(dc_no_writethrough),
	.dc_block_flush(dc_block_flush),
	.dc_block_writeback(dc_block_writeback),
	.spr_dat_i(spr_dat_i),
	.mtspr_dc_done(mtspr_dc_done),
	.spr_cswe(spr_cs & spr_write)
);

//
// Instantiation of DC main memory
//
or1200_dc_ram or1200_dc_ram(
	.clk(clk),
	.rst(rst),
`ifdef OR1200_BIST
	// RAM BIST
	.mbist_si_i(mbist_ram_si),
	.mbist_so_o(mbist_ram_so),
	.mbist_ctrl_i(mbist_ctrl_i),
`endif
	.addr(dc_addr[`OR1200_DCINDXH:2]),
	.en(dc_en),
	.we(dcram_we),
	.datain(to_dcram),
	.dataout(from_dcram)
);

//
// Instantiation of DC TAG memory
//
or1200_dc_tag or1200_dc_tag(
	.clk(clk),
	.rst(rst),
`ifdef OR1200_BIST
	// RAM BIST
	.mbist_si_i(mbist_tag_si),
	.mbist_so_o(mbist_tag_so),
	.mbist_ctrl_i(mbist_ctrl_i),
`endif
	.addr(dctag_addr),
	.en(dctag_en),
	.we(dctag_we),
	.datain({dc_addr[31:`OR1200_DCTAGL], dctag_v, dctag_dirty}),
	.tag_v(tag_v),
	.tag(tag),
	.dirty(dirty)
);
`endif // !`ifdef OR1200_NO_DC
   
endmodule

// END DC_TOP

// BEGIN DC_FSM

//////////////////////////////////////////////////////////////////////
////                                                              ////
////  OR1200's DC FSM                                             ////
////                                                              ////
////  This file is part of the OpenRISC 1200 project              ////
////  http://opencores.org/project,or1k                           ////
////                                                              ////
////  Description                                                 ////
////  Data cache state machine                                    ////
////                                                              ////
////  To Do:                                                      ////
////   - Test error during line read or write                     ////
////                                                              ////
////  Author(s):                                                  ////
////      - Damjan Lampret, lampret@opencores.org                 ////
////      - Julius Baxter, julius@opencores.org                   ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000, 2010 Authors and OPENCORES.ORG           ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// $Log: or1200_dc_fsm.v,v $
// Revision 2.0  2010/06/30 11:00:00  ORSoC
// Minor update: 
// Bugs fixed. 
//

 

`define OR1200_DCFSM_IDLE	3'd0
`define OR1200_DCFSM_CLOADSTORE	3'd1
`define OR1200_DCFSM_LOOP2	3'd2
`define OR1200_DCFSM_LOOP3	3'd3
`define OR1200_DCFSM_LOOP4	3'd4
`define OR1200_DCFSM_FLUSH5	3'd5
`define OR1200_DCFSM_INV6	3'd6
`define OR1200_DCFSM_WAITSPRCS7	3'd7



//
// Data cache FSM for cache line of 16 bytes (4x singleword)
//

module or1200_dc_fsm
  (
   // Clock and reset
   clk, rst,
   
   // Internal i/f to top level DC
   dc_en, dcqmem_cycstb_i, dcqmem_ci_i, dcqmem_we_i, dcqmem_sel_i,
   tagcomp_miss, biudata_valid, biudata_error, lsu_addr,
   dcram_we, biu_read, biu_write, biu_do_sel, dcram_di_sel, first_hit_ack, 
   first_miss_ack, first_miss_err, burst, tag_we, tag_valid, dc_addr, 
   dc_no_writethrough, tag_dirty, dirty, tag, tag_v, dc_block_flush, 
   dc_block_writeback, spr_dat_i, mtspr_dc_done, spr_cswe
   );

   //
   // I/O
   //
   input				clk;
   input				rst;
   input				dc_en;
   input				dcqmem_cycstb_i;
   input				dcqmem_ci_i;
   input				dcqmem_we_i;
   input [3:0] 				dcqmem_sel_i;
   input				tagcomp_miss;
   input				biudata_valid;
   input				biudata_error;
   input [31:0] 			lsu_addr;
   output [3:0] 			dcram_we;
   output				biu_read;
   output				biu_write;
   output 				dcram_di_sel;
   output 				biu_do_sel;
   output				first_hit_ack;
   output				first_miss_ack;
   output				first_miss_err;
   output				burst;
   output				tag_we;
   output 				tag_valid;
   output [31:0] 			dc_addr;
   input 				dc_no_writethrough;
   output 				tag_dirty;
   input 				dirty;
   input [`OR1200_DCTAG_W-2:0] 		tag;
   input 				tag_v;   
   input 				dc_block_flush;
   input 				dc_block_writeback;
   input [31:0] 			spr_dat_i;
   output 				mtspr_dc_done;
   input 				spr_cswe;
   
   
   //
   // Internal wires and regs
   //
   reg [31:0] 				addr_r;
   reg [2:0] 				state;
   reg [`OR1200_DCLS-1:0] 		cnt;
   reg 					hitmiss_eval;
   reg 					store;
   reg 					load;
   reg 					cache_inhibit;
   reg 					cache_miss;
   reg 					cache_dirty_needs_writeback;
   reg                                  did_early_load_ack;
   reg 					cache_spr_block_flush;
   reg 					cache_spr_block_writeback;
   reg 					cache_wb;   
   wire 				load_hit_ack;
   wire 				load_miss_ack;
   wire 				load_inhibit_ack;   
   wire 				store_hit_ack;
   wire 				store_hit_writethrough_ack;   
   wire 				store_miss_writethrough_ack;   
   wire 				store_inhibit_ack;
   wire 				store_miss_ack;
   wire 				dcram_we_after_line_load;
   wire 				dcram_we_during_line_load;
   wire 				tagram_we_end_of_loadstore_loop;
   wire 				tagram_dirty_bit_set;   
   wire 				writethrough;
   wire 				cache_inhibit_with_eval;
   wire [(`OR1200_DCLS-1)-2:0]		next_addr_word;

   //
   // Cache inhibit
   //
   
   // Indicates whether cache is inhibited, during hitmiss_eval and after
   assign cache_inhibit_with_eval = (hitmiss_eval & dcqmem_ci_i) |
				    (!hitmiss_eval & cache_inhibit);
   
   //
   // Generate of DCRAM write enables
   //

   // WE when non-writethrough, and had to wait for a line to load.
   assign dcram_we_after_line_load = (state == `OR1200_DCFSM_LOOP3) &
				    dcqmem_we_i & !cache_dirty_needs_writeback &
				     !did_early_load_ack;

   // WE when receiving the data cache line
   assign dcram_we_during_line_load = (state == `OR1200_DCFSM_LOOP2) & load & 
				      biudata_valid;   
   
   assign dcram_we =(// Write when hit - make sure it is only when hit - could
		     // maybe be doing write through and don't want to corrupt
		     // cache lines corresponding to the writethrough addr_r.
		     ({4{store_hit_ack | store_hit_writethrough_ack}} |
		     // Write after load of line
		     {4{dcram_we_after_line_load}}) & 
		     dcqmem_sel_i		 ) |
		    // Write during load
		    {4{dcram_we_during_line_load}};

   //
   // Tag RAM signals
   //
   
   // WE to tag RAM when we finish loading a line.
   assign tagram_we_end_of_loadstore_loop = ((state==`OR1200_DCFSM_LOOP2) & 
					     biudata_valid & !(|cnt));
   
`ifndef OR1200_DC_WRITETHROUGH
   // No writethrough, so mark a line dirty whenever we write to it
   assign tagram_dirty_bit_set = store_hit_ack | store_miss_ack;

   // Generate done signal for MTSPR instructions that may block execution
   assign mtspr_dc_done = // Either DC disabled or we're not selected, or
			  !dc_en | !spr_cswe |
			  // Requested address not valid or writeback and !dirty
			  ((state==`OR1200_DCFSM_FLUSH5) & 
			   (!tag_v | (cache_spr_block_writeback & !dirty))) |
			  // Writeback or flush is finished
			  ((state==`OR1200_DCFSM_LOOP3) & 
			   (cache_spr_block_flush | cache_spr_block_writeback))|
			  // Invalidate of clean line finished
			  ((state==`OR1200_DCFSM_INV6) & cache_spr_block_flush);
   
   
`else
 `ifdef OR1200_DC_NOSTACKWRITETHROUGH   
   // For dirty bit setting when having writethrough but not for stack
   assign tagram_dirty_bit_set = store_hit_ack | store_miss_ack;
 `else
   // Lines will never be dirty if always writethrough
   assign tagram_dirty_bit_set = 0;
 `endif
   
   assign mtspr_dc_done = 1'b1;
   
`endif

   assign tag_dirty = tagram_dirty_bit_set;
   
   // WE to tag RAM
   assign tag_we = tagram_we_end_of_loadstore_loop |		    
                    tagram_dirty_bit_set | (state == `OR1200_DCFSM_INV6);
   

   // Valid bit
   // Set valid when end of line load, or marking dirty (is still valid)
   assign tag_valid = ( tagram_we_end_of_loadstore_loop & 
			(load | (store & cache_spr_block_writeback)) ) |
		      tagram_dirty_bit_set;


   
   //
   // BIU read and write
   //

   assign biu_read = // Bus read request when:
		     // 1) Have a miss and not dirty or a load with inhibit
		     ((state == `OR1200_DCFSM_CLOADSTORE) &
		      (((hitmiss_eval & tagcomp_miss & !dirty & 
			 !(store & writethrough)) | 
			(load & cache_inhibit_with_eval)) & dcqmem_cycstb_i)) |
		     // 2) In the loop and loading
		     ((state == `OR1200_DCFSM_LOOP2) & load);
   

   assign biu_write = // Bus write request when:
		      // 1) Have a miss and dirty or store with inhibit
		      ((state == `OR1200_DCFSM_CLOADSTORE) & 
		       (((hitmiss_eval & tagcomp_miss & dirty) | 
			 (store & writethrough)) | 
			(store & cache_inhibit_with_eval)) & dcqmem_cycstb_i) |
		      // 2) In the loop and storing
		      ((state == `OR1200_DCFSM_LOOP2) & store);
   
   //
   // Select for data to actual cache RAM (from LSU or BIU)
   //
   // Data to DCRAM - from external bus when loading (from IU when store)
   assign dcram_di_sel = load;
   // Data to external bus - always from IU except in case of bursting back
   //                        the line to memory. (1 selects DCRAM)
   assign biu_do_sel = (state == `OR1200_DCFSM_LOOP2) & store;

   // 3-bit wire for calculating next word of burst write, depending on
   // line size of data cache.
   assign next_addr_word =  addr_r[`OR1200_DCLS-1:2] + 1;
   
   // Address to cache RAM (tag address also derived from this)   
   assign dc_addr =
		   // First check if we've got a block flush or WB op
		   ((dc_block_flush & !cache_spr_block_flush) | 
		   (dc_block_writeback & !cache_spr_block_writeback)) ? 
		   spr_dat_i :
		   (state==`OR1200_DCFSM_FLUSH5) ? addr_r:
		    // If no SPR action, then always put out address from LSU
		    (state==`OR1200_DCFSM_IDLE | hitmiss_eval) ? lsu_addr :
		    // Next, if in writeback loop, when ACKed must immediately
		    // output next word address (the RAM address takes a cycle
		    // to increment, but it's needed immediately for burst)
		    // otherwise, output our registered address.
		    (state==`OR1200_DCFSM_LOOP2 & biudata_valid & store ) ? 
		    {addr_r[31:`OR1200_DCLS], next_addr_word, 2'b00} : addr_r;
   
`ifdef OR1200_DC_WRITETHROUGH
 `ifdef OR1200_DC_NOSTACKWRITETHROUGH   
   assign writethrough = !dc_no_writethrough;
 `else
   assign writethrough = 1;
 `endif
`else
   assign writethrough = 0;
`endif
   
   //
   // ACK generation for LSU
   //
   
   // ACK for when it's a cache hit
   assign first_hit_ack = load_hit_ack | store_hit_ack | 
			  store_hit_writethrough_ack | 
			  store_miss_writethrough_ack |
			  store_inhibit_ack | store_miss_ack ;

   // ACK for when it's a cache miss - load only, is used in MUX for data back
   //                                  LSU straight off external data bus. In
   //                                  this was is also used for cache inhibit
   //                                  loads.
   // first_hit_ack takes precedence over first_miss_ack
   assign first_miss_ack = ~first_hit_ack & (load_miss_ack | load_inhibit_ack);
   
   // ACK cache hit on load
   assign load_hit_ack = (state == `OR1200_DCFSM_CLOADSTORE) & 
			 hitmiss_eval & !tagcomp_miss & !dcqmem_ci_i & load;
   
   // ACK cache hit on store, no writethrough
   assign store_hit_ack = (state == `OR1200_DCFSM_CLOADSTORE) & 
			  hitmiss_eval  & !tagcomp_miss & !dcqmem_ci_i &
			  store & !writethrough;
   
   // ACK cache hit on store with writethrough
   assign store_hit_writethrough_ack = (state == `OR1200_DCFSM_CLOADSTORE) & 
				       !cache_miss & !cache_inhibit &
				       store & writethrough & biudata_valid;
   
   // ACK cache miss on store with writethrough
   assign store_miss_writethrough_ack = (state == `OR1200_DCFSM_CLOADSTORE) & 
					cache_miss & !cache_inhibit &
					store & writethrough & biudata_valid;
      
   // ACK store when cacheinhibit
   assign store_inhibit_ack = (state == `OR1200_DCFSM_CLOADSTORE) &
			      store & cache_inhibit & biudata_valid;
   
   
   // Get the _early_ ack on first ACK back from wishbone during load only
   // Condition is that we're in the loop - that it's the first ack we get (can
   // tell from value of cnt), and we're loading a line to read from it (not
   // loading to write to it, in the case of a write without writethrough.)
   assign load_miss_ack =  ((state== `OR1200_DCFSM_LOOP2) & load &
			    (cnt==((1 << `OR1200_DCLS) - 4)) & biudata_valid & 
			    !(dcqmem_we_i & !writethrough));
   
   assign load_inhibit_ack = (state == `OR1200_DCFSM_CLOADSTORE) &
			     load & cache_inhibit & biudata_valid;   
   
   // This will be case of write through disabled, and had to load a line.
   assign store_miss_ack = dcram_we_after_line_load;
            
   assign first_miss_err = biudata_error & dcqmem_cycstb_i;

   // Signal burst when in the load/store loop. We will always try to burst.
   assign burst = (state == `OR1200_DCFSM_LOOP2);

   //
   // Main DC FSM
   //
   always @(posedge clk or `OR1200_RST_EVENT rst) begin
      if (rst == `OR1200_RST_VALUE) begin
	 state <=  `OR1200_DCFSM_IDLE;
	 addr_r <=  32'd0;
	 hitmiss_eval <=  1'b0;
	 store <=  1'b0;
	 load <=  1'b0;
	 cnt <=  `OR1200_DCLS'd0;
         cache_miss <=  1'b0;
	 cache_dirty_needs_writeback <= 1'b0;
	 cache_inhibit <=  1'b0;
	 did_early_load_ack <= 1'b0;
	 cache_spr_block_flush <= 1'b0;
	 cache_spr_block_writeback <= 1'b0;
      end
      else
	case (state)	// synopsys parallel_case
	  
          `OR1200_DCFSM_IDLE : begin
	     if (dc_en & (dc_block_flush | dc_block_writeback))
	       begin
		  cache_spr_block_flush <= dc_block_flush;
		  cache_spr_block_writeback <= dc_block_writeback;
		  hitmiss_eval <= 1'b1;
		  state <= `OR1200_DCFSM_FLUSH5;
		  addr_r <=  spr_dat_i;
	       end
	     else if (dc_en & dcqmem_cycstb_i)
	       begin
		  state <= `OR1200_DCFSM_CLOADSTORE;
		  hitmiss_eval <=  1'b1;
		  store <=  dcqmem_we_i;
		  load <=  !dcqmem_we_i;
	       end
	     
	     
          end // case: `OR1200_DCFSM_IDLE
	  
          `OR1200_DCFSM_CLOADSTORE: begin
	     hitmiss_eval <=  1'b0;
	     if (hitmiss_eval) begin
                cache_inhibit <=  dcqmem_ci_i; // Check for cache inhibit here
                cache_miss <=  tagcomp_miss;
		cache_dirty_needs_writeback <= dirty;
		addr_r <=  lsu_addr;
             end

	     // Evaluate any cache line load/stores in first cycle:
			     //
	     if (hitmiss_eval & tagcomp_miss & !(store & writethrough) &
		 !dcqmem_ci_i)
	       begin
		  // Miss - first either:
		  //  1) write back dirty line 
		  if (dirty) begin
		     // Address for writeback
		     addr_r <=  {tag, lsu_addr[`OR1200_DCINDXH:2],2'd0};
		     load <= 1'b0;
		     store <= 1'b1;
`ifdef OR1200_VERBOSE		     
		     $display("%t: dcache miss and dirty", $time);
`endif
		  end
		  //  2) load requested line
		  else begin
		     addr_r <=  lsu_addr;
		     load <= 1'b1;
		     store <= 1'b0;
		  end // else: !if(dirty)
		  state <= `OR1200_DCFSM_LOOP2;		  
		  // Set the counter for the burst accesses
		  cnt <=  ((1 << `OR1200_DCLS) - 4);
	       end
             else if (// Strobe goes low
		      !dcqmem_cycstb_i |
		      // Cycle finishes
		      (!hitmiss_eval & (biudata_valid | biudata_error)) |
		      // Cache hit in first cycle....
		      (hitmiss_eval & !tagcomp_miss & !dcqmem_ci_i &
		      // .. and you're not doing a writethrough store..
		      !(store & writethrough))) begin
                state <=  `OR1200_DCFSM_IDLE;
                load <=  1'b0;
		store <= 1'b0;
		cache_inhibit <= 1'b0;
		cache_dirty_needs_writeback <= 1'b0;
             end	     
          end // case: `OR1200_DCFSM_CLOADSTORE	  
	  
          `OR1200_DCFSM_LOOP2 : begin // loop/abort	     
             if (!dc_en| biudata_error) begin
                state <=  `OR1200_DCFSM_IDLE;
                load <=  1'b0;
		store <= 1'b0;
		cnt <= `OR1200_DCLS'd0;
             end
             if (biudata_valid & (|cnt)) begin
                cnt <=  cnt - 4;
                addr_r[`OR1200_DCLS-1:2] <=  addr_r[`OR1200_DCLS-1:2] + 1;
             end
	     else if (biudata_valid & !(|cnt)) begin
		state <= `OR1200_DCFSM_LOOP3;
		addr_r <=  lsu_addr;
		load <= 1'b0;
		store <= 1'b0;
	     end

	     // Track if we did an early ack during a load
	     if (load_miss_ack)
	       did_early_load_ack <= 1'b1;
	     

          end // case: `OR1200_DCFSM_LOOP2
	  
	  `OR1200_DCFSM_LOOP3: begin // figure out next step
	     if (cache_dirty_needs_writeback) begin
		// Just did store of the dirty line so now load new one
		load <= 1'b1;
		// Set the counter for the burst accesses
		cnt <=  ((1 << `OR1200_DCLS) - 4);
		// Address of line to be loaded
		addr_r <=  lsu_addr;
		cache_dirty_needs_writeback <= 1'b0;
		state <= `OR1200_DCFSM_LOOP2;
	     end // if (cache_dirty_needs_writeback)
	     else if (cache_spr_block_flush | cache_spr_block_writeback) begin
		// Just wrote back the line to memory, we're finished.
		cache_spr_block_flush <= 1'b0;
		cache_spr_block_writeback <= 1'b0;
		state <= `OR1200_DCFSM_WAITSPRCS7;
	     end
	     else begin
		// Just loaded a new line, finish up
		did_early_load_ack <= 1'b0;
		state <= `OR1200_DCFSM_LOOP4;
	     end
	  end // case: `OR1200_DCFSM_LOOP3

	  `OR1200_DCFSM_LOOP4: begin
	     state <=  `OR1200_DCFSM_IDLE;
	  end

	  `OR1200_DCFSM_FLUSH5: begin
	     hitmiss_eval <= 1'b0;
	     if (hitmiss_eval & !tag_v)
	       begin
		  // Not even cached, just ignore
		  cache_spr_block_flush <= 1'b0;
		  cache_spr_block_writeback <= 1'b0;
		  state <=  `OR1200_DCFSM_WAITSPRCS7;
	       end
	     else if (hitmiss_eval & tag_v)
	       begin
		  // Tag is valid - what do we do?
		  if ((cache_spr_block_flush | cache_spr_block_writeback) & 
		      dirty) begin
		     // Need to writeback
		     // Address for writeback (spr_dat_i has already changed so
		     // use line number from addr_r)
		     addr_r <=  {tag, addr_r[`OR1200_DCINDXH:2],2'd0};
		     load <= 1'b0;
		     store <= 1'b1;
`ifdef OR1200_VERBOSE		     
		     $display("%t: block flush: dirty block", $time);
`endif
		     state <= `OR1200_DCFSM_LOOP2;		  
		     // Set the counter for the burst accesses
		     cnt <=  ((1 << `OR1200_DCLS) - 4);
		  end
		  else if (cache_spr_block_flush & !dirty)
		    begin
		       // Line not dirty, just need to invalidate
		       state <=  `OR1200_DCFSM_INV6;
		    end // else: !if(dirty)
		  else if (cache_spr_block_writeback & !dirty)
		    begin
		       // Nothing to do - line is valid but not dirty
		       cache_spr_block_writeback <= 1'b0;
		       state <=  `OR1200_DCFSM_WAITSPRCS7;
		    end
	  end // if (hitmiss_eval & tag_v)
	  end
	  `OR1200_DCFSM_INV6: begin
	     cache_spr_block_flush <= 1'b0;
	     // Wait until SPR CS goes low before going back to idle
	     if (!spr_cswe)
	       state <=  `OR1200_DCFSM_IDLE;
	  end
	  `OR1200_DCFSM_WAITSPRCS7: begin
	     // Wait until SPR CS goes low before going back to idle
	     if (!spr_cswe)
	       state <=  `OR1200_DCFSM_IDLE;
	  end

	endcase // case (state)
      
   end // always @ (posedge clk or `OR1200_RST_EVENT rst)
   

endmodule

// END DC_FSM

// BEGIN DC_RAM

//////////////////////////////////////////////////////////////////////
////                                                              ////
////  OR1200's DC RAMs                                            ////
////                                                              ////
////  This file is part of the OpenRISC 1200 project              ////
////  http://opencores.org/project,or1k                           ////
////                                                              ////
////  Description                                                 ////
////  Instatiation of DC RAM blocks.                              ////
////                                                              ////
////  To Do:                                                      ////
////   - make it smaller and faster                               ////
////                                                              ////
////  Author(s):                                                  ////
////      - Damjan Lampret, lampret@opencores.org                 ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
//
// $Log: or1200_dc_ram.v,v $
// Revision 2.0  2010/06/30 11:00:00  ORSoC
// Minor update: 
// Coding style changed.
//

 

module or1200_dc_ram(
	// Reset and clock
	clk, rst,

`ifdef OR1200_BIST
	// RAM BIST
	mbist_si_i, mbist_so_o, mbist_ctrl_i,
`endif

	// Internal i/f
	addr, en, we, datain, dataout
);

parameter dw = `OR1200_OPERAND_WIDTH;
parameter aw = `OR1200_DCINDX;

//
// I/O
//
input				clk;
input				rst;
input	[aw-1:0]		addr;
input				en;
input	[3:0]			we;
input	[31:0]		datain;
output	[31:0]		dataout;

`ifdef OR1200_BIST
//
// RAM BIST
//
input				mbist_si_i;
input [`OR1200_MBIST_CTRL_WIDTH - 1:0] mbist_ctrl_i;       // bist chain shift control
output				mbist_so_o;
`endif

`ifdef OR1200_NO_DC

//
// Data cache not implemented
//
assign dataout = {dw{1'b0}};
`ifdef OR1200_BIST
assign mbist_so_o = mbist_si_i;
`endif

`else

//
// Instantiation of RAM block
//
   or1200_spram_32_bw #
     (
      .aw(`OR1200_DCINDX),
      .dw(dw)
      )
   dc_ram
     (
`ifdef OR1200_BIST
      // RAM BIST
      .mbist_si_i(mbist_si_i),
      .mbist_so_o(mbist_so_o),
      .mbist_ctrl_i(mbist_ctrl_i),
`endif
      .clk(clk),
      .ce(en),
      .we(we),
      .addr(addr),
      .di(datain),
      .doq(dataout)
      );
`endif

endmodule // or1200_dc_ram

// END DC_RAM

// BEGIN SPRAM_32_BW

//////////////////////////////////////////////////////////////////////
////                                                              ////
////  Generic Single-Port Synchronous RAM 32-bit Byte-Write       ////
////                                                              ////
////  This file is part of memory library available from          ////
////  http://www.opencores.org/cvsweb.shtml/generic_memories/     ////
////                                                              ////
////  Description                                                 ////
////  This block is a wrapper with common single-port             ////
////  synchronous memory interface for different                  ////
////  types of ASIC and FPGA RAMs. Beside universal memory        ////
////  interface it also provides behavioral model of generic      ////
////  single-port synchronous RAM.                                ////
////  It should be used in all OPENCORES designs that want to be  ////
////  portable accross different target technologies and          ////
////  independent of target memory.                               ////
////                                                              ////
////  Author(s):                                                  ////
////      - Michael Unneback, unneback@opencores.org              ////
////      - Tadej Markovic, tadej.markovic@gmail.com              ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// CVS Revision History
//
// $Log: or1200_dpram_32x32.v,v $
// Revision 2.0  2010/06/30 11:00:00  ORSoC
// New 
//

 

module or1200_spram_32_bw
  (
`ifdef OR1200_BIST
   // RAM BIST
   mbist_si_i, mbist_so_o, mbist_ctrl_i,
`endif
   // Generic synchronous single-port RAM interface
   clk, ce, we, addr, di, doq
   );
   
   //
   // Default address and data buses width
   //
   parameter aw = 10;
   parameter dw = 32;
   
`ifdef OR1200_BIST
   //
   // RAM BIST
   //
   input mbist_si_i;
   input [`OR1200_MBIST_CTRL_WIDTH - 1:0] mbist_ctrl_i;
   output 				  mbist_so_o;
`endif
   
   //
   // Generic synchronous single-port RAM interface
   //
   input 				  clk;	// Clock
   input 				  ce;	// Chip enable input
   input [3:0]				  we;	// Write enable input
   input [aw-1:0] 			  addr;	// address bus inputs
   input [31:0] 			  di;	// input data bus
   output [31:0] 			  doq;	// output data bus
   
   //
   // Internal wires and registers
   //

   //
   // Generic single-port synchronous RAM model
   //
   
   //
   // Generic RAM's registers and wires
   //
`ifdef OR1200_GENERIC   
   reg [7:0] 				  mem0 [(1<<aw)-1:0] /*synthesis syn_ramstyle = "no_rw_check"*/;
   reg [7:0] 				  mem1 [(1<<aw)-1:0] /*synthesis syn_ramstyle = "no_rw_check"*/;
   reg [7:0] 				  mem2 [(1<<aw)-1:0] /*synthesis syn_ramstyle = "no_rw_check"*/;
   reg [7:0] 				  mem3 [(1<<aw)-1:0] /*synthesis syn_ramstyle = "no_rw_check"*/;
`else
   reg [7:0] 				  mem0 [(1<<aw)-1:0];
   reg [7:0] 				  mem1 [(1<<aw)-1:0];
   reg [7:0] 				  mem2 [(1<<aw)-1:0];
   reg [7:0] 				  mem3 [(1<<aw)-1:0];
`endif
   reg [aw-1:0] 			  addr_reg;		// RAM address register
   
   //
   // Data output drivers
   //
   assign doq = {mem0[addr_reg], mem1[addr_reg], mem2[addr_reg], mem3[addr_reg]};
   
   //
   // RAM read address register
   //
   always @(posedge clk)
     if (ce)
       addr_reg <=  addr;
   
   //
   // RAM write - big endian selection
   //
   always @(posedge clk)
     if (ce) begin
       if (we[3])
         mem0[addr] <=  di[31:24];
       if (we[2])
         mem1[addr] <=  di[23:16];
       if (we[1])
         mem2[addr] <=  di[15:08];
       if (we[0])
         mem3[addr] <=  di[07:00];
     end
   
endmodule // or1200_spram

// END SPRAM_32_BW

// BEGIN DC_TAG

//////////////////////////////////////////////////////////////////////
////                                                              ////
////  OR1200's DC TAG RAMs                                        ////
////                                                              ////
////  This file is part of the OpenRISC 1200 project              ////
////  http://opencores.org/project,or1k                           ////
////                                                              ////
////  Description                                                 ////
////  Instatiation of data cache tag rams.                        ////
////                                                              ////
////  To Do:                                                      ////
////   - make it smaller and faster                               ////
////                                                              ////
////  Author(s):                                                  ////
////      - Damjan Lampret, lampret@opencores.org                 ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// $Log: or1200_dc_tag.v,v $
// Revision 2.0  2010/06/30 11:00:00  ORSoC
// Minor update: 
// Coding style changed.
//

 

module or1200_dc_tag(
	// Clock and reset
	clk, rst,

`ifdef OR1200_BIST
	// RAM BIST
	mbist_si_i, mbist_so_o, mbist_ctrl_i,
`endif

	// Internal i/f
	addr, en, we, datain, tag_v, tag, dirty
);

parameter dw = `OR1200_DCTAG_W+1;
parameter aw = `OR1200_DCTAG;

//
// I/O
//
input				clk;
input				rst;
input	[aw-1:0]		addr;
input				en;
input				we;
input	[31:0]		datain;
output				tag_v;
output	[dw-3:0]		tag;
output  			dirty;
   

`ifdef OR1200_BIST
//
// RAM BIST
//
input mbist_si_i;
input [`OR1200_MBIST_CTRL_WIDTH - 1:0] mbist_ctrl_i;
output mbist_so_o;
`endif

`ifdef OR1200_NO_DC

//
// Data cache not implemented
//
assign tag = {31{1'b0}};
assign tag_v = 1'b0;
`ifdef OR1200_BIST
assign mbist_so_o = mbist_si_i;
`endif

`else

//
// Instantiation of TAG RAM block
//
// Data widths are tag width plus one for valid
   or1200_spram #
     (
      .aw(`OR1200_DCTAG),
      .dw(`OR1200_DCTAG_W + 1)
      )
   dc_tag0
     (
`ifdef OR1200_BIST
      // RAM BIST
      .mbist_si_i(mbist_si_i),
      .mbist_so_o(mbist_so_o),
      .mbist_ctrl_i(mbist_ctrl_i),
`endif
      .clk(clk),
      .ce(en),
      .we(we),
      .addr(addr),
      .di(datain),
      .doq({tag, tag_v, dirty})
      );
`endif

endmodule // or1200_dc_tag

// END DC_TAG

// BEGIN SPRAM

//////////////////////////////////////////////////////////////////////
////                                                              ////
////  Generic Single-Port Synchronous RAM                         ////
////                                                              ////
////  This file is part of memory library available from          ////
////  http://www.opencores.org/cvsweb.shtml/generic_memories/     ////
////                                                              ////
////  Description                                                 ////
////  This block is a wrapper with common single-port             ////
////  synchronous memory interface for different                  ////
////  types of ASIC and FPGA RAMs. Beside universal memory        ////
////  interface it also provides behavioral model of generic      ////
////  single-port synchronous RAM.                                ////
////  It should be used in all OPENCORES designs that want to be  ////
////  portable accross different target technologies and          ////
////  independent of target memory.                               ////
////                                                              ////
////  Author(s):                                                  ////
////      - Michael Unneback, unneback@opencores.org              ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// CVS Revision History
//
// $Log: or1200_dpram_32x32.v,v $
// Revision 2.0  2010/06/30 11:00:00  ORSoC
// New 
//

 

module or1200_spram
  (
`ifdef OR1200_BIST
   // RAM BIST
   mbist_si_i, mbist_so_o, mbist_ctrl_i,
`endif
   // Generic synchronous single-port RAM interface
   clk, ce, we, addr, di, doq
   );
   
   //
   // Default address and data buses width
   //
   parameter aw = 10;
   parameter dw = 32;
   
`ifdef OR1200_BIST
   //
   // RAM BIST
   //
   input mbist_si_i;
   input [`OR1200_MBIST_CTRL_WIDTH - 1:0] mbist_ctrl_i;
   output 				  mbist_so_o;
`endif
   
   //
   // Generic synchronous single-port RAM interface
   //
   input 				  clk;	// Clock
   input 				  ce;	// Chip enable input
   input 				  we;	// Write enable input
   //input 				  oe;	// Output enable input
   input [aw-1:0] 			  addr;	// address bus inputs
   input [31:0] 			  di;	// input data bus
   output [31:0] 			  doq;	// output data bus
   
   //
   // Internal wires and registers
   //

   //
   // Generic single-port synchronous RAM model
   //
   
   //
   // Generic RAM's registers and wires
   //
`ifdef OR1200_GENERIC   
   reg [31:0] 			  mem [(1<<aw)-1:0] /*synthesis syn_ramstyle = "no_rw_check"*/;
`else
   reg [31:0] 			  mem [(1<<aw)-1:0];
`endif
   reg [aw-1:0] 			  addr_reg;		// RAM address register
   
   //
   // Data output drivers
   //
   //assign doq = (oe) ? mem[addr_reg] : {dw{1'b0}};
   assign doq = mem[addr_reg];
   
   //
   // RAM read address register
   //
   always @(posedge clk)
     if (ce)
       addr_reg <=  addr;
   
   //
   // RAM write
   //
   always @(posedge clk)
     if (we && ce)
       mem[addr] <=  di;
   
endmodule // or1200_spram

// END SPRAM

// BEGIN DMMU_TOP

//////////////////////////////////////////////////////////////////////
////                                                              ////
////  OR1200's Data MMU top level                                 ////
////                                                              ////
////  This file is part of the OpenRISC 1200 project              ////
////  http://www.opencores.org/project,or1k                       ////
////                                                              ////
////  Description                                                 ////
////  Instantiation of all DMMU blocks.                           ////
////                                                              ////
////  To Do:                                                      ////
////   - make it smaller and faster                               ////
////                                                              ////
////  Author(s):                                                  ////
////      - Damjan Lampret, lampret@opencores.org                 ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// $Log: or1200_dmmu_top.v,v $
// Revision 2.0  2010/06/30 11:00:00  ORSoC
// Minor update: 
// Bugs fixed. 
//

 

//
// Data MMU
//

module or1200_dmmu_top(
	// Rst and clk
	clk, rst,

	// CPU i/f
	dc_en, dmmu_en, supv, dcpu_adr_i, dcpu_cycstb_i, dcpu_we_i,
	dcpu_tag_o, dcpu_err_o,

	// SPR access
	spr_cs, spr_write, spr_addr, spr_dat_i, spr_dat_o,

`ifdef OR1200_BIST
	// RAM BIST
	mbist_si_i, mbist_so_o, mbist_ctrl_i,
`endif

	// DC i/f
	qmemdmmu_err_i, qmemdmmu_tag_i, qmemdmmu_adr_o, qmemdmmu_cycstb_o, qmemdmmu_ci_o
);

parameter dw = `OR1200_OPERAND_WIDTH;
parameter aw = `OR1200_OPERAND_WIDTH;

//
// I/O
//

//
// Clock and reset
//
input				clk;
input				rst;

//
// CPU I/F
//
input				dc_en;
input				dmmu_en;
input				supv;
input	[aw-1:0]		dcpu_adr_i;
input				dcpu_cycstb_i;
input				dcpu_we_i;
output	[3:0]			dcpu_tag_o;
output				dcpu_err_o;

//
// SPR access
//
input				spr_cs;
input				spr_write;
input	[aw-1:0]		spr_addr;
input	[31:0]			spr_dat_i;
output	[31:0]			spr_dat_o;

`ifdef OR1200_BIST
//
// RAM BIST
//
input mbist_si_i;
input [`OR1200_MBIST_CTRL_WIDTH - 1:0] mbist_ctrl_i;
output mbist_so_o;
`endif

//
// DC I/F
//
input				qmemdmmu_err_i;
input	[3:0]			qmemdmmu_tag_i;
output	[aw-1:0]		qmemdmmu_adr_o;
output				qmemdmmu_cycstb_o;
output				qmemdmmu_ci_o;

//
// Internal wires and regs
//
wire				dtlb_spr_access;
wire	[31:`OR1200_DMMU_PS]	dtlb_ppn;
wire				dtlb_hit;
wire				dtlb_uwe;
wire				dtlb_ure;
wire				dtlb_swe;
wire				dtlb_sre;
wire	[31:0]			dtlb_dat_o;
wire				dtlb_en;
wire				dtlb_ci;
wire				fault;
wire				miss;
`ifdef OR1200_NO_DMMU
`else
reg				dtlb_done;
reg	[31:`OR1200_DMMU_PS]	dcpu_vpn_r;
`endif

//
// Implemented bits inside match and translate registers
//
// dtlbwYmrX: vpn 31-10  v 0
// dtlbwYtrX: ppn 31-10  swe 9  sre 8  uwe 7  ure 6
//
// dtlb memory width:
// 19 bits for ppn
// 13 bits for vpn
// 1 bit for valid
// 4 bits for protection
// 1 bit for cache inhibit

`ifdef OR1200_NO_DMMU

//
// Put all outputs in inactive state
//
assign spr_dat_o = 32'h00000000;
assign qmemdmmu_adr_o = dcpu_adr_i;
assign dcpu_tag_o = qmemdmmu_tag_i;
assign qmemdmmu_cycstb_o = dcpu_cycstb_i;
assign dcpu_err_o = qmemdmmu_err_i;
assign qmemdmmu_ci_o = `OR1200_DMMU_CI;
`ifdef OR1200_BIST
assign mbist_so_o = mbist_si_i;
`endif

`else

//
// DTLB SPR access
//
// 0A00 - 0AFF  dtlbmr w0
// 0A00 - 0A3F  dtlbmr w0 [63:0]
//
// 0B00 - 0BFF  dtlbtr w0
// 0B00 - 0B3F  dtlbtr w0 [63:0]
//
assign dtlb_spr_access = spr_cs;

//
// Tags:
//
// OR1200_DTAG_TE - TLB miss Exception
// OR1200_DTAG_PE - Page fault Exception
//
assign dcpu_tag_o = miss ? `OR1200_DTAG_TE : fault ? `OR1200_DTAG_PE : qmemdmmu_tag_i;

//
// dcpu_err_o
//
assign dcpu_err_o = miss | fault | qmemdmmu_err_i;

//
// Assert dtlb_done one clock cycle after new address and dtlb_en must be active
//
always @(posedge clk or `OR1200_RST_EVENT rst)
	if (rst == `OR1200_RST_VALUE)
		dtlb_done <=  1'b0;
	else if (dtlb_en)
		dtlb_done <=  dcpu_cycstb_i;
	else
		dtlb_done <=  1'b0;

//
// Cut transfer if something goes wrong with translation. Also delayed signals 
// because of translation delay.
assign qmemdmmu_cycstb_o = (dc_en & dmmu_en) ? 
			   !(miss | fault) & dtlb_done & dcpu_cycstb_i : 
			   !(miss | fault) & dcpu_cycstb_i;


//
// Cache Inhibit
//
assign qmemdmmu_ci_o = dmmu_en ? dtlb_ci : `OR1200_DMMU_CI;

//
// Register dcpu_adr_i's VPN for use when DMMU is not enabled but PPN is 
// expected to come one clock cycle after offset part.
//
always @(posedge clk or `OR1200_RST_EVENT rst)
	if (rst == `OR1200_RST_VALUE)
		dcpu_vpn_r <=  {32-`OR1200_DMMU_PS{1'b0}};
	else
		dcpu_vpn_r <=  dcpu_adr_i[31:`OR1200_DMMU_PS];

//
// Physical address is either translated virtual address or
// simply equal when DMMU is disabled
//
assign qmemdmmu_adr_o = dmmu_en ? {dtlb_ppn, dcpu_adr_i[`OR1200_DMMU_PS-1:0]} :
			          dcpu_adr_i;

//
// Output to SPRS unit
//
assign spr_dat_o = dtlb_spr_access ? dtlb_dat_o : 32'h00000000;

//
// Page fault exception logic
//
assign fault = dtlb_done &
	(  (!dcpu_we_i & !supv & !dtlb_ure) // Load in user mode not enabled
	   || (!dcpu_we_i & supv & !dtlb_sre) // Load in supv mode not enabled
	   || (dcpu_we_i & !supv & !dtlb_uwe) // Store in user mode not enabled
	   || (dcpu_we_i & supv & !dtlb_swe)); // Store in supv mode not enabled

//
// TLB Miss exception logic
//
assign miss = dtlb_done & !dtlb_hit;

//
// DTLB Enable
//
assign dtlb_en = dmmu_en & dcpu_cycstb_i;

//
// Instantiation of DTLB
//
or1200_dmmu_tlb or1200_dmmu_tlb(
	// Rst and clk
        .clk(clk),
	.rst(rst),

        // I/F for translation
        .tlb_en(dtlb_en),
	.vaddr(dcpu_adr_i),
	.hit(dtlb_hit),
	.ppn(dtlb_ppn),
	.uwe(dtlb_uwe),
	.ure(dtlb_ure),
	.swe(dtlb_swe),
	.sre(dtlb_sre),
	.ci(dtlb_ci),

`ifdef OR1200_BIST
	// RAM BIST
	.mbist_si_i(mbist_si_i),
	.mbist_so_o(mbist_so_o),
	.mbist_ctrl_i(mbist_ctrl_i),
`endif

        // SPR access
        .spr_cs(dtlb_spr_access),
	.spr_write(spr_write),
	.spr_addr(spr_addr),
	.spr_dat_i(spr_dat_i),
	.spr_dat_o(dtlb_dat_o)
);

`endif

endmodule

// END DMMU_TOP

// BEGIN DMMU_TLB

//////////////////////////////////////////////////////////////////////
////                                                              ////
////  OR1200's Data TLB                                           ////
////                                                              ////
////  This file is part of the OpenRISC 1200 project              ////
////  http://www.opencores.org/project,or1k                       ////
////                                                              ////
////  Description                                                 ////
////  Instantiation of DTLB.                                      ////
////                                                              ////
////  To Do:                                                      ////
////   - make it smaller and faster                               ////
////                                                              ////
////  Author(s):                                                  ////
////      - Damjan Lampret, lampret@opencores.org                 ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
//
// $Log: or1200_dmmu_tlb.v,v $
// Revision 2.0  2010/06/30 11:00:00  ORSoC
// Minor update: 
// Bugs fixed, coding style changed. 
//

 

//
// Data TLB
//

module or1200_dmmu_tlb(
	// Rst and clk
	clk, rst,

	// I/F for translation
	tlb_en, vaddr, hit, ppn, uwe, ure, swe, sre, ci,

`ifdef OR1200_BIST
	// RAM BIST
	mbist_si_i, mbist_so_o, mbist_ctrl_i,
`endif

	// SPR access
	spr_cs, spr_write, spr_addr, spr_dat_i, spr_dat_o
);

parameter dw = `OR1200_OPERAND_WIDTH;
parameter aw = `OR1200_OPERAND_WIDTH;

//
// I/O
//

//
// Clock and reset
//
input				clk;
input				rst;

//
// I/F for translation
//
input				tlb_en;
input	[aw-1:0]		vaddr;
output				hit;
output	[31:`OR1200_DMMU_PS]	ppn;
output				uwe;
output				ure;
output				swe;
output				sre;
output				ci;

`ifdef OR1200_BIST
//
// RAM BIST
//
input mbist_si_i;
input [`OR1200_MBIST_CTRL_WIDTH - 1:0] mbist_ctrl_i;
output mbist_so_o;
`endif

//
// SPR access
//
input				spr_cs;
input				spr_write;
input	[31:0]			spr_addr;
input	[31:0]			spr_dat_i;
output	[31:0]			spr_dat_o;

//
// Internal wires and regs
//
wire	[`OR1200_DTLB_TAG]	vpn;
wire				v;
wire	[`OR1200_DTLB_INDXW-1:0]	tlb_index;
wire				tlb_mr_en;
wire				tlb_mr_we;
wire	[`OR1200_DTLBMRW-1:0]	tlb_mr_ram_in;
wire	[`OR1200_DTLBMRW-1:0]	tlb_mr_ram_out;
wire				tlb_tr_en;
wire				tlb_tr_we;
wire	[`OR1200_DTLBTRW-1:0]	tlb_tr_ram_in;
wire	[`OR1200_DTLBTRW-1:0]	tlb_tr_ram_out;
`ifdef OR1200_BIST
//
// RAM BIST
//
wire				mbist_mr_so;
wire				mbist_tr_so;
wire				mbist_mr_si = mbist_si_i;
wire				mbist_tr_si = mbist_mr_so;
assign				mbist_so_o = mbist_tr_so;
`endif

//
// Implemented bits inside match and translate registers
//
// dtlbwYmrX: vpn 31-19  v 0
// dtlbwYtrX: ppn 31-13  swe 9  sre 8  uwe 7  ure 6
//
// dtlb memory width:
// 19 bits for ppn
// 13 bits for vpn
// 1 bit for valid
// 4 bits for protection
// 1 bit for cache inhibit

//
// Enable for Match registers
//
assign tlb_mr_en = tlb_en | (spr_cs & !spr_addr[`OR1200_DTLB_TM_ADDR]);

//
// Write enable for Match registers
//
assign tlb_mr_we = spr_cs & spr_write & !spr_addr[`OR1200_DTLB_TM_ADDR];

//
// Enable for Translate registers
//
assign tlb_tr_en = tlb_en | (spr_cs & spr_addr[`OR1200_DTLB_TM_ADDR]);

//
// Write enable for Translate registers
//
assign tlb_tr_we = spr_cs & spr_write & spr_addr[`OR1200_DTLB_TM_ADDR];

//
// Output to SPRS unit
//
assign spr_dat_o = (spr_cs & !spr_write & !spr_addr[`OR1200_DTLB_TM_ADDR]) ?
			{vpn, tlb_index, {`OR1200_DTLB_TAGW-7{1'b0}}, 1'b0, 5'b00000, v} : 
		(spr_cs & !spr_write & spr_addr[`OR1200_DTLB_TM_ADDR]) ?
			{ppn, {`OR1200_DMMU_PS-10{1'b0}}, swe, sre, uwe, ure, {4{1'b0}}, ci, 1'b0} :
			32'h00000000;

//
// Assign outputs from Match registers
//
assign {vpn, v} = tlb_mr_ram_out;

//
// Assign to Match registers inputs
//
assign tlb_mr_ram_in = {spr_dat_i[`OR1200_DTLB_TAG], spr_dat_i[`OR1200_DTLBMR_V_BITS]};

//
// Assign outputs from Translate registers
//
assign {ppn, swe, sre, uwe, ure, ci} = tlb_tr_ram_out;

//
// Assign to Translate registers inputs
//
assign tlb_tr_ram_in = {spr_dat_i[31:`OR1200_DMMU_PS],
			spr_dat_i[`OR1200_DTLBTR_SWE_BITS],
			spr_dat_i[`OR1200_DTLBTR_SRE_BITS],
			spr_dat_i[`OR1200_DTLBTR_UWE_BITS],
			spr_dat_i[`OR1200_DTLBTR_URE_BITS],
			spr_dat_i[`OR1200_DTLBTR_CI_BITS]};

//
// Generate hit
//
assign hit = (vpn == vaddr[`OR1200_DTLB_TAG]) & v;

//
// TLB index is normally vaddr[18:13]. If it is SPR access then index is
// spr_addr[5:0].
//
assign tlb_index = spr_cs ? spr_addr[`OR1200_DTLB_INDXW-1:0] : vaddr[`OR1200_DTLB_INDX];

//
// Instantiation of DTLB Match Registers
//
//or1200_spram_64x14 dtlb_mr_ram(
   or1200_spram #
     (
      .aw(6),
      .dw(14)
      )
   dtlb_ram
     (
      .clk(clk),
`ifdef OR1200_BIST
      // RAM BIST
      .mbist_si_i(mbist_mr_si),
      .mbist_so_o(mbist_mr_so),
      .mbist_ctrl_i(mbist_ctrl_i),
`endif
      .ce(tlb_mr_en),
      .we(tlb_mr_we),
      .addr(tlb_index),
      .di(tlb_mr_ram_in),
      .doq(tlb_mr_ram_out)
      );
   
   //
   // Instantiation of DTLB Translate Registers
   //
   //or1200_spram_64x24 dtlb_tr_ram(
   or1200_spram #
     (
      .aw(6),
      .dw(24)
      )
   dtlb_tr_ram
     (
      .clk(clk),
`ifdef OR1200_BIST
      // RAM BIST
      .mbist_si_i(mbist_tr_si),
      .mbist_so_o(mbist_tr_so),
      .mbist_ctrl_i(mbist_ctrl_i),
`endif
      .ce(tlb_tr_en),
      .we(tlb_tr_we),
      .addr(tlb_index),
      .di(tlb_tr_ram_in),
      .doq(tlb_tr_ram_out)
      );
   
endmodule // or1200_dmmu_tlb

// END DMMU_TLB

// BEGIN DU

//////////////////////////////////////////////////////////////////////
////                                                              ////
////  OR1200's Debug Unit                                         ////
////                                                              ////
////  This file is part of the OpenRISC 1200 project              ////
////  http://www.opencores.org/project,or1k                       ////
////                                                              ////
////  Description                                                 ////
////  Basic OR1200 debug unit.                                    ////
////                                                              ////
////  To Do:                                                      ////
////   - make it smaller and faster                               ////
////                                                              ////
////  Author(s):                                                  ////
////      - Damjan Lampret, lampret@opencores.org                 ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
//
// $Log: or1200_du.v,v $
// Revision 2.0  2010/06/30 11:00:00  ORSoC
// Minor update: 
// Bugs fixed. 

 

//
// Debug unit
//

module or1200_du(
	// RISC Internal Interface
	clk, rst,
	dcpu_cycstb_i, dcpu_we_i, dcpu_adr_i, dcpu_dat_lsu,
	dcpu_dat_dc, icpu_cycstb_i,
	ex_freeze, branch_op, ex_insn, id_pc,
	spr_dat_npc, rf_dataw,
	du_dsr, du_dmr1, du_stall, du_addr, du_dat_i, du_dat_o,
	du_read, du_write, du_except_stop, du_hwbkpt, du_flush_pipe,
	spr_cs, spr_write, spr_addr, spr_dat_i, spr_dat_o,

	// External Debug Interface
	dbg_stall_i, dbg_ewt_i,	dbg_lss_o, dbg_is_o, dbg_wp_o, dbg_bp_o,
	dbg_stb_i, dbg_we_i, dbg_adr_i, dbg_dat_i, dbg_dat_o, dbg_ack_o
);

parameter dw = `OR1200_OPERAND_WIDTH;
parameter aw = `OR1200_OPERAND_WIDTH;

//
// I/O
//

//
// RISC Internal Interface
//
input				clk;		// Clock
input				rst;		// Reset
input				dcpu_cycstb_i;	// LSU status
input				dcpu_we_i;	// LSU status
input	[31:0]			dcpu_adr_i;	// LSU addr
input	[31:0]			dcpu_dat_lsu;	// LSU store data
input	[31:0]			dcpu_dat_dc;	// LSU load data
input	[`OR1200_FETCHOP_WIDTH-1:0]	icpu_cycstb_i;	// IFETCH unit status
input				ex_freeze;	// EX stage freeze
input	[`OR1200_BRANCHOP_WIDTH-1:0]	branch_op;	// Branch op
input	[31:0]		ex_insn;	// EX insn
input	[31:0]			id_pc;		// insn fetch EA
input	[31:0]			spr_dat_npc;	// Next PC (for trace)
input	[31:0]			rf_dataw;	// ALU result (for trace)
output	[`OR1200_DU_DSR_WIDTH-1:0]     du_dsr;		// DSR
output	[24: 0]			du_dmr1;
output				du_stall;	// Debug Unit Stall
output	[aw-1:0]		du_addr;	// Debug Unit Address
input	[31:0]		du_dat_i;	// Debug Unit Data In
output	[31:0]		du_dat_o;	// Debug Unit Data Out
output				du_read;	// Debug Unit Read Enable
output				du_write;	// Debug Unit Write Enable
input	[13:0]			du_except_stop;	// Exception masked by DSR
output				du_hwbkpt;	// Cause trap exception (HW Breakpoints)
output				du_flush_pipe;	// Cause pipeline flush and pc<-npc
input				spr_cs;		// SPR Chip Select
input				spr_write;	// SPR Read/Write
input	[aw-1:0]		spr_addr;	// SPR Address
input	[31:0]		spr_dat_i;	// SPR Data Input
output	[31:0]		spr_dat_o;	// SPR Data Output

//
// External Debug Interface
//
input			dbg_stall_i;	// External Stall Input
input			dbg_ewt_i;	// External Watchpoint Trigger Input
output	[3:0]		dbg_lss_o;	// External Load/Store Unit Status
output	[1:0]		dbg_is_o;	// External Insn Fetch Status
output	[10:0]		dbg_wp_o;	// Watchpoints Outputs
output			dbg_bp_o;	// Breakpoint Output
input			dbg_stb_i;      // External Address/Data Strobe
input			dbg_we_i;       // External Write Enable
input	[aw-1:0]	dbg_adr_i;	// External Address Input
input	[31:0]	dbg_dat_i;	// External Data Input
output	[31:0]	dbg_dat_o;	// External Data Output
output			dbg_ack_o;	// External Data Acknowledge (not WB compatible)
reg	[31:0]	dbg_dat_o;	// External Data Output
reg			dbg_ack_o;	// External Data Acknowledge (not WB compatible)


//
// Some connections go directly from the CPU through DU to Debug I/F
//
`ifdef OR1200_DU_STATUS_UNIMPLEMENTED
assign dbg_lss_o = 4'b0000;

reg	[1:0]			dbg_is_o;
//
// Show insn activity (temp, must be removed)
//
always @(posedge clk or `OR1200_RST_EVENT rst)
	if (rst == `OR1200_RST_VALUE)
		dbg_is_o <=  2'b00;
	else if (!ex_freeze & ~((ex_insn[31:26] == `OR1200_OR32_NOP) & ex_insn[16]))
		dbg_is_o <=  ~dbg_is_o;
`ifdef UNUSED
assign dbg_is_o = 2'b00;
`endif
`else
assign dbg_lss_o = dcpu_cycstb_i ? {dcpu_we_i, 3'b000} : 4'b0000;
assign dbg_is_o = {1'b0, icpu_cycstb_i};
`endif
assign dbg_wp_o = 11'b000_0000_0000;

//
// Some connections go directly from Debug I/F through DU to the CPU
//
assign du_stall = dbg_stall_i;
assign du_addr = dbg_adr_i;
assign du_dat_o = dbg_dat_i;
assign du_read = dbg_stb_i && !dbg_we_i;
assign du_write = dbg_stb_i && dbg_we_i;

//
// After a sw breakpoint, the replaced instruction need to be executed.
// We flush the entire pipeline and set the pc to the current address
// to execute the restored address.
//

reg du_flush_pipe_r;
reg dbg_stall_i_r;

assign du_flush_pipe = du_flush_pipe_r;

//
// Register du_flush_pipe
//
always @(posedge clk or `OR1200_RST_EVENT rst) begin
	if (rst == `OR1200_RST_VALUE) begin
		du_flush_pipe_r   <=  1'b0;
	end
	else begin
		du_flush_pipe_r   <=  (dbg_stall_i_r && !dbg_stall_i && |du_except_stop);
	end
end

//
// Detect dbg_stall falling edge
//
always @(posedge clk or `OR1200_RST_EVENT rst) begin
	if (rst == `OR1200_RST_VALUE) begin
		dbg_stall_i_r   <=  1'b0;
	end
	else begin
		dbg_stall_i_r   <=  dbg_stall_i;
	end
end

reg				dbg_ack;
//
// Generate acknowledge -- just delay stb signal
//
always @(posedge clk or `OR1200_RST_EVENT rst) begin
	if (rst == `OR1200_RST_VALUE) begin
		dbg_ack   <=  1'b0;
		dbg_ack_o <=  1'b0;
	end
	else begin
		dbg_ack   <=  dbg_stb_i;		// valid when du_dat_i 
		dbg_ack_o <=  dbg_ack & dbg_stb_i;	// valid when dbg_dat_o 
	end
end

// 
// Register data output
//
always @(posedge clk)
    dbg_dat_o <=  du_dat_i;

`ifdef OR1200_DU_IMPLEMENTED

//
// Debug Mode Register 1
//
`ifdef OR1200_DU_DMR1
reg	[24:0]			dmr1;		// DMR1 implemented
`else
wire	[24:0]			dmr1;		// DMR1 not implemented
`endif
assign du_dmr1 = dmr1;

//
// Debug Mode Register 2
//
`ifdef OR1200_DU_DMR2
reg	[23:0]			dmr2;		// DMR2 implemented
`else
wire	[23:0]			dmr2;		// DMR2 not implemented
`endif

//
// Debug Stop Register
//
`ifdef OR1200_DU_DSR
reg	[`OR1200_DU_DSR_WIDTH-1:0]	dsr;		// DSR implemented
`else
wire	[`OR1200_DU_DSR_WIDTH-1:0]	dsr;		// DSR not implemented
`endif

//
// Debug Reason Register
//
`ifdef OR1200_DU_DRR
reg	[13:0]			drr;		// DRR implemented
`else
wire	[13:0]			drr;		// DRR not implemented
`endif

//
// Debug Value Register N
//
`ifdef OR1200_DU_DVR0
reg	[31:0]			dvr0;
`else
wire	[31:0]			dvr0;
`endif

//
// Debug Value Register N
//
`ifdef OR1200_DU_DVR1
reg	[31:0]			dvr1;
`else
wire	[31:0]			dvr1;
`endif

//
// Debug Value Register N
//
`ifdef OR1200_DU_DVR2
reg	[31:0]			dvr2;
`else
wire	[31:0]			dvr2;
`endif

//
// Debug Value Register N
//
`ifdef OR1200_DU_DVR3
reg	[31:0]			dvr3;
`else
wire	[31:0]			dvr3;
`endif

//
// Debug Value Register N
//
`ifdef OR1200_DU_DVR4
reg	[31:0]			dvr4;
`else
wire	[31:0]			dvr4;
`endif

//
// Debug Value Register N
//
`ifdef OR1200_DU_DVR5
reg	[31:0]			dvr5;
`else
wire	[31:0]			dvr5;
`endif

//
// Debug Value Register N
//
`ifdef OR1200_DU_DVR6
reg	[31:0]			dvr6;
`else
wire	[31:0]			dvr6;
`endif

//
// Debug Value Register N
//
`ifdef OR1200_DU_DVR7
reg	[31:0]			dvr7;
`else
wire	[31:0]			dvr7;
`endif

//
// Debug Control Register N
//
`ifdef OR1200_DU_DCR0
reg	[7:0]			dcr0;
`else
wire	[7:0]			dcr0;
`endif

//
// Debug Control Register N
//
`ifdef OR1200_DU_DCR1
reg	[7:0]			dcr1;
`else
wire	[7:0]			dcr1;
`endif

//
// Debug Control Register N
//
`ifdef OR1200_DU_DCR2
reg	[7:0]			dcr2;
`else
wire	[7:0]			dcr2;
`endif

//
// Debug Control Register N
//
`ifdef OR1200_DU_DCR3
reg	[7:0]			dcr3;
`else
wire	[7:0]			dcr3;
`endif

//
// Debug Control Register N
//
`ifdef OR1200_DU_DCR4
reg	[7:0]			dcr4;
`else
wire	[7:0]			dcr4;
`endif

//
// Debug Control Register N
//
`ifdef OR1200_DU_DCR5
reg	[7:0]			dcr5;
`else
wire	[7:0]			dcr5;
`endif

//
// Debug Control Register N
//
`ifdef OR1200_DU_DCR6
reg	[7:0]			dcr6;
`else
wire	[7:0]			dcr6;
`endif

//
// Debug Control Register N
//
`ifdef OR1200_DU_DCR7
reg	[7:0]			dcr7;
`else
wire	[7:0]			dcr7;
`endif

//
// Debug Watchpoint Counter Register 0
//
`ifdef OR1200_DU_DWCR0
reg	[31:0]			dwcr0;
`else
wire	[31:0]			dwcr0;
`endif

//
// Debug Watchpoint Counter Register 1
//
`ifdef OR1200_DU_DWCR1
reg	[31:0]			dwcr1;
`else
wire	[31:0]			dwcr1;
`endif

//
// Internal wires
//
wire				dmr1_sel; 	// DMR1 select
wire				dmr2_sel; 	// DMR2 select
wire				dsr_sel; 	// DSR select
wire				drr_sel; 	// DRR select
wire				dvr0_sel,
				dvr1_sel,
				dvr2_sel,
				dvr3_sel,
				dvr4_sel,
				dvr5_sel,
				dvr6_sel,
				dvr7_sel; 	// DVR selects
wire				dcr0_sel,
				dcr1_sel,
				dcr2_sel,
				dcr3_sel,
				dcr4_sel,
				dcr5_sel,
				dcr6_sel,
				dcr7_sel; 	// DCR selects
wire				dwcr0_sel,
				dwcr1_sel; 	// DWCR selects
reg				dbg_bp_r;
reg 				ex_freeze_q;
`ifdef OR1200_DU_HWBKPTS
reg	[31:0]			match_cond0_ct;
reg	[31:0]			match_cond1_ct;
reg	[31:0]			match_cond2_ct;
reg	[31:0]			match_cond3_ct;
reg	[31:0]			match_cond4_ct;
reg	[31:0]			match_cond5_ct;
reg	[31:0]			match_cond6_ct;
reg	[31:0]			match_cond7_ct;
reg				match_cond0_stb;
reg				match_cond1_stb;
reg				match_cond2_stb;
reg				match_cond3_stb;
reg				match_cond4_stb;
reg				match_cond5_stb;
reg				match_cond6_stb;
reg				match_cond7_stb;
reg				match0;
reg				match1;
reg				match2;
reg				match3;
reg				match4;
reg				match5;
reg				match6;
reg				match7;
reg				wpcntr0_match;
reg				wpcntr1_match;
reg				incr_wpcntr0;
reg				incr_wpcntr1;
reg	[10:0]			wp;
`endif
wire				du_hwbkpt;
reg				du_hwbkpt_hold;
`ifdef OR1200_DU_READREGS
reg	[31:0]			spr_dat_o;
`endif
reg	[13:0]			except_stop;	// Exceptions that stop because of DSR
`ifdef OR1200_DU_TB_IMPLEMENTED
wire				tb_enw;
reg	[7:0]			tb_wadr;
reg [31:0]			tb_timstmp;
`endif
wire	[31:0]			tbia_dat_o;
wire	[31:0]			tbim_dat_o;
wire	[31:0]			tbar_dat_o;
wire	[31:0]			tbts_dat_o;

//
// DU registers address decoder
//
`ifdef OR1200_DU_DMR1
assign dmr1_sel = (spr_cs && (spr_addr[`OR1200_DUOFS_BITS] == `OR1200_DU_DMR1));
`endif
`ifdef OR1200_DU_DMR2
assign dmr2_sel = (spr_cs && (spr_addr[`OR1200_DUOFS_BITS] == `OR1200_DU_DMR2));
`endif
`ifdef OR1200_DU_DSR
assign dsr_sel = (spr_cs && (spr_addr[`OR1200_DUOFS_BITS] == `OR1200_DU_DSR));
`endif
`ifdef OR1200_DU_DRR
assign drr_sel = (spr_cs && (spr_addr[`OR1200_DUOFS_BITS] == `OR1200_DU_DRR));
`endif
`ifdef OR1200_DU_DVR0
assign dvr0_sel = (spr_cs && (spr_addr[`OR1200_DUOFS_BITS] == `OR1200_DU_DVR0));
`endif
`ifdef OR1200_DU_DVR1
assign dvr1_sel = (spr_cs && (spr_addr[`OR1200_DUOFS_BITS] == `OR1200_DU_DVR1));
`endif
`ifdef OR1200_DU_DVR2
assign dvr2_sel = (spr_cs && (spr_addr[`OR1200_DUOFS_BITS] == `OR1200_DU_DVR2));
`endif
`ifdef OR1200_DU_DVR3
assign dvr3_sel = (spr_cs && (spr_addr[`OR1200_DUOFS_BITS] == `OR1200_DU_DVR3));
`endif
`ifdef OR1200_DU_DVR4
assign dvr4_sel = (spr_cs && (spr_addr[`OR1200_DUOFS_BITS] == `OR1200_DU_DVR4));
`endif
`ifdef OR1200_DU_DVR5
assign dvr5_sel = (spr_cs && (spr_addr[`OR1200_DUOFS_BITS] == `OR1200_DU_DVR5));
`endif
`ifdef OR1200_DU_DVR6
assign dvr6_sel = (spr_cs && (spr_addr[`OR1200_DUOFS_BITS] == `OR1200_DU_DVR6));
`endif
`ifdef OR1200_DU_DVR7
assign dvr7_sel = (spr_cs && (spr_addr[`OR1200_DUOFS_BITS] == `OR1200_DU_DVR7));
`endif
`ifdef OR1200_DU_DCR0
assign dcr0_sel = (spr_cs && (spr_addr[`OR1200_DUOFS_BITS] == `OR1200_DU_DCR0));
`endif
`ifdef OR1200_DU_DCR1
assign dcr1_sel = (spr_cs && (spr_addr[`OR1200_DUOFS_BITS] == `OR1200_DU_DCR1));
`endif
`ifdef OR1200_DU_DCR2
assign dcr2_sel = (spr_cs && (spr_addr[`OR1200_DUOFS_BITS] == `OR1200_DU_DCR2));
`endif
`ifdef OR1200_DU_DCR3
assign dcr3_sel = (spr_cs && (spr_addr[`OR1200_DUOFS_BITS] == `OR1200_DU_DCR3));
`endif
`ifdef OR1200_DU_DCR4
assign dcr4_sel = (spr_cs && (spr_addr[`OR1200_DUOFS_BITS] == `OR1200_DU_DCR4));
`endif
`ifdef OR1200_DU_DCR5
assign dcr5_sel = (spr_cs && (spr_addr[`OR1200_DUOFS_BITS] == `OR1200_DU_DCR5));
`endif
`ifdef OR1200_DU_DCR6
assign dcr6_sel = (spr_cs && (spr_addr[`OR1200_DUOFS_BITS] == `OR1200_DU_DCR6));
`endif
`ifdef OR1200_DU_DCR7
assign dcr7_sel = (spr_cs && (spr_addr[`OR1200_DUOFS_BITS] == `OR1200_DU_DCR7));
`endif
`ifdef OR1200_DU_DWCR0
assign dwcr0_sel = (spr_cs && (spr_addr[`OR1200_DUOFS_BITS] == `OR1200_DU_DWCR0));
`endif
`ifdef OR1200_DU_DWCR1
assign dwcr1_sel = (spr_cs && (spr_addr[`OR1200_DUOFS_BITS] == `OR1200_DU_DWCR1));
`endif

// Track previous ex_freeze to detect when signals are updated
always @(posedge clk)
  ex_freeze_q <= ex_freeze;

//
// Decode started exception
//
// du_except_stop comes from or1200_except
//   
always @(du_except_stop or ex_freeze_q) begin
	except_stop = 14'b00_0000_0000_0000;
	casez (du_except_stop)
	        14'b1?_????_????_????:
			except_stop[`OR1200_DU_DRR_TTE] = 1'b1;
		14'b01_????_????_????: begin
			except_stop[`OR1200_DU_DRR_IE] = 1'b1;
		end
		14'b00_1???_????_????: begin
			except_stop[`OR1200_DU_DRR_IME] = 1'b1;
		end
		14'b00_01??_????_????:
			except_stop[`OR1200_DU_DRR_IPFE] = 1'b1;
		14'b00_001?_????_????: begin
			except_stop[`OR1200_DU_DRR_BUSEE] = 1'b1;
		end
		14'b00_0001_????_????:
			except_stop[`OR1200_DU_DRR_IIE] = 1'b1;
		14'b00_0000_1???_????: begin
			except_stop[`OR1200_DU_DRR_AE] = 1'b1;
		end
		14'b00_0000_01??_????: begin
			except_stop[`OR1200_DU_DRR_DME] = 1'b1;
		end
		14'b00_0000_001?_????:
			except_stop[`OR1200_DU_DRR_DPFE] = 1'b1;
		14'b00_0000_0001_????:
			except_stop[`OR1200_DU_DRR_BUSEE] = 1'b1;
		14'b00_0000_0000_1???: begin
			except_stop[`OR1200_DU_DRR_RE] = 1'b1;
		end
		14'b00_0000_0000_01??: begin
			except_stop[`OR1200_DU_DRR_TE] = 1'b1 & ~ex_freeze_q;
		end
		14'b00_0000_0000_001?: begin
		        except_stop[`OR1200_DU_DRR_FPE] = 1'b1;
		end	  
		14'b00_0000_0000_0001:
			except_stop[`OR1200_DU_DRR_SCE] = 1'b1 & ~ex_freeze_q;
		default:
			except_stop = 14'b00_0000_0000_0000;
	endcase // casez (du_except_stop)
end

//
// dbg_bp_o is registered
//
assign dbg_bp_o = dbg_bp_r;

//
// Breakpoint activation register
//
always @(posedge clk or `OR1200_RST_EVENT rst)
	if (rst == `OR1200_RST_VALUE)
		dbg_bp_r <=  1'b0;
	else if (!ex_freeze)
		dbg_bp_r <=  |except_stop
`ifdef OR1200_DU_DMR1_ST
                        | ~((ex_insn[31:26] == `OR1200_OR32_NOP) & ex_insn[16]) & dmr1[`OR1200_DU_DMR1_ST]
`endif
`ifdef OR1200_DU_DMR1_BT
                        | (branch_op != `OR1200_BRANCHOP_NOP) & (branch_op != `OR1200_BRANCHOP_RFE) & dmr1[`OR1200_DU_DMR1_BT]
`endif
			;
        else
                dbg_bp_r <=  |except_stop;

//
// Write to DMR1
//
`ifdef OR1200_DU_DMR1
always @(posedge clk or `OR1200_RST_EVENT rst)
	if (rst == `OR1200_RST_VALUE)
		dmr1 <= 25'h000_0000;
	else if (dmr1_sel && spr_write)
`ifdef OR1200_DU_HWBKPTS
		dmr1 <=  spr_dat_i[24:0];
`else
		dmr1 <=  {1'b0, spr_dat_i[23:22], 22'h00_0000};
`endif
`else
assign dmr1 = 25'h000_0000;
`endif

//
// Write to DMR2
//
`ifdef OR1200_DU_DMR2
always @(posedge clk or `OR1200_RST_EVENT rst)
	if (rst == `OR1200_RST_VALUE)
		dmr2 <= 24'h00_0000;
	else if (dmr2_sel && spr_write)
		dmr2 <=  spr_dat_i[23:0];
`else
assign dmr2 = 24'h00_0000;
`endif

//
// Write to DSR
//
`ifdef OR1200_DU_DSR
always @(posedge clk or `OR1200_RST_EVENT rst)
	if (rst == `OR1200_RST_VALUE)
		dsr <= {`OR1200_DU_DSR_WIDTH{1'b0}};
	else if (dsr_sel && spr_write)
		dsr <=  spr_dat_i[`OR1200_DU_DSR_WIDTH-1:0];
`else
assign dsr = {`OR1200_DU_DSR_WIDTH{1'b0}};
`endif

//
// Write to DRR
//
`ifdef OR1200_DU_DRR
always @(posedge clk or `OR1200_RST_EVENT rst)
	if (rst == `OR1200_RST_VALUE)
		drr <= 14'b0;
	else if (drr_sel && spr_write)
		drr <=  spr_dat_i[13:0];
	else
		drr <=  drr | except_stop;
`else
assign drr = 14'b0;
`endif

//
// Write to DVR0
//
`ifdef OR1200_DU_DVR0
always @(posedge clk or `OR1200_RST_EVENT rst)
	if (rst == `OR1200_RST_VALUE)
		dvr0 <= 32'h0000_0000;
	else if (dvr0_sel && spr_write)
		dvr0 <=  spr_dat_i[31:0];
`else
assign dvr0 = 32'h0000_0000;
`endif

//
// Write to DVR1
//
`ifdef OR1200_DU_DVR1
always @(posedge clk or `OR1200_RST_EVENT rst)
	if (rst == `OR1200_RST_VALUE)
		dvr1 <= 32'h0000_0000;
	else if (dvr1_sel && spr_write)
		dvr1 <=  spr_dat_i[31:0];
`else
assign dvr1 = 32'h0000_0000;
`endif

//
// Write to DVR2
//
`ifdef OR1200_DU_DVR2
always @(posedge clk or `OR1200_RST_EVENT rst)
	if (rst == `OR1200_RST_VALUE)
		dvr2 <= 32'h0000_0000;
	else if (dvr2_sel && spr_write)
		dvr2 <=  spr_dat_i[31:0];
`else
assign dvr2 = 32'h0000_0000;
`endif

//
// Write to DVR3
//
`ifdef OR1200_DU_DVR3
always @(posedge clk or `OR1200_RST_EVENT rst)
	if (rst == `OR1200_RST_VALUE)
		dvr3 <= 32'h0000_0000;
	else if (dvr3_sel && spr_write)
		dvr3 <=  spr_dat_i[31:0];
`else
assign dvr3 = 32'h0000_0000;
`endif

//
// Write to DVR4
//
`ifdef OR1200_DU_DVR4
always @(posedge clk or `OR1200_RST_EVENT rst)
	if (rst == `OR1200_RST_VALUE)
		dvr4 <= 32'h0000_0000;
	else if (dvr4_sel && spr_write)
		dvr4 <=  spr_dat_i[31:0];
`else
assign dvr4 = 32'h0000_0000;
`endif

//
// Write to DVR5
//
`ifdef OR1200_DU_DVR5
always @(posedge clk or `OR1200_RST_EVENT rst)
	if (rst == `OR1200_RST_VALUE)
		dvr5 <= 32'h0000_0000;
	else if (dvr5_sel && spr_write)
		dvr5 <=  spr_dat_i[31:0];
`else
assign dvr5 = 32'h0000_0000;
`endif

//
// Write to DVR6
//
`ifdef OR1200_DU_DVR6
always @(posedge clk or `OR1200_RST_EVENT rst)
	if (rst == `OR1200_RST_VALUE)
		dvr6 <= 32'h0000_0000;
	else if (dvr6_sel && spr_write)
		dvr6 <=  spr_dat_i[31:0];
`else
assign dvr6 = 32'h0000_0000;
`endif

//
// Write to DVR7
//
`ifdef OR1200_DU_DVR7
always @(posedge clk or `OR1200_RST_EVENT rst)
	if (rst == `OR1200_RST_VALUE)
		dvr7 <= 32'h0000_0000;
	else if (dvr7_sel && spr_write)
		dvr7 <=  spr_dat_i[31:0];
`else
assign dvr7 = 32'h0000_0000;
`endif

//
// Write to DCR0
//
`ifdef OR1200_DU_DCR0
always @(posedge clk or `OR1200_RST_EVENT rst)
	if (rst == `OR1200_RST_VALUE)
		dcr0 <= 8'h00;
	else if (dcr0_sel && spr_write)
		dcr0 <=  spr_dat_i[7:0];
`else
assign dcr0 = 8'h00;
`endif

//
// Write to DCR1
//
`ifdef OR1200_DU_DCR1
always @(posedge clk or `OR1200_RST_EVENT rst)
	if (rst == `OR1200_RST_VALUE)
		dcr1 <= 8'h00;
	else if (dcr1_sel && spr_write)
		dcr1 <=  spr_dat_i[7:0];
`else
assign dcr1 = 8'h00;
`endif

//
// Write to DCR2
//
`ifdef OR1200_DU_DCR2
always @(posedge clk or `OR1200_RST_EVENT rst)
	if (rst == `OR1200_RST_VALUE)
		dcr2 <= 8'h00;
	else if (dcr2_sel && spr_write)
		dcr2 <=  spr_dat_i[7:0];
`else
assign dcr2 = 8'h00;
`endif

//
// Write to DCR3
//
`ifdef OR1200_DU_DCR3
always @(posedge clk or `OR1200_RST_EVENT rst)
	if (rst == `OR1200_RST_VALUE)
		dcr3 <= 8'h00;
	else if (dcr3_sel && spr_write)
		dcr3 <=  spr_dat_i[7:0];
`else
assign dcr3 = 8'h00;
`endif

//
// Write to DCR4
//
`ifdef OR1200_DU_DCR4
always @(posedge clk or `OR1200_RST_EVENT rst)
	if (rst == `OR1200_RST_VALUE)
		dcr4 <= 8'h00;
	else if (dcr4_sel && spr_write)
		dcr4 <=  spr_dat_i[7:0];
`else
assign dcr4 = 8'h00;
`endif

//
// Write to DCR5
//
`ifdef OR1200_DU_DCR5
always @(posedge clk or `OR1200_RST_EVENT rst)
	if (rst == `OR1200_RST_VALUE)
		dcr5 <= 8'h00;
	else if (dcr5_sel && spr_write)
		dcr5 <=  spr_dat_i[7:0];
`else
assign dcr5 = 8'h00;
`endif

//
// Write to DCR6
//
`ifdef OR1200_DU_DCR6
always @(posedge clk or `OR1200_RST_EVENT rst)
	if (rst == `OR1200_RST_VALUE)
		dcr6 <= 8'h00;
	else if (dcr6_sel && spr_write)
		dcr6 <=  spr_dat_i[7:0];
`else
assign dcr6 = 8'h00;
`endif

//
// Write to DCR7
//
`ifdef OR1200_DU_DCR7
always @(posedge clk or `OR1200_RST_EVENT rst)
	if (rst == `OR1200_RST_VALUE)
		dcr7 <= 8'h00;
	else if (dcr7_sel && spr_write)
		dcr7 <=  spr_dat_i[7:0];
`else
assign dcr7 = 8'h00;
`endif

//
// Write to DWCR0
//
`ifdef OR1200_DU_DWCR0
always @(posedge clk or `OR1200_RST_EVENT rst)
	if (rst == `OR1200_RST_VALUE)
		dwcr0 <= 32'h0000_0000;
	else if (dwcr0_sel && spr_write)
		dwcr0 <=  spr_dat_i[31:0];
	else if (incr_wpcntr0)
		dwcr0[`OR1200_DU_DWCR_COUNT] <=  dwcr0[`OR1200_DU_DWCR_COUNT] + 16'h0001;
`else
assign dwcr0 = 32'h0000_0000;
`endif

//
// Write to DWCR1
//
`ifdef OR1200_DU_DWCR1
always @(posedge clk or `OR1200_RST_EVENT rst)
	if (rst == `OR1200_RST_VALUE)
		dwcr1 <= 32'h0000_0000;
	else if (dwcr1_sel && spr_write)
		dwcr1 <=  spr_dat_i[31:0];
	else if (incr_wpcntr1)
		dwcr1[`OR1200_DU_DWCR_COUNT] <=  dwcr1[`OR1200_DU_DWCR_COUNT] + 16'h0001;
`else
assign dwcr1 = 32'h0000_0000;
`endif

//
// Read DU registers
//
`ifdef OR1200_DU_READREGS
always @(spr_addr or dsr or drr or dmr1 or dmr2
	or dvr0 or dvr1 or dvr2 or dvr3 or dvr4
	or dvr5 or dvr6 or dvr7
	or dcr0 or dcr1 or dcr2 or dcr3 or dcr4
	or dcr5 or dcr6 or dcr7
	or dwcr0 or dwcr1
`ifdef OR1200_DU_TB_IMPLEMENTED
	or tb_wadr or tbia_dat_o or tbim_dat_o
	or tbar_dat_o or tbts_dat_o
`endif
	)
	casez (spr_addr[`OR1200_DUOFS_BITS]) // synopsys parallel_case
`ifdef OR1200_DU_DVR0
		`OR1200_DU_DVR0:
			spr_dat_o = dvr0;
`endif
`ifdef OR1200_DU_DVR1
		`OR1200_DU_DVR1:
			spr_dat_o = dvr1;
`endif
`ifdef OR1200_DU_DVR2
		`OR1200_DU_DVR2:
			spr_dat_o = dvr2;
`endif
`ifdef OR1200_DU_DVR3
		`OR1200_DU_DVR3:
			spr_dat_o = dvr3;
`endif
`ifdef OR1200_DU_DVR4
		`OR1200_DU_DVR4:
			spr_dat_o = dvr4;
`endif
`ifdef OR1200_DU_DVR5
		`OR1200_DU_DVR5:
			spr_dat_o = dvr5;
`endif
`ifdef OR1200_DU_DVR6
		`OR1200_DU_DVR6:
			spr_dat_o = dvr6;
`endif
`ifdef OR1200_DU_DVR7
		`OR1200_DU_DVR7:
			spr_dat_o = dvr7;
`endif
`ifdef OR1200_DU_DCR0
		`OR1200_DU_DCR0:
			spr_dat_o = {24'h00_0000, dcr0};
`endif
`ifdef OR1200_DU_DCR1
		`OR1200_DU_DCR1:
			spr_dat_o = {24'h00_0000, dcr1};
`endif
`ifdef OR1200_DU_DCR2
		`OR1200_DU_DCR2:
			spr_dat_o = {24'h00_0000, dcr2};
`endif
`ifdef OR1200_DU_DCR3
		`OR1200_DU_DCR3:
			spr_dat_o = {24'h00_0000, dcr3};
`endif
`ifdef OR1200_DU_DCR4
		`OR1200_DU_DCR4:
			spr_dat_o = {24'h00_0000, dcr4};
`endif
`ifdef OR1200_DU_DCR5
		`OR1200_DU_DCR5:
			spr_dat_o = {24'h00_0000, dcr5};
`endif
`ifdef OR1200_DU_DCR6
		`OR1200_DU_DCR6:
			spr_dat_o = {24'h00_0000, dcr6};
`endif
`ifdef OR1200_DU_DCR7
		`OR1200_DU_DCR7:
			spr_dat_o = {24'h00_0000, dcr7};
`endif
`ifdef OR1200_DU_DMR1
		`OR1200_DU_DMR1:
			spr_dat_o = {7'h00, dmr1};
`endif
`ifdef OR1200_DU_DMR2
		`OR1200_DU_DMR2:
			spr_dat_o = {8'h00, dmr2};
`endif
`ifdef OR1200_DU_DWCR0
		`OR1200_DU_DWCR0:
			spr_dat_o = dwcr0;
`endif
`ifdef OR1200_DU_DWCR1
		`OR1200_DU_DWCR1:
			spr_dat_o = dwcr1;
`endif
`ifdef OR1200_DU_DSR
		`OR1200_DU_DSR:
			spr_dat_o = {18'b0, dsr};
`endif
`ifdef OR1200_DU_DRR
		`OR1200_DU_DRR:
			spr_dat_o = {18'b0, drr};
`endif
`ifdef OR1200_DU_TB_IMPLEMENTED
		`OR1200_DU_TBADR:
			spr_dat_o = {24'h000000, tb_wadr};
		`OR1200_DU_TBIA:
			spr_dat_o = tbia_dat_o;
		`OR1200_DU_TBIM:
			spr_dat_o = tbim_dat_o;
		`OR1200_DU_TBAR:
			spr_dat_o = tbar_dat_o;
		`OR1200_DU_TBTS:
			spr_dat_o = tbts_dat_o;
`endif
		default:
			spr_dat_o = 32'h0000_0000;
	endcase
`endif

//
// DSR alias
//
assign du_dsr = dsr;

`ifdef OR1200_DU_HWBKPTS

//
// Compare To What (Match Condition 0)
//
always @(dcr0 or id_pc or dcpu_adr_i or dcpu_dat_dc
	or dcpu_dat_lsu or dcpu_we_i)
	case (dcr0[`OR1200_DU_DCR_CT])		// synopsys parallel_case
		3'b001:	match_cond0_ct = id_pc;		// insn fetch EA
		3'b010:	match_cond0_ct = dcpu_adr_i;	// load EA
		3'b011:	match_cond0_ct = dcpu_adr_i;	// store EA
		3'b100:	match_cond0_ct = dcpu_dat_dc;	// load data
		3'b101:	match_cond0_ct = dcpu_dat_lsu;	// store data
		3'b110:	match_cond0_ct = dcpu_adr_i;	// load/store EA
		default:match_cond0_ct = dcpu_we_i ? dcpu_dat_lsu : dcpu_dat_dc;
	endcase

//
// When To Compare (Match Condition 0)
//
always @(dcr0 or dcpu_cycstb_i)
	case (dcr0[`OR1200_DU_DCR_CT]) 		// synopsys parallel_case
		3'b000:	match_cond0_stb = 1'b0;		//comparison disabled
		3'b001:	match_cond0_stb = 1'b1;		// insn fetch EA
		default:match_cond0_stb = dcpu_cycstb_i; // any load/store
	endcase

//
// Match Condition 0
//
always @(match_cond0_stb or dcr0 or dvr0 or match_cond0_ct)
	casex ({match_cond0_stb, dcr0[`OR1200_DU_DCR_CC]})
		4'b0_xxx,
		4'b1_000,
		4'b1_111: match0 = 1'b0;
		4'b1_001: match0 =
			({(match_cond0_ct[31] ^ dcr0[`OR1200_DU_DCR_SC]), match_cond0_ct[30:0]} ==
			 {(dvr0[31] ^ dcr0[`OR1200_DU_DCR_SC]), dvr0[30:0]});
		4'b1_010: match0 = 
			({(match_cond0_ct[31] ^ dcr0[`OR1200_DU_DCR_SC]), match_cond0_ct[30:0]} <
			 {(dvr0[31] ^ dcr0[`OR1200_DU_DCR_SC]), dvr0[30:0]});
		4'b1_011: match0 = 
			({(match_cond0_ct[31] ^ dcr0[`OR1200_DU_DCR_SC]), match_cond0_ct[30:0]} <=
			 {(dvr0[31] ^ dcr0[`OR1200_DU_DCR_SC]), dvr0[30:0]});
		4'b1_100: match0 = 
			({(match_cond0_ct[31] ^ dcr0[`OR1200_DU_DCR_SC]), match_cond0_ct[30:0]} >
			 {(dvr0[31] ^ dcr0[`OR1200_DU_DCR_SC]), dvr0[30:0]});
		4'b1_101: match0 = 
			({(match_cond0_ct[31] ^ dcr0[`OR1200_DU_DCR_SC]), match_cond0_ct[30:0]} >=
			 {(dvr0[31] ^ dcr0[`OR1200_DU_DCR_SC]), dvr0[30:0]});
		4'b1_110: match0 = 
			({(match_cond0_ct[31] ^ dcr0[`OR1200_DU_DCR_SC]), match_cond0_ct[30:0]} !=
			 {(dvr0[31] ^ dcr0[`OR1200_DU_DCR_SC]), dvr0[30:0]});
	endcase

//
// Watchpoint 0
//
always @(dmr1 or match0)
	case (dmr1[`OR1200_DU_DMR1_CW0])
		2'b00: wp[0] = match0;
		2'b01: wp[0] = match0;
		2'b10: wp[0] = match0;
		2'b11: wp[0] = 1'b0;
	endcase

//
// Compare To What (Match Condition 1)
//
always @(dcr1 or id_pc or dcpu_adr_i or dcpu_dat_dc
	or dcpu_dat_lsu or dcpu_we_i)
	case (dcr1[`OR1200_DU_DCR_CT])		// synopsys parallel_case
		3'b001:	match_cond1_ct = id_pc;		// insn fetch EA
		3'b010:	match_cond1_ct = dcpu_adr_i;	// load EA
		3'b011:	match_cond1_ct = dcpu_adr_i;	// store EA
		3'b100:	match_cond1_ct = dcpu_dat_dc;	// load data
		3'b101:	match_cond1_ct = dcpu_dat_lsu;	// store data
		3'b110:	match_cond1_ct = dcpu_adr_i;	// load/store EA
		default:match_cond1_ct = dcpu_we_i ? dcpu_dat_lsu : dcpu_dat_dc;
	endcase

//
// When To Compare (Match Condition 1)
//
always @(dcr1 or dcpu_cycstb_i)
	case (dcr1[`OR1200_DU_DCR_CT]) 		// synopsys parallel_case
		3'b000:	match_cond1_stb = 1'b0;		//comparison disabled
		3'b001:	match_cond1_stb = 1'b1;		// insn fetch EA
		default:match_cond1_stb = dcpu_cycstb_i; // any load/store
	endcase

//
// Match Condition 1
//
always @(match_cond1_stb or dcr1 or dvr1 or match_cond1_ct)
	casex ({match_cond1_stb, dcr1[`OR1200_DU_DCR_CC]})
		4'b0_xxx,
		4'b1_000,
		4'b1_111: match1 = 1'b0;
		4'b1_001: match1 =
			({(match_cond1_ct[31] ^ dcr1[`OR1200_DU_DCR_SC]), match_cond1_ct[30:0]} ==
			 {(dvr1[31] ^ dcr1[`OR1200_DU_DCR_SC]), dvr1[30:0]});
		4'b1_010: match1 = 
			({(match_cond1_ct[31] ^ dcr1[`OR1200_DU_DCR_SC]), match_cond1_ct[30:0]} <
			 {(dvr1[31] ^ dcr1[`OR1200_DU_DCR_SC]), dvr1[30:0]});
		4'b1_011: match1 = 
			({(match_cond1_ct[31] ^ dcr1[`OR1200_DU_DCR_SC]), match_cond1_ct[30:0]} <=
			 {(dvr1[31] ^ dcr1[`OR1200_DU_DCR_SC]), dvr1[30:0]});
		4'b1_100: match1 = 
			({(match_cond1_ct[31] ^ dcr1[`OR1200_DU_DCR_SC]), match_cond1_ct[30:0]} >
			 {(dvr1[31] ^ dcr1[`OR1200_DU_DCR_SC]), dvr1[30:0]});
		4'b1_101: match1 = 
			({(match_cond1_ct[31] ^ dcr1[`OR1200_DU_DCR_SC]), match_cond1_ct[30:0]} >=
			 {(dvr1[31] ^ dcr1[`OR1200_DU_DCR_SC]), dvr1[30:0]});
		4'b1_110: match1 = 
			({(match_cond1_ct[31] ^ dcr1[`OR1200_DU_DCR_SC]), match_cond1_ct[30:0]} !=
			 {(dvr1[31] ^ dcr1[`OR1200_DU_DCR_SC]), dvr1[30:0]});
	endcase

//
// Watchpoint 1
//
always @(dmr1 or match1 or wp)
	case (dmr1[`OR1200_DU_DMR1_CW1])
		2'b00: wp[1] = match1;
		2'b01: wp[1] = match1 & wp[0];
		2'b10: wp[1] = match1 | wp[0];
		2'b11: wp[1] = 1'b0;
	endcase

//
// Compare To What (Match Condition 2)
//
always @(dcr2 or id_pc or dcpu_adr_i or dcpu_dat_dc
	or dcpu_dat_lsu or dcpu_we_i)
	case (dcr2[`OR1200_DU_DCR_CT])		// synopsys parallel_case
		3'b001:	match_cond2_ct = id_pc;		// insn fetch EA
		3'b010:	match_cond2_ct = dcpu_adr_i;	// load EA
		3'b011:	match_cond2_ct = dcpu_adr_i;	// store EA
		3'b100:	match_cond2_ct = dcpu_dat_dc;	// load data
		3'b101:	match_cond2_ct = dcpu_dat_lsu;	// store data
		3'b110:	match_cond2_ct = dcpu_adr_i;	// load/store EA
		default:match_cond2_ct = dcpu_we_i ? dcpu_dat_lsu : dcpu_dat_dc;
	endcase

//
// When To Compare (Match Condition 2)
//
always @(dcr2 or dcpu_cycstb_i)
	case (dcr2[`OR1200_DU_DCR_CT]) 		// synopsys parallel_case
		3'b000:	match_cond2_stb = 1'b0;		//comparison disabled
		3'b001:	match_cond2_stb = 1'b1;		// insn fetch EA
		default:match_cond2_stb = dcpu_cycstb_i; // any load/store
	endcase

//
// Match Condition 2
//
always @(match_cond2_stb or dcr2 or dvr2 or match_cond2_ct)
	casex ({match_cond2_stb, dcr2[`OR1200_DU_DCR_CC]})
		4'b0_xxx,
		4'b1_000,
		4'b1_111: match2 = 1'b0;
		4'b1_001: match2 =
			({(match_cond2_ct[31] ^ dcr2[`OR1200_DU_DCR_SC]), match_cond2_ct[30:0]} ==
			 {(dvr2[31] ^ dcr2[`OR1200_DU_DCR_SC]), dvr2[30:0]});
		4'b1_010: match2 = 
			({(match_cond2_ct[31] ^ dcr2[`OR1200_DU_DCR_SC]), match_cond2_ct[30:0]} <
			 {(dvr2[31] ^ dcr2[`OR1200_DU_DCR_SC]), dvr2[30:0]});
		4'b1_011: match2 = 
			({(match_cond2_ct[31] ^ dcr2[`OR1200_DU_DCR_SC]), match_cond2_ct[30:0]} <=
			 {(dvr2[31] ^ dcr2[`OR1200_DU_DCR_SC]), dvr2[30:0]});
		4'b1_100: match2 = 
			({(match_cond2_ct[31] ^ dcr2[`OR1200_DU_DCR_SC]), match_cond2_ct[30:0]} >
			 {(dvr2[31] ^ dcr2[`OR1200_DU_DCR_SC]), dvr2[30:0]});
		4'b1_101: match2 = 
			({(match_cond2_ct[31] ^ dcr2[`OR1200_DU_DCR_SC]), match_cond2_ct[30:0]} >=
			 {(dvr2[31] ^ dcr2[`OR1200_DU_DCR_SC]), dvr2[30:0]});
		4'b1_110: match2 = 
			({(match_cond2_ct[31] ^ dcr2[`OR1200_DU_DCR_SC]), match_cond2_ct[30:0]} !=
			 {(dvr2[31] ^ dcr2[`OR1200_DU_DCR_SC]), dvr2[30:0]});
	endcase

//
// Watchpoint 2
//
always @(dmr1 or match2 or wp)
	case (dmr1[`OR1200_DU_DMR1_CW2])
		2'b00: wp[2] = match2;
		2'b01: wp[2] = match2 & wp[1];
		2'b10: wp[2] = match2 | wp[1];
		2'b11: wp[2] = 1'b0;
	endcase

//
// Compare To What (Match Condition 3)
//
always @(dcr3 or id_pc or dcpu_adr_i or dcpu_dat_dc
	or dcpu_dat_lsu or dcpu_we_i)
	case (dcr3[`OR1200_DU_DCR_CT])		// synopsys parallel_case
		3'b001:	match_cond3_ct = id_pc;		// insn fetch EA
		3'b010:	match_cond3_ct = dcpu_adr_i;	// load EA
		3'b011:	match_cond3_ct = dcpu_adr_i;	// store EA
		3'b100:	match_cond3_ct = dcpu_dat_dc;	// load data
		3'b101:	match_cond3_ct = dcpu_dat_lsu;	// store data
		3'b110:	match_cond3_ct = dcpu_adr_i;	// load/store EA
		default:match_cond3_ct = dcpu_we_i ? dcpu_dat_lsu : dcpu_dat_dc;
	endcase

//
// When To Compare (Match Condition 3)
//
always @(dcr3 or dcpu_cycstb_i)
	case (dcr3[`OR1200_DU_DCR_CT]) 		// synopsys parallel_case
		3'b000:	match_cond3_stb = 1'b0;		//comparison disabled
		3'b001:	match_cond3_stb = 1'b1;		// insn fetch EA
		default:match_cond3_stb = dcpu_cycstb_i; // any load/store
	endcase

//
// Match Condition 3
//
always @(match_cond3_stb or dcr3 or dvr3 or match_cond3_ct)
	casex ({match_cond3_stb, dcr3[`OR1200_DU_DCR_CC]})
		4'b0_xxx,
		4'b1_000,
		4'b1_111: match3 = 1'b0;
		4'b1_001: match3 =
			({(match_cond3_ct[31] ^ dcr3[`OR1200_DU_DCR_SC]), match_cond3_ct[30:0]} ==
			 {(dvr3[31] ^ dcr3[`OR1200_DU_DCR_SC]), dvr3[30:0]});
		4'b1_010: match3 = 
			({(match_cond3_ct[31] ^ dcr3[`OR1200_DU_DCR_SC]), match_cond3_ct[30:0]} <
			 {(dvr3[31] ^ dcr3[`OR1200_DU_DCR_SC]), dvr3[30:0]});
		4'b1_011: match3 = 
			({(match_cond3_ct[31] ^ dcr3[`OR1200_DU_DCR_SC]), match_cond3_ct[30:0]} <=
			 {(dvr3[31] ^ dcr3[`OR1200_DU_DCR_SC]), dvr3[30:0]});
		4'b1_100: match3 = 
			({(match_cond3_ct[31] ^ dcr3[`OR1200_DU_DCR_SC]), match_cond3_ct[30:0]} >
			 {(dvr3[31] ^ dcr3[`OR1200_DU_DCR_SC]), dvr3[30:0]});
		4'b1_101: match3 = 
			({(match_cond3_ct[31] ^ dcr3[`OR1200_DU_DCR_SC]), match_cond3_ct[30:0]} >=
			 {(dvr3[31] ^ dcr3[`OR1200_DU_DCR_SC]), dvr3[30:0]});
		4'b1_110: match3 = 
			({(match_cond3_ct[31] ^ dcr3[`OR1200_DU_DCR_SC]), match_cond3_ct[30:0]} !=
			 {(dvr3[31] ^ dcr3[`OR1200_DU_DCR_SC]), dvr3[30:0]});
	endcase

//
// Watchpoint 3
//
always @(dmr1 or match3 or wp)
	case (dmr1[`OR1200_DU_DMR1_CW3])
		2'b00: wp[3] = match3;
		2'b01: wp[3] = match3 & wp[2];
		2'b10: wp[3] = match3 | wp[2];
		2'b11: wp[3] = 1'b0;
	endcase

//
// Compare To What (Match Condition 4)
//
always @(dcr4 or id_pc or dcpu_adr_i or dcpu_dat_dc
	or dcpu_dat_lsu or dcpu_we_i)
	case (dcr4[`OR1200_DU_DCR_CT])		// synopsys parallel_case
		3'b001:	match_cond4_ct = id_pc;		// insn fetch EA
		3'b010:	match_cond4_ct = dcpu_adr_i;	// load EA
		3'b011:	match_cond4_ct = dcpu_adr_i;	// store EA
		3'b100:	match_cond4_ct = dcpu_dat_dc;	// load data
		3'b101:	match_cond4_ct = dcpu_dat_lsu;	// store data
		3'b110:	match_cond4_ct = dcpu_adr_i;	// load/store EA
		default:match_cond4_ct = dcpu_we_i ? dcpu_dat_lsu : dcpu_dat_dc;
	endcase

//
// When To Compare (Match Condition 4)
//
always @(dcr4 or dcpu_cycstb_i)
	case (dcr4[`OR1200_DU_DCR_CT]) 		// synopsys parallel_case
		3'b000:	match_cond4_stb = 1'b0;		//comparison disabled
		3'b001:	match_cond4_stb = 1'b1;		// insn fetch EA
		default:match_cond4_stb = dcpu_cycstb_i; // any load/store
	endcase

//
// Match Condition 4
//
always @(match_cond4_stb or dcr4 or dvr4 or match_cond4_ct)
	casex ({match_cond4_stb, dcr4[`OR1200_DU_DCR_CC]})
		4'b0_xxx,
		4'b1_000,
		4'b1_111: match4 = 1'b0;
		4'b1_001: match4 =
			({(match_cond4_ct[31] ^ dcr4[`OR1200_DU_DCR_SC]), match_cond4_ct[30:0]} ==
			 {(dvr4[31] ^ dcr4[`OR1200_DU_DCR_SC]), dvr4[30:0]});
		4'b1_010: match4 = 
			({(match_cond4_ct[31] ^ dcr4[`OR1200_DU_DCR_SC]), match_cond4_ct[30:0]} <
			 {(dvr4[31] ^ dcr4[`OR1200_DU_DCR_SC]), dvr4[30:0]});
		4'b1_011: match4 = 
			({(match_cond4_ct[31] ^ dcr4[`OR1200_DU_DCR_SC]), match_cond4_ct[30:0]} <=
			 {(dvr4[31] ^ dcr4[`OR1200_DU_DCR_SC]), dvr4[30:0]});
		4'b1_100: match4 = 
			({(match_cond4_ct[31] ^ dcr4[`OR1200_DU_DCR_SC]), match_cond4_ct[30:0]} >
			 {(dvr4[31] ^ dcr4[`OR1200_DU_DCR_SC]), dvr4[30:0]});
		4'b1_101: match4 = 
			({(match_cond4_ct[31] ^ dcr4[`OR1200_DU_DCR_SC]), match_cond4_ct[30:0]} >=
			 {(dvr4[31] ^ dcr4[`OR1200_DU_DCR_SC]), dvr4[30:0]});
		4'b1_110: match4 = 
			({(match_cond4_ct[31] ^ dcr4[`OR1200_DU_DCR_SC]), match_cond4_ct[30:0]} !=
			 {(dvr4[31] ^ dcr4[`OR1200_DU_DCR_SC]), dvr4[30:0]});
	endcase

//
// Watchpoint 4
//
always @(dmr1 or match4 or wp)
	case (dmr1[`OR1200_DU_DMR1_CW4])
		2'b00: wp[4] = match4;
		2'b01: wp[4] = match4 & wp[3];
		2'b10: wp[4] = match4 | wp[3];
		2'b11: wp[4] = 1'b0;
	endcase

//
// Compare To What (Match Condition 5)
//
always @(dcr5 or id_pc or dcpu_adr_i or dcpu_dat_dc
	or dcpu_dat_lsu or dcpu_we_i)
	case (dcr5[`OR1200_DU_DCR_CT])		// synopsys parallel_case
		3'b001:	match_cond5_ct = id_pc;		// insn fetch EA
		3'b010:	match_cond5_ct = dcpu_adr_i;	// load EA
		3'b011:	match_cond5_ct = dcpu_adr_i;	// store EA
		3'b100:	match_cond5_ct = dcpu_dat_dc;	// load data
		3'b101:	match_cond5_ct = dcpu_dat_lsu;	// store data
		3'b110:	match_cond5_ct = dcpu_adr_i;	// load/store EA
		default:match_cond5_ct = dcpu_we_i ? dcpu_dat_lsu : dcpu_dat_dc;
	endcase

//
// When To Compare (Match Condition 5)
//
always @(dcr5 or dcpu_cycstb_i)
	case (dcr5[`OR1200_DU_DCR_CT]) 		// synopsys parallel_case
		3'b000:	match_cond5_stb = 1'b0;		//comparison disabled
		3'b001:	match_cond5_stb = 1'b1;		// insn fetch EA
		default:match_cond5_stb = dcpu_cycstb_i; // any load/store
	endcase

//
// Match Condition 5
//
always @(match_cond5_stb or dcr5 or dvr5 or match_cond5_ct)
	casex ({match_cond5_stb, dcr5[`OR1200_DU_DCR_CC]})
		4'b0_xxx,
		4'b1_000,
		4'b1_111: match5 = 1'b0;
		4'b1_001: match5 =
			({(match_cond5_ct[31] ^ dcr5[`OR1200_DU_DCR_SC]), match_cond5_ct[30:0]} ==
			 {(dvr5[31] ^ dcr5[`OR1200_DU_DCR_SC]), dvr5[30:0]});
		4'b1_010: match5 = 
			({(match_cond5_ct[31] ^ dcr5[`OR1200_DU_DCR_SC]), match_cond5_ct[30:0]} <
			 {(dvr5[31] ^ dcr5[`OR1200_DU_DCR_SC]), dvr5[30:0]});
		4'b1_011: match5 = 
			({(match_cond5_ct[31] ^ dcr5[`OR1200_DU_DCR_SC]), match_cond5_ct[30:0]} <=
			 {(dvr5[31] ^ dcr5[`OR1200_DU_DCR_SC]), dvr5[30:0]});
		4'b1_100: match5 = 
			({(match_cond5_ct[31] ^ dcr5[`OR1200_DU_DCR_SC]), match_cond5_ct[30:0]} >
			 {(dvr5[31] ^ dcr5[`OR1200_DU_DCR_SC]), dvr5[30:0]});
		4'b1_101: match5 = 
			({(match_cond5_ct[31] ^ dcr5[`OR1200_DU_DCR_SC]), match_cond5_ct[30:0]} >=
			 {(dvr5[31] ^ dcr5[`OR1200_DU_DCR_SC]), dvr5[30:0]});
		4'b1_110: match5 = 
			({(match_cond5_ct[31] ^ dcr5[`OR1200_DU_DCR_SC]), match_cond5_ct[30:0]} !=
			 {(dvr5[31] ^ dcr5[`OR1200_DU_DCR_SC]), dvr5[30:0]});
	endcase

//
// Watchpoint 5
//
always @(dmr1 or match5 or wp)
	case (dmr1[`OR1200_DU_DMR1_CW5])
		2'b00: wp[5] = match5;
		2'b01: wp[5] = match5 & wp[4];
		2'b10: wp[5] = match5 | wp[4];
		2'b11: wp[5] = 1'b0;
	endcase

//
// Compare To What (Match Condition 6)
//
always @(dcr6 or id_pc or dcpu_adr_i or dcpu_dat_dc
	or dcpu_dat_lsu or dcpu_we_i)
	case (dcr6[`OR1200_DU_DCR_CT])		// synopsys parallel_case
		3'b001:	match_cond6_ct = id_pc;		// insn fetch EA
		3'b010:	match_cond6_ct = dcpu_adr_i;	// load EA
		3'b011:	match_cond6_ct = dcpu_adr_i;	// store EA
		3'b100:	match_cond6_ct = dcpu_dat_dc;	// load data
		3'b101:	match_cond6_ct = dcpu_dat_lsu;	// store data
		3'b110:	match_cond6_ct = dcpu_adr_i;	// load/store EA
		default:match_cond6_ct = dcpu_we_i ? dcpu_dat_lsu : dcpu_dat_dc;
	endcase

//
// When To Compare (Match Condition 6)
//
always @(dcr6 or dcpu_cycstb_i)
	case (dcr6[`OR1200_DU_DCR_CT]) 		// synopsys parallel_case
		3'b000:	match_cond6_stb = 1'b0;		//comparison disabled
		3'b001:	match_cond6_stb = 1'b1;		// insn fetch EA
		default:match_cond6_stb = dcpu_cycstb_i; // any load/store
	endcase

//
// Match Condition 6
//
always @(match_cond6_stb or dcr6 or dvr6 or match_cond6_ct)
	casex ({match_cond6_stb, dcr6[`OR1200_DU_DCR_CC]})
		4'b0_xxx,
		4'b1_000,
		4'b1_111: match6 = 1'b0;
		4'b1_001: match6 =
			({(match_cond6_ct[31] ^ dcr6[`OR1200_DU_DCR_SC]), match_cond6_ct[30:0]} ==
			 {(dvr6[31] ^ dcr6[`OR1200_DU_DCR_SC]), dvr6[30:0]});
		4'b1_010: match6 = 
			({(match_cond6_ct[31] ^ dcr6[`OR1200_DU_DCR_SC]), match_cond6_ct[30:0]} <
			 {(dvr6[31] ^ dcr6[`OR1200_DU_DCR_SC]), dvr6[30:0]});
		4'b1_011: match6 = 
			({(match_cond6_ct[31] ^ dcr6[`OR1200_DU_DCR_SC]), match_cond6_ct[30:0]} <=
			 {(dvr6[31] ^ dcr6[`OR1200_DU_DCR_SC]), dvr6[30:0]});
		4'b1_100: match6 = 
			({(match_cond6_ct[31] ^ dcr6[`OR1200_DU_DCR_SC]), match_cond6_ct[30:0]} >
			 {(dvr6[31] ^ dcr6[`OR1200_DU_DCR_SC]), dvr6[30:0]});
		4'b1_101: match6 = 
			({(match_cond6_ct[31] ^ dcr6[`OR1200_DU_DCR_SC]), match_cond6_ct[30:0]} >=
			 {(dvr6[31] ^ dcr6[`OR1200_DU_DCR_SC]), dvr6[30:0]});
		4'b1_110: match6 = 
			({(match_cond6_ct[31] ^ dcr6[`OR1200_DU_DCR_SC]), match_cond6_ct[30:0]} !=
			 {(dvr6[31] ^ dcr6[`OR1200_DU_DCR_SC]), dvr6[30:0]});
	endcase

//
// Watchpoint 6
//
always @(dmr1 or match6 or wp)
	case (dmr1[`OR1200_DU_DMR1_CW6])
		2'b00: wp[6] = match6;
		2'b01: wp[6] = match6 & wp[5];
		2'b10: wp[6] = match6 | wp[5];
		2'b11: wp[6] = 1'b0;
	endcase

//
// Compare To What (Match Condition 7)
//
always @(dcr7 or id_pc or dcpu_adr_i or dcpu_dat_dc
	or dcpu_dat_lsu or dcpu_we_i)
	case (dcr7[`OR1200_DU_DCR_CT])		// synopsys parallel_case
		3'b001:	match_cond7_ct = id_pc;		// insn fetch EA
		3'b010:	match_cond7_ct = dcpu_adr_i;	// load EA
		3'b011:	match_cond7_ct = dcpu_adr_i;	// store EA
		3'b100:	match_cond7_ct = dcpu_dat_dc;	// load data
		3'b101:	match_cond7_ct = dcpu_dat_lsu;	// store data
		3'b110:	match_cond7_ct = dcpu_adr_i;	// load/store EA
		default:match_cond7_ct = dcpu_we_i ? dcpu_dat_lsu : dcpu_dat_dc;
	endcase

//
// When To Compare (Match Condition 7)
//
always @(dcr7 or dcpu_cycstb_i)
	case (dcr7[`OR1200_DU_DCR_CT]) 		// synopsys parallel_case
		3'b000:	match_cond7_stb = 1'b0;		//comparison disabled
		3'b001:	match_cond7_stb = 1'b1;		// insn fetch EA
		default:match_cond7_stb = dcpu_cycstb_i; // any load/store
	endcase

//
// Match Condition 7
//
always @(match_cond7_stb or dcr7 or dvr7 or match_cond7_ct)
	casex ({match_cond7_stb, dcr7[`OR1200_DU_DCR_CC]})
		4'b0_xxx,
		4'b1_000,
		4'b1_111: match7 = 1'b0;
		4'b1_001: match7 =
			({(match_cond7_ct[31] ^ dcr7[`OR1200_DU_DCR_SC]), match_cond7_ct[30:0]} ==
			 {(dvr7[31] ^ dcr7[`OR1200_DU_DCR_SC]), dvr7[30:0]});
		4'b1_010: match7 = 
			({(match_cond7_ct[31] ^ dcr7[`OR1200_DU_DCR_SC]), match_cond7_ct[30:0]} <
			 {(dvr7[31] ^ dcr7[`OR1200_DU_DCR_SC]), dvr7[30:0]});
		4'b1_011: match7 = 
			({(match_cond7_ct[31] ^ dcr7[`OR1200_DU_DCR_SC]), match_cond7_ct[30:0]} <=
			 {(dvr7[31] ^ dcr7[`OR1200_DU_DCR_SC]), dvr7[30:0]});
		4'b1_100: match7 = 
			({(match_cond7_ct[31] ^ dcr7[`OR1200_DU_DCR_SC]), match_cond7_ct[30:0]} >
			 {(dvr7[31] ^ dcr7[`OR1200_DU_DCR_SC]), dvr7[30:0]});
		4'b1_101: match7 = 
			({(match_cond7_ct[31] ^ dcr7[`OR1200_DU_DCR_SC]), match_cond7_ct[30:0]} >=
			 {(dvr7[31] ^ dcr7[`OR1200_DU_DCR_SC]), dvr7[30:0]});
		4'b1_110: match7 = 
			({(match_cond7_ct[31] ^ dcr7[`OR1200_DU_DCR_SC]), match_cond7_ct[30:0]} !=
			 {(dvr7[31] ^ dcr7[`OR1200_DU_DCR_SC]), dvr7[30:0]});
	endcase

//
// Watchpoint 7
//
always @(dmr1 or match7 or wp)
	case (dmr1[`OR1200_DU_DMR1_CW7])
		2'b00: wp[7] = match7;
		2'b01: wp[7] = match7 & wp[6];
		2'b10: wp[7] = match7 | wp[6];
		2'b11: wp[7] = 1'b0;
	endcase

//
// Increment Watchpoint Counter 0
//
always @(wp or dmr2)
	if (dmr2[`OR1200_DU_DMR2_WCE0])
		incr_wpcntr0 = |(wp & ~dmr2[`OR1200_DU_DMR2_AWTC]);
	else
		incr_wpcntr0 = 1'b0;

//
// Match Condition Watchpoint Counter 0
//
always @(dwcr0)
	if (dwcr0[`OR1200_DU_DWCR_MATCH] == dwcr0[`OR1200_DU_DWCR_COUNT])
		wpcntr0_match = 1'b1;
	else
		wpcntr0_match = 1'b0;


//
// Watchpoint 8
//
always @(dmr1 or wpcntr0_match or wp)
	case (dmr1[`OR1200_DU_DMR1_CW8])
		2'b00: wp[8] = wpcntr0_match;
		2'b01: wp[8] = wpcntr0_match & wp[7];
		2'b10: wp[8] = wpcntr0_match | wp[7];
		2'b11: wp[8] = 1'b0;
	endcase


//
// Increment Watchpoint Counter 1
//
always @(wp or dmr2)
	if (dmr2[`OR1200_DU_DMR2_WCE1])
		incr_wpcntr1 = |(wp & dmr2[`OR1200_DU_DMR2_AWTC]);
	else
		incr_wpcntr1 = 1'b0;

//
// Match Condition Watchpoint Counter 1
//
always @(dwcr1)
	if (dwcr1[`OR1200_DU_DWCR_MATCH] == dwcr1[`OR1200_DU_DWCR_COUNT])
		wpcntr1_match = 1'b1;
	else
		wpcntr1_match = 1'b0;

//
// Watchpoint 9
//
always @(dmr1 or wpcntr1_match or wp)
	case (dmr1[`OR1200_DU_DMR1_CW9])
		2'b00: wp[9] = wpcntr1_match;
		2'b01: wp[9] = wpcntr1_match & wp[8];
		2'b10: wp[9] = wpcntr1_match | wp[8];
		2'b11: wp[9] = 1'b0;
	endcase

//
// Watchpoint 10
//
always @(dmr1 or dbg_ewt_i or wp)
	case (dmr1[`OR1200_DU_DMR1_CW10])
		2'b00: wp[10] = dbg_ewt_i;
		2'b01: wp[10] = dbg_ewt_i & wp[9];
		2'b10: wp[10] = dbg_ewt_i | wp[9];
		2'b11: wp[10] = 1'b0;
	endcase

`endif

//
// Watchpoints can cause trap exception
//
`ifdef OR1200_DU_HWBKPTS
assign du_hwbkpt = |(wp & dmr2[`OR1200_DU_DMR2_WGB]) | du_hwbkpt_hold | (dbg_bp_r & ~dsr[`OR1200_DU_DSR_TE]);
`else
assign du_hwbkpt = 1'b0;
`endif

// Hold du_hwbkpt if ex_freeze is active in order to cause trap exception 
always @(posedge clk or `OR1200_RST_EVENT rst)
	if (rst == `OR1200_RST_VALUE)
		du_hwbkpt_hold <=  1'b0;
	else if (du_hwbkpt & ex_freeze)
		du_hwbkpt_hold <=  1'b1;
	else if (!ex_freeze)
		du_hwbkpt_hold <=  1'b0;

`ifdef OR1200_DU_TB_IMPLEMENTED
//
// Simple trace buffer
// (right now hardcoded for Xilinx Virtex FPGAs)
//
// Stores last 256 instruction addresses, instruction
// machine words and ALU results
//

//
// Trace buffer write enable
//
assign tb_enw = ~ex_freeze & ~((ex_insn[31:26] == `OR1200_OR32_NOP) & ex_insn[16]);

//
// Trace buffer write address pointer
//
always @(posedge clk or `OR1200_RST_EVENT rst)
	if (rst == `OR1200_RST_VALUE)
		tb_wadr <=  8'h00;
	else if (tb_enw)
		tb_wadr <=  tb_wadr + 8'd1;

//
// Free running counter (time stamp)
//
always @(posedge clk or `OR1200_RST_EVENT rst)
	if (rst == `OR1200_RST_VALUE)
		tb_timstmp <=  32'h00000000;
	else if (!dbg_bp_r)
		tb_timstmp <=  tb_timstmp + 32'd1;

//
// Trace buffer RAMs
//

or1200_dpram_256x32 tbia_ram(
	.clk_a(clk),
	.rst_a(1'b0),
	.addr_a(spr_addr[7:0]),
	.ce_a(1'b1),
	.oe_a(1'b1),
	.do_a(tbia_dat_o),

	.clk_b(clk),
	.rst_b(1'b0),
	.addr_b(tb_wadr),
	.di_b(spr_dat_npc),
	.ce_b(1'b1),
	.we_b(tb_enw)

);

or1200_dpram_256x32 tbim_ram(
	.clk_a(clk),
	.rst_a(1'b0),
	.addr_a(spr_addr[7:0]),
	.ce_a(1'b1),
	.oe_a(1'b1),
	.do_a(tbim_dat_o),
	
	.clk_b(clk),
	.rst_b(1'b0),
	.addr_b(tb_wadr),
	.di_b(ex_insn),
	.ce_b(1'b1),
	.we_b(tb_enw)
);

or1200_dpram_256x32 tbar_ram(
	.clk_a(clk),
	.rst_a(1'b0),
	.addr_a(spr_addr[7:0]),
	.ce_a(1'b1),
	.oe_a(1'b1),
	.do_a(tbar_dat_o),
	
	.clk_b(clk),
	.rst_b(1'b0),
	.addr_b(tb_wadr),
	.di_b(rf_dataw),
	.ce_b(1'b1),
	.we_b(tb_enw)
);

or1200_dpram_256x32 tbts_ram(
	.clk_a(clk),
	.rst_a(1'b0),
	.addr_a(spr_addr[7:0]),
	.ce_a(1'b1),
	.oe_a(1'b1),
	.do_a(tbts_dat_o),

	.clk_b(clk),
	.rst_b(1'b0),
	.addr_b(tb_wadr),
	.di_b(tb_timstmp),
	.ce_b(1'b1),
	.we_b(tb_enw)
);

`else

assign tbia_dat_o = 32'h0000_0000;
assign tbim_dat_o = 32'h0000_0000;
assign tbar_dat_o = 32'h0000_0000;
assign tbts_dat_o = 32'h0000_0000;

`endif	// OR1200_DU_TB_IMPLEMENTED

`else	// OR1200_DU_IMPLEMENTED

//
// When DU is not implemented, drive all outputs as would when DU is disabled
//
assign dbg_bp_o = 1'b0;
assign du_dsr = {`OR1200_DU_DSR_WIDTH{1'b0}};
assign du_dmr1 = {25{1'b0}};
assign du_hwbkpt = 1'b0;

//
// Read DU registers
//
`ifdef OR1200_DU_READREGS
assign spr_dat_o = 32'h0000_0000;
`ifdef OR1200_DU_UNUSED_ZERO
`endif
`endif

`endif

endmodule

// END DU

// BEGIN IC_TOP

//////////////////////////////////////////////////////////////////////
////                                                              ////
////  OR1200's Instruction Cache top level                        ////
////                                                              ////
////  This file is part of the OpenRISC 1200 project              ////
////  http://opencores.org/project,or1k                           ////
////                                                              ////
////  Description                                                 ////
////  Instantiation of all IC blocks.                             ////
////                                                              ////
////  To Do:                                                      ////
////   - make it smaller and faster                               ////
////                                                              ////
////  Author(s):                                                  ////
////      - Damjan Lampret, lampret@opencores.org                 ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// $Log: or1200_ic_top.v,v $
// Revision 2.0  2010/06/30 11:00:00  ORSoC
// No update 

 

//
// Instruction cache top
//
module or1200_ic_top(
	// Rst, clk and clock control
	clk, rst,

	// External i/f
	icbiu_dat_o, icbiu_adr_o, icbiu_cyc_o, icbiu_stb_o, icbiu_we_o, 
	icbiu_sel_o, icbiu_cab_o, icbiu_dat_i, icbiu_ack_i, icbiu_err_i,

	// Internal i/f
	ic_en,
	icqmem_adr_i, icqmem_cycstb_i, icqmem_ci_i, icqmem_sel_i, icqmem_tag_i,
	icqmem_dat_o, icqmem_ack_o, icqmem_rty_o, icqmem_err_o, icqmem_tag_o,

`ifdef OR1200_BIST
	// RAM BIST
	mbist_si_i, mbist_so_o, mbist_ctrl_i,
`endif

	// SPRs
	spr_cs, spr_write, spr_dat_i
);

parameter dw = `OR1200_OPERAND_WIDTH;

//
// I/O
//

//
// Clock and reset
//
input				clk;
input				rst;

//
// External I/F
//
output	[31:0]		icbiu_dat_o;
output	[31:0]			icbiu_adr_o;
output				icbiu_cyc_o;
output				icbiu_stb_o;
output				icbiu_we_o;
output	[3:0]			icbiu_sel_o;
output				icbiu_cab_o;
input	[31:0]		icbiu_dat_i;
input				icbiu_ack_i;
input				icbiu_err_i;

//
// Internal I/F
//
input				ic_en;
input	[31:0]			icqmem_adr_i;
input				icqmem_cycstb_i;
input				icqmem_ci_i;
input	[3:0]			icqmem_sel_i;
input	[3:0]			icqmem_tag_i;
output	[31:0]		icqmem_dat_o;
output				icqmem_ack_o;
output				icqmem_rty_o;
output				icqmem_err_o;
output	[3:0]			icqmem_tag_o;

`ifdef OR1200_BIST
//
// RAM BIST
//
input mbist_si_i;
input [`OR1200_MBIST_CTRL_WIDTH - 1:0] mbist_ctrl_i;
output mbist_so_o;
`endif

//
// SPR access
//
input				spr_cs;
input				spr_write;
input	[31:0]			spr_dat_i;

//
// Internal wires and regs
//
wire				tag_v;
wire	[`OR1200_ICTAG_W-2:0]	tag;
wire	[31:0]		to_icram;
wire	[31:0]		from_icram;
wire	[31:0]			saved_addr;
wire	[3:0]			icram_we;
wire				ictag_we;
wire	[31:0]			ic_addr;
wire				icfsm_biu_read;
/* verilator lint_off UNOPTFLAT */    
reg				tagcomp_miss;
/* verilator lint_on UNOPTFLAT */    
wire	[`OR1200_ICINDXH:`OR1200_ICLS]	ictag_addr;
wire				ictag_en;
wire				ictag_v; 
wire				ic_inv;
wire				icfsm_first_hit_ack;
wire				icfsm_first_miss_ack;
wire				icfsm_first_miss_err;
wire				icfsm_burst;
wire				icfsm_tag_we;
reg 				ic_inv_q;
   
`ifdef OR1200_BIST
//
// RAM BIST
//
wire				mbist_ram_so;
wire				mbist_tag_so;
wire				mbist_ram_si = mbist_si_i;
wire				mbist_tag_si = mbist_ram_so;
assign				mbist_so_o = mbist_tag_so;
`endif

//
// Simple assignments
//
assign icbiu_adr_o = ic_addr;
assign ic_inv = spr_cs & spr_write;
assign ictag_we = icfsm_tag_we | ic_inv;
assign ictag_addr = ic_inv ? 
		    spr_dat_i[`OR1200_ICINDXH:`OR1200_ICLS] : 
		    ic_addr[`OR1200_ICINDXH:`OR1200_ICLS];
assign ictag_en = ic_inv | ic_en;
assign ictag_v = ~ic_inv;

//
// Data to BIU is from ICRAM when IC is enabled or from LSU when
// IC is disabled
//
assign icbiu_dat_o = 32'h00000000;

//
// Bypases of the IC when IC is disabled
//
assign icbiu_cyc_o = (ic_en) ? icfsm_biu_read : icqmem_cycstb_i;
assign icbiu_stb_o = (ic_en) ? icfsm_biu_read : icqmem_cycstb_i;
assign icbiu_we_o = 1'b0;
assign icbiu_sel_o = (ic_en & icfsm_biu_read) ? 4'b1111 : icqmem_sel_i;
assign icbiu_cab_o = (ic_en) ? icfsm_burst : 1'b0;
assign icqmem_rty_o = ~icqmem_ack_o & ~icqmem_err_o;
assign icqmem_tag_o = icqmem_err_o ? `OR1200_ITAG_BE : icqmem_tag_i;

//
// CPU normal and error termination
//
assign icqmem_ack_o = ic_en ? (icfsm_first_hit_ack | icfsm_first_miss_ack) : icbiu_ack_i;
assign icqmem_err_o = ic_en ? icfsm_first_miss_err : icbiu_err_i;

//
// Select between claddr generated by IC FSM and addr[3:2] generated by LSU
//
assign ic_addr = (icfsm_biu_read) ? saved_addr : icqmem_adr_i;

//
// Select between input data generated by LSU or by BIU
//
assign to_icram = icbiu_dat_i;

//
// Select between data generated by ICRAM or passed by BIU
//
assign icqmem_dat_o = icfsm_first_miss_ack | !ic_en ? icbiu_dat_i : from_icram;

//
// Detect falling edge of IC invalidate signal
// 
always @(posedge clk or `OR1200_RST_EVENT rst)
   if (rst==`OR1200_RST_VALUE)
     ic_inv_q <= 1'b0;
   else
     ic_inv_q <= ic_inv;
   
   
//
// Tag comparison
//
// During line invalidate, ensure it stays the same
always @(tag or saved_addr or tag_v) begin
	  if ((tag != saved_addr[31:`OR1200_ICTAGL]) | !tag_v)
	    tagcomp_miss = 1'b1;
	  else
	    tagcomp_miss = 1'b0;
end

//
// Instantiation of IC Finite State Machine
//
or1200_ic_fsm or1200_ic_fsm(
	.clk(clk),
	.rst(rst),
	.ic_en(ic_en),
	.icqmem_cycstb_i(icqmem_cycstb_i),
	.icqmem_ci_i(icqmem_ci_i),
	.tagcomp_miss(tagcomp_miss),
	.biudata_valid(icbiu_ack_i),
	.biudata_error(icbiu_err_i),
	.start_addr(icqmem_adr_i),
	.saved_addr(saved_addr),
	.icram_we(icram_we),
	.biu_read(icfsm_biu_read),
	.first_hit_ack(icfsm_first_hit_ack),
	.first_miss_ack(icfsm_first_miss_ack),
	.first_miss_err(icfsm_first_miss_err),
	.burst(icfsm_burst),
	.tag_we(icfsm_tag_we)
);

//
// Instantiation of IC main memory
//
or1200_ic_ram or1200_ic_ram(
	.clk(clk),
	.rst(rst),
`ifdef OR1200_BIST
	// RAM BIST
	.mbist_si_i(mbist_ram_si),
	.mbist_so_o(mbist_ram_so),
	.mbist_ctrl_i(mbist_ctrl_i),
`endif
	.addr(ic_addr[`OR1200_ICINDXH:2]),
	.en(ic_en),
	.we(icram_we),
	.datain(to_icram),
	.dataout(from_icram)
);

//
// Instantiation of IC TAG memory
//
or1200_ic_tag or1200_ic_tag(
	.clk(clk),
	.rst(rst),
`ifdef OR1200_BIST
	// RAM BIST
	.mbist_si_i(mbist_tag_si),
	.mbist_so_o(mbist_tag_so),
	.mbist_ctrl_i(mbist_ctrl_i),
`endif
	.addr(ictag_addr),
	.en(ictag_en),
	.we(ictag_we),
	.datain({ic_addr[31:`OR1200_ICTAGL], ictag_v}),
	.tag_v(tag_v),
	.tag(tag)
);

endmodule

// END IC_TOP

// BEGIN IC_FSM

//////////////////////////////////////////////////////////////////////
////                                                              ////
////  OR1200's IC FSM                                             ////
////                                                              ////
////  This file is part of the OpenRISC 1200 project              ////
////  http://opencores.org/project,or1k                           ////
////                                                              ////
////  Description                                                 ////
////  Insn cache state machine                                    ////
////                                                              ////
////  To Do:                                                      ////
////   - make it smaller and faster                               ////
////                                                              ////
////  Author(s):                                                  ////
////      - Damjan Lampret, lampret@opencores.org                 ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// $Log: or1200_ic_fsm.v,v $
// Revision 2.0  2010/06/30 11:00:00  ORSoC
// Minor update: 
// Bugs fixed. 
//

 

`define OR1200_ICFSM_IDLE	2'd0
`define OR1200_ICFSM_CFETCH	2'd1
`define OR1200_ICFSM_LREFILL3	2'd2
`define OR1200_ICFSM_IFETCH	2'd3

//
// Instruction cache FSM
//

module or1200_ic_fsm(
	// Clock and reset
	clk, rst,

	// Internal i/f to top level IC
	ic_en, icqmem_cycstb_i, icqmem_ci_i,
	tagcomp_miss, 
	biudata_valid, biudata_error, 
        start_addr, saved_addr,
	icram_we, tag_we,
        biu_read, 
        first_hit_ack, first_miss_ack, first_miss_err,
	burst
);

//
// I/O
//
input				clk;
input				rst;
input				ic_en;
input				icqmem_cycstb_i;
input				icqmem_ci_i;
input				tagcomp_miss;
input				biudata_valid;
input				biudata_error;
input	[31:0]			start_addr;
output	[31:0]			saved_addr;
output	[3:0]			icram_we;
output				biu_read;
output				first_hit_ack;
output				first_miss_ack;
output				first_miss_err;
output				burst;
output				tag_we;

//
// Internal wires and regs
//
reg	[31:0]			saved_addr_r;
reg	[1:0]			state;
reg [`OR1200_ICLS-1:0]    	cnt;
reg				hitmiss_eval;
reg				load;
reg				cache_inhibit;
reg 				last_eval_miss; // JPB
   
   //
   // Generate of ICRAM write enables
   //
   assign icram_we = {4{biu_read & biudata_valid & !cache_inhibit}};
   assign tag_we = biu_read & biudata_valid & !cache_inhibit;

   //
   // BIU read and write
   //
   assign biu_read = (hitmiss_eval & tagcomp_miss) | (!hitmiss_eval & load);

   //assign saved_addr = hitmiss_eval ? start_addr : saved_addr_r;
   assign saved_addr = saved_addr_r;

   // Asserted when a cache hit occurs and the first word is ready/valid
   assign first_hit_ack = (state == `OR1200_ICFSM_CFETCH) & hitmiss_eval & 
			  !tagcomp_miss & !cache_inhibit;

   // Asserted when a cache miss occurs, but the first word of the new
   // cache line is ready (on the bus)
   // Cache hits overpower bus data
   assign first_miss_ack = (state == `OR1200_ICFSM_CFETCH) & biudata_valid &
			   ~first_hit_ack;
   
   // Asserted when a cache occurs, but there was a bus error with handling
   // the old line or fetching the new line
   assign first_miss_err = (state == `OR1200_ICFSM_CFETCH) & biudata_error;

   //
   // Assert burst when doing reload of complete cache line
   //
   assign burst = (state == `OR1200_ICFSM_CFETCH) & tagcomp_miss & 
		  !cache_inhibit | (state == `OR1200_ICFSM_LREFILL3);

   //
   // Main IC FSM
   //
   always @(posedge clk or `OR1200_RST_EVENT rst) begin
      if (rst == `OR1200_RST_VALUE) begin
	 state <=  `OR1200_ICFSM_IDLE;
	 saved_addr_r <=  32'b0;
	 hitmiss_eval <=  1'b0;
	 load <=  1'b0;
	 cnt <=  `OR1200_ICLS'd0;
	 cache_inhibit <=  1'b0;
	 last_eval_miss <= 0; // JPB
	 
      end
      else
	case (state)	// synopsys parallel_case
	  `OR1200_ICFSM_IDLE :
	    if (ic_en & icqmem_cycstb_i) begin		// fetch
	       state <=  `OR1200_ICFSM_CFETCH;
	       saved_addr_r <=  start_addr;
	       hitmiss_eval <=  1'b1;
	       load <=  1'b1;
	       cache_inhibit <=  icqmem_ci_i;
	       last_eval_miss <= 0; // JPB
	    end
	    else begin			// idle
	       hitmiss_eval <=  1'b0;
	       load <=  1'b0;
	       cache_inhibit <=  1'b0;
	    end	  
	  `OR1200_ICFSM_CFETCH: begin	// fetch
	     
	     if (icqmem_cycstb_i & icqmem_ci_i)
	       cache_inhibit <=  1'b1;
	     
	     if (hitmiss_eval)
	       saved_addr_r[31:`OR1200_ICTAGL] <= start_addr[31:`OR1200_ICTAGL];

	     // Check for stopped cache loads
	         // instruction cache turned-off
	     if ((!ic_en) ||
		 // fetch aborted (usually caused by IMMU)
		 (hitmiss_eval & !icqmem_cycstb_i) ||	
		 (biudata_error) ||  // fetch terminated with an error
		 // fetch from cache-inhibited page
		 (cache_inhibit & biudata_valid)) begin	
		state <=  `OR1200_ICFSM_IDLE;
		hitmiss_eval <=  1'b0;
		load <=  1'b0;
		cache_inhibit <=  1'b0;
	     end // if ((!ic_en) ||...	     
	     // fetch missed, wait for first fetch and continue filling line
	     else if (tagcomp_miss & biudata_valid) begin	
		state <=  `OR1200_ICFSM_LREFILL3;
		saved_addr_r[`OR1200_ICLS-1:2] 
		  <= saved_addr_r[`OR1200_ICLS-1:2] + 1;
		hitmiss_eval <=  1'b0;
		cnt <= ((1 << `OR1200_ICLS) - (2 * 4));
		cache_inhibit <=  1'b0;
	     end
	     // fetch aborted (usually caused by exception)
	     else if (!icqmem_cycstb_i
		      & !last_eval_miss // JPB
		      ) begin	
		state <=  `OR1200_ICFSM_IDLE;
		hitmiss_eval <=  1'b0;
		load <=  1'b0;
		cache_inhibit <=  1'b0;
	     end
	     // fetch hit, wait in this state for now
	     else if (!tagcomp_miss & !icqmem_ci_i) begin
		saved_addr_r <=  start_addr;
		cache_inhibit <=  1'b0;
	     end
	     else   // fetch in-progress
	       hitmiss_eval <=  1'b0;

	     if (hitmiss_eval & !tagcomp_miss) // JPB
	       last_eval_miss <= 1; // JPB
	     
	  end
	  `OR1200_ICFSM_LREFILL3 : begin
	     // abort because IC has just been turned off
             if (!ic_en) begin
		// invalidate before IC can be turned on
		state <=  `OR1200_ICFSM_IDLE;	
                saved_addr_r <=  start_addr;
                hitmiss_eval <=  1'b0;
                load <=  1'b0;
             end
	     // refill ack, more fetchs to come
	     else if (biudata_valid && (|cnt)) begin	
		cnt <=  cnt - `OR1200_ICLS'd4;
		saved_addr_r[`OR1200_ICLS-1:2] 
		  <= saved_addr_r[`OR1200_ICLS-1:2] + 1;
	     end
	     // last fetch of line refill
	     else if (biudata_valid) begin
		state <=  `OR1200_ICFSM_IDLE;
		saved_addr_r <=  start_addr;
		hitmiss_eval <=  1'b0;
		load <=  1'b0;
	     end
	  end
	  default:
	    state <=  `OR1200_ICFSM_IDLE;
	endcase
   end

endmodule

// END IC_FSM

// BEGIN IC_RAM

//////////////////////////////////////////////////////////////////////
////                                                              ////
////  OR1200's IC RAMs                                            ////
////                                                              ////
////  This file is part of the OpenRISC 1200 project              ////
////  http://www.opencores.org/cores/or1k/                        ////
////                                                              ////
////  Description                                                 ////
////  Instantiation of Instruction cache data rams                ////
////                                                              ////
////  To Do:                                                      ////
////   - make it smaller and faster                               ////
////                                                              ////
////  Author(s):                                                  ////
////      - Damjan Lampret, lampret@opencores.org                 ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// CVS Revision History
//
// $Log: or1200_ic_ram.v,v $
// Revision 2.0  2010/06/30 11:00:00  ORSoC
// Minor update: 
// Coding style changed.
//

 

module or1200_ic_ram(
	// Clock and reset
	clk, rst, 

`ifdef OR1200_BIST
	// RAM BIST
	mbist_si_i, mbist_so_o, mbist_ctrl_i,
`endif

	// Internal i/f
	addr, en, we, datain, dataout
);

parameter dw = `OR1200_OPERAND_WIDTH;
parameter aw = `OR1200_ICINDX;

//
// I/O
//
input 				clk;
input				rst;
input	[aw-1:0]		addr;
input				en;
input	[3:0]			we;
input	[31:0]		datain;
output	[31:0]		dataout;

`ifdef OR1200_BIST
//
// RAM BIST
//
input mbist_si_i;
input [`OR1200_MBIST_CTRL_WIDTH - 1:0] mbist_ctrl_i;
output mbist_so_o;
`endif

`ifdef OR1200_NO_IC

//
// Insn cache not implemented
//
assign dataout = {dw{1'b0}};
`ifdef OR1200_BIST
assign mbist_so_o = mbist_si_i;
`endif

`else

//
// Instantiation of IC RAM block
//
   or1200_spram #
     (
      .aw(`OR1200_ICINDX),
      .dw(32)
      )
   ic_ram0
     (
`ifdef OR1200_BIST
      // RAM BIST
      .mbist_si_i(mbist_si_i),
      .mbist_so_o(mbist_so_o),
      .mbist_ctrl_i(mbist_ctrl_i),
`endif
      .clk(clk),
      .ce(en),
      .we(we[0]),
      //.oe(1'b1),
      .addr(addr),
      .di(datain),
      .doq(dataout)
      );   
`endif

endmodule

// END IC_RAM

// BEGIN IC_TAG

//////////////////////////////////////////////////////////////////////
////                                                              ////
////  OR1200's IC TAGs                                            ////
////                                                              ////
////  This file is part of the OpenRISC 1200 project              ////
////  http://www.opencores.org/cores/or1k/                        ////
////                                                              ////
////  Description                                                 ////
////  Instatiation of instruction cache tag rams                  ////
////                                                              ////
////  To Do:                                                      ////
////   - make it smaller and faster                               ////
////                                                              ////
////  Author(s):                                                  ////
////      - Damjan Lampret, lampret@opencores.org                 ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// CVS Revision History
//
// $Log: or1200_ic_tag.v,v $
// Revision 2.0  2010/06/30 11:00:00  ORSoC
// Minor update: 
// Coding style changed.
//

 

module or1200_ic_tag(
	// Clock and reset
	clk, rst,

`ifdef OR1200_BIST
	// RAM BIST
	mbist_si_i, mbist_so_o, mbist_ctrl_i,
`endif

	// Internal i/f
	addr, en, we, datain, tag_v, tag
);

parameter dw = `OR1200_ICTAG_W;
parameter aw = `OR1200_ICTAG;

//
// I/O
//

//
// Clock and reset
//
input				clk;
input				rst;

`ifdef OR1200_BIST
//
// RAM BIST
//
input mbist_si_i;
input [`OR1200_MBIST_CTRL_WIDTH - 1:0] mbist_ctrl_i;
output mbist_so_o;
`endif

//
// Internal i/f
//
input	[aw-1:0]		addr;
input				en;
input				we;
input	[31:0]		datain;
output				tag_v;
output	[dw-2:0]		tag;

`ifdef OR1200_NO_IC

//
// Insn cache not implemented
//
assign tag = {31{1'b0}};
assign tag_v = 1'b0;
`ifdef OR1200_BIST
assign mbist_so_o = mbist_si_i;
`endif

`else

//
// Instantiation of TAG RAM block
//
   or1200_spram #
     (
      .aw(`OR1200_ICTAG),
      .dw(`OR1200_ICTAG_W)
      )
   ic_tag0
     (
`ifdef OR1200_BIST
      // RAM BIST
      .mbist_si_i(mbist_si_i),
      .mbist_so_o(mbist_so_o),
      .mbist_ctrl_i(mbist_ctrl_i),
`endif
      .clk(clk),
      .ce(en),
      .we(we),
      //.oe(1'b1),
      .addr(addr),
      .di(datain),
      .doq({tag, tag_v})
      );   
`endif

endmodule

// END IC_TAG

// BEGIN IMMU_TOP

//////////////////////////////////////////////////////////////////////
////                                                              ////
////  OR1200's Instruction MMU top level                          ////
////                                                              ////
////  This file is part of the OpenRISC 1200 project              ////
////  http://www.opencores.org/project,or1k                       ////
////                                                              ////
////  Description                                                 ////
////  Instantiation of all IMMU blocks.                           ////
////                                                              ////
////  To Do:                                                      ////
////   - cache inhibit                                            ////
////                                                              ////
////  Author(s):                                                  ////
////      - Damjan Lampret, lampret@opencores.org                 ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////

 

//
// Insn MMU
//

module or1200_immu_top(
	// Rst and clk
	clk, rst,

	// CPU i/f
	ic_en, immu_en, supv, icpu_adr_i, icpu_cycstb_i,
	icpu_adr_o, icpu_tag_o, icpu_rty_o, icpu_err_o,

	// SR Interface
	boot_adr_sel_i,

	// SPR access
	spr_cs, spr_write, spr_addr, spr_dat_i, spr_dat_o,

`ifdef OR1200_BIST
	// RAM BIST
	mbist_si_i, mbist_so_o, mbist_ctrl_i,
`endif

	// QMEM i/f
	qmemimmu_rty_i, qmemimmu_err_i, qmemimmu_tag_i, qmemimmu_adr_o, qmemimmu_cycstb_o, qmemimmu_ci_o
);

parameter boot_adr = `OR1200_BOOT_ADR;

//
// I/O
//

//
// Clock and reset
//
input				clk;
input				rst;

//
// CPU I/F
//
input				ic_en;
input				immu_en;
input				supv;
input	[31:0]		icpu_adr_i;
input				icpu_cycstb_i;
output	[31:0]		icpu_adr_o;
output	[3:0]			icpu_tag_o;
output				icpu_rty_o;
output				icpu_err_o;

//
// SR Interface
//
input				boot_adr_sel_i;

//
// SPR access
//
input				spr_cs;
input				spr_write;
input	[31:0]		spr_addr;
input	[31:0]			spr_dat_i;
output	[31:0]			spr_dat_o;

`ifdef OR1200_BIST
//
// RAM BIST
//
input mbist_si_i;
input [`OR1200_MBIST_CTRL_WIDTH - 1:0] mbist_ctrl_i;
output mbist_so_o;
`endif

//
// IC I/F
//
input				qmemimmu_rty_i;
input				qmemimmu_err_i;
input	[3:0]			qmemimmu_tag_i;
output	[31:0]		qmemimmu_adr_o;
output				qmemimmu_cycstb_o;
output				qmemimmu_ci_o;

//
// Internal wires and regs
//
wire				itlb_spr_access;
wire	[31:`OR1200_IMMU_PS]	itlb_ppn;
wire				itlb_hit;
wire				itlb_uxe;
wire				itlb_sxe;
wire	[31:0]			itlb_dat_o;
wire				itlb_en;
wire				itlb_ci;
wire				itlb_done;
wire				fault;
wire				miss;
wire				page_cross;
reg	[31:0]			icpu_adr_default;
reg				icpu_adr_select;
reg		[31:0]		icpu_adr_o;
reg	[31:`OR1200_IMMU_PS]	icpu_vpn_r;
`ifdef OR1200_NO_IMMU
`else
reg				itlb_en_r;
reg				dis_spr_access_frst_clk;
reg				dis_spr_access_scnd_clk;
`endif

//
// Implemented bits inside match and translate registers
//
// itlbwYmrX: vpn 31-10  v 0
// itlbwYtrX: ppn 31-10  uxe 7  sxe 6
//
// itlb memory width:
// 19 bits for ppn
// 13 bits for vpn
// 1 bit for valid
// 2 bits for protection
// 1 bit for cache inhibit

//
// icpu_adr_o
//
`ifdef OR1200_REGISTERED_OUTPUTS
wire	[31:0]			icpu_adr_boot = boot_adr;

always @(`OR1200_RST_EVENT rst or posedge clk)
	// default value 
	if (rst == `OR1200_RST_VALUE) begin
	        // select async. value due to reset state
		icpu_adr_default <=  32'h0000_0100;
		icpu_adr_select  <=  1'b1;		
	end
	// selected value (different from default) is written 
        // into FF after reset state
	else if (icpu_adr_select) begin
	        // dynamic value can only be assigned to FF out of reset!
		icpu_adr_default <=  icpu_adr_boot;
	        // select FF value 
		icpu_adr_select  <=  1'b0;
	end
	else begin
		icpu_adr_default <=  icpu_adr_i;
	end

// select async. value for boot address after reset - PC jumps to the address 
// selected after boot! 
   //assign icpu_adr_boot = {(boot_adr_sel_i ? `OR1200_EXCEPT_EPH1_P : 
   // `OR1200_EXCEPT_EPH0_P), 12'h100} ;

always @(icpu_adr_boot or icpu_adr_default or icpu_adr_select)
	if (icpu_adr_select)
	        // async. value is selected due to reset state 
		icpu_adr_o = icpu_adr_boot ;
	else
	        // FF value is selected 2nd clock after reset state 
		icpu_adr_o = icpu_adr_default ;		
`else
Unsupported !!!
`endif

//
// Page cross
//
// Asserted when CPU address crosses page boundary. Most of the time it is zero.
//
assign page_cross = icpu_adr_i[31:`OR1200_IMMU_PS] != icpu_vpn_r;

//
// Register icpu_adr_i's VPN for use when IMMU is not enabled but PPN is expected to come
// one clock cycle after offset part.
//
always @(posedge clk or `OR1200_RST_EVENT rst)
	if (rst == `OR1200_RST_VALUE)
		icpu_vpn_r <=  {32-`OR1200_IMMU_PS{1'b0}};
	else
		icpu_vpn_r <=  icpu_adr_i[31:`OR1200_IMMU_PS];

`ifdef OR1200_NO_IMMU

//
// Put all outputs in inactive state
//
assign spr_dat_o = 32'h00000000;
assign qmemimmu_adr_o = icpu_adr_i;
assign icpu_tag_o = qmemimmu_tag_i;
assign qmemimmu_cycstb_o = icpu_cycstb_i & ~page_cross;
assign icpu_rty_o = qmemimmu_rty_i;
assign icpu_err_o = qmemimmu_err_i;
assign qmemimmu_ci_o = `OR1200_IMMU_CI;
`ifdef OR1200_BIST
assign mbist_so_o = mbist_si_i;
`endif
`else

//
// ITLB SPR access
//
// 1200 - 12FF  itlbmr w0
// 1200 - 123F  itlbmr w0 [63:0]
//
// 1300 - 13FF  itlbtr w0
// 1300 - 133F  itlbtr w0 [63:0]
//
assign itlb_spr_access = spr_cs & ~dis_spr_access_scnd_clk;

//
// Disable ITLB SPR access
//
// This flops are used to mask ITLB miss/fault exception
// during first & second clock cycles of accessing ITLB SPR. In
// subsequent clock cycles it is assumed that ITLB SPR
// access was accomplished and that normal instruction fetching
// can proceed.
//
// spr_cs sets dis_spr_access_frst_clk and icpu_rty_o clears it.
// dis_spr_access_frst_clk  sets dis_spr_access_scnd_clk and 
// icpu_rty_o clears it.
//
always @(posedge clk or `OR1200_RST_EVENT rst)
	if (rst == `OR1200_RST_VALUE)
		dis_spr_access_frst_clk  <=  1'b0;
	else if (!icpu_rty_o)
		dis_spr_access_frst_clk  <=  1'b0;
	else if (spr_cs)
		dis_spr_access_frst_clk  <=  1'b1;

always @(posedge clk or `OR1200_RST_EVENT rst)
	if (rst == `OR1200_RST_VALUE)
		dis_spr_access_scnd_clk  <=  1'b0;
	else if (!icpu_rty_o)
		dis_spr_access_scnd_clk  <=  1'b0;
	else if (dis_spr_access_frst_clk)
		dis_spr_access_scnd_clk  <=  1'b1;

//
// Tags:
//
// OR1200_ITAG_TE - TLB miss Exception
// OR1200_ITAG_PE - Page fault Exception
//
assign icpu_tag_o = miss ? `OR1200_ITAG_TE : fault ? `OR1200_ITAG_PE : qmemimmu_tag_i;

//
// icpu_rty_o
//
// assign icpu_rty_o = !icpu_err_o & qmemimmu_rty_i;
//assign icpu_rty_o = qmemimmu_rty_i | itlb_spr_access & immu_en;
assign icpu_rty_o = qmemimmu_rty_i;

//
// icpu_err_o
//
assign icpu_err_o = miss | fault | qmemimmu_err_i;

//
// Assert itlb_en_r after one clock cycle and when there is no
// ITLB SPR access
//
always @(posedge clk or `OR1200_RST_EVENT rst)
	if (rst == `OR1200_RST_VALUE)
		itlb_en_r <=  1'b0;
	else
		itlb_en_r <=  itlb_en & ~itlb_spr_access;

//
// ITLB lookup successful
//
assign itlb_done = itlb_en_r & ~page_cross;

//
// Cut transfer when access (mtspr/mfspr) to/from ITLB occure or if something goes 
// wrong with translation. If IC is disabled, use delayed signals.
//
// assign qmemimmu_cycstb_o = (!ic_en & immu_en) ? ~(miss | fault) & icpu_cycstb_i & ~page_cross : (miss | fault) ? 1'b0 : icpu_cycstb_i & ~page_cross; // DL
//assign qmemimmu_cycstb_o = immu_en ? ~(miss | fault) & icpu_cycstb_i & ~page_cross & itlb_done : icpu_cycstb_i & ~page_cross;
assign qmemimmu_cycstb_o = immu_en ? ~(miss | fault) & icpu_cycstb_i & ~page_cross & itlb_done & ~itlb_spr_access : icpu_cycstb_i & ~page_cross;

//
// Cache Inhibit
//
// Cache inhibit is not really needed for instruction memory subsystem.
// If we would doq it, we would doq it like this.
// assign qmemimmu_ci_o = immu_en ? itlb_done & itlb_ci : `OR1200_IMMU_CI;
// However this causes an async combinatorial loop so we stick to
// no cache inhibit.
//assign qmemimmu_ci_o = `OR1200_IMMU_CI;
// Cache inhibit without an async combinatorial loop 
assign qmemimmu_ci_o = immu_en ? itlb_ci : `OR1200_IMMU_CI;


//
// Physical address is either translated virtual address or
// simply equal when IMMU is disabled
//
//assign qmemimmu_adr_o = itlb_done ? {itlb_ppn, icpu_adr_i[`OR1200_IMMU_PS-1:0]} : {icpu_vpn_r, icpu_adr_i[`OR1200_IMMU_PS-1:0]}; // DL: immu_en
assign qmemimmu_adr_o = immu_en & itlb_done ? {itlb_ppn, icpu_adr_i[`OR1200_IMMU_PS-1:2], 2'h0} : {icpu_vpn_r, icpu_adr_i[`OR1200_IMMU_PS-1:2], 2'h0}; 

reg     [31:0]                  spr_dat_reg;
//
// Output to SPRS unit
//
// spr_dat_o is registered on the 1st clock of spr read 
// so itlb can continue with process during execution of mfspr.
always @(posedge clk or `OR1200_RST_EVENT rst)
	if (rst == `OR1200_RST_VALUE)
		spr_dat_reg <=  32'h0000_0000;
	else if (spr_cs & !dis_spr_access_scnd_clk)
		spr_dat_reg <=  itlb_dat_o;

assign spr_dat_o = itlb_spr_access ? itlb_dat_o : spr_dat_reg; 

//
// Page fault exception logic
//
assign fault = itlb_done &
			(  (!supv & !itlb_uxe)		// Execute in user mode not enabled
			|| (supv & !itlb_sxe));		// Execute in supv mode not enabled

//
// TLB Miss exception logic
//
assign miss = itlb_done & !itlb_hit;

//
// ITLB Enable
//
assign itlb_en = immu_en & icpu_cycstb_i;

//
// Instantiation of ITLB
//
or1200_immu_tlb or1200_immu_tlb(
	// Rst and clk
        .clk(clk),
	.rst(rst),

        // I/F for translation
        .tlb_en(itlb_en),
	.vaddr(icpu_adr_i),
	.hit(itlb_hit),
	.ppn(itlb_ppn),
	.uxe(itlb_uxe),
	.sxe(itlb_sxe),
	.ci(itlb_ci),

`ifdef OR1200_BIST
	// RAM BIST
	.mbist_si_i(mbist_si_i),
	.mbist_so_o(mbist_so_o),
	.mbist_ctrl_i(mbist_ctrl_i),
`endif

        // SPR access
        .spr_cs(itlb_spr_access),
	.spr_write(spr_write),
	.spr_addr(spr_addr),
	.spr_dat_i(spr_dat_i),
	.spr_dat_o(itlb_dat_o)
);

`endif

endmodule

// END IMMU_TOP

// BEGIN IMMU_TLB

//////////////////////////////////////////////////////////////////////
////                                                              ////
////  OR1200's Instruction TLB                                    ////
////                                                              ////
////  This file is part of the OpenRISC 1200 project              ////
////  http://www.opencores.org/cores/or1k/                        ////
////                                                              ////
////  Description                                                 ////
////  Instantiation of ITLB.                                      ////
////                                                              ////
////  To Do:                                                      ////
////   - make it smaller and faster                               ////
////                                                              ////
////  Author(s):                                                  ////
////      - Damjan Lampret, lampret@opencores.org                 ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// CVS Revision History
//
// $Log: or1200_immu_tlb.v,v $
// Revision 2.0  2010/06/30 11:00:00  ORSoC
// Minor update: 
// Bugs fixed, coding style changed. 
//
// Revision 1.9  2004/06/08 18:17:36  lampret
// Non-functional changes. Coding style fixes.
//
// Revision 1.8  2004/04/05 08:29:57  lampret
// Merged branch_qmem into main tree.
//
// Revision 1.6.4.1  2003/12/09 11:46:48  simons
// Mbist nameing changed, Artisan ram instance signal names fixed, some synthesis waning fixed.
//
// Revision 1.6  2002/10/28 16:34:32  mohor
// RAMs wrong connected to the BIST scan chain.
//
// Revision 1.5  2002/10/17 20:04:40  lampret
// Added BIST scan. Special VS RAMs need to be used to implement BIST.
//
// Revision 1.4  2002/08/14 06:23:50  lampret
// Disabled ITLB translation when 1) doing access to ITLB SPRs or 2) crossing page. This modification was tested only with parts of IMMU test - remaining test cases needs to be run.
//
// Revision 1.3  2002/02/11 04:33:17  lampret
// Speed optimizations (removed duplicate _cyc_ and _stb_). Fixed D/IMMU cache-inhibit attr.
//
// Revision 1.2  2002/01/28 01:16:00  lampret
// Changed 'void' nop-ops instead of insn[0] to use insn[16]. Debug unit stalls the tick timer. Prepared new flag generation for add and and insns. Blocked DC/IC while they are turned off. Fixed I/D MMU SPRs layout except WAYs. TODO: smart IC invalidate, l.j 2 and TLB ways.
//
// Revision 1.1  2002/01/03 08:16:15  lampret
// New prefixes for RTL files, prefixed module names. Updated cache controllers and MMUs.
//
// Revision 1.8  2001/10/21 17:57:16  lampret
// Removed params from generic_XX.v. Added translate_off/on in sprs.v and id.v. Removed spr_addr from dc.v and ic.v. Fixed CR+LF.
//
// Revision 1.7  2001/10/14 13:12:09  lampret
// MP3 version.
//
// Revision 1.1.1.1  2001/10/06 10:18:36  igorm
// no message
//
//

 

//
// Insn TLB
//

module or1200_immu_tlb(
	// Rst and clk
	clk, rst,

	// I/F for translation
	tlb_en, vaddr, hit, ppn, uxe, sxe, ci, 

`ifdef OR1200_BIST
	// RAM BIST
	mbist_si_i, mbist_so_o, mbist_ctrl_i,
`endif

	// SPR access
	spr_cs, spr_write, spr_addr, spr_dat_i, spr_dat_o
);

parameter dw = `OR1200_OPERAND_WIDTH;
parameter aw = `OR1200_OPERAND_WIDTH;

//
// I/O
//

//
// Clock and reset
//
input				clk;
input				rst;

//
// I/F for translation
//
input				tlb_en;
input	[aw-1:0]		vaddr;
output				hit;
output	[31:`OR1200_IMMU_PS]	ppn;
output				uxe;
output				sxe;
output				ci;

`ifdef OR1200_BIST
//
// RAM BIST
//
input mbist_si_i;
input [`OR1200_MBIST_CTRL_WIDTH - 1:0] mbist_ctrl_i;
output mbist_so_o;
`endif

//
// SPR access
//
input				spr_cs;
input				spr_write;
input	[31:0]			spr_addr;
input	[31:0]			spr_dat_i;
output	[31:0]			spr_dat_o;

//
// Internal wires and regs
//
wire	[`OR1200_ITLB_TAG]	vpn;
wire				v;
wire	[`OR1200_ITLB_INDXW-1:0]	tlb_index;
wire				tlb_mr_en;
wire				tlb_mr_we;
wire	[`OR1200_ITLBMRW-1:0]	tlb_mr_ram_in;
wire	[`OR1200_ITLBMRW-1:0]	tlb_mr_ram_out;
wire				tlb_tr_en;
wire				tlb_tr_we;
wire	[`OR1200_ITLBTRW-1:0]	tlb_tr_ram_in;
wire	[`OR1200_ITLBTRW-1:0]	tlb_tr_ram_out;

// BIST
`ifdef OR1200_BIST
wire                        itlb_mr_ram_si;
wire                        itlb_mr_ram_so;
wire                        itlb_tr_ram_si;
wire                        itlb_tr_ram_so;
`endif

//
// Implemented bits inside match and translate registers
//
// itlbwYmrX: vpn 31-19  v 0
// itlbwYtrX: ppn 31-13  uxe 7  sxe 6
//
// itlb memory width:
// 19 bits for ppn
// 13 bits for vpn
// 1 bit for valid
// 2 bits for protection
// 1 bit for cache inhibit

//
// Enable for Match registers
//
assign tlb_mr_en = tlb_en | (spr_cs & !spr_addr[`OR1200_ITLB_TM_ADDR]);

//
// Write enable for Match registers
//
assign tlb_mr_we = spr_cs & spr_write & !spr_addr[`OR1200_ITLB_TM_ADDR];

//
// Enable for Translate registers
//
assign tlb_tr_en = tlb_en | (spr_cs & spr_addr[`OR1200_ITLB_TM_ADDR]);

//
// Write enable for Translate registers
//
assign tlb_tr_we = spr_cs & spr_write & spr_addr[`OR1200_ITLB_TM_ADDR];

//
// Output to SPRS unit
//
assign spr_dat_o = (!spr_write & !spr_addr[`OR1200_ITLB_TM_ADDR]) ?
            {vpn, tlb_index, {`OR1200_ITLB_TAGW-7{1'b0}}, 1'b0, 5'b00000, v} :
		(!spr_write & spr_addr[`OR1200_ITLB_TM_ADDR]) ?
			{ppn, {`OR1200_IMMU_PS-8{1'b0}}, uxe, sxe, {4{1'b0}}, ci, 1'b0} :
			32'h00000000;

//
// Assign outputs from Match registers
//
assign {vpn, v} = tlb_mr_ram_out;

//
// Assign to Match registers inputs
//
assign tlb_mr_ram_in = {spr_dat_i[`OR1200_ITLB_TAG], spr_dat_i[`OR1200_ITLBMR_V_BITS]};

//
// Assign outputs from Translate registers
//
assign {ppn, uxe, sxe, ci} = tlb_tr_ram_out;

//
// Assign to Translate registers inputs
//
assign tlb_tr_ram_in = {spr_dat_i[31:`OR1200_IMMU_PS],
			spr_dat_i[`OR1200_ITLBTR_UXE_BITS],
			spr_dat_i[`OR1200_ITLBTR_SXE_BITS],
			spr_dat_i[`OR1200_ITLBTR_CI_BITS]};

//
// Generate hit
//
assign hit = (vpn == vaddr[`OR1200_ITLB_TAG]) & v;

//
// TLB index is normally vaddr[18:13]. If it is SPR access then index is
// spr_addr[5:0].
//
assign tlb_index = spr_cs ? spr_addr[`OR1200_ITLB_INDXW-1:0] : vaddr[`OR1200_ITLB_INDX];


`ifdef OR1200_BIST
assign itlb_mr_ram_si = mbist_si_i;
assign itlb_tr_ram_si = itlb_mr_ram_so;
assign mbist_so_o = itlb_tr_ram_so;
`endif


//
// Instantiation of ITLB Match Registers
//
   or1200_spram #
     (
      .aw(6),
      .dw(14)
      )
   itlb_mr_ram
     (
      .clk(clk),
`ifdef OR1200_BIST
      // RAM BIST
      .mbist_si_i(itlb_mr_ram_si),
      .mbist_so_o(itlb_mr_ram_so),
      .mbist_ctrl_i(mbist_ctrl_i),
`endif
      .ce(tlb_mr_en),
      .we(tlb_mr_we),
      //.oe(1'b1),
      .addr(tlb_index),
      .di(tlb_mr_ram_in),
      .doq(tlb_mr_ram_out)
      );

//
// Instantiation of ITLB Translate Registers
//
   or1200_spram #
     (
      .aw(6),
      .dw(22)
      )
   itlb_tr_ram
     (
      .clk(clk),
`ifdef OR1200_BIST
      // RAM BIST
      .mbist_si_i(itlb_tr_ram_si),
      .mbist_so_o(itlb_tr_ram_so),
      .mbist_ctrl_i(mbist_ctrl_i),
`endif
      .ce(tlb_tr_en),
      .we(tlb_tr_we),
      //.oe(1'b1),
      .addr(tlb_index),
      .di(tlb_tr_ram_in),
      .doq(tlb_tr_ram_out)
      );
   
endmodule

// END IMMU_TLB

// BEGIN PIC

//////////////////////////////////////////////////////////////////////
////                                                              ////
////  OR1200's Programmable Interrupt Controller                  ////
////                                                              ////
////  This file is part of the OpenRISC 1200 project              ////
////  http://www.opencores.org/project,or1k                       ////
////                                                              ////
////  Description                                                 ////
////  PIC according to OR1K architectural specification.          ////
////                                                              ////
////  To Do:                                                      ////
////   None                                                       ////
////                                                              ////
////  Author(s):                                                  ////
////      - Damjan Lampret, lampret@opencores.org                 ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// $Log: or1200_pic.v,v $
// Revision 2.0  2010/06/30 11:00:00  ORSoC
//

 

module or1200_pic(
	// RISC Internal Interface
	clk, rst, spr_cs, spr_write, spr_addr, spr_dat_i, spr_dat_o,
	pic_wakeup, intr,
	
	// PIC Interface
	pic_int
);

//
// RISC Internal Interface
//
input		clk;		// Clock
input		rst;		// Reset
input		spr_cs;		// SPR CS
input		spr_write;	// SPR Write
input	[31:0]	spr_addr;	// SPR Address
input	[31:0]	spr_dat_i;	// SPR Write Data
output	[31:0]	spr_dat_o;	// SPR Read Data
output		pic_wakeup;	// Wakeup to the PM
output		intr;		// interrupt
				// exception request

//
// PIC Interface
//
input	[`OR1200_PIC_INTS-1:0]	pic_int;// Interrupt inputs

`ifdef OR1200_PIC_IMPLEMENTED

//
// PIC Mask Register bits (or no register)
//
`ifdef OR1200_PIC_PICMR
reg	[`OR1200_PIC_INTS-1:2]	picmr;	// PICMR bits
`else
wire	[`OR1200_PIC_INTS-1:2]	picmr;	// No PICMR register
`endif

//
// PIC Status Register bits (or no register)
//
`ifdef OR1200_PIC_PICSR
reg	[`OR1200_PIC_INTS-1:0]	picsr;	// PICSR bits
`else
wire	[`OR1200_PIC_INTS-1:0]	picsr;	// No PICSR register
`endif

//
// Internal wires & regs
//
wire		picmr_sel;	// PICMR select
wire		picsr_sel;	// PICSR select
wire	[`OR1200_PIC_INTS-1:0] um_ints;// Unmasked interrupts
reg	[31:0] 	spr_dat_o;	// SPR data out

//
// PIC registers address decoder
//
assign picmr_sel = (spr_cs && (spr_addr[`OR1200_PICOFS_BITS] == `OR1200_PIC_OFS_PICMR)) ? 1'b1 : 1'b0;
assign picsr_sel = (spr_cs && (spr_addr[`OR1200_PICOFS_BITS] == `OR1200_PIC_OFS_PICSR)) ? 1'b1 : 1'b0;

//
// Write to PICMR
//
`ifdef OR1200_PIC_PICMR
always @(posedge clk or `OR1200_RST_EVENT rst)
	if (rst == `OR1200_RST_VALUE)
		picmr <= {1'b1, {`OR1200_PIC_INTS-3{1'b0}}};
	else if (picmr_sel && spr_write) begin
		picmr <=  spr_dat_i[`OR1200_PIC_INTS-1:2];
	end
`else
assign picmr = (`OR1200_PIC_INTS)'b1;
`endif

//
// Write to PICSR, both CPU and external ints
//
`ifdef OR1200_PIC_PICSR
always @(posedge clk or `OR1200_RST_EVENT rst)
	if (rst == `OR1200_RST_VALUE)
		picsr <= {`OR1200_PIC_INTS{1'b0}};
	else if (picsr_sel && spr_write) begin
		picsr <=  spr_dat_i[`OR1200_PIC_INTS-1:0] | um_ints;
	end else
		picsr <=  picsr | um_ints;
`else
assign picsr = pic_int;
`endif

//
// Read PIC registers
//
always @(spr_addr or picmr or picsr)
	case (spr_addr[`OR1200_PICOFS_BITS])	// synopsys parallel_case
`ifdef OR1200_PIC_READREGS
		`OR1200_PIC_OFS_PICMR: begin
		   spr_dat_o[`OR1200_PIC_INTS-1:0] = {picmr, 2'b11};
 `ifdef OR1200_PIC_UNUSED_ZERO
		   spr_dat_o[31:`OR1200_PIC_INTS] = {32-`OR1200_PIC_INTS{1'b0}};
 `endif
		end
`endif
	  default: begin
	     spr_dat_o[`OR1200_PIC_INTS-1:0] = picsr;
`ifdef OR1200_PIC_UNUSED_ZERO
	     spr_dat_o[31:`OR1200_PIC_INTS] = {32-`OR1200_PIC_INTS{1'b0}};
`endif
	  end
	endcase
   
//
// Unmasked interrupts
//
assign um_ints = pic_int & {picmr, 2'b11};

//
// Generate intr
//
assign intr = |um_ints;

//
// Assert pic_wakeup when intr is asserted
//
assign pic_wakeup = intr;

`else

//
// When PIC is not implemented, drive all outputs as would when PIC is disabled
//
assign intr = pic_int[1] | pic_int[0];
assign pic_wakeup= intr;

//
// Read PIC registers
//
`ifdef OR1200_PIC_READREGS
assign spr_dat_o[`OR1200_PIC_INTS-1:0] = `OR1200_PIC_INTS'b0;
`ifdef OR1200_PIC_UNUSED_ZERO
assign spr_dat_o[31:`OR1200_PIC_INTS] = 32-`OR1200_PIC_INTS'b0;
`endif
`endif

`endif

endmodule

// END PIC

// BEGIN PM

//////////////////////////////////////////////////////////////////////
////                                                              ////
////  OR1200's Power Management                                   ////
////                                                              ////
////  This file is part of the OpenRISC 1200 project              ////
////  http://www.opencores.org/cores/or1k/                        ////
////                                                              ////
////  Description                                                 ////
////  PM according to OR1K architectural specification.           ////
////                                                              ////
////  To Do:                                                      ////
////   - add support for dynamic clock gating                     ////
////                                                              ////
////  Author(s):                                                  ////
////      - Damjan Lampret, lampret@opencores.org                 ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// CVS Revision History
//
// $Log: or1200_pm.v,v $
// Revision 2.0  2010/06/30 11:00:00  ORSoC
// No update 
//
// Revision 1.1  2002/01/03 08:16:15  lampret
// New prefixes for RTL files, prefixed module names. Updated cache controllers and MMUs.
//
// Revision 1.8  2001/10/21 17:57:16  lampret
// Removed params from generic_XX.v. Added translate_off/on in sprs.v and id.v. Removed spr_addr from dc.v and ic.v. Fixed CR+LF.
//
// Revision 1.7  2001/10/14 13:12:10  lampret
// MP3 version.
//
// Revision 1.1.1.1  2001/10/06 10:18:35  igorm
// no message
//
// Revision 1.2  2001/08/09 13:39:33  lampret
// Major clean-up.
//
// Revision 1.1  2001/07/20 00:46:21  lampret
// Development version of RTL. Libraries are missing.
//
//

 

module or1200_pm(
	// RISC Internal Interface
	clk, rst, pic_wakeup, spr_write, spr_addr, spr_dat_i, spr_dat_o,
	
	// Power Management Interface
	pm_clksd, pm_cpustall, pm_dc_gate, pm_ic_gate, pm_dmmu_gate,
	pm_immu_gate, pm_tt_gate, pm_cpu_gate, pm_wakeup, pm_lvolt
);

//
// RISC Internal Interface
//
input		clk;		// Clock
input		rst;		// Reset
input		pic_wakeup;	// Wakeup from the PIC
input		spr_write;	// SPR Read/Write
input	[31:0]	spr_addr;	// SPR Address
input	[31:0]	spr_dat_i;	// SPR Write Data
output	[31:0]	spr_dat_o;	// SPR Read Data

//
// Power Management Interface
//
input		pm_cpustall;	// Stall the CPU
output	[3:0]	pm_clksd;	// Clock Slowdown factor
output		pm_dc_gate;	// Gate DCache clock
output		pm_ic_gate;	// Gate ICache clock
output		pm_dmmu_gate;	// Gate DMMU clock
output		pm_immu_gate;	// Gate IMMU clock
output		pm_tt_gate;	// Gate Tick Timer clock
output		pm_cpu_gate;	// Gate main RISC/CPU clock
output		pm_wakeup;	// Activate (de-gate) all clocks
output		pm_lvolt;	// Lower operating voltage

`ifdef OR1200_PM_IMPLEMENTED

//
// Power Management Register bits
//
reg	[3:0]	sdf;	// Slow-down factor
reg		dme;	// Doze Mode Enable
reg		sme;	// Sleep Mode Enable
reg		dcge;	// Dynamic Clock Gating Enable

//
// Internal wires
//
wire		pmr_sel; // PMR select

//
// PMR address decoder (partial decoder)
//
`ifdef OR1200_PM_PARTIAL_DECODING
assign pmr_sel = (spr_addr[`OR1200_SPR_GROUP_BITS] == `OR1200_SPRGRP_PM) ? 1'b1 : 1'b0;
`else
assign pmr_sel = ((spr_addr[`OR1200_SPR_GROUP_BITS] == `OR1200_SPRGRP_PM) &&
		  (spr_addr[`OR1200_SPR_OFS_BITS] == `OR1200_PM_OFS_PMR)) ? 1'b1 : 1'b0;
`endif

//
// Write to PMR and also PMR[DME]/PMR[SME] reset when
// pic_wakeup is asserted
//
always @(posedge clk or `OR1200_RST_EVENT rst)
	if (rst == `OR1200_RST_VALUE)
		{dcge, sme, dme, sdf} <= 7'b0;
	else if (pmr_sel && spr_write) begin
		sdf <=  spr_dat_i[`OR1200_PM_PMR_SDF];
		dme <=  spr_dat_i[`OR1200_PM_PMR_DME];
		sme <=  spr_dat_i[`OR1200_PM_PMR_SME];
		dcge <=  spr_dat_i[`OR1200_PM_PMR_DCGE];
	end
	else if (pic_wakeup) begin
		dme <=  1'b0;
		sme <=  1'b0;
	end

//
// Read PMR
//
`ifdef OR1200_PM_READREGS
assign spr_dat_o[`OR1200_PM_PMR_SDF] = sdf;
assign spr_dat_o[`OR1200_PM_PMR_DME] = dme;
assign spr_dat_o[`OR1200_PM_PMR_SME] = sme;
assign spr_dat_o[`OR1200_PM_PMR_DCGE] = dcge;
`ifdef OR1200_PM_UNUSED_ZERO
assign spr_dat_o[`OR1200_PM_PMR_UNUSED] = 25'b0;
`endif
`endif

//
// Generate pm_clksd
//
assign pm_clksd = sdf;

//
// Statically generate all clock gate outputs
// TODO: add dynamic clock gating feature
//
assign pm_cpu_gate = (dme | sme) & ~pic_wakeup;
assign pm_dc_gate = pm_cpu_gate;
assign pm_ic_gate = pm_cpu_gate;
assign pm_dmmu_gate = pm_cpu_gate;
assign pm_immu_gate = pm_cpu_gate;
assign pm_tt_gate = sme & ~pic_wakeup;

//
// Assert pm_wakeup when pic_wakeup is asserted
//
assign pm_wakeup = pic_wakeup;

//
// Assert pm_lvolt when pm_cpu_gate or pm_cpustall are asserted
//
assign pm_lvolt = pm_cpu_gate | pm_cpustall;

`else

//
// When PM is not implemented, drive all outputs as would when PM is disabled
//
assign pm_clksd = 4'b0;
assign pm_cpu_gate = 1'b0;
assign pm_dc_gate = 1'b0;
assign pm_ic_gate = 1'b0;
assign pm_dmmu_gate = 1'b0;
assign pm_immu_gate = 1'b0;
assign pm_tt_gate = 1'b0;
assign pm_wakeup = 1'b1;
assign pm_lvolt = 1'b0;

//
// Read PMR
//
`ifdef OR1200_PM_READREGS
assign spr_dat_o[`OR1200_PM_PMR_SDF] = 4'b0;
assign spr_dat_o[`OR1200_PM_PMR_DME] = 1'b0;
assign spr_dat_o[`OR1200_PM_PMR_SME] = 1'b0;
assign spr_dat_o[`OR1200_PM_PMR_DCGE] = 1'b0;
`ifdef OR1200_PM_UNUSED_ZERO
assign spr_dat_o[`OR1200_PM_PMR_UNUSED] = 25'b0;
`endif
`endif

`endif

endmodule

// END PM

// BEGIN QMEM_TOP

//////////////////////////////////////////////////////////////////////
////                                                              ////
////  OR1200's Embedded Memory                                    ////
////                                                              ////
////  This file is part of the OpenRISC 1200 project              ////
////  http://www.opencores.org/cores/or1k/                        ////
////                                                              ////
////  Description                                                 ////
////  Embedded Memory               .                             ////
////                                                              ////
////  To Do:                                                      ////
////   - QMEM and IC/DC muxes can be removed except for cycstb    ////
////     (now are is there for easier debugging)                  ////
////   - currently arbitration is slow and stores take 2 clocks   ////
////     (final debugged version will be faster)                  ////
////                                                              ////
////  Author(s):                                                  ////
////      - Damjan Lampret, lampret@opencores.org                 ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2003 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// CVS Revision History
//
// $Log: or1200_qmem_top.v,v $
// Revision 2.0  2010/06/30 11:00:00  ORSoC
// Minor update: 
// Coding style changed.
//
// Revision 1.3  2004/06/08 18:17:36  lampret
// Non-functional changes. Coding style fixes.
//
// Revision 1.2  2004/04/05 08:40:26  lampret
// Merged branch_qmem into main tree.
//
// Revision 1.1.2.4  2004/01/11 22:45:46  andreje
// Separate instruction and data QMEM decoders, QMEM acknowledge and byte-select added
//
// Revision 1.1.2.3  2003/12/17 13:36:58  simons
// Qmem mbist signals fixed.
//
// Revision 1.1.2.2  2003/12/09 11:46:48  simons
// Mbist nameing changed, Artisan ram instance signal names fixed, some synthesis waning fixed.
//
// Revision 1.1.2.1  2003/07/08 15:45:26  lampret
// Added embedded memory QMEM.
//
//

 

`define OR1200_QMEMFSM_IDLE	3'd0
`define OR1200_QMEMFSM_STORE	3'd1
`define OR1200_QMEMFSM_LOAD	3'd2
`define OR1200_QMEMFSM_FETCH	3'd3

//
// Embedded memory
//
module or1200_qmem_top(
	// Rst, clk and clock control
	clk, rst,

`ifdef OR1200_BIST
	// RAM BIST
	mbist_si_i, mbist_so_o, mbist_ctrl_i,
`endif

	// QMEM and CPU/IMMU
	qmemimmu_adr_i,
	qmemimmu_cycstb_i,
	qmemimmu_ci_i,
	qmemicpu_sel_i,
	qmemicpu_tag_i,
	qmemicpu_dat_o,
	qmemicpu_ack_o,
	qmemimmu_rty_o,
	qmemimmu_err_o,
	qmemimmu_tag_o,

	// QMEM and IC
	icqmem_adr_o,
	icqmem_cycstb_o,
	icqmem_ci_o,
	icqmem_sel_o,
	icqmem_tag_o,
	icqmem_dat_i,
	icqmem_ack_i,
	icqmem_rty_i,
	icqmem_err_i,
	icqmem_tag_i,

	// QMEM and CPU/DMMU
	qmemdmmu_adr_i,
	qmemdmmu_cycstb_i,
	qmemdmmu_ci_i,
	qmemdcpu_we_i,
	qmemdcpu_sel_i,
	qmemdcpu_tag_i,
	qmemdcpu_dat_i,
	qmemdcpu_dat_o,
	qmemdcpu_ack_o,
	qmemdcpu_rty_o,
	qmemdmmu_err_o,
	qmemdmmu_tag_o,

	// QMEM and DC
	dcqmem_adr_o,
	dcqmem_cycstb_o,
	dcqmem_ci_o,
	dcqmem_we_o,
	dcqmem_sel_o,
	dcqmem_tag_o,
	dcqmem_dat_o,
	dcqmem_dat_i,
	dcqmem_ack_i,
	dcqmem_rty_i,
	dcqmem_err_i,
	dcqmem_tag_i 

);

parameter dw = `OR1200_OPERAND_WIDTH;

//
// I/O
//

//
// Clock and reset
//
input				clk;
input				rst;

`ifdef OR1200_BIST
//
// RAM BIST
//
input mbist_si_i;
input [`OR1200_MBIST_CTRL_WIDTH - 1:0] mbist_ctrl_i;
output mbist_so_o;
`endif

//
// QMEM and CPU/IMMU
//
input	[31:0]			qmemimmu_adr_i;
input				qmemimmu_cycstb_i;
input				qmemimmu_ci_i;
input	[3:0]			qmemicpu_sel_i;
input	[3:0]			qmemicpu_tag_i;
output	[31:0]			qmemicpu_dat_o;
output				qmemicpu_ack_o;
output				qmemimmu_rty_o;
output				qmemimmu_err_o;
output	[3:0]			qmemimmu_tag_o;

//
// QMEM and IC
//
output	[31:0]			icqmem_adr_o;
output				icqmem_cycstb_o;
output				icqmem_ci_o;
output	[3:0]			icqmem_sel_o;
output	[3:0]			icqmem_tag_o;
input	[31:0]			icqmem_dat_i;
input				icqmem_ack_i;
input				icqmem_rty_i;
input				icqmem_err_i;
input	[3:0]			icqmem_tag_i;

//
// QMEM and CPU/DMMU
//
input	[31:0]			qmemdmmu_adr_i;
input				qmemdmmu_cycstb_i;
input				qmemdmmu_ci_i;
input				qmemdcpu_we_i;
input	[3:0]			qmemdcpu_sel_i;
input	[3:0]			qmemdcpu_tag_i;
input	[31:0]			qmemdcpu_dat_i;
output	[31:0]			qmemdcpu_dat_o;
output				qmemdcpu_ack_o;
output				qmemdcpu_rty_o;
output				qmemdmmu_err_o;
output	[3:0]			qmemdmmu_tag_o;

//
// QMEM and DC
//
output	[31:0]			dcqmem_adr_o;
output				dcqmem_cycstb_o;
output				dcqmem_ci_o;
output				dcqmem_we_o;
output	[3:0]			dcqmem_sel_o;
output	[3:0]			dcqmem_tag_o;
output	[31:0]		dcqmem_dat_o;
input	[31:0]		dcqmem_dat_i;
input				dcqmem_ack_i;
input				dcqmem_rty_i;
input				dcqmem_err_i;
input	[3:0]			dcqmem_tag_i;

`ifdef OR1200_QMEM_IMPLEMENTED

//
// Internal regs and wires
//
wire				iaddr_qmem_hit;
wire				daddr_qmem_hit;
reg	[2:0]			state;
reg				qmem_dack;
reg				qmem_iack;
wire	[31:0]			qmem_di;
wire	[31:0]			qmem_do;
wire				qmem_en;
wire				qmem_we;
`ifdef OR1200_QMEM_BSEL
wire  [3:0]       qmem_sel;
`endif
wire	[31:0]			qmem_addr;
`ifdef OR1200_QMEM_ACK
wire              qmem_ack;
`else
wire              qmem_ack = 1'b1;
`endif

//
// QMEM and CPU/IMMU
//
assign qmemicpu_dat_o = qmem_iack ? qmem_do : icqmem_dat_i;
assign qmemicpu_ack_o = qmem_iack ? 1'b1 : icqmem_ack_i;
assign qmemimmu_rty_o = qmem_iack ? 1'b0 : icqmem_rty_i;
assign qmemimmu_err_o = qmem_iack ? 1'b0 : icqmem_err_i;
assign qmemimmu_tag_o = qmem_iack ? 4'h0 : icqmem_tag_i;

//
// QMEM and IC
//
assign icqmem_adr_o = iaddr_qmem_hit ? 32'h0000_0000 : qmemimmu_adr_i;
assign icqmem_cycstb_o = iaddr_qmem_hit ? 1'b0 : qmemimmu_cycstb_i;
assign icqmem_ci_o = iaddr_qmem_hit ? 1'b0 : qmemimmu_ci_i;
assign icqmem_sel_o = iaddr_qmem_hit ? 4'h0 : qmemicpu_sel_i;
assign icqmem_tag_o = iaddr_qmem_hit ? 4'h0 : qmemicpu_tag_i;

//
// QMEM and CPU/DMMU
//
assign qmemdcpu_dat_o = daddr_qmem_hit ? qmem_do : dcqmem_dat_i;
assign qmemdcpu_ack_o = daddr_qmem_hit ? qmem_dack : dcqmem_ack_i;
assign qmemdcpu_rty_o = daddr_qmem_hit ? ~qmem_dack : dcqmem_rty_i;
assign qmemdmmu_err_o = daddr_qmem_hit ? 1'b0 : dcqmem_err_i;
assign qmemdmmu_tag_o = daddr_qmem_hit ? 4'h0 : dcqmem_tag_i;

//
// QMEM and DC
//
assign dcqmem_adr_o = daddr_qmem_hit ? 32'h0000_0000 : qmemdmmu_adr_i;
assign dcqmem_cycstb_o = daddr_qmem_hit ? 1'b0 : qmemdmmu_cycstb_i;
assign dcqmem_ci_o = daddr_qmem_hit ? 1'b0 : qmemdmmu_ci_i;
assign dcqmem_we_o = daddr_qmem_hit ? 1'b0 : qmemdcpu_we_i;
assign dcqmem_sel_o = daddr_qmem_hit ? 4'h0 : qmemdcpu_sel_i;
assign dcqmem_tag_o = daddr_qmem_hit ? 4'h0 : qmemdcpu_tag_i;
assign dcqmem_dat_o = daddr_qmem_hit ? 32'h0000_0000 : qmemdcpu_dat_i;

//
// Address comparison whether QMEM was hit
//
`ifdef OR1200_QMEM_IADDR
assign iaddr_qmem_hit = (qmemimmu_adr_i & `OR1200_QMEM_IMASK) == `OR1200_QMEM_IADDR;
`else
assign iaddr_qmem_hit = 1'b0;
`endif

`ifdef OR1200_QMEM_DADDR
assign daddr_qmem_hit = (qmemdmmu_adr_i & `OR1200_QMEM_DMASK) == `OR1200_QMEM_DADDR;
`else
assign daddr_qmem_hit = 1'b0;
`endif

//
//
//
assign qmem_en = iaddr_qmem_hit & qmemimmu_cycstb_i | daddr_qmem_hit & qmemdmmu_cycstb_i;
assign qmem_we = qmemdmmu_cycstb_i & daddr_qmem_hit & qmemdcpu_we_i;
`ifdef OR1200_QMEM_BSEL
assign qmem_sel = (qmemdmmu_cycstb_i & daddr_qmem_hit) ? qmemdcpu_sel_i : qmemicpu_sel_i;
`endif
assign qmem_di = qmemdcpu_dat_i;
assign qmem_addr = (qmemdmmu_cycstb_i & daddr_qmem_hit) ? qmemdmmu_adr_i : qmemimmu_adr_i;

//
// QMEM control FSM
//
always @(`OR1200_RST_EVENT rst or posedge clk)
	if (rst == `OR1200_RST_VALUE) begin
		state <=  `OR1200_QMEMFSM_IDLE;
		qmem_dack <=  1'b0;
		qmem_iack <=  1'b0;
	end
	else case (state)	// synopsys parallel_case
		`OR1200_QMEMFSM_IDLE: begin
			if (qmemdmmu_cycstb_i & daddr_qmem_hit & qmemdcpu_we_i & qmem_ack) begin
				state <=  `OR1200_QMEMFSM_STORE;
				qmem_dack <=  1'b1;
				qmem_iack <=  1'b0;
			end
			else if (qmemdmmu_cycstb_i & daddr_qmem_hit & qmem_ack) begin
				state <=  `OR1200_QMEMFSM_LOAD;
				qmem_dack <=  1'b1;
				qmem_iack <=  1'b0;
			end
			else if (qmemimmu_cycstb_i & iaddr_qmem_hit & qmem_ack) begin
				state <=  `OR1200_QMEMFSM_FETCH;
				qmem_iack <=  1'b1;
				qmem_dack <=  1'b0;
			end
		end
		`OR1200_QMEMFSM_STORE: begin
			if (qmemdmmu_cycstb_i & daddr_qmem_hit & qmemdcpu_we_i & qmem_ack) begin
				state <=  `OR1200_QMEMFSM_STORE;
				qmem_dack <=  1'b1;
				qmem_iack <=  1'b0;
			end
			else if (qmemdmmu_cycstb_i & daddr_qmem_hit & qmem_ack) begin
				state <=  `OR1200_QMEMFSM_LOAD;
				qmem_dack <=  1'b1;
				qmem_iack <=  1'b0;
			end
			else if (qmemimmu_cycstb_i & iaddr_qmem_hit & qmem_ack) begin
				state <=  `OR1200_QMEMFSM_FETCH;
				qmem_iack <=  1'b1;
				qmem_dack <=  1'b0;
			end
			else begin
				state <=  `OR1200_QMEMFSM_IDLE;
				qmem_dack <=  1'b0;
				qmem_iack <=  1'b0;
			end
		end
		`OR1200_QMEMFSM_LOAD: begin
			if (qmemdmmu_cycstb_i & daddr_qmem_hit & qmemdcpu_we_i & qmem_ack) begin
				state <=  `OR1200_QMEMFSM_STORE;
				qmem_dack <=  1'b1;
				qmem_iack <=  1'b0;
			end
			else if (qmemdmmu_cycstb_i & daddr_qmem_hit & qmem_ack) begin
				state <=  `OR1200_QMEMFSM_LOAD;
				qmem_dack <=  1'b1;
				qmem_iack <=  1'b0;
			end
			else if (qmemimmu_cycstb_i & iaddr_qmem_hit & qmem_ack) begin
				state <=  `OR1200_QMEMFSM_FETCH;
				qmem_iack <=  1'b1;
				qmem_dack <=  1'b0;
			end
			else begin
				state <=  `OR1200_QMEMFSM_IDLE;
				qmem_dack <=  1'b0;
				qmem_iack <=  1'b0;
			end
		end
		`OR1200_QMEMFSM_FETCH: begin
			if (qmemdmmu_cycstb_i & daddr_qmem_hit & qmemdcpu_we_i & qmem_ack) begin
				state <=  `OR1200_QMEMFSM_STORE;
				qmem_dack <=  1'b1;
				qmem_iack <=  1'b0;
			end
			else if (qmemdmmu_cycstb_i & daddr_qmem_hit & qmem_ack) begin
				state <=  `OR1200_QMEMFSM_LOAD;
				qmem_dack <=  1'b1;
				qmem_iack <=  1'b0;
			end
			else if (qmemimmu_cycstb_i & iaddr_qmem_hit & qmem_ack) begin
				state <=  `OR1200_QMEMFSM_FETCH;
				qmem_iack <=  1'b1;
				qmem_dack <=  1'b0;
			end
			else begin
				state <=  `OR1200_QMEMFSM_IDLE;
				qmem_dack <=  1'b0;
				qmem_iack <=  1'b0;
			end
		end
		default: begin
			state <=  `OR1200_QMEMFSM_IDLE;
			qmem_dack <=  1'b0;
			qmem_iack <=  1'b0;
		end
	endcase

//
// Instantiation of embedded memory
//
or1200_spram_2048x32 or1200_qmem_ram(
	.clk(clk),
	.rst(rst),
`ifdef OR1200_BIST
	// RAM BIST
	.mbist_si_i(mbist_si_i),
	.mbist_so_o(mbist_so_o),
	.mbist_ctrl_i(mbist_ctrl_i),
`endif
	.addr(qmem_addr[12:2]),
`ifdef OR1200_QMEM_BSEL
	.sel(qmem_sel),
`endif
`ifdef OR1200_QMEM_ACK
  .ack(qmem_ack),
`endif
  .ce(qmem_en),
	.we(qmem_we),
	.oe(1'b1),
	.di(qmem_di),
	.doq(qmem_do)
);

`else  // OR1200_QMEM_IMPLEMENTED

//
// QMEM and CPU/IMMU
//
assign qmemicpu_dat_o = icqmem_dat_i;
assign qmemicpu_ack_o = icqmem_ack_i;
assign qmemimmu_rty_o = icqmem_rty_i;
assign qmemimmu_err_o = icqmem_err_i;
assign qmemimmu_tag_o = icqmem_tag_i;

//
// QMEM and IC
//
assign icqmem_adr_o = qmemimmu_adr_i;
assign icqmem_cycstb_o = qmemimmu_cycstb_i;
assign icqmem_ci_o = qmemimmu_ci_i;
assign icqmem_sel_o = qmemicpu_sel_i;
assign icqmem_tag_o = qmemicpu_tag_i;

//
// QMEM and CPU/DMMU
//
assign qmemdcpu_dat_o = dcqmem_dat_i;
assign qmemdcpu_ack_o = dcqmem_ack_i;
assign qmemdcpu_rty_o = dcqmem_rty_i;
assign qmemdmmu_err_o = dcqmem_err_i;
assign qmemdmmu_tag_o = dcqmem_tag_i;

//
// QMEM and DC
//
assign dcqmem_adr_o = qmemdmmu_adr_i;
assign dcqmem_cycstb_o = qmemdmmu_cycstb_i;
assign dcqmem_ci_o = qmemdmmu_ci_i;
assign dcqmem_we_o = qmemdcpu_we_i;
assign dcqmem_sel_o = qmemdcpu_sel_i;
assign dcqmem_tag_o = qmemdcpu_tag_i;
assign dcqmem_dat_o = qmemdcpu_dat_i;

`ifdef OR1200_BIST
assign mbist_so_o = mbist_si_i;
`endif

`endif

endmodule

// END QMEM_TOP

// BEGIN SB

//////////////////////////////////////////////////////////////////////
////                                                              ////
////  OR1200's Store Buffer                                       ////
////                                                              ////
////  This file is part of the OpenRISC 1200 project              ////
////  http://opencores.org/project,or1k                           ////
////                                                              ////
////  Description                                                 ////
////  Implements store buffer.                                    ////
////                                                              ////
////  To Do:                                                      ////
////   - byte combining                                           ////
////                                                              ////
////  Author(s):                                                  ////
////      - Damjan Lampret, lampret@opencores.org                 ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2002 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
//
// $Log: or1200_sb.v,v $
// Revision 2.0  2010/06/30 11:00:00  ORSoC
// Minor update: 
// Bugs fixed. 

 

module or1200_sb(
	// RISC clock, reset
	clk, rst,

	// Internal RISC bus (SB)
	sb_en,

	// Internal RISC bus (DC<->SB)
	dcsb_dat_i, dcsb_adr_i, dcsb_cyc_i, dcsb_stb_i, dcsb_we_i, dcsb_sel_i, dcsb_cab_i,
	dcsb_dat_o, dcsb_ack_o, dcsb_err_o,

	// BIU bus
	sbbiu_dat_o, sbbiu_adr_o, sbbiu_cyc_o, sbbiu_stb_o, sbbiu_we_o, sbbiu_sel_o, sbbiu_cab_o,
	sbbiu_dat_i, sbbiu_ack_i, sbbiu_err_i
);

parameter dw = `OR1200_OPERAND_WIDTH;
parameter aw = `OR1200_OPERAND_WIDTH;

//
// RISC clock, reset
//
input			clk;		// RISC clock
input			rst;		// RISC reset

//
// Internal RISC bus (SB)
//
input			sb_en;		// SB enable

//
// Internal RISC bus (DC<->SB)
//
input	[31:0]	dcsb_dat_i;	// input data bus
input	[aw-1:0]	dcsb_adr_i;	// address bus
input			dcsb_cyc_i;	// WB cycle
input			dcsb_stb_i;	// WB strobe
input			dcsb_we_i;	// WB write enable
input			dcsb_cab_i;	// CAB input
input	[3:0]		dcsb_sel_i;	// byte selects
output	[31:0]	dcsb_dat_o;	// output data bus
output			dcsb_ack_o;	// ack output
output			dcsb_err_o;	// err output

//
// BIU bus
//
output	[31:0]	sbbiu_dat_o;	// output data bus
output	[aw-1:0]	sbbiu_adr_o;	// address bus
output			sbbiu_cyc_o;	// WB cycle
output			sbbiu_stb_o;	// WB strobe
output			sbbiu_we_o;	// WB write enable
output			sbbiu_cab_o;	// CAB input
output	[3:0]		sbbiu_sel_o;	// byte selects
input	[31:0]	sbbiu_dat_i;	// input data bus
input			sbbiu_ack_i;	// ack output
input			sbbiu_err_i;	// err output

`ifdef OR1200_SB_IMPLEMENTED

//
// Internal wires and regs
//
wire	[4+dw+aw-1:0]	fifo_dat_i;	// FIFO data in
wire	[4+dw+aw-1:0]	fifo_dat_o;	// FIFO data out
wire			fifo_wr;
wire			fifo_rd;
wire			fifo_full;
wire			fifo_empty;
wire			sel_sb;
reg			sb_en_reg;
reg			outstanding_store;
reg			fifo_wr_ack;

//
// FIFO data in/out
//
assign fifo_dat_i = {dcsb_sel_i, dcsb_dat_i, dcsb_adr_i};
assign {sbbiu_sel_o, sbbiu_dat_o, sbbiu_adr_o} = sel_sb ? fifo_dat_o : {dcsb_sel_i, dcsb_dat_i, dcsb_adr_i};

//
// Control
//
assign fifo_wr = dcsb_cyc_i & dcsb_stb_i & dcsb_we_i & ~fifo_full & ~fifo_wr_ack;
assign fifo_rd = ~outstanding_store;
assign dcsb_dat_o = sbbiu_dat_i;
assign dcsb_ack_o = sel_sb ? fifo_wr_ack : sbbiu_ack_i;
assign dcsb_err_o = sel_sb ? 1'b0 : sbbiu_err_i;	// SB never returns error
assign sbbiu_cyc_o = sel_sb ? outstanding_store : dcsb_cyc_i;
assign sbbiu_stb_o = sel_sb ? outstanding_store : dcsb_stb_i;
assign sbbiu_we_o = sel_sb ? 1'b1 : dcsb_we_i;
assign sbbiu_cab_o = sel_sb ? 1'b0 : dcsb_cab_i;
assign sel_sb = sb_en_reg & (~fifo_empty | (fifo_empty & outstanding_store));

//
// SB enable
//
always @(posedge clk or `OR1200_RST_EVENT rst)
	if (rst == `OR1200_RST_VALUE)
		sb_en_reg <= 1'b0;
	else if (sb_en & ~dcsb_cyc_i)
		sb_en_reg <=  1'b1; // enable SB when there is no dcsb transfer in progress
	else if (~sb_en & (~fifo_empty | (fifo_empty & outstanding_store)))
		sb_en_reg <=  1'b0; // disable SB when there is no pending transfers from SB

//
// Store buffer FIFO instantiation
//
or1200_sb_fifo or1200_sb_fifo (
	.clk_i(clk),
	.rst_i(rst),
	.dat_i(fifo_dat_i),
	.wr_i(fifo_wr),
	.rd_i(fifo_rd),
	.dat_o(fifo_dat_o),
	.full_o(fifo_full),
	.empty_o(fifo_empty)
);

//
// fifo_rd
//
always @(posedge clk or `OR1200_RST_EVENT rst)
	if (rst == `OR1200_RST_VALUE)
		outstanding_store <=  1'b0;
	else if (sbbiu_ack_i)
		outstanding_store <=  1'b0;
	else if (sel_sb | fifo_wr)
		outstanding_store <=  1'b1;

//
// fifo_wr_ack
//
always @(posedge clk or `OR1200_RST_EVENT rst)
	if (rst == `OR1200_RST_VALUE)
		fifo_wr_ack <=  1'b0;
	else if (fifo_wr)
		fifo_wr_ack <=  1'b1;
	else
		fifo_wr_ack <=  1'b0;

`else	// !OR1200_SB_IMPLEMENTED

assign sbbiu_dat_o = dcsb_dat_i;
assign sbbiu_adr_o = dcsb_adr_i;
assign sbbiu_cyc_o = dcsb_cyc_i;
assign sbbiu_stb_o = dcsb_stb_i;
assign sbbiu_we_o = dcsb_we_i;
assign sbbiu_cab_o = dcsb_cab_i;
assign sbbiu_sel_o = dcsb_sel_i;
assign dcsb_dat_o = sbbiu_dat_i;
assign dcsb_ack_o = sbbiu_ack_i;
assign dcsb_err_o = sbbiu_err_i;

`endif

endmodule

// END SB

// BEGIN TT

//////////////////////////////////////////////////////////////////////
////                                                              ////
////  OR1200's Tick Timer                                         ////
////                                                              ////
////  This file is part of the OpenRISC 1200 project              ////
////  http://www.opencores.org/cores/or1k/                        ////
////                                                              ////
////  Description                                                 ////
////  TT according to OR1K architectural specification.           ////
////                                                              ////
////  To Do:                                                      ////
////   None                                                       ////
////                                                              ////
////  Author(s):                                                  ////
////      - Damjan Lampret, lampret@opencores.org                 ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//

 

module or1200_tt(
	// RISC Internal Interface
	clk, rst, du_stall,
	spr_cs, spr_write, spr_addr, spr_dat_i, spr_dat_o,
	intr
);

//
// RISC Internal Interface
//
input		clk;		// Clock
input		rst;		// Reset
input		du_stall;	// DU stall
input		spr_cs;		// SPR CS
input		spr_write;	// SPR Write
input	[31:0]	spr_addr;	// SPR Address
input	[31:0]	spr_dat_i;	// SPR Write Data
output	[31:0]	spr_dat_o;	// SPR Read Data
output		intr;		// Interrupt output

`ifdef OR1200_TT_IMPLEMENTED

//
// TT Mode Register bits (or no register)
//
`ifdef OR1200_TT_TTMR
reg	[31:0]	ttmr;	// TTMR bits
`else
wire	[31:0]	ttmr;	// No TTMR register
`endif

//
// TT Count Register bits (or no register)
//
`ifdef OR1200_TT_TTCR
reg	[31:0]	ttcr;	// TTCR bits
`else
wire	[31:0]	ttcr;	// No TTCR register
`endif

//
// Internal wires & regs
//
wire		ttmr_sel;	// TTMR select
wire		ttcr_sel;	// TTCR select
wire		match;		// Asserted when TTMR[TP]
				// is equal to TTCR[27:0]
wire		restart;	// Restart counter when asserted
wire		stop;		// Stop counter when asserted
reg	[31:0] 	spr_dat_o;	// SPR data out

//
// TT registers address decoder
//
assign ttmr_sel = (spr_cs && (spr_addr[`OR1200_TTOFS_BITS] == `OR1200_TT_OFS_TTMR)) ? 1'b1 : 1'b0;
assign ttcr_sel = (spr_cs && (spr_addr[`OR1200_TTOFS_BITS] == `OR1200_TT_OFS_TTCR)) ? 1'b1 : 1'b0;

//
// Write to TTMR or update of TTMR[IP] bit
//
`ifdef OR1200_TT_TTMR
always @(posedge clk or `OR1200_RST_EVENT rst)
	if (rst == `OR1200_RST_VALUE)
		ttmr <= 32'b0;
	else if (ttmr_sel && spr_write)
		ttmr <=  spr_dat_i;
	else if (ttmr[`OR1200_TT_TTMR_IE])
		ttmr[`OR1200_TT_TTMR_IP] <=  ttmr[`OR1200_TT_TTMR_IP] | (match & ttmr[`OR1200_TT_TTMR_IE]);
`else
assign ttmr = {2'b11, 30'b0};	// TTMR[M] = 0x3
`endif

//
// Write to or increment of TTCR
//
`ifdef OR1200_TT_TTCR
always @(posedge clk or `OR1200_RST_EVENT rst)
	if (rst == `OR1200_RST_VALUE)
		ttcr <= 32'b0;
	else if (restart)
		ttcr <=  32'b0;
	else if (ttcr_sel && spr_write)
		ttcr <=  spr_dat_i;
	else if (!stop)
		ttcr <=  ttcr + 32'd1;
`else
assign ttcr = 32'b0;
`endif

//
// Read TT registers
//
always @(spr_addr or ttmr or ttcr)
	case (spr_addr[`OR1200_TTOFS_BITS])	// synopsys parallel_case
`ifdef OR1200_TT_READREGS
		`OR1200_TT_OFS_TTMR: spr_dat_o = ttmr;
`endif
		default: spr_dat_o = ttcr;
	endcase

//
// A match when TTMR[TP] is equal to TTCR[27:0]
//
assign match = (ttmr[`OR1200_TT_TTMR_TP] == ttcr[27:0]) ? 1'b1 : 1'b0;

//
// Restart when match and TTMR[M]==0x1
//
assign restart = match && (ttmr[`OR1200_TT_TTMR_M] == 2'b01);

//
// Stop when match and TTMR[M]==0x2 or when TTMR[M]==0x0 or when RISC is stalled by debug unit
//
assign stop = match & (ttmr[`OR1200_TT_TTMR_M] == 2'b10) | (ttmr[`OR1200_TT_TTMR_M] == 2'b00) | du_stall;

//
// Generate an interrupt request
//
assign intr = ttmr[`OR1200_TT_TTMR_IP];

`else

//
// When TT is not implemented, drive all outputs as would when TT is disabled
//
assign intr = 1'b0;

//
// Read TT registers
//
`ifdef OR1200_TT_READREGS
assign spr_dat_o = 32'b0;
`endif

`endif

// ADDED:  assert property which should be false

assert property (intr==1'b0);

// ADDED:  assert property which should be true

assert property (1==1);

endmodule

// END TT

// BEGIN WB_BIU

//////////////////////////////////////////////////////////////////////
////                                                              ////
////  OR1200's WISHBONE BIU                                       ////
////                                                              ////
////  This file is part of the OpenRISC 1200 project              ////
////  http://opencores.org/project,or1k                           ////
////                                                              ////
////  Description                                                 ////
////  Implements WISHBONE interface                               ////
////                                                              ////
////  To Do:                                                      ////
////   - if biu_cyc/stb are deasserted and wb_ack_i is asserted   ////
////   and this happens even before aborted_r is asssrted,        ////
////   wb_ack_i will be delivered even though transfer is         ////
////   internally considered already aborted. However most        ////
////   wb_ack_i are externally registered and delayed. Normally   ////
////   this shouldn't cause any problems.                         ////
////                                                              ////
////  Author(s):                                                  ////
////      - Damjan Lampret, lampret@opencores.org                 ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
//
// $Log: or1200_wb_biu.v,v $
// Revision 2.0  2010/06/30 11:00:00  ORSoC
// Major update: 
// Structure reordered and bugs fixed. 
//

 

module or1200_wb_biu(
		     // RISC clock, reset and clock control
		     clk, rst, clmode,

		     // WISHBONE interface
		     wb_clk_i, wb_rst_i, wb_ack_i, wb_err_i, wb_rty_i, wb_dat_i,
		     wb_cyc_o, wb_adr_o, wb_stb_o, wb_we_o, wb_sel_o, wb_dat_o,
`ifdef OR1200_WB_CAB
		     wb_cab_o,
`endif
`ifdef OR1200_WB_B3
		     wb_cti_o, wb_bte_o,
`endif

		     // Internal RISC bus
		     biu_dat_i, biu_adr_i, biu_cyc_i, biu_stb_i, biu_we_i, biu_sel_i, biu_cab_i,
		     biu_dat_o, biu_ack_o, biu_err_o
		     );

parameter bl = 4; /* Can currently be either 4 or 8 - the two optional line
		      sizes for the OR1200. */
		      
   
   //
   // RISC clock, reset and clock control
   //
   input				clk;		// RISC clock
   input				rst;		// RISC reset
   input [1:0] 				clmode;		// 00 WB=RISC, 01 WB=RISC/2, 10 N/A, 11 WB=RISC/4

   //
   // WISHBONE interface
   //
   input				wb_clk_i;	// clock input
   input				wb_rst_i;	// reset input
   input				wb_ack_i;	// normal termination
   input				wb_err_i;	// termination w/ error
   input				wb_rty_i;	// termination w/ retry
   input [31:0] 			wb_dat_i;	// input data bus
   output				wb_cyc_o;	// cycle valid output
   output [31:0] 			wb_adr_o;	// address bus outputs
   output				wb_stb_o;	// strobe output
   output				wb_we_o;	// indicates write transfer
   output [3:0] 			wb_sel_o;	// byte select outputs
   output [31:0] 			wb_dat_o;	// output data bus
`ifdef OR1200_WB_CAB
   output				wb_cab_o;	// consecutive address burst
`endif
`ifdef OR1200_WB_B3
   output [2:0] 			wb_cti_o;	// cycle type identifier
   output [1:0] 			wb_bte_o;	// burst type extension
`endif

   //
   // Internal RISC interface
   //
   input [31:0] 			biu_dat_i;	// input data bus
   input [31:0] 			biu_adr_i;	// address bus
   input				biu_cyc_i;	// WB cycle
   input				biu_stb_i;	// WB strobe
   input				biu_we_i;	// WB write enable
   input				biu_cab_i;	// CAB input
   input [3:0] 				biu_sel_i;	// byte selects
   output [31:0] 			biu_dat_o;	// output data bus
   output				biu_ack_o;	// ack output
   output				biu_err_o;	// err output

   //
   // Registers
   //
   wire 				wb_ack;		// normal termination
   reg [31:0] 			wb_adr_o;	// address bus outputs
   reg 					wb_cyc_o;	// cycle output
   reg 					wb_stb_o;	// strobe output
   reg 					wb_we_o;	// indicates write transfer
   reg [3:0] 				wb_sel_o;	// byte select outputs
`ifdef OR1200_WB_CAB
   reg 					wb_cab_o;	// CAB output
`endif
`ifdef OR1200_WB_B3
   reg [2:0] 				wb_cti_o;	// cycle type identifier
   reg [1:0] 				wb_bte_o;	// burst type extension
`endif
`ifdef OR1200_NO_DC   
   reg [31:0] 			wb_dat_o;	// output data bus
`else   
   assign wb_dat_o = biu_dat_i;    // No register on this - straight from DCRAM
`endif
   
`ifdef OR1200_WB_RETRY
   reg [`OR1200_WB_RETRY-1:0] 		retry_cnt;	// Retry counter
`else
   wire 				retry_cnt;
   assign retry_cnt = 1'b0;
`endif
`ifdef OR1200_WB_B3
   reg [3:0] 				burst_len;	// burst counter
`endif

   reg  				biu_stb_reg;	// WB strobe
   wire  				biu_stb;	// WB strobe
   reg 					wb_cyc_nxt;	// next WB cycle value
   reg 					wb_stb_nxt;	// next WB strobe value
   reg [2:0] 				wb_cti_nxt;	// next cycle type identifier value

   reg 					wb_ack_cnt;	// WB ack toggle counter
   reg 					wb_err_cnt;	// WB err toggle counter
   reg 					wb_rty_cnt;	// WB rty toggle counter
   reg 					biu_ack_cnt;	// BIU ack toggle counter
   reg 					biu_err_cnt;	// BIU err toggle counter
   reg 					biu_rty_cnt;	// BIU rty toggle counter
   wire 				biu_rty;	// BIU rty indicator

   reg [1:0] 				wb_fsm_state_cur;	// WB FSM - surrent state
   reg [1:0] 				wb_fsm_state_nxt;	// WB FSM - next state
   wire [1:0] 				wb_fsm_idle	= 2'h0;	// WB FSM state - IDLE
   wire [1:0] 				wb_fsm_trans	= 2'h1;	// WB FSM state - normal TRANSFER
   wire [1:0] 				wb_fsm_last	= 2'h2;	// EB FSM state - LAST transfer

   //
   // WISHBONE I/F <-> Internal RISC I/F conversion
   //
   //assign wb_ack = wb_ack_i;
   assign wb_ack = wb_ack_i & !wb_err_i & !wb_rty_i;

   //
   // WB FSM - register part
   // 
   always @(posedge wb_clk_i or `OR1200_RST_EVENT wb_rst_i) begin
      if (wb_rst_i == `OR1200_RST_VALUE) 
	wb_fsm_state_cur <=  wb_fsm_idle;
      else 
	wb_fsm_state_cur <=  wb_fsm_state_nxt;
   end

   //
   // WB burst tength counter
   // 
   always @(posedge wb_clk_i or `OR1200_RST_EVENT wb_rst_i) begin
      if (wb_rst_i == `OR1200_RST_VALUE) begin
	 burst_len <= 0;
      end
      else begin
	 // burst counter
	 if (wb_fsm_state_cur == wb_fsm_idle)
	   burst_len <=  bl[3:0] - 2;
	 else if (wb_stb_o & wb_ack)
	   burst_len <=  burst_len - 1;
      end
   end

   // 
   // WB FSM - combinatorial part
   // 
   always @(wb_fsm_state_cur or burst_len or wb_err_i or wb_rty_i or wb_ack or 
	    wb_cti_o or wb_sel_o or wb_stb_o or wb_we_o or biu_cyc_i or 
	    biu_stb or biu_cab_i or biu_sel_i or biu_we_i) begin
      // States of WISHBONE Finite State Machine
      case(wb_fsm_state_cur)
	// IDLE 
	wb_fsm_idle : begin
	   wb_cyc_nxt = biu_cyc_i & biu_stb;
	   wb_stb_nxt = biu_cyc_i & biu_stb;
	   wb_cti_nxt = {!biu_cab_i, 1'b1, !biu_cab_i};
	   if (biu_cyc_i & biu_stb)
	     wb_fsm_state_nxt = wb_fsm_trans;
	   else
	     wb_fsm_state_nxt = wb_fsm_idle;
	end
	// normal TRANSFER
	wb_fsm_trans : begin
	   wb_cyc_nxt = !wb_stb_o | !wb_err_i & !wb_rty_i & 
			!(wb_ack & wb_cti_o == 3'b111);
	   
	   wb_stb_nxt = !wb_stb_o | !wb_err_i & !wb_rty_i & !wb_ack | 
			!wb_err_i & !wb_rty_i & wb_cti_o == 3'b010 ;
	   wb_cti_nxt[2] = wb_stb_o & wb_ack & burst_len == 'h0 | wb_cti_o[2];
	   wb_cti_nxt[1] = 1'b1  ;
	   wb_cti_nxt[0] = wb_stb_o & wb_ack & burst_len == 'h0 | wb_cti_o[0];

	   if ((!biu_cyc_i | !biu_stb | !biu_cab_i | biu_sel_i != wb_sel_o | 
		biu_we_i != wb_we_o) & wb_cti_o == 3'b010)
	     wb_fsm_state_nxt = wb_fsm_last;
	   else if ((wb_err_i | wb_rty_i | wb_ack & wb_cti_o==3'b111) & 
		    wb_stb_o)
	     wb_fsm_state_nxt = wb_fsm_idle;
	   else
	     wb_fsm_state_nxt = wb_fsm_trans;
	end
	// LAST transfer
	wb_fsm_last : begin
	   wb_cyc_nxt = !wb_stb_o | !wb_err_i & !wb_rty_i & 
			!(wb_ack & wb_cti_o == 3'b111);
	   wb_stb_nxt = !wb_stb_o | !wb_err_i & !wb_rty_i & 
			!(wb_ack & wb_cti_o == 3'b111);
	   wb_cti_nxt[2] = wb_ack & wb_stb_o | wb_cti_o[2];
	   wb_cti_nxt[1] = 1'b1                  ;
	   wb_cti_nxt[0] = wb_ack & wb_stb_o | wb_cti_o[0];
	   if ((wb_err_i | wb_rty_i | wb_ack & wb_cti_o == 3'b111) & wb_stb_o)
	     wb_fsm_state_nxt = wb_fsm_idle;
	   else
	     wb_fsm_state_nxt = wb_fsm_last;
	end
	// default state
	default:begin
	   wb_cyc_nxt = 1'bx;
	   wb_stb_nxt = 1'bx;
	   wb_cti_nxt = 3'bxxx;
	   wb_fsm_state_nxt = 2'bxx;
	end
      endcase
   end

   //
   // WB FSM - output signals
   // 
   always @(posedge wb_clk_i or `OR1200_RST_EVENT wb_rst_i) begin
      if (wb_rst_i == `OR1200_RST_VALUE) begin
	 wb_cyc_o	<=  1'b0;
	 wb_stb_o	<=  1'b0;
	 wb_cti_o	<=  3'b111;
	 wb_bte_o	<=  (bl==8) ? 2'b10 : (bl==4) ? 2'b01 : 2'b00;
`ifdef OR1200_WB_CAB
	 wb_cab_o	<=  1'b0;
`endif
	 wb_we_o		<=  1'b0;
	 wb_sel_o	<=  4'hf;
	 wb_adr_o	<=  {32{1'b0}};
`ifdef OR1200_NO_DC	 
	 wb_dat_o	<=  {32{1'b0}};
`endif	 
      end
      else begin
	 wb_cyc_o	<=  wb_cyc_nxt;

         if (wb_ack & wb_cti_o == 3'b111) 
           wb_stb_o        <=  1'b0;
         else
           wb_stb_o        <=  wb_stb_nxt;
`ifndef OR1200_NO_BURSTS
	 wb_cti_o	<=  wb_cti_nxt;
`endif	 
	 wb_bte_o	<=  (bl==8) ? 2'b10 : (bl==4) ? 2'b01 : 2'b00;
`ifdef OR1200_WB_CAB
	 wb_cab_o	<=  biu_cab_i;
`endif
	 // we and sel - set at beginning of access 
	 if (wb_fsm_state_cur == wb_fsm_idle) begin
	    wb_we_o		<=  biu_we_i;
	    wb_sel_o	<=  biu_sel_i;
	 end
	 // adr - set at beginning of access and changed at every termination 
	 if (wb_fsm_state_cur == wb_fsm_idle) begin
	    wb_adr_o	<=  biu_adr_i;
	 end 
	 else if (wb_stb_o & wb_ack) begin
	    if (bl==4) begin
	       wb_adr_o[3:2]	<=  wb_adr_o[3:2] + 1;
	    end
	    if (bl==8) begin
	       wb_adr_o[4:2]	<=  wb_adr_o[4:2] + 1;
	    end
	 end
`ifdef OR1200_NO_DC	 
	 // dat - write data changed after avery subsequent write access
	 if (!wb_stb_o) begin
	    wb_dat_o 	<=  biu_dat_i;
	 end
`endif	 
      end
   end

   //
   // WB & BIU termination toggle counters
   // 
   always @(posedge wb_clk_i or `OR1200_RST_EVENT wb_rst_i) begin
      if (wb_rst_i == `OR1200_RST_VALUE) begin
	 wb_ack_cnt	<=  1'b0;
	 wb_err_cnt	<=  1'b0;
	 wb_rty_cnt	<=  1'b0;
      end
      else begin
	 // WB ack toggle counter
	 if (wb_fsm_state_cur == wb_fsm_idle | !(|clmode))
	   wb_ack_cnt	<=  1'b0;
	 else if (wb_stb_o & wb_ack)
	   wb_ack_cnt	<=  !wb_ack_cnt;
	 // WB err toggle counter
	 if (wb_fsm_state_cur == wb_fsm_idle | !(|clmode))
	   wb_err_cnt	<=  1'b0;
	 else if (wb_stb_o & wb_err_i)
	   wb_err_cnt	<=  !wb_err_cnt;
	 // WB rty toggle counter
	 if (wb_fsm_state_cur == wb_fsm_idle | !(|clmode))
	   wb_rty_cnt	<=  1'b0;
	 else if (wb_stb_o & wb_rty_i)
	   wb_rty_cnt	<=  !wb_rty_cnt;
      end
   end

   always @(posedge clk or `OR1200_RST_EVENT rst) begin
      if (rst == `OR1200_RST_VALUE) begin
         biu_stb_reg	<=  1'b0;
	 biu_ack_cnt	<=  1'b0;
	 biu_err_cnt	<=  1'b0;
	 biu_rty_cnt	<=  1'b0;
`ifdef OR1200_WB_RETRY
	 retry_cnt	<= {`OR1200_WB_RETRY{1'b0}};
`endif
      end
      else begin
	 // BIU strobe
	 if (biu_stb_i & !biu_cab_i & biu_ack_o)
	   biu_stb_reg	<=  1'b0;
	 else
	   biu_stb_reg	<=  biu_stb_i;
	 // BIU ack toggle counter
	 if (wb_fsm_state_cur == wb_fsm_idle | !(|clmode))
	   biu_ack_cnt	<=  1'b0 ;
	 else if (biu_ack_o)
	   biu_ack_cnt	<=  !biu_ack_cnt ;
	 // BIU err toggle counter
	 if (wb_fsm_state_cur == wb_fsm_idle | !(|clmode))
	   biu_err_cnt	<=  1'b0 ;
	 else if (wb_err_i & biu_err_o)
	   biu_err_cnt	<=  !biu_err_cnt ;
	 // BIU rty toggle counter
	 if (wb_fsm_state_cur == wb_fsm_idle | !(|clmode))
	   biu_rty_cnt	<=  1'b0 ;
	 else if (biu_rty)
	   biu_rty_cnt	<=  !biu_rty_cnt ;
`ifdef OR1200_WB_RETRY
	 if (biu_ack_o | biu_err_o)
	   retry_cnt	<=  {`OR1200_WB_RETRY{1'b0}};
	 else if (biu_rty)
	   retry_cnt	<=  retry_cnt + 1'b1;
`endif
      end
   end

   assign biu_stb = biu_stb_i & biu_stb_reg;

   //
   // Input BIU data bus
   //
   assign	biu_dat_o	= wb_dat_i;

   //
   // Input BIU termination signals 
   //
   assign	biu_rty		= (wb_fsm_state_cur == wb_fsm_trans) & wb_rty_i & wb_stb_o & (wb_rty_cnt ~^ biu_rty_cnt);
   assign	biu_ack_o	= (wb_fsm_state_cur == wb_fsm_trans) & wb_ack & wb_stb_o & (wb_ack_cnt ~^ biu_ack_cnt);
   assign	biu_err_o	= (wb_fsm_state_cur == wb_fsm_trans) & wb_err_i & wb_stb_o & (wb_err_cnt ~^ biu_err_cnt)
`ifdef OR1200_WB_RETRY
     | biu_rty & retry_cnt[`OR1200_WB_RETRY-1];
`else
   ;
`endif

endmodule

// END WB_BIU

// BEGIN EXAMPLE1
// ADDED: EXAMPLE1

module my_add1(input a, input b, output [1:0] y);

  assign y[0]=a^b;
  assign y[1]=a&b;

endmodule

module my_add(input a, input b);

  wire [1:0] result;

  my_add1 adder(a, b, result);
  
// An assume statement
  assume property (a==0);

// This should be true
  assert property (a+b==result);

endmodule

// END EXAMPLE1

module or1200_top(
	// System
	clk_i, rst_i, pic_ints_i, clmode_i,

	// Instruction WISHBONE INTERFACE
	iwb_clk_i, iwb_rst_i, iwb_ack_i, iwb_err_i, iwb_rty_i, iwb_dat_i,
	iwb_cyc_o, iwb_adr_o, iwb_stb_o, iwb_we_o, iwb_sel_o, iwb_dat_o,
`ifdef OR1200_WB_CAB
	iwb_cab_o,
`endif
`ifdef OR1200_WB_B3
	iwb_cti_o, iwb_bte_o,
`endif
	// Data WISHBONE INTERFACE
	dwb_clk_i, dwb_rst_i, dwb_ack_i, dwb_err_i, dwb_rty_i, dwb_dat_i,
	dwb_cyc_o, dwb_adr_o, dwb_stb_o, dwb_we_o, dwb_sel_o, dwb_dat_o,
`ifdef OR1200_WB_CAB
	dwb_cab_o,
`endif
`ifdef OR1200_WB_B3
	dwb_cti_o, dwb_bte_o,
`endif

	// External Debug Interface
	dbg_stall_i, dbg_ewt_i,	dbg_lss_o, dbg_is_o, dbg_wp_o, dbg_bp_o,
	dbg_stb_i, dbg_we_i, dbg_adr_i, dbg_dat_i, dbg_dat_o, dbg_ack_o,
	
`ifdef OR1200_BIST
	// RAM BIST
	mbist_si_i, mbist_so_o, mbist_ctrl_i,
`endif
	// Power Management
	pm_cpustall_i,
	pm_clksd_o, pm_dc_gate_o, pm_ic_gate_o, pm_dmmu_gate_o, 
	pm_immu_gate_o, pm_tt_gate_o, pm_cpu_gate_o, pm_wakeup_o, pm_lvolt_o

,sig_tick		  

);

parameter dw = `OR1200_OPERAND_WIDTH;
parameter aw = `OR1200_OPERAND_WIDTH;
parameter ppic_ints = `OR1200_PIC_INTS;
parameter boot_adr = `OR1200_BOOT_ADR;

//
// I/O
//

//
// System
//
input			clk_i;
input			rst_i;
input	[1:0]		clmode_i;	// 00 WB=RISC, 01 WB=RISC/2, 10 N/A, 11 WB=RISC/4
input	[ppic_ints-1:0]	pic_ints_i;

//
// Instruction WISHBONE interface
//
input			iwb_clk_i;	// clock input
input			iwb_rst_i;	// reset input
input			iwb_ack_i;	// normal termination
input			iwb_err_i;	// termination w/ error
input			iwb_rty_i;	// termination w/ retry
input	[31:0]	iwb_dat_i;	// input data bus
output			iwb_cyc_o;	// cycle valid output
output	[aw-1:0]	iwb_adr_o;	// address bus outputs
output			iwb_stb_o;	// strobe output
output			iwb_we_o;	// indicates write transfer
output	[3:0]		iwb_sel_o;	// byte select outputs
output	[31:0]	iwb_dat_o;	// output data bus
`ifdef OR1200_WB_CAB
output			iwb_cab_o;	// indicates consecutive address burst
`endif
`ifdef OR1200_WB_B3
output	[2:0]		iwb_cti_o;	// cycle type identifier
output	[1:0]		iwb_bte_o;	// burst type extension
`endif

//
// Data WISHBONE interface
//
input			dwb_clk_i;	// clock input
input			dwb_rst_i;	// reset input
input			dwb_ack_i;	// normal termination
input			dwb_err_i;	// termination w/ error
input			dwb_rty_i;	// termination w/ retry
input	[31:0]	dwb_dat_i;	// input data bus
output			dwb_cyc_o;	// cycle valid output
output	[aw-1:0]	dwb_adr_o;	// address bus outputs
output			dwb_stb_o;	// strobe output
output			dwb_we_o;	// indicates write transfer
output	[3:0]		dwb_sel_o;	// byte select outputs
output	[31:0]	dwb_dat_o;	// output data bus
`ifdef OR1200_WB_CAB
output			dwb_cab_o;	// indicates consecutive address burst
`endif
`ifdef OR1200_WB_B3
output	[2:0]		dwb_cti_o;	// cycle type identifier
output	[1:0]		dwb_bte_o;	// burst type extension
`endif

//
// External Debug Interface
//
input			dbg_stall_i;	// External Stall Input
input			dbg_ewt_i;	// External Watchpoint Trigger Input
output	[3:0]		dbg_lss_o;	// External Load/Store Unit Status
output	[1:0]		dbg_is_o;	// External Insn Fetch Status
output	[10:0]		dbg_wp_o;	// Watchpoints Outputs
output			dbg_bp_o;	// Breakpoint Output
input			dbg_stb_i;      // External Address/Data Strobe
input			dbg_we_i;       // External Write Enable
input	[aw-1:0]	dbg_adr_i;	// External Address Input
input	[31:0]	dbg_dat_i;	// External Data Input
output	[31:0]	dbg_dat_o;	// External Data Output
output			dbg_ack_o;	// External Data Acknowledge (not WB compatible)

`ifdef OR1200_BIST
//
// RAM BIST
//
input mbist_si_i;
input [`OR1200_MBIST_CTRL_WIDTH - 1:0] mbist_ctrl_i;
output mbist_so_o;
`endif

//
// Power Management
//
input			pm_cpustall_i;
output	[3:0]		pm_clksd_o;
output			pm_dc_gate_o;
output			pm_ic_gate_o;
output			pm_dmmu_gate_o;
output			pm_immu_gate_o;
output			pm_tt_gate_o;
output			pm_cpu_gate_o;
output			pm_wakeup_o;
output			pm_lvolt_o;


//
// Internal wires and regs
//

//
// DC to SB
//
wire	[31:0]	dcsb_dat_dc;
wire	[aw-1:0]	dcsb_adr_dc;
wire			dcsb_cyc_dc;
wire			dcsb_stb_dc;
wire			dcsb_we_dc;
wire	[3:0]		dcsb_sel_dc;
wire			dcsb_cab_dc;
wire	[31:0]	dcsb_dat_sb;
wire			dcsb_ack_sb;
wire			dcsb_err_sb;

//
// SB to BIU
//
wire	[31:0]	sbbiu_dat_sb;
wire	[aw-1:0]	sbbiu_adr_sb;
wire			sbbiu_cyc_sb;
wire			sbbiu_stb_sb;
wire			sbbiu_we_sb;
wire	[3:0]		sbbiu_sel_sb;
wire			sbbiu_cab_sb;
wire	[31:0]	sbbiu_dat_biu;
wire			sbbiu_ack_biu;
wire			sbbiu_err_biu;

//
// IC to BIU
//
wire	[31:0]	icbiu_dat_ic;
wire	[aw-1:0]	icbiu_adr_ic;
wire	[aw-1:0]	icbiu_adr_ic_word;
wire			icbiu_cyc_ic;
wire			icbiu_stb_ic;
wire			icbiu_we_ic;
wire	[3:0]		icbiu_sel_ic;
wire	[3:0]		icbiu_tag_ic;
wire			icbiu_cab_ic;
wire	[31:0]	icbiu_dat_biu;
wire			icbiu_ack_biu;
wire			icbiu_err_biu;
wire	[3:0]		icbiu_tag_biu;

//
// SR Interface (this signal can be connected to the input pin)
//
wire 			boot_adr_sel = `OR1200_SR_EPH_DEF;

//
// CPU's SPR access to various RISC units (shared wires)
//
wire			supv;
wire	[aw-1:0]	spr_addr;
wire	[31:0]	spr_dat_cpu;
wire	[31:0]		spr_cs;
wire			spr_we;
wire    		mtspr_dc_done;
   
//
// SB
//
wire			sb_en;

//
// DMMU and CPU
//
wire			dmmu_en;
wire	[31:0]		spr_dat_dmmu;

//
// DMMU and QMEM
//
wire			qmemdmmu_err_qmem;
wire	[3:0]		qmemdmmu_tag_qmem;
wire	[aw-1:0]	qmemdmmu_adr_dmmu;
wire			qmemdmmu_cycstb_dmmu;
wire			qmemdmmu_ci_dmmu;

//
// CPU and data memory subsystem
//
wire			dc_en;
wire	[31:0]		dcpu_adr_cpu;
wire			dcpu_cycstb_cpu;
wire			dcpu_we_cpu;
wire	[3:0]		dcpu_sel_cpu;
wire	[3:0]		dcpu_tag_cpu;
wire	[31:0]		dcpu_dat_cpu;
wire	[31:0]		dcpu_dat_qmem;
wire			dcpu_ack_qmem;
wire			dcpu_rty_qmem;
wire			dcpu_err_dmmu;
wire	[3:0]		dcpu_tag_dmmu;
wire    		dc_no_writethrough;
   
//
// IMMU and CPU
//
wire			immu_en;
wire	[31:0]		spr_dat_immu;

//
// CPU and insn memory subsystem
//
wire			ic_en;
wire	[31:0]		icpu_adr_cpu;
wire			icpu_cycstb_cpu;
wire	[3:0]		icpu_sel_cpu;
wire	[3:0]		icpu_tag_cpu;
wire	[31:0]		icpu_dat_qmem;
wire			icpu_ack_qmem;
wire	[31:0]		icpu_adr_immu;
wire			icpu_err_immu;
wire	[3:0]		icpu_tag_immu;
wire			icpu_rty_immu;

//
// IMMU and QMEM
//
wire	[aw-1:0]	qmemimmu_adr_immu;
wire			qmemimmu_rty_qmem;
wire			qmemimmu_err_qmem;
wire	[3:0]		qmemimmu_tag_qmem;
wire			qmemimmu_cycstb_immu;
wire			qmemimmu_ci_immu;

//
// QMEM and IC
//
wire	[aw-1:0]	icqmem_adr_qmem;
wire			icqmem_rty_ic;
wire			icqmem_err_ic;
wire	[3:0]		icqmem_tag_ic;
wire			icqmem_cycstb_qmem;
wire			icqmem_ci_qmem;
wire	[31:0]		icqmem_dat_ic;
wire			icqmem_ack_ic;

//
// QMEM and DC
//
wire	[aw-1:0]	dcqmem_adr_qmem;
wire			dcqmem_rty_dc;
wire			dcqmem_err_dc;
wire	[3:0]		dcqmem_tag_dc;
wire			dcqmem_cycstb_qmem;
wire			dcqmem_ci_qmem;
wire	[31:0]		dcqmem_dat_dc;
wire	[31:0]		dcqmem_dat_qmem;
wire			dcqmem_we_qmem;
wire	[3:0]		dcqmem_sel_qmem;
wire			dcqmem_ack_dc;

//
// Connection between CPU and PIC
//
wire	[31:0]	spr_dat_pic;
wire			pic_wakeup;
wire			sig_int;

//
// Connection between CPU and PM
//
wire	[31:0]	spr_dat_pm;

//
// CPU and TT
//
wire	[31:0]	spr_dat_tt;
output wire			sig_tick; // jb

//
// Debug port and caches/MMUs
//
wire	[31:0]	spr_dat_du;
wire			du_stall;
wire	[31:0]	du_addr;
wire	[31:0]	du_dat_du;
wire			du_read;
wire			du_write;
wire	[13:0]		du_except_trig;
wire	[13:0]		du_except_stop;
wire	[`OR1200_DU_DSR_WIDTH-1:0]     du_dsr;
wire	[24:0]		du_dmr1;
wire	[31:0]	du_dat_cpu;
wire	[31:0]	du_lsu_store_dat;
wire	[31:0]	du_lsu_load_dat;
wire			du_hwbkpt;
wire			du_hwbkpt_ls_r = 1'b0;
wire			flushpipe;
wire			ex_freeze;
wire			wb_freeze;
wire			id_void;
wire			ex_void;
wire	[31:0]		id_insn;
wire	[31:0]		ex_insn;
wire	[31:0]		wb_insn;
wire	[31:0]		id_pc;
wire	[31:0]		ex_pc;
wire	[31:0]		wb_pc;
wire	[`OR1200_BRANCHOP_WIDTH-1:0]	branch_op;
wire	[31:0]		spr_dat_npc;
wire	[31:0]		rf_dataw;
wire			abort_ex;
wire			abort_mvspr;

`ifdef OR1200_BIST
//
// RAM BIST
//
wire			mbist_immu_so;
wire			mbist_ic_so;
wire			mbist_dmmu_so;
wire			mbist_dc_so;
wire			mbist_qmem_so;
wire			mbist_immu_si = mbist_si_i;
wire			mbist_ic_si = mbist_immu_so;
wire			mbist_qmem_si = mbist_ic_so;
wire			mbist_dmmu_si = mbist_qmem_so;
wire			mbist_dc_si = mbist_dmmu_so;
assign			mbist_so_o = mbist_dc_so;
`endif

wire  [3:0] icqmem_sel_qmem;
wire  [3:0] icqmem_tag_qmem;
wire  [3:0] dcqmem_tag_qmem;

//
// Instantiation of Instruction WISHBONE BIU
//
or1200_wb_biu
  #(.bl((1 << (`OR1200_ICLS-2))))
  iwb_biu(
	// RISC clk, rst and clock control
	.clk(clk_i),
	.rst(rst_i),
	.clmode(clmode_i),

	// WISHBONE interface
	.wb_clk_i(iwb_clk_i),
	.wb_rst_i(iwb_rst_i),
	.wb_ack_i(iwb_ack_i),
	.wb_err_i(iwb_err_i),
	.wb_rty_i(iwb_rty_i),
	.wb_dat_i(iwb_dat_i),
	.wb_cyc_o(iwb_cyc_o),
	.wb_adr_o(iwb_adr_o),
	.wb_stb_o(iwb_stb_o),
	.wb_we_o(iwb_we_o),
	.wb_sel_o(iwb_sel_o),
	.wb_dat_o(iwb_dat_o),
`ifdef OR1200_WB_CAB
	.wb_cab_o(iwb_cab_o),
`endif
`ifdef OR1200_WB_B3
	.wb_cti_o(iwb_cti_o),
	.wb_bte_o(iwb_bte_o),
`endif

	// Internal RISC bus
	.biu_dat_i(icbiu_dat_ic),
	.biu_adr_i(icbiu_adr_ic_word),
	.biu_cyc_i(icbiu_cyc_ic),
	.biu_stb_i(icbiu_stb_ic),
	.biu_we_i(icbiu_we_ic),
	.biu_sel_i(icbiu_sel_ic),
	.biu_cab_i(icbiu_cab_ic),
	.biu_dat_o(icbiu_dat_biu),
	.biu_ack_o(icbiu_ack_biu),
	.biu_err_o(icbiu_err_biu)
);
assign icbiu_adr_ic_word = {icbiu_adr_ic[31:2], 2'h0};

//
// Instantiation of Data WISHBONE BIU
//
or1200_wb_biu
  #(.bl((1 << (`OR1200_DCLS-2))))
  dwb_biu(
	// RISC clk, rst and clock control
	.clk(clk_i),
	.rst(rst_i),
	.clmode(clmode_i),

	// WISHBONE interface
	.wb_clk_i(dwb_clk_i),
	.wb_rst_i(dwb_rst_i),
	.wb_ack_i(dwb_ack_i),
	.wb_err_i(dwb_err_i),
	.wb_rty_i(dwb_rty_i),
	.wb_dat_i(dwb_dat_i),
	.wb_cyc_o(dwb_cyc_o),
	.wb_adr_o(dwb_adr_o),
	.wb_stb_o(dwb_stb_o),
	.wb_we_o(dwb_we_o),
	.wb_sel_o(dwb_sel_o),
	.wb_dat_o(dwb_dat_o),
`ifdef OR1200_WB_CAB
	.wb_cab_o(dwb_cab_o),
`endif
`ifdef OR1200_WB_B3
	.wb_cti_o(dwb_cti_o),
	.wb_bte_o(dwb_bte_o),
`endif

	// Internal RISC bus
	.biu_dat_i(sbbiu_dat_sb),
	.biu_adr_i(sbbiu_adr_sb),
	.biu_cyc_i(sbbiu_cyc_sb),
	.biu_stb_i(sbbiu_stb_sb),
	.biu_we_i(sbbiu_we_sb),
	.biu_sel_i(sbbiu_sel_sb),
	.biu_cab_i(sbbiu_cab_sb),
	.biu_dat_o(sbbiu_dat_biu),
	.biu_ack_o(sbbiu_ack_biu),
	.biu_err_o(sbbiu_err_biu)
);

//
// Instantiation of IMMU
//
or1200_immu_top
#(.boot_adr(boot_adr))
or1200_immu_top(
	// Rst and clk
	.clk(clk_i),
	.rst(rst_i),

`ifdef OR1200_BIST
	// RAM BIST
	.mbist_si_i(mbist_immu_si),
	.mbist_so_o(mbist_immu_so),
	.mbist_ctrl_i(mbist_ctrl_i),
`endif

	// CPU and IMMU
	.ic_en(ic_en),
	.immu_en(immu_en),
	.supv(supv),
	.icpu_adr_i(icpu_adr_cpu),
	.icpu_cycstb_i(icpu_cycstb_cpu),
	.icpu_adr_o(icpu_adr_immu),
	.icpu_tag_o(icpu_tag_immu),
	.icpu_rty_o(icpu_rty_immu),
	.icpu_err_o(icpu_err_immu),

	// SR Interface
	.boot_adr_sel_i(boot_adr_sel),

	// SPR access
	.spr_cs(spr_cs[`OR1200_SPR_GROUP_IMMU]),
	.spr_write(spr_we),
	.spr_addr(spr_addr),
	.spr_dat_i(spr_dat_cpu),
	.spr_dat_o(spr_dat_immu),

	// QMEM and IMMU
	.qmemimmu_rty_i(qmemimmu_rty_qmem),
	.qmemimmu_err_i(qmemimmu_err_qmem),
	.qmemimmu_tag_i(qmemimmu_tag_qmem),
	.qmemimmu_adr_o(qmemimmu_adr_immu),
	.qmemimmu_cycstb_o(qmemimmu_cycstb_immu),
	.qmemimmu_ci_o(qmemimmu_ci_immu)
);

//
// Instantiation of Instruction Cache
//
or1200_ic_top or1200_ic_top(
	.clk(clk_i),
	.rst(rst_i),

`ifdef OR1200_BIST
	// RAM BIST
	.mbist_si_i(mbist_ic_si),
	.mbist_so_o(mbist_ic_so),
	.mbist_ctrl_i(mbist_ctrl_i),
`endif

	// IC and QMEM
	.ic_en(ic_en),
	.icqmem_adr_i(icqmem_adr_qmem),
	.icqmem_cycstb_i(icqmem_cycstb_qmem),
	.icqmem_ci_i(icqmem_ci_qmem),
	.icqmem_sel_i(icqmem_sel_qmem),
	.icqmem_tag_i(icqmem_tag_qmem),
	.icqmem_dat_o(icqmem_dat_ic),
	.icqmem_ack_o(icqmem_ack_ic),
	.icqmem_rty_o(icqmem_rty_ic),
	.icqmem_err_o(icqmem_err_ic),
	.icqmem_tag_o(icqmem_tag_ic),

	// SPR access
	.spr_cs(spr_cs[`OR1200_SPR_GROUP_IC]),
	.spr_write(spr_we),
	.spr_dat_i(spr_dat_cpu),

	// IC and BIU
	.icbiu_dat_o(icbiu_dat_ic),
	.icbiu_adr_o(icbiu_adr_ic),
	.icbiu_cyc_o(icbiu_cyc_ic),
	.icbiu_stb_o(icbiu_stb_ic),
	.icbiu_we_o(icbiu_we_ic),
	.icbiu_sel_o(icbiu_sel_ic),
	.icbiu_cab_o(icbiu_cab_ic),
	.icbiu_dat_i(icbiu_dat_biu),
	.icbiu_ack_i(icbiu_ack_biu),
	.icbiu_err_i(icbiu_err_biu)
);

//
// Instantiation of Instruction Cache
//
or1200_cpu
#(.boot_adr(boot_adr))
or1200_cpu(
	.clk(clk_i),
	.rst(rst_i),

	// Connection QMEM and IFETCHER inside CPU
	.ic_en(ic_en),
	.icpu_adr_o(icpu_adr_cpu),
	.icpu_cycstb_o(icpu_cycstb_cpu),
	.icpu_sel_o(icpu_sel_cpu),
	.icpu_tag_o(icpu_tag_cpu),
	.icpu_dat_i(icpu_dat_qmem),
	.icpu_ack_i(icpu_ack_qmem),
	.icpu_rty_i(icpu_rty_immu),
	.icpu_adr_i(icpu_adr_immu),
	.icpu_err_i(icpu_err_immu),
	.icpu_tag_i(icpu_tag_immu),

	// Connection CPU to external Debug port
	.id_void(id_void),
	.id_insn(id_insn),
	.ex_void(ex_void),
	.ex_insn(ex_insn),
	.ex_freeze(ex_freeze),
	.wb_insn(wb_insn),
	.wb_freeze(wb_freeze),
	.id_pc(id_pc),
	.ex_pc(ex_pc),
	.wb_pc(wb_pc),
	.branch_op(branch_op),
	.rf_dataw(rf_dataw),
	.ex_flushpipe(flushpipe),
	.du_stall(du_stall),
	.du_addr(du_addr),
	.du_dat_du(du_dat_du),
	.du_read(du_read),
	.du_write(du_write),
	.du_except_trig(du_except_trig),
	.du_except_stop(du_except_stop),
	.du_dsr(du_dsr),
	.du_dmr1(du_dmr1),
	.du_hwbkpt(du_hwbkpt),
	.du_hwbkpt_ls_r(du_hwbkpt_ls_r),
	.du_dat_cpu(du_dat_cpu),
	.du_lsu_store_dat(du_lsu_store_dat),
	.du_lsu_load_dat(du_lsu_load_dat),
	.abort_mvspr(abort_mvspr),
	.abort_ex(abort_ex),
	.du_flush_pipe(du_flush_pipe),

	// Connection IMMU and CPU internally
	.immu_en(immu_en),

	// Connection QMEM and CPU
	.dc_en(dc_en),
	.dcpu_adr_o(dcpu_adr_cpu),
	.dcpu_cycstb_o(dcpu_cycstb_cpu),
	.dcpu_we_o(dcpu_we_cpu),
	.dcpu_sel_o(dcpu_sel_cpu),
	.dcpu_tag_o(dcpu_tag_cpu),
	.dcpu_dat_o(dcpu_dat_cpu),
        .dcpu_dat_i(dcpu_dat_qmem),
	.dcpu_ack_i(dcpu_ack_qmem),
	.dcpu_rty_i(dcpu_rty_qmem),
	.dcpu_err_i(dcpu_err_dmmu),
	.dcpu_tag_i(dcpu_tag_dmmu),
	.dc_no_writethrough(dc_no_writethrough),

	// Connection DMMU and CPU internally
	.dmmu_en(dmmu_en),

	// SR Interface
	.boot_adr_sel_i(boot_adr_sel),

	// SB Enable
	.sb_en(sb_en),

	// Connection PIC and CPU's EXCEPT
	.sig_int(sig_int),
	.sig_tick(sig_tick),

	// SPRs
	.supv(supv),
	.spr_addr(spr_addr),
	.spr_dat_cpu(spr_dat_cpu),
	.spr_dat_pic(spr_dat_pic),
	.spr_dat_tt(spr_dat_tt),
	.spr_dat_pm(spr_dat_pm),
	.spr_dat_dmmu(spr_dat_dmmu),
	.spr_dat_immu(spr_dat_immu),
	.spr_dat_du(spr_dat_du),
	.spr_dat_npc(spr_dat_npc),
	.spr_cs(spr_cs),
	.spr_we(spr_we),
        .mtspr_dc_done(mtspr_dc_done)
);

//
// Instantiation of DMMU
//
or1200_dmmu_top or1200_dmmu_top(
	// Rst and clk
	.clk(clk_i),
	.rst(rst_i),

`ifdef OR1200_BIST
	// RAM BIST
	.mbist_si_i(mbist_dmmu_si),
	.mbist_so_o(mbist_dmmu_so),
	.mbist_ctrl_i(mbist_ctrl_i),
`endif

	// CPU i/f
	.dc_en(dc_en),
	.dmmu_en(dmmu_en),
	.supv(supv),
	.dcpu_adr_i(dcpu_adr_cpu),
	.dcpu_cycstb_i(dcpu_cycstb_cpu),
	.dcpu_we_i(dcpu_we_cpu),
	.dcpu_tag_o(dcpu_tag_dmmu),
	.dcpu_err_o(dcpu_err_dmmu),

	// SPR access
	.spr_cs(spr_cs[`OR1200_SPR_GROUP_DMMU]),
	.spr_write(spr_we),
	.spr_addr(spr_addr),
	.spr_dat_i(spr_dat_cpu),
	.spr_dat_o(spr_dat_dmmu),

	// QMEM and DMMU
	.qmemdmmu_err_i(qmemdmmu_err_qmem),
	.qmemdmmu_tag_i(qmemdmmu_tag_qmem),
	.qmemdmmu_adr_o(qmemdmmu_adr_dmmu),
	.qmemdmmu_cycstb_o(qmemdmmu_cycstb_dmmu),
	.qmemdmmu_ci_o(qmemdmmu_ci_dmmu)
);

//
// Instantiation of Data Cache
//
or1200_dc_top or1200_dc_top(
	.clk(clk_i),
	.rst(rst_i),

`ifdef OR1200_BIST
	// RAM BIST
	.mbist_si_i(mbist_dc_si),
	.mbist_so_o(mbist_dc_so),
	.mbist_ctrl_i(mbist_ctrl_i),
`endif

	// DC and QMEM
	.dc_en(dc_en),
	.dcqmem_adr_i(dcqmem_adr_qmem),
	.dcqmem_cycstb_i(dcqmem_cycstb_qmem),
	.dcqmem_ci_i(dcqmem_ci_qmem),
	.dcqmem_we_i(dcqmem_we_qmem),
	.dcqmem_sel_i(dcqmem_sel_qmem),
	.dcqmem_tag_i(dcqmem_tag_qmem),
	.dcqmem_dat_i(dcqmem_dat_qmem),
	.dcqmem_dat_o(dcqmem_dat_dc),
	.dcqmem_ack_o(dcqmem_ack_dc),
	.dcqmem_rty_o(dcqmem_rty_dc),
	.dcqmem_err_o(dcqmem_err_dc),
	.dcqmem_tag_o(dcqmem_tag_dc),

	.dc_no_writethrough(dc_no_writethrough),

	// SPR access
	.spr_cs(spr_cs[`OR1200_SPR_GROUP_DC]),
	.spr_addr(spr_addr),
	.spr_write(spr_we),
	.spr_dat_i(spr_dat_cpu),
        .mtspr_dc_done(mtspr_dc_done),

	// DC and BIU
	.dcsb_dat_o(dcsb_dat_dc),
	.dcsb_adr_o(dcsb_adr_dc),
	.dcsb_cyc_o(dcsb_cyc_dc),
	.dcsb_stb_o(dcsb_stb_dc),
	.dcsb_we_o(dcsb_we_dc),
	.dcsb_sel_o(dcsb_sel_dc),
	.dcsb_cab_o(dcsb_cab_dc),
	.dcsb_dat_i(dcsb_dat_sb),
	.dcsb_ack_i(dcsb_ack_sb),
	.dcsb_err_i(dcsb_err_sb)
);

//
// Instantiation of embedded memory - qmem
//
or1200_qmem_top or1200_qmem_top(
	.clk(clk_i),
	.rst(rst_i),

`ifdef OR1200_BIST
	// RAM BIST
	.mbist_si_i(mbist_qmem_si),
	.mbist_so_o(mbist_qmem_so),
	.mbist_ctrl_i(mbist_ctrl_i),
`endif

	// QMEM and CPU/IMMU
	.qmemimmu_adr_i(qmemimmu_adr_immu),
	.qmemimmu_cycstb_i(qmemimmu_cycstb_immu),
	.qmemimmu_ci_i(qmemimmu_ci_immu),
	.qmemicpu_sel_i(icpu_sel_cpu),
	.qmemicpu_tag_i(icpu_tag_cpu),
	.qmemicpu_dat_o(icpu_dat_qmem),
	.qmemicpu_ack_o(icpu_ack_qmem),
	.qmemimmu_rty_o(qmemimmu_rty_qmem),
	.qmemimmu_err_o(qmemimmu_err_qmem),
	.qmemimmu_tag_o(qmemimmu_tag_qmem),

	// QMEM and IC
	.icqmem_adr_o(icqmem_adr_qmem),
	.icqmem_cycstb_o(icqmem_cycstb_qmem),
	.icqmem_ci_o(icqmem_ci_qmem),
	.icqmem_sel_o(icqmem_sel_qmem),
	.icqmem_tag_o(icqmem_tag_qmem),
	.icqmem_dat_i(icqmem_dat_ic),
	.icqmem_ack_i(icqmem_ack_ic),
	.icqmem_rty_i(icqmem_rty_ic),
	.icqmem_err_i(icqmem_err_ic),
	.icqmem_tag_i(icqmem_tag_ic),

	// QMEM and CPU/DMMU
	.qmemdmmu_adr_i(qmemdmmu_adr_dmmu),
	.qmemdmmu_cycstb_i(qmemdmmu_cycstb_dmmu),
	.qmemdmmu_ci_i(qmemdmmu_ci_dmmu),
	.qmemdcpu_we_i(dcpu_we_cpu),
	.qmemdcpu_sel_i(dcpu_sel_cpu),
	.qmemdcpu_tag_i(dcpu_tag_cpu),
	.qmemdcpu_dat_i(dcpu_dat_cpu),
	.qmemdcpu_dat_o(dcpu_dat_qmem),
	.qmemdcpu_ack_o(dcpu_ack_qmem),
	.qmemdcpu_rty_o(dcpu_rty_qmem),
	.qmemdmmu_err_o(qmemdmmu_err_qmem),
	.qmemdmmu_tag_o(qmemdmmu_tag_qmem),

	// QMEM and DC
	.dcqmem_adr_o(dcqmem_adr_qmem),
	.dcqmem_cycstb_o(dcqmem_cycstb_qmem),
	.dcqmem_ci_o(dcqmem_ci_qmem),
	.dcqmem_we_o(dcqmem_we_qmem),
	.dcqmem_sel_o(dcqmem_sel_qmem),
	.dcqmem_tag_o(dcqmem_tag_qmem),
	.dcqmem_dat_o(dcqmem_dat_qmem),
	.dcqmem_dat_i(dcqmem_dat_dc),
	.dcqmem_ack_i(dcqmem_ack_dc),
	.dcqmem_rty_i(dcqmem_rty_dc),
	.dcqmem_err_i(dcqmem_err_dc),
	.dcqmem_tag_i(dcqmem_tag_dc)
);

//
// Instantiation of Store Buffer
//
or1200_sb or1200_sb(
	// RISC clock, reset
	.clk(clk_i),
	.rst(rst_i),

	// Internal RISC bus (SB)
	.sb_en(sb_en),

	// Internal RISC bus (DC<->SB)
	.dcsb_dat_i(dcsb_dat_dc),
	.dcsb_adr_i(dcsb_adr_dc),
	.dcsb_cyc_i(dcsb_cyc_dc),
	.dcsb_stb_i(dcsb_stb_dc),
	.dcsb_we_i(dcsb_we_dc),
	.dcsb_sel_i(dcsb_sel_dc),
	.dcsb_cab_i(dcsb_cab_dc),
	.dcsb_dat_o(dcsb_dat_sb),
	.dcsb_ack_o(dcsb_ack_sb),
	.dcsb_err_o(dcsb_err_sb),

	// SB and BIU
	.sbbiu_dat_o(sbbiu_dat_sb),
	.sbbiu_adr_o(sbbiu_adr_sb),
	.sbbiu_cyc_o(sbbiu_cyc_sb),
	.sbbiu_stb_o(sbbiu_stb_sb),
	.sbbiu_we_o(sbbiu_we_sb),
	.sbbiu_sel_o(sbbiu_sel_sb),
	.sbbiu_cab_o(sbbiu_cab_sb),
	.sbbiu_dat_i(sbbiu_dat_biu),
	.sbbiu_ack_i(sbbiu_ack_biu),
	.sbbiu_err_i(sbbiu_err_biu)
);

//
// Instantiation of Debug Unit
//
or1200_du or1200_du(
	// RISC Internal Interface
	.clk(clk_i),
	.rst(rst_i),
	.dcpu_cycstb_i(dcpu_cycstb_cpu),
	.dcpu_we_i(dcpu_we_cpu),
	.dcpu_adr_i(dcpu_adr_cpu),
	.dcpu_dat_lsu(dcpu_dat_cpu),
	.dcpu_dat_dc(dcpu_dat_qmem),
	.icpu_cycstb_i(icpu_cycstb_cpu),
	.ex_freeze(ex_freeze),
	.branch_op(branch_op),
	.ex_insn(ex_insn),
	.id_pc(id_pc),
	.du_dsr(du_dsr),
	.du_dmr1(du_dmr1),
	.du_flush_pipe(du_flush_pipe),

	// For Trace buffer
	.spr_dat_npc(spr_dat_npc),
	.rf_dataw(rf_dataw),

	// DU's access to SPR unit
	.du_stall(du_stall),
	.du_addr(du_addr),
	.du_dat_i(du_dat_cpu),
	.du_dat_o(du_dat_du),
	.du_read(du_read),
	.du_write(du_write),
	.du_except_stop(du_except_stop),
	.du_hwbkpt(du_hwbkpt),

	// Access to DU's SPRs
	.spr_cs(spr_cs[`OR1200_SPR_GROUP_DU]),
	.spr_write(spr_we),
	.spr_addr(spr_addr),
	.spr_dat_i(spr_dat_cpu),
	.spr_dat_o(spr_dat_du),

	// External Debug Interface
	.dbg_stall_i(dbg_stall_i),
	.dbg_ewt_i(dbg_ewt_i),
	.dbg_lss_o(dbg_lss_o),
	.dbg_is_o(dbg_is_o),
	.dbg_wp_o(dbg_wp_o),
	.dbg_bp_o(dbg_bp_o),
	.dbg_stb_i(dbg_stb_i),
	.dbg_we_i(dbg_we_i),
	.dbg_adr_i(dbg_adr_i),
	.dbg_dat_i(dbg_dat_i),
	.dbg_dat_o(dbg_dat_o),
	.dbg_ack_o(dbg_ack_o)
);

//
// Programmable interrupt controller
//
or1200_pic or1200_pic(
	// RISC Internal Interface
	.clk(clk_i),
	.rst(rst_i),
	.spr_cs(spr_cs[`OR1200_SPR_GROUP_PIC]),
	.spr_write(spr_we),
	.spr_addr(spr_addr),
	.spr_dat_i(spr_dat_cpu),
	.spr_dat_o(spr_dat_pic),
	.pic_wakeup(pic_wakeup),
	.intr(sig_int), 

	// PIC Interface
	.pic_int(pic_ints_i)
);

//
// Instantiation of Tick timer
//
or1200_tt or1200_tt(
	// RISC Internal Interface
	.clk(clk_i),
	.rst(rst_i),
	.du_stall(du_stall),
	.spr_cs(spr_cs[`OR1200_SPR_GROUP_TT]),
	.spr_write(spr_we),
	.spr_addr(spr_addr),
	.spr_dat_i(spr_dat_cpu),
	.spr_dat_o(spr_dat_tt),
	.intr(sig_tick)
);

//
// Instantiation of Power Management
//
or1200_pm or1200_pm(
	// RISC Internal Interface
	.clk(clk_i),
	.rst(rst_i),
	.pic_wakeup(pic_wakeup),
	.spr_write(spr_we),
	.spr_addr(spr_addr),
	.spr_dat_i(spr_dat_cpu),
	.spr_dat_o(spr_dat_pm),

	// Power Management Interface
	.pm_cpustall(pm_cpustall_i),
	.pm_clksd(pm_clksd_o),
	.pm_dc_gate(pm_dc_gate_o),
	.pm_ic_gate(pm_ic_gate_o),
	.pm_dmmu_gate(pm_dmmu_gate_o),
	.pm_immu_gate(pm_immu_gate_o),
	.pm_tt_gate(pm_tt_gate_o),
	.pm_cpu_gate(pm_cpu_gate_o),
	.pm_wakeup(pm_wakeup_o),
	.pm_lvolt(pm_lvolt_o)
);

endmodule
