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
-- Generated on "11/19/2019 10:29:32"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          InstructionMemory
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY InstructionMemory_vhd_vec_tst IS
END InstructionMemory_vhd_vec_tst;
ARCHITECTURE InstructionMemory_arch OF InstructionMemory_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ADDRESS : STD_LOGIC_VECTOR(0 TO 31);
SIGNAL INSTRUCTION : STD_LOGIC_VECTOR(0 TO 31);
COMPONENT InstructionMemory
	PORT (
	ADDRESS : IN STD_LOGIC_VECTOR(0 TO 31);
	INSTRUCTION : OUT STD_LOGIC_VECTOR(0 TO 31)
	);
END COMPONENT;
BEGIN
	i1 : InstructionMemory
	PORT MAP (
-- list connections between master ports and signals
	ADDRESS => ADDRESS,
	INSTRUCTION => INSTRUCTION
	);
-- ADDRESS[31]
t_prcs_ADDRESS_31: PROCESS
BEGIN
	ADDRESS(31) <= '0';
WAIT;
END PROCESS t_prcs_ADDRESS_31;
-- ADDRESS[30]
t_prcs_ADDRESS_30: PROCESS
BEGIN
	ADDRESS(30) <= '0';
WAIT;
END PROCESS t_prcs_ADDRESS_30;
-- ADDRESS[29]
t_prcs_ADDRESS_29: PROCESS
BEGIN
	ADDRESS(29) <= '0';
	WAIT FOR 340000 ps;
	ADDRESS(29) <= '1';
	WAIT FOR 400000 ps;
	ADDRESS(29) <= '0';
WAIT;
END PROCESS t_prcs_ADDRESS_29;
-- ADDRESS[28]
t_prcs_ADDRESS_28: PROCESS
BEGIN
	ADDRESS(28) <= '0';
WAIT;
END PROCESS t_prcs_ADDRESS_28;
-- ADDRESS[27]
t_prcs_ADDRESS_27: PROCESS
BEGIN
	ADDRESS(27) <= '0';
WAIT;
END PROCESS t_prcs_ADDRESS_27;
-- ADDRESS[26]
t_prcs_ADDRESS_26: PROCESS
BEGIN
	ADDRESS(26) <= '0';
WAIT;
END PROCESS t_prcs_ADDRESS_26;
-- ADDRESS[25]
t_prcs_ADDRESS_25: PROCESS
BEGIN
	ADDRESS(25) <= '0';
WAIT;
END PROCESS t_prcs_ADDRESS_25;
-- ADDRESS[24]
t_prcs_ADDRESS_24: PROCESS
BEGIN
	ADDRESS(24) <= '0';
WAIT;
END PROCESS t_prcs_ADDRESS_24;
-- ADDRESS[23]
t_prcs_ADDRESS_23: PROCESS
BEGIN
	ADDRESS(23) <= '0';
WAIT;
END PROCESS t_prcs_ADDRESS_23;
-- ADDRESS[22]
t_prcs_ADDRESS_22: PROCESS
BEGIN
	ADDRESS(22) <= '0';
WAIT;
END PROCESS t_prcs_ADDRESS_22;
-- ADDRESS[21]
t_prcs_ADDRESS_21: PROCESS
BEGIN
	ADDRESS(21) <= '0';
WAIT;
END PROCESS t_prcs_ADDRESS_21;
-- ADDRESS[20]
t_prcs_ADDRESS_20: PROCESS
BEGIN
	ADDRESS(20) <= '0';
WAIT;
END PROCESS t_prcs_ADDRESS_20;
-- ADDRESS[19]
t_prcs_ADDRESS_19: PROCESS
BEGIN
	ADDRESS(19) <= '0';
WAIT;
END PROCESS t_prcs_ADDRESS_19;
-- ADDRESS[18]
t_prcs_ADDRESS_18: PROCESS
BEGIN
	ADDRESS(18) <= '0';
WAIT;
END PROCESS t_prcs_ADDRESS_18;
-- ADDRESS[17]
t_prcs_ADDRESS_17: PROCESS
BEGIN
	ADDRESS(17) <= '0';
WAIT;
END PROCESS t_prcs_ADDRESS_17;
-- ADDRESS[16]
t_prcs_ADDRESS_16: PROCESS
BEGIN
	ADDRESS(16) <= '0';
WAIT;
END PROCESS t_prcs_ADDRESS_16;
-- ADDRESS[15]
t_prcs_ADDRESS_15: PROCESS
BEGIN
	ADDRESS(15) <= '0';
WAIT;
END PROCESS t_prcs_ADDRESS_15;
-- ADDRESS[14]
t_prcs_ADDRESS_14: PROCESS
BEGIN
	ADDRESS(14) <= '0';
WAIT;
END PROCESS t_prcs_ADDRESS_14;
-- ADDRESS[13]
t_prcs_ADDRESS_13: PROCESS
BEGIN
	ADDRESS(13) <= '0';
WAIT;
END PROCESS t_prcs_ADDRESS_13;
-- ADDRESS[12]
t_prcs_ADDRESS_12: PROCESS
BEGIN
	ADDRESS(12) <= '0';
WAIT;
END PROCESS t_prcs_ADDRESS_12;
-- ADDRESS[11]
t_prcs_ADDRESS_11: PROCESS
BEGIN
	ADDRESS(11) <= '0';
WAIT;
END PROCESS t_prcs_ADDRESS_11;
-- ADDRESS[10]
t_prcs_ADDRESS_10: PROCESS
BEGIN
	ADDRESS(10) <= '0';
WAIT;
END PROCESS t_prcs_ADDRESS_10;
-- ADDRESS[9]
t_prcs_ADDRESS_9: PROCESS
BEGIN
	ADDRESS(9) <= '0';
WAIT;
END PROCESS t_prcs_ADDRESS_9;
-- ADDRESS[8]
t_prcs_ADDRESS_8: PROCESS
BEGIN
	ADDRESS(8) <= '0';
WAIT;
END PROCESS t_prcs_ADDRESS_8;
-- ADDRESS[7]
t_prcs_ADDRESS_7: PROCESS
BEGIN
	ADDRESS(7) <= '0';
WAIT;
END PROCESS t_prcs_ADDRESS_7;
-- ADDRESS[6]
t_prcs_ADDRESS_6: PROCESS
BEGIN
	ADDRESS(6) <= '0';
WAIT;
END PROCESS t_prcs_ADDRESS_6;
-- ADDRESS[5]
t_prcs_ADDRESS_5: PROCESS
BEGIN
	ADDRESS(5) <= '0';
WAIT;
END PROCESS t_prcs_ADDRESS_5;
-- ADDRESS[4]
t_prcs_ADDRESS_4: PROCESS
BEGIN
	ADDRESS(4) <= '0';
WAIT;
END PROCESS t_prcs_ADDRESS_4;
-- ADDRESS[3]
t_prcs_ADDRESS_3: PROCESS
BEGIN
	ADDRESS(3) <= '0';
WAIT;
END PROCESS t_prcs_ADDRESS_3;
-- ADDRESS[2]
t_prcs_ADDRESS_2: PROCESS
BEGIN
	ADDRESS(2) <= '0';
WAIT;
END PROCESS t_prcs_ADDRESS_2;
-- ADDRESS[1]
t_prcs_ADDRESS_1: PROCESS
BEGIN
	ADDRESS(1) <= '0';
WAIT;
END PROCESS t_prcs_ADDRESS_1;
-- ADDRESS[0]
t_prcs_ADDRESS_0: PROCESS
BEGIN
	ADDRESS(0) <= '0';
WAIT;
END PROCESS t_prcs_ADDRESS_0;
END InstructionMemory_arch;
