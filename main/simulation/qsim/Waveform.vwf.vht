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
-- Generated on "11/17/2019 22:22:13"
                                                             
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
SIGNAL INSTRUCTION : STD_LOGIC;
COMPONENT Cpu
	PORT (
	CLOCK : IN STD_LOGIC;
	INSTRUCTION : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Cpu
	PORT MAP (
-- list connections between master ports and signals
	CLOCK => CLOCK,
	INSTRUCTION => INSTRUCTION
	);

-- CLOCK
t_prcs_CLOCK: PROCESS
BEGIN
	CLOCK <= '0';
WAIT;
END PROCESS t_prcs_CLOCK;
END Cpu_arch;
