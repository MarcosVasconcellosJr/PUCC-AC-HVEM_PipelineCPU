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
-- Generated on "11/16/2019 08:13:32"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ControlUnit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ControlUnit_vhd_vec_tst IS
END ControlUnit_vhd_vec_tst;
ARCHITECTURE ControlUnit_arch OF ControlUnit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL EX : STD_LOGIC_VECTOR(0 TO 4);
SIGNAL MEM : STD_LOGIC_VECTOR(0 TO 2);
SIGNAL OP_CODE : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL WB : STD_LOGIC_VECTOR(0 TO 1);
COMPONENT ControlUnit
	PORT (
	EX : OUT STD_LOGIC_VECTOR(0 TO 4);
	MEM : OUT STD_LOGIC_VECTOR(0 TO 2);
	OP_CODE : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	WB : OUT STD_LOGIC_VECTOR(0 TO 1)
	);
END COMPONENT;
BEGIN
	i1 : ControlUnit
	PORT MAP (
-- list connections between master ports and signals
	EX => EX,
	MEM => MEM,
	OP_CODE => OP_CODE,
	WB => WB
	);
-- OP_CODE[5]
t_prcs_OP_CODE_5: PROCESS
BEGIN
	OP_CODE(5) <= '0';
WAIT;
END PROCESS t_prcs_OP_CODE_5;
-- OP_CODE[4]
t_prcs_OP_CODE_4: PROCESS
BEGIN
	OP_CODE(4) <= '0';
WAIT;
END PROCESS t_prcs_OP_CODE_4;
-- OP_CODE[3]
t_prcs_OP_CODE_3: PROCESS
BEGIN
	OP_CODE(3) <= '0';
	WAIT FOR 490000 ps;
	OP_CODE(3) <= '1';
	WAIT FOR 280000 ps;
	OP_CODE(3) <= '0';
WAIT;
END PROCESS t_prcs_OP_CODE_3;
-- OP_CODE[2]
t_prcs_OP_CODE_2: PROCESS
BEGIN
	OP_CODE(2) <= '0';
	WAIT FOR 210000 ps;
	OP_CODE(2) <= '1';
	WAIT FOR 280000 ps;
	OP_CODE(2) <= '0';
WAIT;
END PROCESS t_prcs_OP_CODE_2;
-- OP_CODE[1]
t_prcs_OP_CODE_1: PROCESS
BEGIN
	OP_CODE(1) <= '0';
	WAIT FOR 70000 ps;
	OP_CODE(1) <= '1';
	WAIT FOR 140000 ps;
	OP_CODE(1) <= '0';
	WAIT FOR 140000 ps;
	OP_CODE(1) <= '1';
	WAIT FOR 140000 ps;
	OP_CODE(1) <= '0';
	WAIT FOR 140000 ps;
	OP_CODE(1) <= '1';
	WAIT FOR 140000 ps;
	OP_CODE(1) <= '0';
WAIT;
END PROCESS t_prcs_OP_CODE_1;
-- OP_CODE[0]
t_prcs_OP_CODE_0: PROCESS
BEGIN
	OP_CODE(0) <= '1';
	WAIT FOR 70000 ps;
	OP_CODE(0) <= '0';
	WAIT FOR 70000 ps;
	OP_CODE(0) <= '1';
	WAIT FOR 70000 ps;
	OP_CODE(0) <= '0';
	WAIT FOR 70000 ps;
	OP_CODE(0) <= '1';
	WAIT FOR 70000 ps;
	OP_CODE(0) <= '0';
	WAIT FOR 70000 ps;
	OP_CODE(0) <= '1';
	WAIT FOR 70000 ps;
	OP_CODE(0) <= '0';
	WAIT FOR 70000 ps;
	OP_CODE(0) <= '1';
	WAIT FOR 70000 ps;
	OP_CODE(0) <= '0';
	WAIT FOR 70000 ps;
	OP_CODE(0) <= '1';
	WAIT FOR 70000 ps;
	OP_CODE(0) <= '0';
WAIT;
END PROCESS t_prcs_OP_CODE_0;
END ControlUnit_arch;
