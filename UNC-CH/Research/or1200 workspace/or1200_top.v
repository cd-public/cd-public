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
`define OR1200_OPERAND_WIDTH		32
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

// synopsys translate_off
`include "timescale.v"
// synopsys translate_on
`include "or1200_defines.v"

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

parameter dw = `OR1200_OPERAND_WIDTH;
parameter aw = `OR1200_REGFILE_ADDR_WIDTH;
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
input	[dw-1:0]		du_addr;
input	[dw-1:0]		du_dat_du;
input				du_read;
input				du_write;
input	[`OR1200_DU_DSR_WIDTH-1:0]	du_dsr;
input	[24:0]			du_dmr1;
input				du_hwbkpt;
input				du_hwbkpt_ls_r;
output	[13:0]			du_except_trig;
output	[13:0]			du_except_stop;
output	[dw-1:0]		du_dat_cpu;
output	[dw-1:0]		rf_dataw;
output	[dw-1:0]		du_lsu_store_dat;
output	[dw-1:0]		du_lsu_load_dat;
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
input	[dw-1:0]		spr_dat_pic;
input	[dw-1:0]		spr_dat_tt;
input	[dw-1:0]		spr_dat_pm;
input	[dw-1:0]		spr_dat_dmmu;
input	[dw-1:0]		spr_dat_immu;
input	[dw-1:0]		spr_dat_du;
output	[dw-1:0]		spr_addr;
output	[dw-1:0]		spr_dat_cpu;
output	[dw-1:0]		spr_dat_npc;
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
wire	[aw-1:0]		rf_addrw;
wire	[aw-1:0] 		rf_addra;
wire	[aw-1:0] 		rf_addrb;
wire				rf_rda;
wire				rf_rdb;
wire	[dw-1:0]		id_simm;
wire	[dw-1:2]		id_branch_addrtarget;
wire	[dw-1:2]		ex_branch_addrtarget;
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
wire	[dw-1:0]		rf_dataw;
wire	[dw-1:0]		rf_dataa;
wire	[dw-1:0]		rf_datab;
wire	[dw-1:0]		muxed_a;
wire	[dw-1:0]		muxed_b;
wire	[dw-1:0]		wb_forw;
wire				wbforw_valid;
wire	[dw-1:0]		operand_a;
wire	[dw-1:0]		operand_b;
wire	[dw-1:0]		alu_dataout;
wire	[dw-1:0]		lsu_dataout;
wire	[dw-1:0]		sprs_dataout;
wire	[dw-1:0]		fpu_dataout;
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

// synopsys translate_off
`include "timescale.v"
// synopsys translate_on
`include "or1200_defines.v"

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

// synopsys translate_off
`include "timescale.v"
// synopsys translate_on
`include "or1200_defines.v"

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

// synopsys translate_off
`include "timescale.v"
// synopsys translate_on
`include "or1200_defines.v"

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
   // 1364-2001.
   function [31:0] get_wb_insn;
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

// synopsys translate_off
`include "timescale.v"
// synopsys translate_on
`include "or1200_defines.v"

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

// synopsys translate_off
`include "timescale.v"
// synopsys translate_on
`include "or1200_defines.v"

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

// synopsys translate_off
`include "timescale.v"
// synopsys translate_on
`include "or1200_defines.v"

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

// synopsys translate_off
`include "timescale.v"
// synopsys translate_on
`include "or1200_defines.v"

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

// synopsys translate_off
`include "timescale.v"
// synopsys translate_on
`include "or1200_defines.v"

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

// synopsys translate_off
`include "timescale.v"
// synopsys translate_on
`include "or1200_defines.v"

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
input	[dw-1:0]		lsu_datain;
output	[dw-1:0]		lsu_dataout;
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

// synopsys translate_off
`include "timescale.v"
// synopsys translate_on
`include "or1200_defines.v"

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

// synopsys translate_off
`include "timescale.v"
// synopsys translate_on
`include "or1200_defines.v"

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

// synopsys translate_off
`include "timescale.v"
// synopsys translate_on
`include "or1200_defines.v"

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

// synopsys translate_off
`include "timescale.v"
// synopsys translate_on
`include "or1200_defines.v"

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

//
// Conversion unsigned to signed
//
always @(X_saved)
	xi = X_saved;

//
// Conversion unsigned to signed
//
always @(Y_saved)
	yi = Y_saved;

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
input	[dw-1:0]	iwb_dat_i;	// input data bus
output			iwb_cyc_o;	// cycle valid output
output	[aw-1:0]	iwb_adr_o;	// address bus outputs
output			iwb_stb_o;	// strobe output
output			iwb_we_o;	// indicates write transfer
output	[3:0]		iwb_sel_o;	// byte select outputs
output	[dw-1:0]	iwb_dat_o;	// output data bus
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
input	[dw-1:0]	dwb_dat_i;	// input data bus
output			dwb_cyc_o;	// cycle valid output
output	[aw-1:0]	dwb_adr_o;	// address bus outputs
output			dwb_stb_o;	// strobe output
output			dwb_we_o;	// indicates write transfer
output	[3:0]		dwb_sel_o;	// byte select outputs
output	[dw-1:0]	dwb_dat_o;	// output data bus
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
input	[dw-1:0]	dbg_dat_i;	// External Data Input
output	[dw-1:0]	dbg_dat_o;	// External Data Output
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
wire	[dw-1:0]	dcsb_dat_dc;
wire	[aw-1:0]	dcsb_adr_dc;
wire			dcsb_cyc_dc;
wire			dcsb_stb_dc;
wire			dcsb_we_dc;
wire	[3:0]		dcsb_sel_dc;
wire			dcsb_cab_dc;
wire	[dw-1:0]	dcsb_dat_sb;
wire			dcsb_ack_sb;
wire			dcsb_err_sb;

//
// SB to BIU
//
wire	[dw-1:0]	sbbiu_dat_sb;
wire	[aw-1:0]	sbbiu_adr_sb;
wire			sbbiu_cyc_sb;
wire			sbbiu_stb_sb;
wire			sbbiu_we_sb;
wire	[3:0]		sbbiu_sel_sb;
wire			sbbiu_cab_sb;
wire	[dw-1:0]	sbbiu_dat_biu;
wire			sbbiu_ack_biu;
wire			sbbiu_err_biu;

//
// IC to BIU
//
wire	[dw-1:0]	icbiu_dat_ic;
wire	[aw-1:0]	icbiu_adr_ic;
wire	[aw-1:0]	icbiu_adr_ic_word;
wire			icbiu_cyc_ic;
wire			icbiu_stb_ic;
wire			icbiu_we_ic;
wire	[3:0]		icbiu_sel_ic;
wire	[3:0]		icbiu_tag_ic;
wire			icbiu_cab_ic;
wire	[dw-1:0]	icbiu_dat_biu;
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
wire	[dw-1:0]	spr_dat_cpu;
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
wire	[dw-1:0]	spr_dat_pic;
wire			pic_wakeup;
wire			sig_int;

//
// Connection between CPU and PM
//
wire	[dw-1:0]	spr_dat_pm;

//
// CPU and TT
//
wire	[dw-1:0]	spr_dat_tt;
output wire			sig_tick; // jb

//
// Debug port and caches/MMUs
//
wire	[dw-1:0]	spr_dat_du;
wire			du_stall;
wire	[dw-1:0]	du_addr;
wire	[dw-1:0]	du_dat_du;
wire			du_read;
wire			du_write;
wire	[13:0]		du_except_trig;
wire	[13:0]		du_except_stop;
wire	[`OR1200_DU_DSR_WIDTH-1:0]     du_dsr;
wire	[24:0]		du_dmr1;
wire	[dw-1:0]	du_dat_cpu;
wire	[dw-1:0]	du_lsu_store_dat;
wire	[dw-1:0]	du_lsu_load_dat;
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
