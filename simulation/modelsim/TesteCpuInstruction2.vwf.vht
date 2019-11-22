-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/22/2019 17:43:36"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Cpu
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Cpu_vhd_vec_tst IS
END Cpu_vhd_vec_tst;
ARCHITECTURE Cpu_arch OF Cpu_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK : STD_LOGIC;
SIGNAL DEB_CONTROL : STD_LOGIC;
SIGNAL DEB_FILE_REG_1 : STD_LOGIC_VECTOR(0 TO 31);
SIGNAL DEB_FILE_REG_2 : STD_LOGIC_VECTOR(0 TO 31);
SIGNAL DEB_FILE_REG_3 : STD_LOGIC_VECTOR(0 TO 31);
SIGNAL DEB_FILE_REG_AUX : STD_LOGIC;
SIGNAL DEB_OUT_ULA : STD_LOGIC_VECTOR(0 TO 31);
SIGNAL DEB_REG_ULA_IN_1 : STD_LOGIC_VECTOR(0 TO 4);
SIGNAL DEB_RegDst : STD_LOGIC_VECTOR(0 TO 4);
SIGNAL DEB_REGS_PC : STD_LOGIC_VECTOR(0 TO 31);
SIGNAL DEB_SINAL_MUX_MEMWB : STD_LOGIC;
SIGNAL DEB_SINAL_REG_WRITE : STD_LOGIC;
SIGNAL DEB_ULA_IN_1 : STD_LOGIC_VECTOR(0 TO 31);
SIGNAL DEB_ULA_IN_2 : STD_LOGIC_VECTOR(0 TO 31);
SIGNAL DEB_WRITE_DATA : STD_LOGIC_VECTOR(0 TO 31);
SIGNAL DEB_WRITE_REG : STD_LOGIC_VECTOR(0 TO 4);
SIGNAL INSTRUCTION_OUT_IFID : STD_LOGIC_VECTOR(0 TO 31);
COMPONENT Cpu
	PORT (
	CLOCK : IN STD_LOGIC;
	DEB_CONTROL : BUFFER STD_LOGIC;
	DEB_FILE_REG_1 : BUFFER STD_LOGIC_VECTOR(0 TO 31);
	DEB_FILE_REG_2 : BUFFER STD_LOGIC_VECTOR(0 TO 31);
	DEB_FILE_REG_3 : BUFFER STD_LOGIC_VECTOR(0 TO 31);
	DEB_FILE_REG_AUX : BUFFER STD_LOGIC;
	DEB_OUT_ULA : BUFFER STD_LOGIC_VECTOR(0 TO 31);
	DEB_REG_ULA_IN_1 : BUFFER STD_LOGIC_VECTOR(0 TO 4);
	DEB_RegDst : BUFFER STD_LOGIC_VECTOR(0 TO 4);
	DEB_REGS_PC : BUFFER STD_LOGIC_VECTOR(0 TO 31);
	DEB_SINAL_MUX_MEMWB : BUFFER STD_LOGIC;
	DEB_SINAL_REG_WRITE : BUFFER STD_LOGIC;
	DEB_ULA_IN_1 : BUFFER STD_LOGIC_VECTOR(0 TO 31);
	DEB_ULA_IN_2 : BUFFER STD_LOGIC_VECTOR(0 TO 31);
	DEB_WRITE_DATA : BUFFER STD_LOGIC_VECTOR(0 TO 31);
	DEB_WRITE_REG : BUFFER STD_LOGIC_VECTOR(0 TO 4);
	INSTRUCTION_OUT_IFID : BUFFER STD_LOGIC_VECTOR(0 TO 31)
	);
END COMPONENT;
BEGIN
	i1 : Cpu
	PORT MAP (
-- list connections between master ports and signals
	CLOCK => CLOCK,
	DEB_CONTROL => DEB_CONTROL,
	DEB_FILE_REG_1 => DEB_FILE_REG_1,
	DEB_FILE_REG_2 => DEB_FILE_REG_2,
	DEB_FILE_REG_3 => DEB_FILE_REG_3,
	DEB_FILE_REG_AUX => DEB_FILE_REG_AUX,
	DEB_OUT_ULA => DEB_OUT_ULA,
	DEB_REG_ULA_IN_1 => DEB_REG_ULA_IN_1,
	DEB_RegDst => DEB_RegDst,
	DEB_REGS_PC => DEB_REGS_PC,
	DEB_SINAL_MUX_MEMWB => DEB_SINAL_MUX_MEMWB,
	DEB_SINAL_REG_WRITE => DEB_SINAL_REG_WRITE,
	DEB_ULA_IN_1 => DEB_ULA_IN_1,
	DEB_ULA_IN_2 => DEB_ULA_IN_2,
	DEB_WRITE_DATA => DEB_WRITE_DATA,
	DEB_WRITE_REG => DEB_WRITE_REG,
	INSTRUCTION_OUT_IFID => INSTRUCTION_OUT_IFID
	);

-- CLOCK
t_prcs_CLOCK: PROCESS
BEGIN
LOOP
	CLOCK <= '0';
	WAIT FOR 10000 ps;
	CLOCK <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLOCK;
END Cpu_arch;
