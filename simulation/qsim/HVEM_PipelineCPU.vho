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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "11/19/2019 23:01:47"

-- 
-- Device: Altera EP4CE115F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Cpu IS
    PORT (
	CLOCK : IN std_logic;
	INSTRUCTION_OUT_IFID : BUFFER std_logic_vector(0 TO 31);
	DEB_REGS_PC : BUFFER std_logic_vector(0 TO 31);
	DEB_CONTROL : BUFFER std_logic;
	DEB_ULA_IN_1 : BUFFER std_logic_vector(0 TO 31);
	DEB_ULA_IN_2 : BUFFER std_logic_vector(0 TO 31);
	DEB_OUT_ULA : BUFFER std_logic_vector(0 TO 31);
	DEB_RegDst : BUFFER std_logic_vector(0 TO 4);
	DEB_REG_ULA_IN_1 : BUFFER std_logic_vector(0 TO 4);
	DEB_SINAL_MUX_MEMWB : BUFFER std_logic;
	DEB_SINAL_REG_WRITE : BUFFER std_logic;
	DEB_WRITE_REG : BUFFER std_logic_vector(0 TO 4);
	DEB_WRITE_DATA : BUFFER std_logic_vector(0 TO 31);
	DEB_FILE_REG_1 : BUFFER std_logic_vector(0 TO 31);
	DEB_FILE_REG_2 : BUFFER std_logic_vector(0 TO 31);
	DEB_FILE_REG_AUX : BUFFER std_logic
	);
END Cpu;

ARCHITECTURE structure OF Cpu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK : std_logic;
SIGNAL ww_INSTRUCTION_OUT_IFID : std_logic_vector(0 TO 31);
SIGNAL ww_DEB_REGS_PC : std_logic_vector(0 TO 31);
SIGNAL ww_DEB_CONTROL : std_logic;
SIGNAL ww_DEB_ULA_IN_1 : std_logic_vector(0 TO 31);
SIGNAL ww_DEB_ULA_IN_2 : std_logic_vector(0 TO 31);
SIGNAL ww_DEB_OUT_ULA : std_logic_vector(0 TO 31);
SIGNAL ww_DEB_RegDst : std_logic_vector(0 TO 4);
SIGNAL ww_DEB_REG_ULA_IN_1 : std_logic_vector(0 TO 4);
SIGNAL ww_DEB_SINAL_MUX_MEMWB : std_logic;
SIGNAL ww_DEB_SINAL_REG_WRITE : std_logic;
SIGNAL ww_DEB_WRITE_REG : std_logic_vector(0 TO 4);
SIGNAL ww_DEB_WRITE_DATA : std_logic_vector(0 TO 31);
SIGNAL ww_DEB_FILE_REG_1 : std_logic_vector(0 TO 31);
SIGNAL ww_DEB_FILE_REG_2 : std_logic_vector(0 TO 31);
SIGNAL ww_DEB_FILE_REG_AUX : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[31]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[30]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[29]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[28]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[27]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[26]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[25]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[24]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[23]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[22]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[21]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[20]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[19]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[18]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[17]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[16]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[15]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[14]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[13]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[12]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[11]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[10]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[9]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[8]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[7]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[6]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[5]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[4]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[3]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[2]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[1]~output_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[0]~output_o\ : std_logic;
SIGNAL \DEB_REGS_PC[31]~output_o\ : std_logic;
SIGNAL \DEB_REGS_PC[30]~output_o\ : std_logic;
SIGNAL \DEB_REGS_PC[29]~output_o\ : std_logic;
SIGNAL \DEB_REGS_PC[28]~output_o\ : std_logic;
SIGNAL \DEB_REGS_PC[27]~output_o\ : std_logic;
SIGNAL \DEB_REGS_PC[26]~output_o\ : std_logic;
SIGNAL \DEB_REGS_PC[25]~output_o\ : std_logic;
SIGNAL \DEB_REGS_PC[24]~output_o\ : std_logic;
SIGNAL \DEB_REGS_PC[23]~output_o\ : std_logic;
SIGNAL \DEB_REGS_PC[22]~output_o\ : std_logic;
SIGNAL \DEB_REGS_PC[21]~output_o\ : std_logic;
SIGNAL \DEB_REGS_PC[20]~output_o\ : std_logic;
SIGNAL \DEB_REGS_PC[19]~output_o\ : std_logic;
SIGNAL \DEB_REGS_PC[18]~output_o\ : std_logic;
SIGNAL \DEB_REGS_PC[17]~output_o\ : std_logic;
SIGNAL \DEB_REGS_PC[16]~output_o\ : std_logic;
SIGNAL \DEB_REGS_PC[15]~output_o\ : std_logic;
SIGNAL \DEB_REGS_PC[14]~output_o\ : std_logic;
SIGNAL \DEB_REGS_PC[13]~output_o\ : std_logic;
SIGNAL \DEB_REGS_PC[12]~output_o\ : std_logic;
SIGNAL \DEB_REGS_PC[11]~output_o\ : std_logic;
SIGNAL \DEB_REGS_PC[10]~output_o\ : std_logic;
SIGNAL \DEB_REGS_PC[9]~output_o\ : std_logic;
SIGNAL \DEB_REGS_PC[8]~output_o\ : std_logic;
SIGNAL \DEB_REGS_PC[7]~output_o\ : std_logic;
SIGNAL \DEB_REGS_PC[6]~output_o\ : std_logic;
SIGNAL \DEB_REGS_PC[5]~output_o\ : std_logic;
SIGNAL \DEB_REGS_PC[4]~output_o\ : std_logic;
SIGNAL \DEB_REGS_PC[3]~output_o\ : std_logic;
SIGNAL \DEB_REGS_PC[2]~output_o\ : std_logic;
SIGNAL \DEB_REGS_PC[1]~output_o\ : std_logic;
SIGNAL \DEB_REGS_PC[0]~output_o\ : std_logic;
SIGNAL \DEB_CONTROL~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_1[31]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_1[30]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_1[29]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_1[28]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_1[27]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_1[26]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_1[25]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_1[24]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_1[23]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_1[22]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_1[21]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_1[20]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_1[19]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_1[18]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_1[17]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_1[16]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_1[15]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_1[14]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_1[13]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_1[12]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_1[11]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_1[10]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_1[9]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_1[8]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_1[7]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_1[6]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_1[5]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_1[4]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_1[3]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_1[2]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_1[1]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_1[0]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_2[31]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_2[30]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_2[29]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_2[28]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_2[27]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_2[26]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_2[25]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_2[24]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_2[23]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_2[22]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_2[21]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_2[20]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_2[19]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_2[18]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_2[17]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_2[16]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_2[15]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_2[14]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_2[13]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_2[12]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_2[11]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_2[10]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_2[9]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_2[8]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_2[7]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_2[6]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_2[5]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_2[4]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_2[3]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_2[2]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_2[1]~output_o\ : std_logic;
SIGNAL \DEB_ULA_IN_2[0]~output_o\ : std_logic;
SIGNAL \DEB_OUT_ULA[31]~output_o\ : std_logic;
SIGNAL \DEB_OUT_ULA[30]~output_o\ : std_logic;
SIGNAL \DEB_OUT_ULA[29]~output_o\ : std_logic;
SIGNAL \DEB_OUT_ULA[28]~output_o\ : std_logic;
SIGNAL \DEB_OUT_ULA[27]~output_o\ : std_logic;
SIGNAL \DEB_OUT_ULA[26]~output_o\ : std_logic;
SIGNAL \DEB_OUT_ULA[25]~output_o\ : std_logic;
SIGNAL \DEB_OUT_ULA[24]~output_o\ : std_logic;
SIGNAL \DEB_OUT_ULA[23]~output_o\ : std_logic;
SIGNAL \DEB_OUT_ULA[22]~output_o\ : std_logic;
SIGNAL \DEB_OUT_ULA[21]~output_o\ : std_logic;
SIGNAL \DEB_OUT_ULA[20]~output_o\ : std_logic;
SIGNAL \DEB_OUT_ULA[19]~output_o\ : std_logic;
SIGNAL \DEB_OUT_ULA[18]~output_o\ : std_logic;
SIGNAL \DEB_OUT_ULA[17]~output_o\ : std_logic;
SIGNAL \DEB_OUT_ULA[16]~output_o\ : std_logic;
SIGNAL \DEB_OUT_ULA[15]~output_o\ : std_logic;
SIGNAL \DEB_OUT_ULA[14]~output_o\ : std_logic;
SIGNAL \DEB_OUT_ULA[13]~output_o\ : std_logic;
SIGNAL \DEB_OUT_ULA[12]~output_o\ : std_logic;
SIGNAL \DEB_OUT_ULA[11]~output_o\ : std_logic;
SIGNAL \DEB_OUT_ULA[10]~output_o\ : std_logic;
SIGNAL \DEB_OUT_ULA[9]~output_o\ : std_logic;
SIGNAL \DEB_OUT_ULA[8]~output_o\ : std_logic;
SIGNAL \DEB_OUT_ULA[7]~output_o\ : std_logic;
SIGNAL \DEB_OUT_ULA[6]~output_o\ : std_logic;
SIGNAL \DEB_OUT_ULA[5]~output_o\ : std_logic;
SIGNAL \DEB_OUT_ULA[4]~output_o\ : std_logic;
SIGNAL \DEB_OUT_ULA[3]~output_o\ : std_logic;
SIGNAL \DEB_OUT_ULA[2]~output_o\ : std_logic;
SIGNAL \DEB_OUT_ULA[1]~output_o\ : std_logic;
SIGNAL \DEB_OUT_ULA[0]~output_o\ : std_logic;
SIGNAL \DEB_RegDst[4]~output_o\ : std_logic;
SIGNAL \DEB_RegDst[3]~output_o\ : std_logic;
SIGNAL \DEB_RegDst[2]~output_o\ : std_logic;
SIGNAL \DEB_RegDst[1]~output_o\ : std_logic;
SIGNAL \DEB_RegDst[0]~output_o\ : std_logic;
SIGNAL \DEB_REG_ULA_IN_1[4]~output_o\ : std_logic;
SIGNAL \DEB_REG_ULA_IN_1[3]~output_o\ : std_logic;
SIGNAL \DEB_REG_ULA_IN_1[2]~output_o\ : std_logic;
SIGNAL \DEB_REG_ULA_IN_1[1]~output_o\ : std_logic;
SIGNAL \DEB_REG_ULA_IN_1[0]~output_o\ : std_logic;
SIGNAL \DEB_SINAL_MUX_MEMWB~output_o\ : std_logic;
SIGNAL \DEB_SINAL_REG_WRITE~output_o\ : std_logic;
SIGNAL \DEB_WRITE_REG[4]~output_o\ : std_logic;
SIGNAL \DEB_WRITE_REG[3]~output_o\ : std_logic;
SIGNAL \DEB_WRITE_REG[2]~output_o\ : std_logic;
SIGNAL \DEB_WRITE_REG[1]~output_o\ : std_logic;
SIGNAL \DEB_WRITE_REG[0]~output_o\ : std_logic;
SIGNAL \DEB_WRITE_DATA[31]~output_o\ : std_logic;
SIGNAL \DEB_WRITE_DATA[30]~output_o\ : std_logic;
SIGNAL \DEB_WRITE_DATA[29]~output_o\ : std_logic;
SIGNAL \DEB_WRITE_DATA[28]~output_o\ : std_logic;
SIGNAL \DEB_WRITE_DATA[27]~output_o\ : std_logic;
SIGNAL \DEB_WRITE_DATA[26]~output_o\ : std_logic;
SIGNAL \DEB_WRITE_DATA[25]~output_o\ : std_logic;
SIGNAL \DEB_WRITE_DATA[24]~output_o\ : std_logic;
SIGNAL \DEB_WRITE_DATA[23]~output_o\ : std_logic;
SIGNAL \DEB_WRITE_DATA[22]~output_o\ : std_logic;
SIGNAL \DEB_WRITE_DATA[21]~output_o\ : std_logic;
SIGNAL \DEB_WRITE_DATA[20]~output_o\ : std_logic;
SIGNAL \DEB_WRITE_DATA[19]~output_o\ : std_logic;
SIGNAL \DEB_WRITE_DATA[18]~output_o\ : std_logic;
SIGNAL \DEB_WRITE_DATA[17]~output_o\ : std_logic;
SIGNAL \DEB_WRITE_DATA[16]~output_o\ : std_logic;
SIGNAL \DEB_WRITE_DATA[15]~output_o\ : std_logic;
SIGNAL \DEB_WRITE_DATA[14]~output_o\ : std_logic;
SIGNAL \DEB_WRITE_DATA[13]~output_o\ : std_logic;
SIGNAL \DEB_WRITE_DATA[12]~output_o\ : std_logic;
SIGNAL \DEB_WRITE_DATA[11]~output_o\ : std_logic;
SIGNAL \DEB_WRITE_DATA[10]~output_o\ : std_logic;
SIGNAL \DEB_WRITE_DATA[9]~output_o\ : std_logic;
SIGNAL \DEB_WRITE_DATA[8]~output_o\ : std_logic;
SIGNAL \DEB_WRITE_DATA[7]~output_o\ : std_logic;
SIGNAL \DEB_WRITE_DATA[6]~output_o\ : std_logic;
SIGNAL \DEB_WRITE_DATA[5]~output_o\ : std_logic;
SIGNAL \DEB_WRITE_DATA[4]~output_o\ : std_logic;
SIGNAL \DEB_WRITE_DATA[3]~output_o\ : std_logic;
SIGNAL \DEB_WRITE_DATA[2]~output_o\ : std_logic;
SIGNAL \DEB_WRITE_DATA[1]~output_o\ : std_logic;
SIGNAL \DEB_WRITE_DATA[0]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_1[31]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_1[30]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_1[29]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_1[28]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_1[27]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_1[26]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_1[25]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_1[24]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_1[23]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_1[22]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_1[21]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_1[20]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_1[19]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_1[18]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_1[17]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_1[16]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_1[15]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_1[14]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_1[13]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_1[12]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_1[11]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_1[10]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_1[9]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_1[8]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_1[7]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_1[6]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_1[5]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_1[4]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_1[3]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_1[2]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_1[1]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_1[0]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_2[31]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_2[30]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_2[29]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_2[28]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_2[27]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_2[26]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_2[25]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_2[24]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_2[23]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_2[22]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_2[21]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_2[20]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_2[19]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_2[18]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_2[17]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_2[16]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_2[15]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_2[14]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_2[13]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_2[12]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_2[11]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_2[10]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_2[9]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_2[8]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_2[7]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_2[6]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_2[5]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_2[4]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_2[3]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_2[2]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_2[1]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_2[0]~output_o\ : std_logic;
SIGNAL \DEB_FILE_REG_AUX~output_o\ : std_logic;
SIGNAL \CLOCK~input_o\ : std_logic;
SIGNAL \PC_INC|X[29]~0_combout\ : std_logic;
SIGNAL \PC_INC|X[29]~1\ : std_logic;
SIGNAL \PC_INC|X[28]~2_combout\ : std_logic;
SIGNAL \PC_INC|X[28]~3\ : std_logic;
SIGNAL \PC_INC|X[27]~4_combout\ : std_logic;
SIGNAL \PC_INC|X[27]~5\ : std_logic;
SIGNAL \PC_INC|X[26]~6_combout\ : std_logic;
SIGNAL \PC_INC|X[26]~7\ : std_logic;
SIGNAL \PC_INC|X[25]~8_combout\ : std_logic;
SIGNAL \INST_MEM|Mux31~0_combout\ : std_logic;
SIGNAL \PC_INC|X[25]~9\ : std_logic;
SIGNAL \PC_INC|X[24]~10_combout\ : std_logic;
SIGNAL \PC_INC|X[24]~11\ : std_logic;
SIGNAL \PC_INC|X[23]~12_combout\ : std_logic;
SIGNAL \INST_MEM|Mux31~1_combout\ : std_logic;
SIGNAL \INST_MEM|Mux28~0_combout\ : std_logic;
SIGNAL \INST_MEM|Mux31~2_combout\ : std_logic;
SIGNAL \PC_INC|X[23]~13\ : std_logic;
SIGNAL \PC_INC|X[22]~14_combout\ : std_logic;
SIGNAL \PC_INC|X[22]~15\ : std_logic;
SIGNAL \PC_INC|X[21]~16_combout\ : std_logic;
SIGNAL \PC_INC|X[21]~17\ : std_logic;
SIGNAL \PC_INC|X[20]~18_combout\ : std_logic;
SIGNAL \PC_INC|X[20]~19\ : std_logic;
SIGNAL \PC_INC|X[19]~20_combout\ : std_logic;
SIGNAL \PC_INC|X[19]~21\ : std_logic;
SIGNAL \PC_INC|X[18]~22_combout\ : std_logic;
SIGNAL \PC_INC|X[18]~23\ : std_logic;
SIGNAL \PC_INC|X[17]~24_combout\ : std_logic;
SIGNAL \PC_INC|X[17]~25\ : std_logic;
SIGNAL \PC_INC|X[16]~26_combout\ : std_logic;
SIGNAL \PC_INC|X[16]~27\ : std_logic;
SIGNAL \PC_INC|X[15]~28_combout\ : std_logic;
SIGNAL \PC_INC|X[15]~29\ : std_logic;
SIGNAL \PC_INC|X[14]~30_combout\ : std_logic;
SIGNAL \PC_INC|X[14]~31\ : std_logic;
SIGNAL \PC_INC|X[13]~32_combout\ : std_logic;
SIGNAL \PC_INC|X[13]~33\ : std_logic;
SIGNAL \PC_INC|X[12]~34_combout\ : std_logic;
SIGNAL \PC_INC|X[12]~35\ : std_logic;
SIGNAL \PC_INC|X[11]~36_combout\ : std_logic;
SIGNAL \PC_INC|X[11]~37\ : std_logic;
SIGNAL \PC_INC|X[10]~38_combout\ : std_logic;
SIGNAL \PC_INC|X[10]~39\ : std_logic;
SIGNAL \PC_INC|X[9]~40_combout\ : std_logic;
SIGNAL \PC_INC|X[9]~41\ : std_logic;
SIGNAL \PC_INC|X[8]~42_combout\ : std_logic;
SIGNAL \PC_INC|X[8]~43\ : std_logic;
SIGNAL \PC_INC|X[7]~44_combout\ : std_logic;
SIGNAL \PC_INC|X[7]~45\ : std_logic;
SIGNAL \PC_INC|X[6]~46_combout\ : std_logic;
SIGNAL \PC_INC|X[6]~47\ : std_logic;
SIGNAL \PC_INC|X[5]~48_combout\ : std_logic;
SIGNAL \PC_INC|X[5]~49\ : std_logic;
SIGNAL \PC_INC|X[4]~50_combout\ : std_logic;
SIGNAL \PC_INC|X[4]~51\ : std_logic;
SIGNAL \PC_INC|X[3]~52_combout\ : std_logic;
SIGNAL \PC_INC|X[3]~53\ : std_logic;
SIGNAL \PC_INC|X[2]~54_combout\ : std_logic;
SIGNAL \PC_INC|X[2]~55\ : std_logic;
SIGNAL \PC_INC|X[1]~56_combout\ : std_logic;
SIGNAL \PC_INC|X[1]~57\ : std_logic;
SIGNAL \PC_INC|X[0]~58_combout\ : std_logic;
SIGNAL \IDEX|IDEX_OUT_EX[0]~0_combout\ : std_logic;
SIGNAL \UC|Mux4~1_combout\ : std_logic;
SIGNAL \UC|Mux9~0_combout\ : std_logic;
SIGNAL \UC|Mux4~0_combout\ : std_logic;
SIGNAL \ALU_CONTROL|Equal0~0_combout\ : std_logic;
SIGNAL \IDEX|IDEX_OUT_EX[3]~1_combout\ : std_logic;
SIGNAL \ALU_CONTROL|ULA_CODE[0]~0_combout\ : std_logic;
SIGNAL \ALU_CONTROL|comb~0_combout\ : std_logic;
SIGNAL \MUX_REGDST|X[3]~1_combout\ : std_logic;
SIGNAL \MUX_REGDST|X[4]~0_combout\ : std_logic;
SIGNAL \FILE_REG|Decoder0~1_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[2][31]~q\ : std_logic;
SIGNAL \FILE_REG|Decoder0~2_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[0][31]~q\ : std_logic;
SIGNAL \FILE_REG|Mux63~0_combout\ : std_logic;
SIGNAL \FILE_REG|Decoder0~3_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[3][31]~q\ : std_logic;
SIGNAL \FILE_REG|Mux63~1_combout\ : std_logic;
SIGNAL \MUX_ALU_B|X[31]~0_combout\ : std_logic;
SIGNAL \ALU_CONTROL|ULA_CODE[1]~1_combout\ : std_logic;
SIGNAL \ALU_CONTROL|comb~2_combout\ : std_logic;
SIGNAL \ALU_CONTROL|comb~1_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~0_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~1_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~3_cout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~4_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~6_combout\ : std_logic;
SIGNAL \MUX_WB|X[31]~0_combout\ : std_logic;
SIGNAL \FILE_REG|Decoder0~0_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[1][31]~q\ : std_logic;
SIGNAL \FILE_REG|Mux31~0_combout\ : std_logic;
SIGNAL \FILE_REG|Mux31~1_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[2][30]~q\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[0][30]~q\ : std_logic;
SIGNAL \FILE_REG|Mux62~0_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[3][30]~q\ : std_logic;
SIGNAL \FILE_REG|Mux62~1_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~7_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~8_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~5\ : std_logic;
SIGNAL \MAIN_ALU|Add0~9_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~11_combout\ : std_logic;
SIGNAL \MUX_WB|X[30]~1_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[1][30]~q\ : std_logic;
SIGNAL \FILE_REG|Mux30~0_combout\ : std_logic;
SIGNAL \FILE_REG|Mux30~1_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[2][29]~q\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[0][29]~q\ : std_logic;
SIGNAL \FILE_REG|Mux61~0_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[3][29]~q\ : std_logic;
SIGNAL \FILE_REG|Mux61~1_combout\ : std_logic;
SIGNAL \MUX_ALU_B|X[29]~2_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~12_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~13_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~10\ : std_logic;
SIGNAL \MAIN_ALU|Add0~14_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~16_combout\ : std_logic;
SIGNAL \MUX_WB|X[29]~2_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[1][29]~q\ : std_logic;
SIGNAL \FILE_REG|Mux29~0_combout\ : std_logic;
SIGNAL \FILE_REG|Mux29~1_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[2][28]~q\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[0][28]~q\ : std_logic;
SIGNAL \FILE_REG|Mux60~0_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[3][28]~q\ : std_logic;
SIGNAL \FILE_REG|Mux60~1_combout\ : std_logic;
SIGNAL \MUX_ALU_B|X[28]~3_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~17_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~18_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~15\ : std_logic;
SIGNAL \MAIN_ALU|Add0~19_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~21_combout\ : std_logic;
SIGNAL \MUX_WB|X[28]~3_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[1][28]~q\ : std_logic;
SIGNAL \FILE_REG|Mux28~0_combout\ : std_logic;
SIGNAL \FILE_REG|Mux28~1_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[2][27]~q\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[0][27]~q\ : std_logic;
SIGNAL \FILE_REG|Mux59~0_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[3][27]~q\ : std_logic;
SIGNAL \FILE_REG|Mux59~1_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~22_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~23_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~20\ : std_logic;
SIGNAL \MAIN_ALU|Add0~24_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~26_combout\ : std_logic;
SIGNAL \MUX_WB|X[27]~4_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[1][27]~q\ : std_logic;
SIGNAL \FILE_REG|Mux27~0_combout\ : std_logic;
SIGNAL \FILE_REG|Mux27~1_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[1][26]~q\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[0][26]~q\ : std_logic;
SIGNAL \FILE_REG|Mux58~0_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[3][26]~q\ : std_logic;
SIGNAL \FILE_REG|Mux58~1_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~27_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~28_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~25\ : std_logic;
SIGNAL \MAIN_ALU|Add0~29_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~31_combout\ : std_logic;
SIGNAL \MUX_WB|X[26]~5_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[2][26]~q\ : std_logic;
SIGNAL \FILE_REG|Mux26~0_combout\ : std_logic;
SIGNAL \FILE_REG|Mux26~1_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[2][25]~q\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[0][25]~q\ : std_logic;
SIGNAL \FILE_REG|Mux57~0_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[3][25]~q\ : std_logic;
SIGNAL \FILE_REG|Mux57~1_combout\ : std_logic;
SIGNAL \MUX_ALU_B|X[25]~6_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~32_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~33_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~30\ : std_logic;
SIGNAL \MAIN_ALU|Add0~34_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~36_combout\ : std_logic;
SIGNAL \MUX_WB|X[25]~6_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[1][25]~q\ : std_logic;
SIGNAL \FILE_REG|Mux25~0_combout\ : std_logic;
SIGNAL \FILE_REG|Mux25~1_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[1][24]~q\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[0][24]~q\ : std_logic;
SIGNAL \FILE_REG|Mux56~0_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[3][24]~q\ : std_logic;
SIGNAL \FILE_REG|Mux56~1_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~37_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~38_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~35\ : std_logic;
SIGNAL \MAIN_ALU|Add0~39_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~41_combout\ : std_logic;
SIGNAL \MUX_WB|X[24]~7_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[2][24]~q\ : std_logic;
SIGNAL \FILE_REG|Mux24~0_combout\ : std_logic;
SIGNAL \FILE_REG|Mux24~1_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[2][23]~q\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[0][23]~q\ : std_logic;
SIGNAL \FILE_REG|Mux55~0_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[3][23]~q\ : std_logic;
SIGNAL \FILE_REG|Mux55~1_combout\ : std_logic;
SIGNAL \MUX_ALU_B|X[23]~8_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~42_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~43_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~40\ : std_logic;
SIGNAL \MAIN_ALU|Add0~44_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~46_combout\ : std_logic;
SIGNAL \MUX_WB|X[23]~8_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[1][23]~q\ : std_logic;
SIGNAL \FILE_REG|Mux23~0_combout\ : std_logic;
SIGNAL \FILE_REG|Mux23~1_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[1][22]~q\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[0][22]~q\ : std_logic;
SIGNAL \FILE_REG|Mux54~0_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[3][22]~q\ : std_logic;
SIGNAL \FILE_REG|Mux54~1_combout\ : std_logic;
SIGNAL \MUX_ALU_B|X[22]~9_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~47_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~48_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~45\ : std_logic;
SIGNAL \MAIN_ALU|Add0~49_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~51_combout\ : std_logic;
SIGNAL \MUX_WB|X[22]~9_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[2][22]~q\ : std_logic;
SIGNAL \FILE_REG|Mux22~0_combout\ : std_logic;
SIGNAL \FILE_REG|Mux22~1_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[2][21]~q\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[0][21]~q\ : std_logic;
SIGNAL \FILE_REG|Mux53~0_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[3][21]~q\ : std_logic;
SIGNAL \FILE_REG|Mux53~1_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~52_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~53_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~50\ : std_logic;
SIGNAL \MAIN_ALU|Add0~54_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~56_combout\ : std_logic;
SIGNAL \MUX_WB|X[21]~10_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[1][21]~q\ : std_logic;
SIGNAL \FILE_REG|Mux21~0_combout\ : std_logic;
SIGNAL \FILE_REG|Mux21~1_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[1][20]~q\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[0][20]~q\ : std_logic;
SIGNAL \FILE_REG|Mux52~0_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[3][20]~q\ : std_logic;
SIGNAL \FILE_REG|Mux52~1_combout\ : std_logic;
SIGNAL \MUX_ALU_B|X[20]~11_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~57_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~58_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~55\ : std_logic;
SIGNAL \MAIN_ALU|Add0~59_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~61_combout\ : std_logic;
SIGNAL \MUX_WB|X[20]~11_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[2][20]~q\ : std_logic;
SIGNAL \FILE_REG|Mux20~0_combout\ : std_logic;
SIGNAL \FILE_REG|Mux20~1_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[2][19]~q\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[0][19]~q\ : std_logic;
SIGNAL \FILE_REG|Mux51~0_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[3][19]~q\ : std_logic;
SIGNAL \FILE_REG|Mux51~1_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~62_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~63_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~60\ : std_logic;
SIGNAL \MAIN_ALU|Add0~64_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~66_combout\ : std_logic;
SIGNAL \MUX_WB|X[19]~12_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[1][19]~q\ : std_logic;
SIGNAL \FILE_REG|Mux19~0_combout\ : std_logic;
SIGNAL \FILE_REG|Mux19~1_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[1][18]~q\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[0][18]~q\ : std_logic;
SIGNAL \FILE_REG|Mux50~0_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[3][18]~q\ : std_logic;
SIGNAL \FILE_REG|Mux50~1_combout\ : std_logic;
SIGNAL \MUX_ALU_B|X[18]~13_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~67_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~68_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~65\ : std_logic;
SIGNAL \MAIN_ALU|Add0~69_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~71_combout\ : std_logic;
SIGNAL \MUX_WB|X[18]~13_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[2][18]~q\ : std_logic;
SIGNAL \FILE_REG|Mux18~0_combout\ : std_logic;
SIGNAL \FILE_REG|Mux18~1_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[2][17]~q\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[0][17]~q\ : std_logic;
SIGNAL \FILE_REG|Mux49~0_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[3][17]~q\ : std_logic;
SIGNAL \FILE_REG|Mux49~1_combout\ : std_logic;
SIGNAL \MUX_ALU_B|X[17]~14_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~72_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~73_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~70\ : std_logic;
SIGNAL \MAIN_ALU|Add0~74_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~76_combout\ : std_logic;
SIGNAL \MUX_WB|X[17]~14_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[1][17]~q\ : std_logic;
SIGNAL \FILE_REG|Mux17~0_combout\ : std_logic;
SIGNAL \FILE_REG|Mux17~1_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[1][16]~q\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[0][16]~q\ : std_logic;
SIGNAL \FILE_REG|Mux48~0_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[3][16]~q\ : std_logic;
SIGNAL \FILE_REG|Mux48~1_combout\ : std_logic;
SIGNAL \MUX_ALU_B|X[16]~15_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~77_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~78_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~75\ : std_logic;
SIGNAL \MAIN_ALU|Add0~79_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~81_combout\ : std_logic;
SIGNAL \MUX_WB|X[16]~15_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[2][16]~q\ : std_logic;
SIGNAL \FILE_REG|Mux16~0_combout\ : std_logic;
SIGNAL \FILE_REG|Mux16~1_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[2][15]~q\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[0][15]~q\ : std_logic;
SIGNAL \FILE_REG|Mux47~0_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[3][15]~q\ : std_logic;
SIGNAL \FILE_REG|Mux47~1_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~82_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~83_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~80\ : std_logic;
SIGNAL \MAIN_ALU|Add0~84_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~86_combout\ : std_logic;
SIGNAL \MUX_WB|X[15]~16_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[1][15]~q\ : std_logic;
SIGNAL \FILE_REG|Mux15~0_combout\ : std_logic;
SIGNAL \FILE_REG|Mux15~1_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[1][14]~q\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[0][14]~q\ : std_logic;
SIGNAL \FILE_REG|Mux46~0_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[3][14]~q\ : std_logic;
SIGNAL \FILE_REG|Mux46~1_combout\ : std_logic;
SIGNAL \MUX_ALU_B|X[14]~17_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~87_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~88_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~85\ : std_logic;
SIGNAL \MAIN_ALU|Add0~89_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~91_combout\ : std_logic;
SIGNAL \MUX_WB|X[14]~17_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[2][14]~q\ : std_logic;
SIGNAL \FILE_REG|Mux14~0_combout\ : std_logic;
SIGNAL \FILE_REG|Mux14~1_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[2][13]~q\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[0][13]~q\ : std_logic;
SIGNAL \FILE_REG|Mux45~0_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[3][13]~q\ : std_logic;
SIGNAL \FILE_REG|Mux45~1_combout\ : std_logic;
SIGNAL \MUX_ALU_B|X[13]~18_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~92_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~93_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~90\ : std_logic;
SIGNAL \MAIN_ALU|Add0~94_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~96_combout\ : std_logic;
SIGNAL \MUX_WB|X[13]~18_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[1][13]~q\ : std_logic;
SIGNAL \FILE_REG|Mux13~0_combout\ : std_logic;
SIGNAL \FILE_REG|Mux13~1_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[1][12]~q\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[0][12]~q\ : std_logic;
SIGNAL \FILE_REG|Mux44~0_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[3][12]~q\ : std_logic;
SIGNAL \FILE_REG|Mux44~1_combout\ : std_logic;
SIGNAL \MUX_ALU_B|X[12]~19_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~97_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~98_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~95\ : std_logic;
SIGNAL \MAIN_ALU|Add0~99_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~101_combout\ : std_logic;
SIGNAL \MUX_WB|X[12]~19_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[2][12]~q\ : std_logic;
SIGNAL \FILE_REG|Mux12~0_combout\ : std_logic;
SIGNAL \FILE_REG|Mux12~1_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[2][11]~q\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[0][11]~q\ : std_logic;
SIGNAL \FILE_REG|Mux43~0_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[3][11]~q\ : std_logic;
SIGNAL \FILE_REG|Mux43~1_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~102_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~103_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~100\ : std_logic;
SIGNAL \MAIN_ALU|Add0~104_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~106_combout\ : std_logic;
SIGNAL \MUX_WB|X[11]~20_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[1][11]~q\ : std_logic;
SIGNAL \FILE_REG|Mux11~0_combout\ : std_logic;
SIGNAL \FILE_REG|Mux11~1_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[1][10]~q\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[0][10]~q\ : std_logic;
SIGNAL \FILE_REG|Mux42~0_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[3][10]~q\ : std_logic;
SIGNAL \FILE_REG|Mux42~1_combout\ : std_logic;
SIGNAL \MUX_ALU_B|X[10]~21_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~107_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~108_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~105\ : std_logic;
SIGNAL \MAIN_ALU|Add0~109_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~111_combout\ : std_logic;
SIGNAL \MUX_WB|X[10]~21_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[2][10]~q\ : std_logic;
SIGNAL \FILE_REG|Mux10~0_combout\ : std_logic;
SIGNAL \FILE_REG|Mux10~1_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[2][9]~q\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[0][9]~q\ : std_logic;
SIGNAL \FILE_REG|Mux41~0_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[3][9]~q\ : std_logic;
SIGNAL \FILE_REG|Mux41~1_combout\ : std_logic;
SIGNAL \MUX_ALU_B|X[9]~22_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~112_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~113_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~110\ : std_logic;
SIGNAL \MAIN_ALU|Add0~114_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~116_combout\ : std_logic;
SIGNAL \MUX_WB|X[9]~22_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[1][9]~q\ : std_logic;
SIGNAL \FILE_REG|Mux9~0_combout\ : std_logic;
SIGNAL \FILE_REG|Mux9~1_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[1][8]~q\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[0][8]~q\ : std_logic;
SIGNAL \FILE_REG|Mux40~0_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[3][8]~q\ : std_logic;
SIGNAL \FILE_REG|Mux40~1_combout\ : std_logic;
SIGNAL \MUX_ALU_B|X[8]~23_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~117_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~118_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~115\ : std_logic;
SIGNAL \MAIN_ALU|Add0~119_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~121_combout\ : std_logic;
SIGNAL \MUX_WB|X[8]~23_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[2][8]~q\ : std_logic;
SIGNAL \FILE_REG|Mux8~0_combout\ : std_logic;
SIGNAL \FILE_REG|Mux8~1_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[2][7]~q\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[0][7]~q\ : std_logic;
SIGNAL \FILE_REG|Mux39~0_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[3][7]~q\ : std_logic;
SIGNAL \FILE_REG|Mux39~1_combout\ : std_logic;
SIGNAL \MUX_ALU_B|X[7]~24_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~122_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~123_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~120\ : std_logic;
SIGNAL \MAIN_ALU|Add0~124_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~126_combout\ : std_logic;
SIGNAL \MUX_WB|X[7]~24_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[1][7]~q\ : std_logic;
SIGNAL \FILE_REG|Mux7~0_combout\ : std_logic;
SIGNAL \FILE_REG|Mux7~1_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[1][6]~q\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[0][6]~q\ : std_logic;
SIGNAL \FILE_REG|Mux38~0_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[3][6]~q\ : std_logic;
SIGNAL \FILE_REG|Mux38~1_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~127_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~128_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~125\ : std_logic;
SIGNAL \MAIN_ALU|Add0~129_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~131_combout\ : std_logic;
SIGNAL \MUX_WB|X[6]~25_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[2][6]~q\ : std_logic;
SIGNAL \FILE_REG|Mux6~0_combout\ : std_logic;
SIGNAL \FILE_REG|Mux6~1_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[2][5]~q\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[0][5]~q\ : std_logic;
SIGNAL \FILE_REG|Mux37~0_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[3][5]~q\ : std_logic;
SIGNAL \FILE_REG|Mux37~1_combout\ : std_logic;
SIGNAL \MUX_ALU_B|X[5]~26_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~132_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~133_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~130\ : std_logic;
SIGNAL \MAIN_ALU|Add0~134_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~136_combout\ : std_logic;
SIGNAL \MUX_WB|X[5]~26_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[1][5]~q\ : std_logic;
SIGNAL \FILE_REG|Mux5~0_combout\ : std_logic;
SIGNAL \FILE_REG|Mux5~1_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[1][4]~q\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[0][4]~q\ : std_logic;
SIGNAL \FILE_REG|Mux36~0_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[3][4]~q\ : std_logic;
SIGNAL \FILE_REG|Mux36~1_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~137_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~138_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~135\ : std_logic;
SIGNAL \MAIN_ALU|Add0~139_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~141_combout\ : std_logic;
SIGNAL \MUX_WB|X[4]~27_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[2][4]~q\ : std_logic;
SIGNAL \FILE_REG|Mux4~0_combout\ : std_logic;
SIGNAL \FILE_REG|Mux4~1_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[2][3]~q\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[0][3]~q\ : std_logic;
SIGNAL \FILE_REG|Mux35~0_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[3][3]~q\ : std_logic;
SIGNAL \FILE_REG|Mux35~1_combout\ : std_logic;
SIGNAL \MUX_ALU_B|X[3]~28_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~142_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~143_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~140\ : std_logic;
SIGNAL \MAIN_ALU|Add0~144_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~146_combout\ : std_logic;
SIGNAL \MUX_WB|X[3]~28_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[1][3]~q\ : std_logic;
SIGNAL \FILE_REG|Mux3~0_combout\ : std_logic;
SIGNAL \FILE_REG|Mux3~1_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[1][2]~q\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[0][2]~q\ : std_logic;
SIGNAL \FILE_REG|Mux34~0_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[3][2]~q\ : std_logic;
SIGNAL \FILE_REG|Mux34~1_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~147_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~148_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~145\ : std_logic;
SIGNAL \MAIN_ALU|Add0~149_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~151_combout\ : std_logic;
SIGNAL \MUX_WB|X[2]~29_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[2][2]~q\ : std_logic;
SIGNAL \FILE_REG|Mux2~0_combout\ : std_logic;
SIGNAL \FILE_REG|Mux2~1_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[2][1]~q\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[0][1]~q\ : std_logic;
SIGNAL \FILE_REG|Mux33~0_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[3][1]~q\ : std_logic;
SIGNAL \FILE_REG|Mux33~1_combout\ : std_logic;
SIGNAL \MUX_ALU_B|X[1]~30_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~152_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~153_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~150\ : std_logic;
SIGNAL \MAIN_ALU|Add0~154_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~156_combout\ : std_logic;
SIGNAL \MUX_WB|X[1]~30_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[1][1]~q\ : std_logic;
SIGNAL \FILE_REG|Mux1~0_combout\ : std_logic;
SIGNAL \FILE_REG|Mux1~1_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[1][0]~q\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[0][0]~q\ : std_logic;
SIGNAL \FILE_REG|Mux32~0_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[3][0]~q\ : std_logic;
SIGNAL \FILE_REG|Mux32~1_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~157_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~158_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~155\ : std_logic;
SIGNAL \MAIN_ALU|Add0~159_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~161_combout\ : std_logic;
SIGNAL \MUX_WB|X[0]~31_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS[2][0]~q\ : std_logic;
SIGNAL \FILE_REG|Mux0~0_combout\ : std_logic;
SIGNAL \FILE_REG|Mux0~1_combout\ : std_logic;
SIGNAL \MUX_ALU_B|X[30]~1_combout\ : std_logic;
SIGNAL \MUX_ALU_B|X[27]~4_combout\ : std_logic;
SIGNAL \MUX_ALU_B|X[26]~5_combout\ : std_logic;
SIGNAL \MUX_ALU_B|X[24]~7_combout\ : std_logic;
SIGNAL \MUX_ALU_B|X[21]~10_combout\ : std_logic;
SIGNAL \MUX_ALU_B|X[19]~12_combout\ : std_logic;
SIGNAL \MUX_ALU_B|X[15]~16_combout\ : std_logic;
SIGNAL \MUX_ALU_B|X[11]~20_combout\ : std_logic;
SIGNAL \MUX_ALU_B|X[6]~25_combout\ : std_logic;
SIGNAL \MUX_ALU_B|X[4]~27_combout\ : std_logic;
SIGNAL \MUX_ALU_B|X[2]~29_combout\ : std_logic;
SIGNAL \MUX_ALU_B|X[0]~31_combout\ : std_logic;
SIGNAL \MEMWB|MEMWB_OUT_WB\ : std_logic_vector(0 TO 1);
SIGNAL \IFID|OUT_INSTR_MEM\ : std_logic_vector(0 TO 31);
SIGNAL \IFID|OUT_PC_MAIS_4\ : std_logic_vector(0 TO 31);
SIGNAL \IDEX|IDEX_OUT_EX\ : std_logic_vector(0 TO 4);
SIGNAL \IDEX|IDEX_OUT_READ1\ : std_logic_vector(0 TO 31);
SIGNAL \MEMWB|MEMWB_OUT_REGDST\ : std_logic_vector(0 TO 4);
SIGNAL \IDEX|IDEX_OUT_RT\ : std_logic_vector(0 TO 4);
SIGNAL \IDEX|IDEX_OUT_READ2\ : std_logic_vector(0 TO 31);
SIGNAL \MEMWB|MEMWB_OUT_RESULT_ULA\ : std_logic_vector(0 TO 31);
SIGNAL \EXMEM|EXMEM_OUT_WB\ : std_logic_vector(0 TO 1);
SIGNAL \EXMEM|EXMEM_OUT_REGDST\ : std_logic_vector(0 TO 4);
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ULA\ : std_logic_vector(0 TO 31);
SIGNAL \IDEX|IDEX_OUT_WB\ : std_logic_vector(0 TO 1);
SIGNAL \ALU_CONTROL|ULA_CODE\ : std_logic_vector(0 TO 1);

BEGIN

ww_CLOCK <= CLOCK;
INSTRUCTION_OUT_IFID <= ww_INSTRUCTION_OUT_IFID;
DEB_REGS_PC <= ww_DEB_REGS_PC;
DEB_CONTROL <= ww_DEB_CONTROL;
DEB_ULA_IN_1 <= ww_DEB_ULA_IN_1;
DEB_ULA_IN_2 <= ww_DEB_ULA_IN_2;
DEB_OUT_ULA <= ww_DEB_OUT_ULA;
DEB_RegDst <= ww_DEB_RegDst;
DEB_REG_ULA_IN_1 <= ww_DEB_REG_ULA_IN_1;
DEB_SINAL_MUX_MEMWB <= ww_DEB_SINAL_MUX_MEMWB;
DEB_SINAL_REG_WRITE <= ww_DEB_SINAL_REG_WRITE;
DEB_WRITE_REG <= ww_DEB_WRITE_REG;
DEB_WRITE_DATA <= ww_DEB_WRITE_DATA;
DEB_FILE_REG_1 <= ww_DEB_FILE_REG_1;
DEB_FILE_REG_2 <= ww_DEB_FILE_REG_2;
DEB_FILE_REG_AUX <= ww_DEB_FILE_REG_AUX;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\INSTRUCTION_OUT_IFID[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IFID|OUT_INSTR_MEM\(31),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT_IFID[31]~output_o\);

\INSTRUCTION_OUT_IFID[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT_IFID[30]~output_o\);

\INSTRUCTION_OUT_IFID[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT_IFID[29]~output_o\);

\INSTRUCTION_OUT_IFID[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IFID|OUT_INSTR_MEM\(28),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT_IFID[28]~output_o\);

\INSTRUCTION_OUT_IFID[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT_IFID[27]~output_o\);

\INSTRUCTION_OUT_IFID[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT_IFID[26]~output_o\);

\INSTRUCTION_OUT_IFID[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT_IFID[25]~output_o\);

\INSTRUCTION_OUT_IFID[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT_IFID[24]~output_o\);

\INSTRUCTION_OUT_IFID[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT_IFID[23]~output_o\);

\INSTRUCTION_OUT_IFID[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT_IFID[22]~output_o\);

\INSTRUCTION_OUT_IFID[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT_IFID[21]~output_o\);

\INSTRUCTION_OUT_IFID[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT_IFID[20]~output_o\);

\INSTRUCTION_OUT_IFID[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT_IFID[19]~output_o\);

\INSTRUCTION_OUT_IFID[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT_IFID[18]~output_o\);

\INSTRUCTION_OUT_IFID[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT_IFID[17]~output_o\);

\INSTRUCTION_OUT_IFID[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT_IFID[16]~output_o\);

\INSTRUCTION_OUT_IFID[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IFID|OUT_INSTR_MEM\(31),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT_IFID[15]~output_o\);

\INSTRUCTION_OUT_IFID[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IFID|OUT_INSTR_MEM\(28),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT_IFID[14]~output_o\);

\INSTRUCTION_OUT_IFID[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT_IFID[13]~output_o\);

\INSTRUCTION_OUT_IFID[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT_IFID[12]~output_o\);

\INSTRUCTION_OUT_IFID[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT_IFID[11]~output_o\);

\INSTRUCTION_OUT_IFID[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IFID|OUT_INSTR_MEM\(28),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT_IFID[10]~output_o\);

\INSTRUCTION_OUT_IFID[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IFID|OUT_INSTR_MEM\(31),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT_IFID[9]~output_o\);

\INSTRUCTION_OUT_IFID[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT_IFID[8]~output_o\);

\INSTRUCTION_OUT_IFID[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT_IFID[7]~output_o\);

\INSTRUCTION_OUT_IFID[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT_IFID[6]~output_o\);

\INSTRUCTION_OUT_IFID[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IFID|OUT_INSTR_MEM\(31),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT_IFID[5]~output_o\);

\INSTRUCTION_OUT_IFID[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IFID|OUT_INSTR_MEM\(4),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT_IFID[4]~output_o\);

\INSTRUCTION_OUT_IFID[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT_IFID[3]~output_o\);

\INSTRUCTION_OUT_IFID[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT_IFID[2]~output_o\);

\INSTRUCTION_OUT_IFID[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT_IFID[1]~output_o\);

\INSTRUCTION_OUT_IFID[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT_IFID[0]~output_o\);

\DEB_REGS_PC[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_REGS_PC[31]~output_o\);

\DEB_REGS_PC[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_REGS_PC[30]~output_o\);

\DEB_REGS_PC[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[29]~0_combout\,
	devoe => ww_devoe,
	o => \DEB_REGS_PC[29]~output_o\);

\DEB_REGS_PC[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[28]~2_combout\,
	devoe => ww_devoe,
	o => \DEB_REGS_PC[28]~output_o\);

\DEB_REGS_PC[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[27]~4_combout\,
	devoe => ww_devoe,
	o => \DEB_REGS_PC[27]~output_o\);

\DEB_REGS_PC[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[26]~6_combout\,
	devoe => ww_devoe,
	o => \DEB_REGS_PC[26]~output_o\);

\DEB_REGS_PC[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[25]~8_combout\,
	devoe => ww_devoe,
	o => \DEB_REGS_PC[25]~output_o\);

\DEB_REGS_PC[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[24]~10_combout\,
	devoe => ww_devoe,
	o => \DEB_REGS_PC[24]~output_o\);

\DEB_REGS_PC[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[23]~12_combout\,
	devoe => ww_devoe,
	o => \DEB_REGS_PC[23]~output_o\);

\DEB_REGS_PC[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[22]~14_combout\,
	devoe => ww_devoe,
	o => \DEB_REGS_PC[22]~output_o\);

\DEB_REGS_PC[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[21]~16_combout\,
	devoe => ww_devoe,
	o => \DEB_REGS_PC[21]~output_o\);

\DEB_REGS_PC[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[20]~18_combout\,
	devoe => ww_devoe,
	o => \DEB_REGS_PC[20]~output_o\);

\DEB_REGS_PC[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[19]~20_combout\,
	devoe => ww_devoe,
	o => \DEB_REGS_PC[19]~output_o\);

\DEB_REGS_PC[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[18]~22_combout\,
	devoe => ww_devoe,
	o => \DEB_REGS_PC[18]~output_o\);

\DEB_REGS_PC[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[17]~24_combout\,
	devoe => ww_devoe,
	o => \DEB_REGS_PC[17]~output_o\);

\DEB_REGS_PC[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[16]~26_combout\,
	devoe => ww_devoe,
	o => \DEB_REGS_PC[16]~output_o\);

\DEB_REGS_PC[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[15]~28_combout\,
	devoe => ww_devoe,
	o => \DEB_REGS_PC[15]~output_o\);

\DEB_REGS_PC[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[14]~30_combout\,
	devoe => ww_devoe,
	o => \DEB_REGS_PC[14]~output_o\);

\DEB_REGS_PC[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[13]~32_combout\,
	devoe => ww_devoe,
	o => \DEB_REGS_PC[13]~output_o\);

\DEB_REGS_PC[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[12]~34_combout\,
	devoe => ww_devoe,
	o => \DEB_REGS_PC[12]~output_o\);

\DEB_REGS_PC[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[11]~36_combout\,
	devoe => ww_devoe,
	o => \DEB_REGS_PC[11]~output_o\);

\DEB_REGS_PC[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[10]~38_combout\,
	devoe => ww_devoe,
	o => \DEB_REGS_PC[10]~output_o\);

\DEB_REGS_PC[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[9]~40_combout\,
	devoe => ww_devoe,
	o => \DEB_REGS_PC[9]~output_o\);

\DEB_REGS_PC[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[8]~42_combout\,
	devoe => ww_devoe,
	o => \DEB_REGS_PC[8]~output_o\);

\DEB_REGS_PC[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[7]~44_combout\,
	devoe => ww_devoe,
	o => \DEB_REGS_PC[7]~output_o\);

\DEB_REGS_PC[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[6]~46_combout\,
	devoe => ww_devoe,
	o => \DEB_REGS_PC[6]~output_o\);

\DEB_REGS_PC[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[5]~48_combout\,
	devoe => ww_devoe,
	o => \DEB_REGS_PC[5]~output_o\);

\DEB_REGS_PC[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[4]~50_combout\,
	devoe => ww_devoe,
	o => \DEB_REGS_PC[4]~output_o\);

\DEB_REGS_PC[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[3]~52_combout\,
	devoe => ww_devoe,
	o => \DEB_REGS_PC[3]~output_o\);

\DEB_REGS_PC[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[2]~54_combout\,
	devoe => ww_devoe,
	o => \DEB_REGS_PC[2]~output_o\);

\DEB_REGS_PC[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[1]~56_combout\,
	devoe => ww_devoe,
	o => \DEB_REGS_PC[1]~output_o\);

\DEB_REGS_PC[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[0]~58_combout\,
	devoe => ww_devoe,
	o => \DEB_REGS_PC[0]~output_o\);

\DEB_CONTROL~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IDEX|IDEX_OUT_EX\(0),
	devoe => ww_devoe,
	o => \DEB_CONTROL~output_o\);

\DEB_ULA_IN_1[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IDEX|IDEX_OUT_READ1\(31),
	devoe => ww_devoe,
	o => \DEB_ULA_IN_1[31]~output_o\);

\DEB_ULA_IN_1[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IDEX|IDEX_OUT_READ1\(30),
	devoe => ww_devoe,
	o => \DEB_ULA_IN_1[30]~output_o\);

\DEB_ULA_IN_1[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IDEX|IDEX_OUT_READ1\(29),
	devoe => ww_devoe,
	o => \DEB_ULA_IN_1[29]~output_o\);

\DEB_ULA_IN_1[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IDEX|IDEX_OUT_READ1\(28),
	devoe => ww_devoe,
	o => \DEB_ULA_IN_1[28]~output_o\);

\DEB_ULA_IN_1[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IDEX|IDEX_OUT_READ1\(27),
	devoe => ww_devoe,
	o => \DEB_ULA_IN_1[27]~output_o\);

\DEB_ULA_IN_1[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IDEX|IDEX_OUT_READ1\(26),
	devoe => ww_devoe,
	o => \DEB_ULA_IN_1[26]~output_o\);

\DEB_ULA_IN_1[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IDEX|IDEX_OUT_READ1\(25),
	devoe => ww_devoe,
	o => \DEB_ULA_IN_1[25]~output_o\);

\DEB_ULA_IN_1[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IDEX|IDEX_OUT_READ1\(24),
	devoe => ww_devoe,
	o => \DEB_ULA_IN_1[24]~output_o\);

\DEB_ULA_IN_1[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IDEX|IDEX_OUT_READ1\(23),
	devoe => ww_devoe,
	o => \DEB_ULA_IN_1[23]~output_o\);

\DEB_ULA_IN_1[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IDEX|IDEX_OUT_READ1\(22),
	devoe => ww_devoe,
	o => \DEB_ULA_IN_1[22]~output_o\);

\DEB_ULA_IN_1[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IDEX|IDEX_OUT_READ1\(21),
	devoe => ww_devoe,
	o => \DEB_ULA_IN_1[21]~output_o\);

\DEB_ULA_IN_1[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IDEX|IDEX_OUT_READ1\(20),
	devoe => ww_devoe,
	o => \DEB_ULA_IN_1[20]~output_o\);

\DEB_ULA_IN_1[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IDEX|IDEX_OUT_READ1\(19),
	devoe => ww_devoe,
	o => \DEB_ULA_IN_1[19]~output_o\);

\DEB_ULA_IN_1[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IDEX|IDEX_OUT_READ1\(18),
	devoe => ww_devoe,
	o => \DEB_ULA_IN_1[18]~output_o\);

\DEB_ULA_IN_1[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IDEX|IDEX_OUT_READ1\(17),
	devoe => ww_devoe,
	o => \DEB_ULA_IN_1[17]~output_o\);

\DEB_ULA_IN_1[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IDEX|IDEX_OUT_READ1\(16),
	devoe => ww_devoe,
	o => \DEB_ULA_IN_1[16]~output_o\);

\DEB_ULA_IN_1[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IDEX|IDEX_OUT_READ1\(15),
	devoe => ww_devoe,
	o => \DEB_ULA_IN_1[15]~output_o\);

\DEB_ULA_IN_1[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IDEX|IDEX_OUT_READ1\(14),
	devoe => ww_devoe,
	o => \DEB_ULA_IN_1[14]~output_o\);

\DEB_ULA_IN_1[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IDEX|IDEX_OUT_READ1\(13),
	devoe => ww_devoe,
	o => \DEB_ULA_IN_1[13]~output_o\);

\DEB_ULA_IN_1[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IDEX|IDEX_OUT_READ1\(12),
	devoe => ww_devoe,
	o => \DEB_ULA_IN_1[12]~output_o\);

\DEB_ULA_IN_1[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IDEX|IDEX_OUT_READ1\(11),
	devoe => ww_devoe,
	o => \DEB_ULA_IN_1[11]~output_o\);

\DEB_ULA_IN_1[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IDEX|IDEX_OUT_READ1\(10),
	devoe => ww_devoe,
	o => \DEB_ULA_IN_1[10]~output_o\);

\DEB_ULA_IN_1[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IDEX|IDEX_OUT_READ1\(9),
	devoe => ww_devoe,
	o => \DEB_ULA_IN_1[9]~output_o\);

\DEB_ULA_IN_1[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IDEX|IDEX_OUT_READ1\(8),
	devoe => ww_devoe,
	o => \DEB_ULA_IN_1[8]~output_o\);

\DEB_ULA_IN_1[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IDEX|IDEX_OUT_READ1\(7),
	devoe => ww_devoe,
	o => \DEB_ULA_IN_1[7]~output_o\);

\DEB_ULA_IN_1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IDEX|IDEX_OUT_READ1\(6),
	devoe => ww_devoe,
	o => \DEB_ULA_IN_1[6]~output_o\);

\DEB_ULA_IN_1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IDEX|IDEX_OUT_READ1\(5),
	devoe => ww_devoe,
	o => \DEB_ULA_IN_1[5]~output_o\);

\DEB_ULA_IN_1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IDEX|IDEX_OUT_READ1\(4),
	devoe => ww_devoe,
	o => \DEB_ULA_IN_1[4]~output_o\);

\DEB_ULA_IN_1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IDEX|IDEX_OUT_READ1\(3),
	devoe => ww_devoe,
	o => \DEB_ULA_IN_1[3]~output_o\);

\DEB_ULA_IN_1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IDEX|IDEX_OUT_READ1\(2),
	devoe => ww_devoe,
	o => \DEB_ULA_IN_1[2]~output_o\);

\DEB_ULA_IN_1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IDEX|IDEX_OUT_READ1\(1),
	devoe => ww_devoe,
	o => \DEB_ULA_IN_1[1]~output_o\);

\DEB_ULA_IN_1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IDEX|IDEX_OUT_READ1\(0),
	devoe => ww_devoe,
	o => \DEB_ULA_IN_1[0]~output_o\);

\DEB_ULA_IN_2[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ALU_B|X[31]~0_combout\,
	devoe => ww_devoe,
	o => \DEB_ULA_IN_2[31]~output_o\);

\DEB_ULA_IN_2[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ALU_B|X[30]~1_combout\,
	devoe => ww_devoe,
	o => \DEB_ULA_IN_2[30]~output_o\);

\DEB_ULA_IN_2[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ALU_B|X[29]~2_combout\,
	devoe => ww_devoe,
	o => \DEB_ULA_IN_2[29]~output_o\);

\DEB_ULA_IN_2[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ALU_B|X[28]~3_combout\,
	devoe => ww_devoe,
	o => \DEB_ULA_IN_2[28]~output_o\);

\DEB_ULA_IN_2[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ALU_B|X[27]~4_combout\,
	devoe => ww_devoe,
	o => \DEB_ULA_IN_2[27]~output_o\);

\DEB_ULA_IN_2[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ALU_B|X[26]~5_combout\,
	devoe => ww_devoe,
	o => \DEB_ULA_IN_2[26]~output_o\);

\DEB_ULA_IN_2[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ALU_B|X[25]~6_combout\,
	devoe => ww_devoe,
	o => \DEB_ULA_IN_2[25]~output_o\);

\DEB_ULA_IN_2[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ALU_B|X[24]~7_combout\,
	devoe => ww_devoe,
	o => \DEB_ULA_IN_2[24]~output_o\);

\DEB_ULA_IN_2[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ALU_B|X[23]~8_combout\,
	devoe => ww_devoe,
	o => \DEB_ULA_IN_2[23]~output_o\);

\DEB_ULA_IN_2[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ALU_B|X[22]~9_combout\,
	devoe => ww_devoe,
	o => \DEB_ULA_IN_2[22]~output_o\);

\DEB_ULA_IN_2[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ALU_B|X[21]~10_combout\,
	devoe => ww_devoe,
	o => \DEB_ULA_IN_2[21]~output_o\);

\DEB_ULA_IN_2[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ALU_B|X[20]~11_combout\,
	devoe => ww_devoe,
	o => \DEB_ULA_IN_2[20]~output_o\);

\DEB_ULA_IN_2[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ALU_B|X[19]~12_combout\,
	devoe => ww_devoe,
	o => \DEB_ULA_IN_2[19]~output_o\);

\DEB_ULA_IN_2[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ALU_B|X[18]~13_combout\,
	devoe => ww_devoe,
	o => \DEB_ULA_IN_2[18]~output_o\);

\DEB_ULA_IN_2[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ALU_B|X[17]~14_combout\,
	devoe => ww_devoe,
	o => \DEB_ULA_IN_2[17]~output_o\);

\DEB_ULA_IN_2[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ALU_B|X[16]~15_combout\,
	devoe => ww_devoe,
	o => \DEB_ULA_IN_2[16]~output_o\);

\DEB_ULA_IN_2[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ALU_B|X[15]~16_combout\,
	devoe => ww_devoe,
	o => \DEB_ULA_IN_2[15]~output_o\);

\DEB_ULA_IN_2[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ALU_B|X[14]~17_combout\,
	devoe => ww_devoe,
	o => \DEB_ULA_IN_2[14]~output_o\);

\DEB_ULA_IN_2[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ALU_B|X[13]~18_combout\,
	devoe => ww_devoe,
	o => \DEB_ULA_IN_2[13]~output_o\);

\DEB_ULA_IN_2[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ALU_B|X[12]~19_combout\,
	devoe => ww_devoe,
	o => \DEB_ULA_IN_2[12]~output_o\);

\DEB_ULA_IN_2[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ALU_B|X[11]~20_combout\,
	devoe => ww_devoe,
	o => \DEB_ULA_IN_2[11]~output_o\);

\DEB_ULA_IN_2[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ALU_B|X[10]~21_combout\,
	devoe => ww_devoe,
	o => \DEB_ULA_IN_2[10]~output_o\);

\DEB_ULA_IN_2[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ALU_B|X[9]~22_combout\,
	devoe => ww_devoe,
	o => \DEB_ULA_IN_2[9]~output_o\);

\DEB_ULA_IN_2[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ALU_B|X[8]~23_combout\,
	devoe => ww_devoe,
	o => \DEB_ULA_IN_2[8]~output_o\);

\DEB_ULA_IN_2[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ALU_B|X[7]~24_combout\,
	devoe => ww_devoe,
	o => \DEB_ULA_IN_2[7]~output_o\);

\DEB_ULA_IN_2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ALU_B|X[6]~25_combout\,
	devoe => ww_devoe,
	o => \DEB_ULA_IN_2[6]~output_o\);

\DEB_ULA_IN_2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ALU_B|X[5]~26_combout\,
	devoe => ww_devoe,
	o => \DEB_ULA_IN_2[5]~output_o\);

\DEB_ULA_IN_2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ALU_B|X[4]~27_combout\,
	devoe => ww_devoe,
	o => \DEB_ULA_IN_2[4]~output_o\);

\DEB_ULA_IN_2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ALU_B|X[3]~28_combout\,
	devoe => ww_devoe,
	o => \DEB_ULA_IN_2[3]~output_o\);

\DEB_ULA_IN_2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ALU_B|X[2]~29_combout\,
	devoe => ww_devoe,
	o => \DEB_ULA_IN_2[2]~output_o\);

\DEB_ULA_IN_2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ALU_B|X[1]~30_combout\,
	devoe => ww_devoe,
	o => \DEB_ULA_IN_2[1]~output_o\);

\DEB_ULA_IN_2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_ALU_B|X[0]~31_combout\,
	devoe => ww_devoe,
	o => \DEB_ULA_IN_2[0]~output_o\);

\DEB_OUT_ULA[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MAIN_ALU|Add0~6_combout\,
	devoe => ww_devoe,
	o => \DEB_OUT_ULA[31]~output_o\);

\DEB_OUT_ULA[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MAIN_ALU|Add0~11_combout\,
	devoe => ww_devoe,
	o => \DEB_OUT_ULA[30]~output_o\);

\DEB_OUT_ULA[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MAIN_ALU|Add0~16_combout\,
	devoe => ww_devoe,
	o => \DEB_OUT_ULA[29]~output_o\);

\DEB_OUT_ULA[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MAIN_ALU|Add0~21_combout\,
	devoe => ww_devoe,
	o => \DEB_OUT_ULA[28]~output_o\);

\DEB_OUT_ULA[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MAIN_ALU|Add0~26_combout\,
	devoe => ww_devoe,
	o => \DEB_OUT_ULA[27]~output_o\);

\DEB_OUT_ULA[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MAIN_ALU|Add0~31_combout\,
	devoe => ww_devoe,
	o => \DEB_OUT_ULA[26]~output_o\);

\DEB_OUT_ULA[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MAIN_ALU|Add0~36_combout\,
	devoe => ww_devoe,
	o => \DEB_OUT_ULA[25]~output_o\);

\DEB_OUT_ULA[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MAIN_ALU|Add0~41_combout\,
	devoe => ww_devoe,
	o => \DEB_OUT_ULA[24]~output_o\);

\DEB_OUT_ULA[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MAIN_ALU|Add0~46_combout\,
	devoe => ww_devoe,
	o => \DEB_OUT_ULA[23]~output_o\);

\DEB_OUT_ULA[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MAIN_ALU|Add0~51_combout\,
	devoe => ww_devoe,
	o => \DEB_OUT_ULA[22]~output_o\);

\DEB_OUT_ULA[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MAIN_ALU|Add0~56_combout\,
	devoe => ww_devoe,
	o => \DEB_OUT_ULA[21]~output_o\);

\DEB_OUT_ULA[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MAIN_ALU|Add0~61_combout\,
	devoe => ww_devoe,
	o => \DEB_OUT_ULA[20]~output_o\);

\DEB_OUT_ULA[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MAIN_ALU|Add0~66_combout\,
	devoe => ww_devoe,
	o => \DEB_OUT_ULA[19]~output_o\);

\DEB_OUT_ULA[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MAIN_ALU|Add0~71_combout\,
	devoe => ww_devoe,
	o => \DEB_OUT_ULA[18]~output_o\);

\DEB_OUT_ULA[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MAIN_ALU|Add0~76_combout\,
	devoe => ww_devoe,
	o => \DEB_OUT_ULA[17]~output_o\);

\DEB_OUT_ULA[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MAIN_ALU|Add0~81_combout\,
	devoe => ww_devoe,
	o => \DEB_OUT_ULA[16]~output_o\);

\DEB_OUT_ULA[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MAIN_ALU|Add0~86_combout\,
	devoe => ww_devoe,
	o => \DEB_OUT_ULA[15]~output_o\);

\DEB_OUT_ULA[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MAIN_ALU|Add0~91_combout\,
	devoe => ww_devoe,
	o => \DEB_OUT_ULA[14]~output_o\);

\DEB_OUT_ULA[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MAIN_ALU|Add0~96_combout\,
	devoe => ww_devoe,
	o => \DEB_OUT_ULA[13]~output_o\);

\DEB_OUT_ULA[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MAIN_ALU|Add0~101_combout\,
	devoe => ww_devoe,
	o => \DEB_OUT_ULA[12]~output_o\);

\DEB_OUT_ULA[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MAIN_ALU|Add0~106_combout\,
	devoe => ww_devoe,
	o => \DEB_OUT_ULA[11]~output_o\);

\DEB_OUT_ULA[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MAIN_ALU|Add0~111_combout\,
	devoe => ww_devoe,
	o => \DEB_OUT_ULA[10]~output_o\);

\DEB_OUT_ULA[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MAIN_ALU|Add0~116_combout\,
	devoe => ww_devoe,
	o => \DEB_OUT_ULA[9]~output_o\);

\DEB_OUT_ULA[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MAIN_ALU|Add0~121_combout\,
	devoe => ww_devoe,
	o => \DEB_OUT_ULA[8]~output_o\);

\DEB_OUT_ULA[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MAIN_ALU|Add0~126_combout\,
	devoe => ww_devoe,
	o => \DEB_OUT_ULA[7]~output_o\);

\DEB_OUT_ULA[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MAIN_ALU|Add0~131_combout\,
	devoe => ww_devoe,
	o => \DEB_OUT_ULA[6]~output_o\);

\DEB_OUT_ULA[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MAIN_ALU|Add0~136_combout\,
	devoe => ww_devoe,
	o => \DEB_OUT_ULA[5]~output_o\);

\DEB_OUT_ULA[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MAIN_ALU|Add0~141_combout\,
	devoe => ww_devoe,
	o => \DEB_OUT_ULA[4]~output_o\);

\DEB_OUT_ULA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MAIN_ALU|Add0~146_combout\,
	devoe => ww_devoe,
	o => \DEB_OUT_ULA[3]~output_o\);

\DEB_OUT_ULA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MAIN_ALU|Add0~151_combout\,
	devoe => ww_devoe,
	o => \DEB_OUT_ULA[2]~output_o\);

\DEB_OUT_ULA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MAIN_ALU|Add0~156_combout\,
	devoe => ww_devoe,
	o => \DEB_OUT_ULA[1]~output_o\);

\DEB_OUT_ULA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MAIN_ALU|Add0~161_combout\,
	devoe => ww_devoe,
	o => \DEB_OUT_ULA[0]~output_o\);

\DEB_RegDst[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_REGDST|X[4]~0_combout\,
	devoe => ww_devoe,
	o => \DEB_RegDst[4]~output_o\);

\DEB_RegDst[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_REGDST|X[3]~1_combout\,
	devoe => ww_devoe,
	o => \DEB_RegDst[3]~output_o\);

\DEB_RegDst[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_RegDst[2]~output_o\);

\DEB_RegDst[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_RegDst[1]~output_o\);

\DEB_RegDst[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_RegDst[0]~output_o\);

\DEB_REG_ULA_IN_1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IFID|OUT_INSTR_MEM\(28),
	devoe => ww_devoe,
	o => \DEB_REG_ULA_IN_1[4]~output_o\);

\DEB_REG_ULA_IN_1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IFID|OUT_INSTR_MEM\(31),
	devoe => ww_devoe,
	o => \DEB_REG_ULA_IN_1[3]~output_o\);

\DEB_REG_ULA_IN_1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_REG_ULA_IN_1[2]~output_o\);

\DEB_REG_ULA_IN_1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_REG_ULA_IN_1[1]~output_o\);

\DEB_REG_ULA_IN_1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_REG_ULA_IN_1[0]~output_o\);

\DEB_SINAL_MUX_MEMWB~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEMWB|MEMWB_OUT_WB\(1),
	devoe => ww_devoe,
	o => \DEB_SINAL_MUX_MEMWB~output_o\);

\DEB_SINAL_REG_WRITE~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEMWB|MEMWB_OUT_WB\(0),
	devoe => ww_devoe,
	o => \DEB_SINAL_REG_WRITE~output_o\);

\DEB_WRITE_REG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEMWB|MEMWB_OUT_REGDST\(4),
	devoe => ww_devoe,
	o => \DEB_WRITE_REG[4]~output_o\);

\DEB_WRITE_REG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEMWB|MEMWB_OUT_REGDST\(3),
	devoe => ww_devoe,
	o => \DEB_WRITE_REG[3]~output_o\);

\DEB_WRITE_REG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_WRITE_REG[2]~output_o\);

\DEB_WRITE_REG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_WRITE_REG[1]~output_o\);

\DEB_WRITE_REG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_WRITE_REG[0]~output_o\);

\DEB_WRITE_DATA[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_WB|X[31]~0_combout\,
	devoe => ww_devoe,
	o => \DEB_WRITE_DATA[31]~output_o\);

\DEB_WRITE_DATA[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_WB|X[30]~1_combout\,
	devoe => ww_devoe,
	o => \DEB_WRITE_DATA[30]~output_o\);

\DEB_WRITE_DATA[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_WB|X[29]~2_combout\,
	devoe => ww_devoe,
	o => \DEB_WRITE_DATA[29]~output_o\);

\DEB_WRITE_DATA[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_WB|X[28]~3_combout\,
	devoe => ww_devoe,
	o => \DEB_WRITE_DATA[28]~output_o\);

\DEB_WRITE_DATA[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_WB|X[27]~4_combout\,
	devoe => ww_devoe,
	o => \DEB_WRITE_DATA[27]~output_o\);

\DEB_WRITE_DATA[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_WB|X[26]~5_combout\,
	devoe => ww_devoe,
	o => \DEB_WRITE_DATA[26]~output_o\);

\DEB_WRITE_DATA[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_WB|X[25]~6_combout\,
	devoe => ww_devoe,
	o => \DEB_WRITE_DATA[25]~output_o\);

\DEB_WRITE_DATA[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_WB|X[24]~7_combout\,
	devoe => ww_devoe,
	o => \DEB_WRITE_DATA[24]~output_o\);

\DEB_WRITE_DATA[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_WB|X[23]~8_combout\,
	devoe => ww_devoe,
	o => \DEB_WRITE_DATA[23]~output_o\);

\DEB_WRITE_DATA[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_WB|X[22]~9_combout\,
	devoe => ww_devoe,
	o => \DEB_WRITE_DATA[22]~output_o\);

\DEB_WRITE_DATA[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_WB|X[21]~10_combout\,
	devoe => ww_devoe,
	o => \DEB_WRITE_DATA[21]~output_o\);

\DEB_WRITE_DATA[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_WB|X[20]~11_combout\,
	devoe => ww_devoe,
	o => \DEB_WRITE_DATA[20]~output_o\);

\DEB_WRITE_DATA[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_WB|X[19]~12_combout\,
	devoe => ww_devoe,
	o => \DEB_WRITE_DATA[19]~output_o\);

\DEB_WRITE_DATA[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_WB|X[18]~13_combout\,
	devoe => ww_devoe,
	o => \DEB_WRITE_DATA[18]~output_o\);

\DEB_WRITE_DATA[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_WB|X[17]~14_combout\,
	devoe => ww_devoe,
	o => \DEB_WRITE_DATA[17]~output_o\);

\DEB_WRITE_DATA[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_WB|X[16]~15_combout\,
	devoe => ww_devoe,
	o => \DEB_WRITE_DATA[16]~output_o\);

\DEB_WRITE_DATA[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_WB|X[15]~16_combout\,
	devoe => ww_devoe,
	o => \DEB_WRITE_DATA[15]~output_o\);

\DEB_WRITE_DATA[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_WB|X[14]~17_combout\,
	devoe => ww_devoe,
	o => \DEB_WRITE_DATA[14]~output_o\);

\DEB_WRITE_DATA[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_WB|X[13]~18_combout\,
	devoe => ww_devoe,
	o => \DEB_WRITE_DATA[13]~output_o\);

\DEB_WRITE_DATA[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_WB|X[12]~19_combout\,
	devoe => ww_devoe,
	o => \DEB_WRITE_DATA[12]~output_o\);

\DEB_WRITE_DATA[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_WB|X[11]~20_combout\,
	devoe => ww_devoe,
	o => \DEB_WRITE_DATA[11]~output_o\);

\DEB_WRITE_DATA[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_WB|X[10]~21_combout\,
	devoe => ww_devoe,
	o => \DEB_WRITE_DATA[10]~output_o\);

\DEB_WRITE_DATA[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_WB|X[9]~22_combout\,
	devoe => ww_devoe,
	o => \DEB_WRITE_DATA[9]~output_o\);

\DEB_WRITE_DATA[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_WB|X[8]~23_combout\,
	devoe => ww_devoe,
	o => \DEB_WRITE_DATA[8]~output_o\);

\DEB_WRITE_DATA[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_WB|X[7]~24_combout\,
	devoe => ww_devoe,
	o => \DEB_WRITE_DATA[7]~output_o\);

\DEB_WRITE_DATA[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_WB|X[6]~25_combout\,
	devoe => ww_devoe,
	o => \DEB_WRITE_DATA[6]~output_o\);

\DEB_WRITE_DATA[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_WB|X[5]~26_combout\,
	devoe => ww_devoe,
	o => \DEB_WRITE_DATA[5]~output_o\);

\DEB_WRITE_DATA[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_WB|X[4]~27_combout\,
	devoe => ww_devoe,
	o => \DEB_WRITE_DATA[4]~output_o\);

\DEB_WRITE_DATA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_WB|X[3]~28_combout\,
	devoe => ww_devoe,
	o => \DEB_WRITE_DATA[3]~output_o\);

\DEB_WRITE_DATA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_WB|X[2]~29_combout\,
	devoe => ww_devoe,
	o => \DEB_WRITE_DATA[2]~output_o\);

\DEB_WRITE_DATA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_WB|X[1]~30_combout\,
	devoe => ww_devoe,
	o => \DEB_WRITE_DATA[1]~output_o\);

\DEB_WRITE_DATA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_WB|X[0]~31_combout\,
	devoe => ww_devoe,
	o => \DEB_WRITE_DATA[0]~output_o\);

\DEB_FILE_REG_1[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_1[31]~output_o\);

\DEB_FILE_REG_1[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_1[30]~output_o\);

\DEB_FILE_REG_1[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_1[29]~output_o\);

\DEB_FILE_REG_1[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_1[28]~output_o\);

\DEB_FILE_REG_1[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_1[27]~output_o\);

\DEB_FILE_REG_1[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_1[26]~output_o\);

\DEB_FILE_REG_1[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_1[25]~output_o\);

\DEB_FILE_REG_1[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_1[24]~output_o\);

\DEB_FILE_REG_1[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_1[23]~output_o\);

\DEB_FILE_REG_1[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_1[22]~output_o\);

\DEB_FILE_REG_1[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_1[21]~output_o\);

\DEB_FILE_REG_1[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_1[20]~output_o\);

\DEB_FILE_REG_1[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_1[19]~output_o\);

\DEB_FILE_REG_1[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_1[18]~output_o\);

\DEB_FILE_REG_1[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_1[17]~output_o\);

\DEB_FILE_REG_1[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_1[16]~output_o\);

\DEB_FILE_REG_1[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_1[15]~output_o\);

\DEB_FILE_REG_1[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_1[14]~output_o\);

\DEB_FILE_REG_1[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_1[13]~output_o\);

\DEB_FILE_REG_1[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_1[12]~output_o\);

\DEB_FILE_REG_1[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_1[11]~output_o\);

\DEB_FILE_REG_1[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_1[10]~output_o\);

\DEB_FILE_REG_1[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_1[9]~output_o\);

\DEB_FILE_REG_1[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_1[8]~output_o\);

\DEB_FILE_REG_1[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_1[7]~output_o\);

\DEB_FILE_REG_1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_1[6]~output_o\);

\DEB_FILE_REG_1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_1[5]~output_o\);

\DEB_FILE_REG_1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_1[4]~output_o\);

\DEB_FILE_REG_1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_1[3]~output_o\);

\DEB_FILE_REG_1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_1[2]~output_o\);

\DEB_FILE_REG_1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_1[1]~output_o\);

\DEB_FILE_REG_1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_1[0]~output_o\);

\DEB_FILE_REG_2[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_2[31]~output_o\);

\DEB_FILE_REG_2[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_2[30]~output_o\);

\DEB_FILE_REG_2[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_2[29]~output_o\);

\DEB_FILE_REG_2[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_2[28]~output_o\);

\DEB_FILE_REG_2[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_2[27]~output_o\);

\DEB_FILE_REG_2[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_2[26]~output_o\);

\DEB_FILE_REG_2[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_2[25]~output_o\);

\DEB_FILE_REG_2[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_2[24]~output_o\);

\DEB_FILE_REG_2[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_2[23]~output_o\);

\DEB_FILE_REG_2[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_2[22]~output_o\);

\DEB_FILE_REG_2[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_2[21]~output_o\);

\DEB_FILE_REG_2[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_2[20]~output_o\);

\DEB_FILE_REG_2[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_2[19]~output_o\);

\DEB_FILE_REG_2[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_2[18]~output_o\);

\DEB_FILE_REG_2[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_2[17]~output_o\);

\DEB_FILE_REG_2[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_2[16]~output_o\);

\DEB_FILE_REG_2[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_2[15]~output_o\);

\DEB_FILE_REG_2[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_2[14]~output_o\);

\DEB_FILE_REG_2[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_2[13]~output_o\);

\DEB_FILE_REG_2[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_2[12]~output_o\);

\DEB_FILE_REG_2[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_2[11]~output_o\);

\DEB_FILE_REG_2[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_2[10]~output_o\);

\DEB_FILE_REG_2[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_2[9]~output_o\);

\DEB_FILE_REG_2[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_2[8]~output_o\);

\DEB_FILE_REG_2[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_2[7]~output_o\);

\DEB_FILE_REG_2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_2[6]~output_o\);

\DEB_FILE_REG_2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_2[5]~output_o\);

\DEB_FILE_REG_2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_2[4]~output_o\);

\DEB_FILE_REG_2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_2[3]~output_o\);

\DEB_FILE_REG_2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_2[2]~output_o\);

\DEB_FILE_REG_2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_2[1]~output_o\);

\DEB_FILE_REG_2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_2[0]~output_o\);

\DEB_FILE_REG_AUX~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DEB_FILE_REG_AUX~output_o\);

\CLOCK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK,
	o => \CLOCK~input_o\);

\PC_INC|X[29]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[29]~0_combout\ = \IFID|OUT_PC_MAIS_4\(29) $ (VCC)
-- \PC_INC|X[29]~1\ = CARRY(\IFID|OUT_PC_MAIS_4\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_PC_MAIS_4\(29),
	datad => VCC,
	combout => \PC_INC|X[29]~0_combout\,
	cout => \PC_INC|X[29]~1\);

\IFID|OUT_PC_MAIS_4[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \PC_INC|X[29]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(29));

\PC_INC|X[28]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[28]~2_combout\ = (\IFID|OUT_PC_MAIS_4\(28) & (!\PC_INC|X[29]~1\)) # (!\IFID|OUT_PC_MAIS_4\(28) & ((\PC_INC|X[29]~1\) # (GND)))
-- \PC_INC|X[28]~3\ = CARRY((!\PC_INC|X[29]~1\) # (!\IFID|OUT_PC_MAIS_4\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_PC_MAIS_4\(28),
	datad => VCC,
	cin => \PC_INC|X[29]~1\,
	combout => \PC_INC|X[28]~2_combout\,
	cout => \PC_INC|X[28]~3\);

\IFID|OUT_PC_MAIS_4[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \PC_INC|X[28]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(28));

\PC_INC|X[27]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[27]~4_combout\ = (\IFID|OUT_PC_MAIS_4\(27) & (\PC_INC|X[28]~3\ $ (GND))) # (!\IFID|OUT_PC_MAIS_4\(27) & (!\PC_INC|X[28]~3\ & VCC))
-- \PC_INC|X[27]~5\ = CARRY((\IFID|OUT_PC_MAIS_4\(27) & !\PC_INC|X[28]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_PC_MAIS_4\(27),
	datad => VCC,
	cin => \PC_INC|X[28]~3\,
	combout => \PC_INC|X[27]~4_combout\,
	cout => \PC_INC|X[27]~5\);

\IFID|OUT_PC_MAIS_4[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \PC_INC|X[27]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(27));

\PC_INC|X[26]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[26]~6_combout\ = (\IFID|OUT_PC_MAIS_4\(26) & (!\PC_INC|X[27]~5\)) # (!\IFID|OUT_PC_MAIS_4\(26) & ((\PC_INC|X[27]~5\) # (GND)))
-- \PC_INC|X[26]~7\ = CARRY((!\PC_INC|X[27]~5\) # (!\IFID|OUT_PC_MAIS_4\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_PC_MAIS_4\(26),
	datad => VCC,
	cin => \PC_INC|X[27]~5\,
	combout => \PC_INC|X[26]~6_combout\,
	cout => \PC_INC|X[26]~7\);

\IFID|OUT_PC_MAIS_4[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \PC_INC|X[26]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(26));

\PC_INC|X[25]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[25]~8_combout\ = (\IFID|OUT_PC_MAIS_4\(25) & (\PC_INC|X[26]~7\ $ (GND))) # (!\IFID|OUT_PC_MAIS_4\(25) & (!\PC_INC|X[26]~7\ & VCC))
-- \PC_INC|X[25]~9\ = CARRY((\IFID|OUT_PC_MAIS_4\(25) & !\PC_INC|X[26]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_PC_MAIS_4\(25),
	datad => VCC,
	cin => \PC_INC|X[26]~7\,
	combout => \PC_INC|X[25]~8_combout\,
	cout => \PC_INC|X[25]~9\);

\IFID|OUT_PC_MAIS_4[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \PC_INC|X[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(25));

\INST_MEM|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \INST_MEM|Mux31~0_combout\ = (!\IFID|OUT_PC_MAIS_4\(28) & (!\IFID|OUT_PC_MAIS_4\(27) & (!\IFID|OUT_PC_MAIS_4\(26) & !\IFID|OUT_PC_MAIS_4\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_PC_MAIS_4\(28),
	datab => \IFID|OUT_PC_MAIS_4\(27),
	datac => \IFID|OUT_PC_MAIS_4\(26),
	datad => \IFID|OUT_PC_MAIS_4\(25),
	combout => \INST_MEM|Mux31~0_combout\);

\PC_INC|X[24]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[24]~10_combout\ = (\IFID|OUT_PC_MAIS_4\(24) & (!\PC_INC|X[25]~9\)) # (!\IFID|OUT_PC_MAIS_4\(24) & ((\PC_INC|X[25]~9\) # (GND)))
-- \PC_INC|X[24]~11\ = CARRY((!\PC_INC|X[25]~9\) # (!\IFID|OUT_PC_MAIS_4\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_PC_MAIS_4\(24),
	datad => VCC,
	cin => \PC_INC|X[25]~9\,
	combout => \PC_INC|X[24]~10_combout\,
	cout => \PC_INC|X[24]~11\);

\IFID|OUT_PC_MAIS_4[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \PC_INC|X[24]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(24));

\PC_INC|X[23]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[23]~12_combout\ = (\IFID|OUT_PC_MAIS_4\(23) & (\PC_INC|X[24]~11\ $ (GND))) # (!\IFID|OUT_PC_MAIS_4\(23) & (!\PC_INC|X[24]~11\ & VCC))
-- \PC_INC|X[23]~13\ = CARRY((\IFID|OUT_PC_MAIS_4\(23) & !\PC_INC|X[24]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_PC_MAIS_4\(23),
	datad => VCC,
	cin => \PC_INC|X[24]~11\,
	combout => \PC_INC|X[23]~12_combout\,
	cout => \PC_INC|X[23]~13\);

\IFID|OUT_PC_MAIS_4[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \PC_INC|X[23]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(23));

\INST_MEM|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \INST_MEM|Mux31~1_combout\ = (\IFID|OUT_PC_MAIS_4\(29) & (\INST_MEM|Mux31~0_combout\ & (!\IFID|OUT_PC_MAIS_4\(24) & !\IFID|OUT_PC_MAIS_4\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_PC_MAIS_4\(29),
	datab => \INST_MEM|Mux31~0_combout\,
	datac => \IFID|OUT_PC_MAIS_4\(24),
	datad => \IFID|OUT_PC_MAIS_4\(23),
	combout => \INST_MEM|Mux31~1_combout\);

\IFID|OUT_INSTR_MEM[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \INST_MEM|Mux31~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_INSTR_MEM\(31));

\INST_MEM|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \INST_MEM|Mux28~0_combout\ = (\INST_MEM|Mux31~0_combout\ & (!\IFID|OUT_PC_MAIS_4\(29) & (!\IFID|OUT_PC_MAIS_4\(24) & !\IFID|OUT_PC_MAIS_4\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_MEM|Mux31~0_combout\,
	datab => \IFID|OUT_PC_MAIS_4\(29),
	datac => \IFID|OUT_PC_MAIS_4\(24),
	datad => \IFID|OUT_PC_MAIS_4\(23),
	combout => \INST_MEM|Mux28~0_combout\);

\IFID|OUT_INSTR_MEM[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \INST_MEM|Mux28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_INSTR_MEM\(28));

\INST_MEM|Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \INST_MEM|Mux31~2_combout\ = (\INST_MEM|Mux31~0_combout\ & (!\IFID|OUT_PC_MAIS_4\(24) & !\IFID|OUT_PC_MAIS_4\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_MEM|Mux31~0_combout\,
	datac => \IFID|OUT_PC_MAIS_4\(24),
	datad => \IFID|OUT_PC_MAIS_4\(23),
	combout => \INST_MEM|Mux31~2_combout\);

\IFID|OUT_INSTR_MEM[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \INST_MEM|Mux31~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_INSTR_MEM\(4));

\IFID|OUT_PC_MAIS_4[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \PC_INC|X[22]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(22));

\PC_INC|X[22]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[22]~14_combout\ = (\IFID|OUT_PC_MAIS_4\(22) & (!\PC_INC|X[23]~13\)) # (!\IFID|OUT_PC_MAIS_4\(22) & ((\PC_INC|X[23]~13\) # (GND)))
-- \PC_INC|X[22]~15\ = CARRY((!\PC_INC|X[23]~13\) # (!\IFID|OUT_PC_MAIS_4\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_PC_MAIS_4\(22),
	datad => VCC,
	cin => \PC_INC|X[23]~13\,
	combout => \PC_INC|X[22]~14_combout\,
	cout => \PC_INC|X[22]~15\);

\IFID|OUT_PC_MAIS_4[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \PC_INC|X[21]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(21));

\PC_INC|X[21]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[21]~16_combout\ = (\IFID|OUT_PC_MAIS_4\(21) & (\PC_INC|X[22]~15\ $ (GND))) # (!\IFID|OUT_PC_MAIS_4\(21) & (!\PC_INC|X[22]~15\ & VCC))
-- \PC_INC|X[21]~17\ = CARRY((\IFID|OUT_PC_MAIS_4\(21) & !\PC_INC|X[22]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_PC_MAIS_4\(21),
	datad => VCC,
	cin => \PC_INC|X[22]~15\,
	combout => \PC_INC|X[21]~16_combout\,
	cout => \PC_INC|X[21]~17\);

\IFID|OUT_PC_MAIS_4[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \PC_INC|X[20]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(20));

\PC_INC|X[20]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[20]~18_combout\ = (\IFID|OUT_PC_MAIS_4\(20) & (!\PC_INC|X[21]~17\)) # (!\IFID|OUT_PC_MAIS_4\(20) & ((\PC_INC|X[21]~17\) # (GND)))
-- \PC_INC|X[20]~19\ = CARRY((!\PC_INC|X[21]~17\) # (!\IFID|OUT_PC_MAIS_4\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_PC_MAIS_4\(20),
	datad => VCC,
	cin => \PC_INC|X[21]~17\,
	combout => \PC_INC|X[20]~18_combout\,
	cout => \PC_INC|X[20]~19\);

\IFID|OUT_PC_MAIS_4[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \PC_INC|X[19]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(19));

\PC_INC|X[19]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[19]~20_combout\ = (\IFID|OUT_PC_MAIS_4\(19) & (\PC_INC|X[20]~19\ $ (GND))) # (!\IFID|OUT_PC_MAIS_4\(19) & (!\PC_INC|X[20]~19\ & VCC))
-- \PC_INC|X[19]~21\ = CARRY((\IFID|OUT_PC_MAIS_4\(19) & !\PC_INC|X[20]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_PC_MAIS_4\(19),
	datad => VCC,
	cin => \PC_INC|X[20]~19\,
	combout => \PC_INC|X[19]~20_combout\,
	cout => \PC_INC|X[19]~21\);

\IFID|OUT_PC_MAIS_4[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \PC_INC|X[18]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(18));

\PC_INC|X[18]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[18]~22_combout\ = (\IFID|OUT_PC_MAIS_4\(18) & (!\PC_INC|X[19]~21\)) # (!\IFID|OUT_PC_MAIS_4\(18) & ((\PC_INC|X[19]~21\) # (GND)))
-- \PC_INC|X[18]~23\ = CARRY((!\PC_INC|X[19]~21\) # (!\IFID|OUT_PC_MAIS_4\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_PC_MAIS_4\(18),
	datad => VCC,
	cin => \PC_INC|X[19]~21\,
	combout => \PC_INC|X[18]~22_combout\,
	cout => \PC_INC|X[18]~23\);

\IFID|OUT_PC_MAIS_4[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \PC_INC|X[17]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(17));

\PC_INC|X[17]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[17]~24_combout\ = (\IFID|OUT_PC_MAIS_4\(17) & (\PC_INC|X[18]~23\ $ (GND))) # (!\IFID|OUT_PC_MAIS_4\(17) & (!\PC_INC|X[18]~23\ & VCC))
-- \PC_INC|X[17]~25\ = CARRY((\IFID|OUT_PC_MAIS_4\(17) & !\PC_INC|X[18]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_PC_MAIS_4\(17),
	datad => VCC,
	cin => \PC_INC|X[18]~23\,
	combout => \PC_INC|X[17]~24_combout\,
	cout => \PC_INC|X[17]~25\);

\IFID|OUT_PC_MAIS_4[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \PC_INC|X[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(16));

\PC_INC|X[16]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[16]~26_combout\ = (\IFID|OUT_PC_MAIS_4\(16) & (!\PC_INC|X[17]~25\)) # (!\IFID|OUT_PC_MAIS_4\(16) & ((\PC_INC|X[17]~25\) # (GND)))
-- \PC_INC|X[16]~27\ = CARRY((!\PC_INC|X[17]~25\) # (!\IFID|OUT_PC_MAIS_4\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_PC_MAIS_4\(16),
	datad => VCC,
	cin => \PC_INC|X[17]~25\,
	combout => \PC_INC|X[16]~26_combout\,
	cout => \PC_INC|X[16]~27\);

\IFID|OUT_PC_MAIS_4[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \PC_INC|X[15]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(15));

\PC_INC|X[15]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[15]~28_combout\ = (\IFID|OUT_PC_MAIS_4\(15) & (\PC_INC|X[16]~27\ $ (GND))) # (!\IFID|OUT_PC_MAIS_4\(15) & (!\PC_INC|X[16]~27\ & VCC))
-- \PC_INC|X[15]~29\ = CARRY((\IFID|OUT_PC_MAIS_4\(15) & !\PC_INC|X[16]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_PC_MAIS_4\(15),
	datad => VCC,
	cin => \PC_INC|X[16]~27\,
	combout => \PC_INC|X[15]~28_combout\,
	cout => \PC_INC|X[15]~29\);

\IFID|OUT_PC_MAIS_4[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \PC_INC|X[14]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(14));

\PC_INC|X[14]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[14]~30_combout\ = (\IFID|OUT_PC_MAIS_4\(14) & (!\PC_INC|X[15]~29\)) # (!\IFID|OUT_PC_MAIS_4\(14) & ((\PC_INC|X[15]~29\) # (GND)))
-- \PC_INC|X[14]~31\ = CARRY((!\PC_INC|X[15]~29\) # (!\IFID|OUT_PC_MAIS_4\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_PC_MAIS_4\(14),
	datad => VCC,
	cin => \PC_INC|X[15]~29\,
	combout => \PC_INC|X[14]~30_combout\,
	cout => \PC_INC|X[14]~31\);

\IFID|OUT_PC_MAIS_4[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \PC_INC|X[13]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(13));

\PC_INC|X[13]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[13]~32_combout\ = (\IFID|OUT_PC_MAIS_4\(13) & (\PC_INC|X[14]~31\ $ (GND))) # (!\IFID|OUT_PC_MAIS_4\(13) & (!\PC_INC|X[14]~31\ & VCC))
-- \PC_INC|X[13]~33\ = CARRY((\IFID|OUT_PC_MAIS_4\(13) & !\PC_INC|X[14]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_PC_MAIS_4\(13),
	datad => VCC,
	cin => \PC_INC|X[14]~31\,
	combout => \PC_INC|X[13]~32_combout\,
	cout => \PC_INC|X[13]~33\);

\IFID|OUT_PC_MAIS_4[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \PC_INC|X[12]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(12));

\PC_INC|X[12]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[12]~34_combout\ = (\IFID|OUT_PC_MAIS_4\(12) & (!\PC_INC|X[13]~33\)) # (!\IFID|OUT_PC_MAIS_4\(12) & ((\PC_INC|X[13]~33\) # (GND)))
-- \PC_INC|X[12]~35\ = CARRY((!\PC_INC|X[13]~33\) # (!\IFID|OUT_PC_MAIS_4\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_PC_MAIS_4\(12),
	datad => VCC,
	cin => \PC_INC|X[13]~33\,
	combout => \PC_INC|X[12]~34_combout\,
	cout => \PC_INC|X[12]~35\);

\IFID|OUT_PC_MAIS_4[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \PC_INC|X[11]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(11));

\PC_INC|X[11]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[11]~36_combout\ = (\IFID|OUT_PC_MAIS_4\(11) & (\PC_INC|X[12]~35\ $ (GND))) # (!\IFID|OUT_PC_MAIS_4\(11) & (!\PC_INC|X[12]~35\ & VCC))
-- \PC_INC|X[11]~37\ = CARRY((\IFID|OUT_PC_MAIS_4\(11) & !\PC_INC|X[12]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_PC_MAIS_4\(11),
	datad => VCC,
	cin => \PC_INC|X[12]~35\,
	combout => \PC_INC|X[11]~36_combout\,
	cout => \PC_INC|X[11]~37\);

\IFID|OUT_PC_MAIS_4[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \PC_INC|X[10]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(10));

\PC_INC|X[10]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[10]~38_combout\ = (\IFID|OUT_PC_MAIS_4\(10) & (!\PC_INC|X[11]~37\)) # (!\IFID|OUT_PC_MAIS_4\(10) & ((\PC_INC|X[11]~37\) # (GND)))
-- \PC_INC|X[10]~39\ = CARRY((!\PC_INC|X[11]~37\) # (!\IFID|OUT_PC_MAIS_4\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_PC_MAIS_4\(10),
	datad => VCC,
	cin => \PC_INC|X[11]~37\,
	combout => \PC_INC|X[10]~38_combout\,
	cout => \PC_INC|X[10]~39\);

\IFID|OUT_PC_MAIS_4[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \PC_INC|X[9]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(9));

\PC_INC|X[9]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[9]~40_combout\ = (\IFID|OUT_PC_MAIS_4\(9) & (\PC_INC|X[10]~39\ $ (GND))) # (!\IFID|OUT_PC_MAIS_4\(9) & (!\PC_INC|X[10]~39\ & VCC))
-- \PC_INC|X[9]~41\ = CARRY((\IFID|OUT_PC_MAIS_4\(9) & !\PC_INC|X[10]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_PC_MAIS_4\(9),
	datad => VCC,
	cin => \PC_INC|X[10]~39\,
	combout => \PC_INC|X[9]~40_combout\,
	cout => \PC_INC|X[9]~41\);

\IFID|OUT_PC_MAIS_4[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \PC_INC|X[8]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(8));

\PC_INC|X[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[8]~42_combout\ = (\IFID|OUT_PC_MAIS_4\(8) & (!\PC_INC|X[9]~41\)) # (!\IFID|OUT_PC_MAIS_4\(8) & ((\PC_INC|X[9]~41\) # (GND)))
-- \PC_INC|X[8]~43\ = CARRY((!\PC_INC|X[9]~41\) # (!\IFID|OUT_PC_MAIS_4\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_PC_MAIS_4\(8),
	datad => VCC,
	cin => \PC_INC|X[9]~41\,
	combout => \PC_INC|X[8]~42_combout\,
	cout => \PC_INC|X[8]~43\);

\IFID|OUT_PC_MAIS_4[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \PC_INC|X[7]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(7));

\PC_INC|X[7]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[7]~44_combout\ = (\IFID|OUT_PC_MAIS_4\(7) & (\PC_INC|X[8]~43\ $ (GND))) # (!\IFID|OUT_PC_MAIS_4\(7) & (!\PC_INC|X[8]~43\ & VCC))
-- \PC_INC|X[7]~45\ = CARRY((\IFID|OUT_PC_MAIS_4\(7) & !\PC_INC|X[8]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_PC_MAIS_4\(7),
	datad => VCC,
	cin => \PC_INC|X[8]~43\,
	combout => \PC_INC|X[7]~44_combout\,
	cout => \PC_INC|X[7]~45\);

\IFID|OUT_PC_MAIS_4[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \PC_INC|X[6]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(6));

\PC_INC|X[6]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[6]~46_combout\ = (\IFID|OUT_PC_MAIS_4\(6) & (!\PC_INC|X[7]~45\)) # (!\IFID|OUT_PC_MAIS_4\(6) & ((\PC_INC|X[7]~45\) # (GND)))
-- \PC_INC|X[6]~47\ = CARRY((!\PC_INC|X[7]~45\) # (!\IFID|OUT_PC_MAIS_4\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_PC_MAIS_4\(6),
	datad => VCC,
	cin => \PC_INC|X[7]~45\,
	combout => \PC_INC|X[6]~46_combout\,
	cout => \PC_INC|X[6]~47\);

\IFID|OUT_PC_MAIS_4[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \PC_INC|X[5]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(5));

\PC_INC|X[5]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[5]~48_combout\ = (\IFID|OUT_PC_MAIS_4\(5) & (\PC_INC|X[6]~47\ $ (GND))) # (!\IFID|OUT_PC_MAIS_4\(5) & (!\PC_INC|X[6]~47\ & VCC))
-- \PC_INC|X[5]~49\ = CARRY((\IFID|OUT_PC_MAIS_4\(5) & !\PC_INC|X[6]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_PC_MAIS_4\(5),
	datad => VCC,
	cin => \PC_INC|X[6]~47\,
	combout => \PC_INC|X[5]~48_combout\,
	cout => \PC_INC|X[5]~49\);

\IFID|OUT_PC_MAIS_4[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \PC_INC|X[4]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(4));

\PC_INC|X[4]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[4]~50_combout\ = (\IFID|OUT_PC_MAIS_4\(4) & (!\PC_INC|X[5]~49\)) # (!\IFID|OUT_PC_MAIS_4\(4) & ((\PC_INC|X[5]~49\) # (GND)))
-- \PC_INC|X[4]~51\ = CARRY((!\PC_INC|X[5]~49\) # (!\IFID|OUT_PC_MAIS_4\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_PC_MAIS_4\(4),
	datad => VCC,
	cin => \PC_INC|X[5]~49\,
	combout => \PC_INC|X[4]~50_combout\,
	cout => \PC_INC|X[4]~51\);

\IFID|OUT_PC_MAIS_4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \PC_INC|X[3]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(3));

\PC_INC|X[3]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[3]~52_combout\ = (\IFID|OUT_PC_MAIS_4\(3) & (\PC_INC|X[4]~51\ $ (GND))) # (!\IFID|OUT_PC_MAIS_4\(3) & (!\PC_INC|X[4]~51\ & VCC))
-- \PC_INC|X[3]~53\ = CARRY((\IFID|OUT_PC_MAIS_4\(3) & !\PC_INC|X[4]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_PC_MAIS_4\(3),
	datad => VCC,
	cin => \PC_INC|X[4]~51\,
	combout => \PC_INC|X[3]~52_combout\,
	cout => \PC_INC|X[3]~53\);

\IFID|OUT_PC_MAIS_4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \PC_INC|X[2]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(2));

\PC_INC|X[2]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[2]~54_combout\ = (\IFID|OUT_PC_MAIS_4\(2) & (!\PC_INC|X[3]~53\)) # (!\IFID|OUT_PC_MAIS_4\(2) & ((\PC_INC|X[3]~53\) # (GND)))
-- \PC_INC|X[2]~55\ = CARRY((!\PC_INC|X[3]~53\) # (!\IFID|OUT_PC_MAIS_4\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_PC_MAIS_4\(2),
	datad => VCC,
	cin => \PC_INC|X[3]~53\,
	combout => \PC_INC|X[2]~54_combout\,
	cout => \PC_INC|X[2]~55\);

\IFID|OUT_PC_MAIS_4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \PC_INC|X[1]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(1));

\PC_INC|X[1]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[1]~56_combout\ = (\IFID|OUT_PC_MAIS_4\(1) & (\PC_INC|X[2]~55\ $ (GND))) # (!\IFID|OUT_PC_MAIS_4\(1) & (!\PC_INC|X[2]~55\ & VCC))
-- \PC_INC|X[1]~57\ = CARRY((\IFID|OUT_PC_MAIS_4\(1) & !\PC_INC|X[2]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_PC_MAIS_4\(1),
	datad => VCC,
	cin => \PC_INC|X[2]~55\,
	combout => \PC_INC|X[1]~56_combout\,
	cout => \PC_INC|X[1]~57\);

\IFID|OUT_PC_MAIS_4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \PC_INC|X[0]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(0));

\PC_INC|X[0]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[0]~58_combout\ = \IFID|OUT_PC_MAIS_4\(0) $ (\PC_INC|X[1]~57\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_PC_MAIS_4\(0),
	cin => \PC_INC|X[1]~57\,
	combout => \PC_INC|X[0]~58_combout\);

\IDEX|IDEX_OUT_EX[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IDEX|IDEX_OUT_EX[0]~0_combout\ = !\IFID|OUT_INSTR_MEM\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(4),
	combout => \IDEX|IDEX_OUT_EX[0]~0_combout\);

\IDEX|IDEX_OUT_EX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IDEX|IDEX_OUT_EX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_EX\(0));

\UC|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|Mux4~1_combout\ = (\IFID|OUT_INSTR_MEM\(31)) # (\IFID|OUT_INSTR_MEM\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(31),
	datab => \IFID|OUT_INSTR_MEM\(4),
	combout => \UC|Mux4~1_combout\);

\IDEX|IDEX_OUT_WB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \UC|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_WB\(1));

\EXMEM|EXMEM_OUT_WB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IDEX|IDEX_OUT_WB\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_WB\(1));

\MEMWB|MEMWB_OUT_WB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_WB\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWB|MEMWB_OUT_WB\(1));

\UC|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|Mux9~0_combout\ = \IFID|OUT_INSTR_MEM\(31) $ (\IFID|OUT_INSTR_MEM\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IFID|OUT_INSTR_MEM\(31),
	datad => \IFID|OUT_INSTR_MEM\(4),
	combout => \UC|Mux9~0_combout\);

\IDEX|IDEX_OUT_EX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \UC|Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_EX\(2));

\UC|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|Mux4~0_combout\ = (\IFID|OUT_INSTR_MEM\(31) & \IFID|OUT_INSTR_MEM\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(31),
	datab => \IFID|OUT_INSTR_MEM\(4),
	combout => \UC|Mux4~0_combout\);

\IDEX|IDEX_OUT_EX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \UC|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_EX\(1));

\ALU_CONTROL|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_CONTROL|Equal0~0_combout\ = (!\IDEX|IDEX_OUT_EX\(2) & !\IDEX|IDEX_OUT_EX\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IDEX|IDEX_OUT_EX\(2),
	datad => \IDEX|IDEX_OUT_EX\(1),
	combout => \ALU_CONTROL|Equal0~0_combout\);

\IDEX|IDEX_OUT_EX[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \IDEX|IDEX_OUT_EX[3]~1_combout\ = !\IFID|OUT_INSTR_MEM\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(31),
	combout => \IDEX|IDEX_OUT_EX[3]~1_combout\);

\IDEX|IDEX_OUT_EX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IDEX|IDEX_OUT_EX[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_EX\(3));

\ALU_CONTROL|ULA_CODE[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_CONTROL|ULA_CODE[0]~0_combout\ = (\IDEX|IDEX_OUT_EX\(1) & \IDEX|IDEX_OUT_EX\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_EX\(1),
	datab => \IDEX|IDEX_OUT_EX\(3),
	combout => \ALU_CONTROL|ULA_CODE[0]~0_combout\);

\ALU_CONTROL|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_CONTROL|comb~0_combout\ = (\IDEX|IDEX_OUT_EX\(2) & (\IDEX|IDEX_OUT_EX\(3) & !\IDEX|IDEX_OUT_EX\(1))) # (!\IDEX|IDEX_OUT_EX\(2) & (!\IDEX|IDEX_OUT_EX\(3) & \IDEX|IDEX_OUT_EX\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IDEX|IDEX_OUT_EX\(2),
	datac => \IDEX|IDEX_OUT_EX\(3),
	datad => \IDEX|IDEX_OUT_EX\(1),
	combout => \ALU_CONTROL|comb~0_combout\);

\ALU_CONTROL|ULA_CODE[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_CONTROL|ULA_CODE\(0) = (!\ALU_CONTROL|comb~0_combout\ & ((\ALU_CONTROL|ULA_CODE[0]~0_combout\) # ((\ALU_CONTROL|ULA_CODE\(0) & !\ALU_CONTROL|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(0),
	datab => \ALU_CONTROL|Equal0~0_combout\,
	datac => \ALU_CONTROL|ULA_CODE[0]~0_combout\,
	datad => \ALU_CONTROL|comb~0_combout\,
	combout => \ALU_CONTROL|ULA_CODE\(0));

\IDEX|IDEX_OUT_RT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IFID|OUT_INSTR_MEM\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_RT\(4));

\IDEX|IDEX_OUT_RT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IFID|OUT_INSTR_MEM\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_RT\(3));

\MUX_REGDST|X[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_REGDST|X[3]~1_combout\ = (\IDEX|IDEX_OUT_RT\(3) & !\IDEX|IDEX_OUT_EX\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_RT\(3),
	datad => \IDEX|IDEX_OUT_EX\(0),
	combout => \MUX_REGDST|X[3]~1_combout\);

\EXMEM|EXMEM_OUT_REGDST[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_REGDST|X[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_REGDST\(3));

\MEMWB|MEMWB_OUT_REGDST[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_REGDST\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWB|MEMWB_OUT_REGDST\(3));

\MUX_REGDST|X[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_REGDST|X[4]~0_combout\ = (\IDEX|IDEX_OUT_RT\(4) & !\IDEX|IDEX_OUT_EX\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_RT\(4),
	datad => \IDEX|IDEX_OUT_EX\(0),
	combout => \MUX_REGDST|X[4]~0_combout\);

\EXMEM|EXMEM_OUT_REGDST[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_REGDST|X[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_REGDST\(4));

\MEMWB|MEMWB_OUT_REGDST[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_REGDST\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Decoder0~1_combout\ = (\MEMWB|MEMWB_OUT_REGDST\(3) & !\MEMWB|MEMWB_OUT_REGDST\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMWB|MEMWB_OUT_REGDST\(3),
	datad => \MEMWB|MEMWB_OUT_REGDST\(4),
	combout => \FILE_REG|Decoder0~1_combout\);

\FILE_REG|REGISTERS[2][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[31]~0_combout\,
	ena => \FILE_REG|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[2][31]~q\);

\FILE_REG|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Decoder0~2_combout\ = (!\MEMWB|MEMWB_OUT_REGDST\(4) & !\MEMWB|MEMWB_OUT_REGDST\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMWB|MEMWB_OUT_REGDST\(4),
	datab => \MEMWB|MEMWB_OUT_REGDST\(3),
	combout => \FILE_REG|Decoder0~2_combout\);

\FILE_REG|REGISTERS[0][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[31]~0_combout\,
	ena => \FILE_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[0][31]~q\);

\FILE_REG|Mux63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux63~0_combout\ = (\IFID|OUT_INSTR_MEM\(28) & (((\IFID|OUT_INSTR_MEM\(31))))) # (!\IFID|OUT_INSTR_MEM\(28) & ((\IFID|OUT_INSTR_MEM\(31) & (\FILE_REG|REGISTERS[1][31]~q\)) # (!\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|REGISTERS[0][31]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(28),
	datab => \FILE_REG|REGISTERS[1][31]~q\,
	datac => \IFID|OUT_INSTR_MEM\(31),
	datad => \FILE_REG|REGISTERS[0][31]~q\,
	combout => \FILE_REG|Mux63~0_combout\);

\FILE_REG|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Decoder0~3_combout\ = (\MEMWB|MEMWB_OUT_REGDST\(4) & \MEMWB|MEMWB_OUT_REGDST\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMWB|MEMWB_OUT_REGDST\(4),
	datab => \MEMWB|MEMWB_OUT_REGDST\(3),
	combout => \FILE_REG|Decoder0~3_combout\);

\FILE_REG|REGISTERS[3][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[31]~0_combout\,
	ena => \FILE_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[3][31]~q\);

\FILE_REG|Mux63~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux63~1_combout\ = (\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|Mux63~0_combout\ & ((\FILE_REG|REGISTERS[3][31]~q\))) # (!\FILE_REG|Mux63~0_combout\ & (\FILE_REG|REGISTERS[2][31]~q\)))) # (!\IFID|OUT_INSTR_MEM\(28) & (((\FILE_REG|Mux63~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[2][31]~q\,
	datab => \IFID|OUT_INSTR_MEM\(28),
	datac => \FILE_REG|Mux63~0_combout\,
	datad => \FILE_REG|REGISTERS[3][31]~q\,
	combout => \FILE_REG|Mux63~1_combout\);

\IDEX|IDEX_OUT_READ2[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux63~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ2\(31));

\IDEX|IDEX_OUT_EX[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \IFID|OUT_INSTR_MEM\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_EX\(4));

\MUX_ALU_B|X[31]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_ALU_B|X[31]~0_combout\ = (\IDEX|IDEX_OUT_EX\(4) & (\IDEX|IDEX_OUT_RT\(4))) # (!\IDEX|IDEX_OUT_EX\(4) & ((\IDEX|IDEX_OUT_READ2\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_RT\(4),
	datab => \IDEX|IDEX_OUT_READ2\(31),
	datad => \IDEX|IDEX_OUT_EX\(4),
	combout => \MUX_ALU_B|X[31]~0_combout\);

\ALU_CONTROL|ULA_CODE[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_CONTROL|ULA_CODE[1]~1_combout\ = (\ALU_CONTROL|Equal0~0_combout\ & (\IDEX|IDEX_OUT_EX\(3))) # (!\ALU_CONTROL|Equal0~0_combout\ & ((\ALU_CONTROL|ULA_CODE\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IDEX|IDEX_OUT_EX\(3),
	datac => \ALU_CONTROL|ULA_CODE\(1),
	datad => \ALU_CONTROL|Equal0~0_combout\,
	combout => \ALU_CONTROL|ULA_CODE[1]~1_combout\);

\ALU_CONTROL|comb~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_CONTROL|comb~2_combout\ = (\IDEX|IDEX_OUT_EX\(1) & (\IDEX|IDEX_OUT_EX\(2) $ (!\IDEX|IDEX_OUT_EX\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_EX\(1),
	datab => \IDEX|IDEX_OUT_EX\(2),
	datac => \IDEX|IDEX_OUT_EX\(3),
	combout => \ALU_CONTROL|comb~2_combout\);

\ALU_CONTROL|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_CONTROL|comb~1_combout\ = (\IDEX|IDEX_OUT_EX\(3) & (\IDEX|IDEX_OUT_EX\(2) $ (\IDEX|IDEX_OUT_EX\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_EX\(3),
	datac => \IDEX|IDEX_OUT_EX\(2),
	datad => \IDEX|IDEX_OUT_EX\(1),
	combout => \ALU_CONTROL|comb~1_combout\);

\ALU_CONTROL|ULA_CODE[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_CONTROL|ULA_CODE\(1) = (!\ALU_CONTROL|comb~1_combout\ & ((\ALU_CONTROL|ULA_CODE[1]~1_combout\) # (\ALU_CONTROL|comb~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_CONTROL|ULA_CODE[1]~1_combout\,
	datac => \ALU_CONTROL|comb~2_combout\,
	datad => \ALU_CONTROL|comb~1_combout\,
	combout => \ALU_CONTROL|ULA_CODE\(1));

\MAIN_ALU|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~0_combout\ = (\ALU_CONTROL|ULA_CODE\(0) & ((\IDEX|IDEX_OUT_READ1\(31) & ((\MUX_ALU_B|X[31]~0_combout\) # (\ALU_CONTROL|ULA_CODE\(1)))) # (!\IDEX|IDEX_OUT_READ1\(31) & (\MUX_ALU_B|X[31]~0_combout\ & \ALU_CONTROL|ULA_CODE\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(0),
	datab => \IDEX|IDEX_OUT_READ1\(31),
	datac => \MUX_ALU_B|X[31]~0_combout\,
	datad => \ALU_CONTROL|ULA_CODE\(1),
	combout => \MAIN_ALU|Add0~0_combout\);

\MAIN_ALU|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~1_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (((\IDEX|IDEX_OUT_EX\(4) & ((\IDEX|IDEX_OUT_RT\(4)))) # (!\IDEX|IDEX_OUT_EX\(4) & (\IDEX|IDEX_OUT_READ2\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_EX\(4),
	datab => \IDEX|IDEX_OUT_READ2\(31),
	datac => \IDEX|IDEX_OUT_RT\(4),
	datad => \ALU_CONTROL|ULA_CODE\(1),
	combout => \MAIN_ALU|Add0~1_combout\);

\MAIN_ALU|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~3_cout\ = CARRY(\ALU_CONTROL|ULA_CODE\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(1),
	datad => VCC,
	cout => \MAIN_ALU|Add0~3_cout\);

\MAIN_ALU|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~4_combout\ = (\MAIN_ALU|Add0~1_combout\ & ((\IDEX|IDEX_OUT_READ1\(31) & (\MAIN_ALU|Add0~3_cout\ & VCC)) # (!\IDEX|IDEX_OUT_READ1\(31) & (!\MAIN_ALU|Add0~3_cout\)))) # (!\MAIN_ALU|Add0~1_combout\ & ((\IDEX|IDEX_OUT_READ1\(31) & 
-- (!\MAIN_ALU|Add0~3_cout\)) # (!\IDEX|IDEX_OUT_READ1\(31) & ((\MAIN_ALU|Add0~3_cout\) # (GND)))))
-- \MAIN_ALU|Add0~5\ = CARRY((\MAIN_ALU|Add0~1_combout\ & (!\IDEX|IDEX_OUT_READ1\(31) & !\MAIN_ALU|Add0~3_cout\)) # (!\MAIN_ALU|Add0~1_combout\ & ((!\MAIN_ALU|Add0~3_cout\) # (!\IDEX|IDEX_OUT_READ1\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~1_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(31),
	datad => VCC,
	cin => \MAIN_ALU|Add0~3_cout\,
	combout => \MAIN_ALU|Add0~4_combout\,
	cout => \MAIN_ALU|Add0~5\);

\MAIN_ALU|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~6_combout\ = (\MAIN_ALU|Add0~0_combout\) # ((\MAIN_ALU|Add0~4_combout\ & !\ALU_CONTROL|ULA_CODE\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~0_combout\,
	datab => \MAIN_ALU|Add0~4_combout\,
	datad => \ALU_CONTROL|ULA_CODE\(0),
	combout => \MAIN_ALU|Add0~6_combout\);

\EXMEM|EXMEM_OUT_RESULT_ULA[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MAIN_ALU|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ULA\(31));

\MEMWB|MEMWB_OUT_RESULT_ULA[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ULA\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWB|MEMWB_OUT_RESULT_ULA\(31));

\MUX_WB|X[31]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_WB|X[31]~0_combout\ = (\MEMWB|MEMWB_OUT_WB\(1) & \MEMWB|MEMWB_OUT_RESULT_ULA\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMWB|MEMWB_OUT_WB\(1),
	datab => \MEMWB|MEMWB_OUT_RESULT_ULA\(31),
	combout => \MUX_WB|X[31]~0_combout\);

\FILE_REG|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Decoder0~0_combout\ = (\MEMWB|MEMWB_OUT_REGDST\(4) & !\MEMWB|MEMWB_OUT_REGDST\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMWB|MEMWB_OUT_REGDST\(4),
	datad => \MEMWB|MEMWB_OUT_REGDST\(3),
	combout => \FILE_REG|Decoder0~0_combout\);

\FILE_REG|REGISTERS[1][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[31]~0_combout\,
	ena => \FILE_REG|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[1][31]~q\);

\FILE_REG|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux31~0_combout\ = (\IFID|OUT_INSTR_MEM\(28) & (((\IFID|OUT_INSTR_MEM\(31))))) # (!\IFID|OUT_INSTR_MEM\(28) & ((\IFID|OUT_INSTR_MEM\(31) & (\FILE_REG|REGISTERS[2][31]~q\)) # (!\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|REGISTERS[0][31]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(28),
	datab => \FILE_REG|REGISTERS[2][31]~q\,
	datac => \IFID|OUT_INSTR_MEM\(31),
	datad => \FILE_REG|REGISTERS[0][31]~q\,
	combout => \FILE_REG|Mux31~0_combout\);

\FILE_REG|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux31~1_combout\ = (\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|Mux31~0_combout\ & ((\FILE_REG|REGISTERS[3][31]~q\))) # (!\FILE_REG|Mux31~0_combout\ & (\FILE_REG|REGISTERS[1][31]~q\)))) # (!\IFID|OUT_INSTR_MEM\(28) & (((\FILE_REG|Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[1][31]~q\,
	datab => \IFID|OUT_INSTR_MEM\(28),
	datac => \FILE_REG|Mux31~0_combout\,
	datad => \FILE_REG|REGISTERS[3][31]~q\,
	combout => \FILE_REG|Mux31~1_combout\);

\IDEX|IDEX_OUT_READ1[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux31~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(31));

\FILE_REG|REGISTERS[2][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[30]~1_combout\,
	ena => \FILE_REG|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[2][30]~q\);

\FILE_REG|REGISTERS[0][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[30]~1_combout\,
	ena => \FILE_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[0][30]~q\);

\FILE_REG|Mux62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux62~0_combout\ = (\IFID|OUT_INSTR_MEM\(28) & (((\IFID|OUT_INSTR_MEM\(31))))) # (!\IFID|OUT_INSTR_MEM\(28) & ((\IFID|OUT_INSTR_MEM\(31) & (\FILE_REG|REGISTERS[1][30]~q\)) # (!\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|REGISTERS[0][30]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(28),
	datab => \FILE_REG|REGISTERS[1][30]~q\,
	datac => \IFID|OUT_INSTR_MEM\(31),
	datad => \FILE_REG|REGISTERS[0][30]~q\,
	combout => \FILE_REG|Mux62~0_combout\);

\FILE_REG|REGISTERS[3][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[30]~1_combout\,
	ena => \FILE_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[3][30]~q\);

\FILE_REG|Mux62~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux62~1_combout\ = (\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|Mux62~0_combout\ & ((\FILE_REG|REGISTERS[3][30]~q\))) # (!\FILE_REG|Mux62~0_combout\ & (\FILE_REG|REGISTERS[2][30]~q\)))) # (!\IFID|OUT_INSTR_MEM\(28) & (((\FILE_REG|Mux62~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[2][30]~q\,
	datab => \IFID|OUT_INSTR_MEM\(28),
	datac => \FILE_REG|Mux62~0_combout\,
	datad => \FILE_REG|REGISTERS[3][30]~q\,
	combout => \FILE_REG|Mux62~1_combout\);

\IDEX|IDEX_OUT_READ2[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux62~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ2\(30));

\MAIN_ALU|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~7_combout\ = (\IDEX|IDEX_OUT_READ1\(30) & ((\ALU_CONTROL|ULA_CODE\(1)) # ((\IDEX|IDEX_OUT_READ2\(30) & !\IDEX|IDEX_OUT_EX\(4))))) # (!\IDEX|IDEX_OUT_READ1\(30) & (\ALU_CONTROL|ULA_CODE\(1) & (\IDEX|IDEX_OUT_READ2\(30) & 
-- !\IDEX|IDEX_OUT_EX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_READ1\(30),
	datab => \ALU_CONTROL|ULA_CODE\(1),
	datac => \IDEX|IDEX_OUT_READ2\(30),
	datad => \IDEX|IDEX_OUT_EX\(4),
	combout => \MAIN_ALU|Add0~7_combout\);

\MAIN_ALU|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~8_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (((!\IDEX|IDEX_OUT_EX\(4) & \IDEX|IDEX_OUT_READ2\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(1),
	datab => \IDEX|IDEX_OUT_EX\(4),
	datad => \IDEX|IDEX_OUT_READ2\(30),
	combout => \MAIN_ALU|Add0~8_combout\);

\MAIN_ALU|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~9_combout\ = ((\MAIN_ALU|Add0~8_combout\ $ (\IDEX|IDEX_OUT_READ1\(30) $ (!\MAIN_ALU|Add0~5\)))) # (GND)
-- \MAIN_ALU|Add0~10\ = CARRY((\MAIN_ALU|Add0~8_combout\ & ((\IDEX|IDEX_OUT_READ1\(30)) # (!\MAIN_ALU|Add0~5\))) # (!\MAIN_ALU|Add0~8_combout\ & (\IDEX|IDEX_OUT_READ1\(30) & !\MAIN_ALU|Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~8_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(30),
	datad => VCC,
	cin => \MAIN_ALU|Add0~5\,
	combout => \MAIN_ALU|Add0~9_combout\,
	cout => \MAIN_ALU|Add0~10\);

\MAIN_ALU|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~11_combout\ = (\ALU_CONTROL|ULA_CODE\(0) & (\MAIN_ALU|Add0~7_combout\)) # (!\ALU_CONTROL|ULA_CODE\(0) & ((\MAIN_ALU|Add0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~7_combout\,
	datab => \MAIN_ALU|Add0~9_combout\,
	datad => \ALU_CONTROL|ULA_CODE\(0),
	combout => \MAIN_ALU|Add0~11_combout\);

\EXMEM|EXMEM_OUT_RESULT_ULA[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MAIN_ALU|Add0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ULA\(30));

\MEMWB|MEMWB_OUT_RESULT_ULA[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ULA\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWB|MEMWB_OUT_RESULT_ULA\(30));

\MUX_WB|X[30]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_WB|X[30]~1_combout\ = (\MEMWB|MEMWB_OUT_WB\(1) & \MEMWB|MEMWB_OUT_RESULT_ULA\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMWB|MEMWB_OUT_WB\(1),
	datab => \MEMWB|MEMWB_OUT_RESULT_ULA\(30),
	combout => \MUX_WB|X[30]~1_combout\);

\FILE_REG|REGISTERS[1][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[30]~1_combout\,
	ena => \FILE_REG|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[1][30]~q\);

\FILE_REG|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux30~0_combout\ = (\IFID|OUT_INSTR_MEM\(28) & (((\IFID|OUT_INSTR_MEM\(31))))) # (!\IFID|OUT_INSTR_MEM\(28) & ((\IFID|OUT_INSTR_MEM\(31) & (\FILE_REG|REGISTERS[2][30]~q\)) # (!\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|REGISTERS[0][30]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(28),
	datab => \FILE_REG|REGISTERS[2][30]~q\,
	datac => \IFID|OUT_INSTR_MEM\(31),
	datad => \FILE_REG|REGISTERS[0][30]~q\,
	combout => \FILE_REG|Mux30~0_combout\);

\FILE_REG|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux30~1_combout\ = (\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|Mux30~0_combout\ & ((\FILE_REG|REGISTERS[3][30]~q\))) # (!\FILE_REG|Mux30~0_combout\ & (\FILE_REG|REGISTERS[1][30]~q\)))) # (!\IFID|OUT_INSTR_MEM\(28) & (((\FILE_REG|Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[1][30]~q\,
	datab => \IFID|OUT_INSTR_MEM\(28),
	datac => \FILE_REG|Mux30~0_combout\,
	datad => \FILE_REG|REGISTERS[3][30]~q\,
	combout => \FILE_REG|Mux30~1_combout\);

\IDEX|IDEX_OUT_READ1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux30~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(30));

\FILE_REG|REGISTERS[2][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[29]~2_combout\,
	ena => \FILE_REG|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[2][29]~q\);

\FILE_REG|REGISTERS[0][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[29]~2_combout\,
	ena => \FILE_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[0][29]~q\);

\FILE_REG|Mux61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux61~0_combout\ = (\IFID|OUT_INSTR_MEM\(31) & (((\IFID|OUT_INSTR_MEM\(28))))) # (!\IFID|OUT_INSTR_MEM\(31) & ((\IFID|OUT_INSTR_MEM\(28) & (\FILE_REG|REGISTERS[2][29]~q\)) # (!\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|REGISTERS[0][29]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(31),
	datab => \FILE_REG|REGISTERS[2][29]~q\,
	datac => \IFID|OUT_INSTR_MEM\(28),
	datad => \FILE_REG|REGISTERS[0][29]~q\,
	combout => \FILE_REG|Mux61~0_combout\);

\FILE_REG|REGISTERS[3][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[29]~2_combout\,
	ena => \FILE_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[3][29]~q\);

\FILE_REG|Mux61~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux61~1_combout\ = (\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|Mux61~0_combout\ & ((\FILE_REG|REGISTERS[3][29]~q\))) # (!\FILE_REG|Mux61~0_combout\ & (\FILE_REG|REGISTERS[1][29]~q\)))) # (!\IFID|OUT_INSTR_MEM\(31) & (((\FILE_REG|Mux61~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[1][29]~q\,
	datab => \IFID|OUT_INSTR_MEM\(31),
	datac => \FILE_REG|Mux61~0_combout\,
	datad => \FILE_REG|REGISTERS[3][29]~q\,
	combout => \FILE_REG|Mux61~1_combout\);

\IDEX|IDEX_OUT_READ2[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux61~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ2\(29));

\MUX_ALU_B|X[29]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_ALU_B|X[29]~2_combout\ = (\IDEX|IDEX_OUT_READ2\(29) & !\IDEX|IDEX_OUT_EX\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_READ2\(29),
	datad => \IDEX|IDEX_OUT_EX\(4),
	combout => \MUX_ALU_B|X[29]~2_combout\);

\MAIN_ALU|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~12_combout\ = (\ALU_CONTROL|ULA_CODE\(0) & ((\IDEX|IDEX_OUT_READ1\(29) & ((\MUX_ALU_B|X[29]~2_combout\) # (\ALU_CONTROL|ULA_CODE\(1)))) # (!\IDEX|IDEX_OUT_READ1\(29) & (\MUX_ALU_B|X[29]~2_combout\ & \ALU_CONTROL|ULA_CODE\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(0),
	datab => \IDEX|IDEX_OUT_READ1\(29),
	datac => \MUX_ALU_B|X[29]~2_combout\,
	datad => \ALU_CONTROL|ULA_CODE\(1),
	combout => \MAIN_ALU|Add0~12_combout\);

\MAIN_ALU|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~13_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (((!\IDEX|IDEX_OUT_EX\(4) & \IDEX|IDEX_OUT_READ2\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(1),
	datab => \IDEX|IDEX_OUT_EX\(4),
	datad => \IDEX|IDEX_OUT_READ2\(29),
	combout => \MAIN_ALU|Add0~13_combout\);

\MAIN_ALU|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~14_combout\ = (\MAIN_ALU|Add0~13_combout\ & ((\IDEX|IDEX_OUT_READ1\(29) & (\MAIN_ALU|Add0~10\ & VCC)) # (!\IDEX|IDEX_OUT_READ1\(29) & (!\MAIN_ALU|Add0~10\)))) # (!\MAIN_ALU|Add0~13_combout\ & ((\IDEX|IDEX_OUT_READ1\(29) & 
-- (!\MAIN_ALU|Add0~10\)) # (!\IDEX|IDEX_OUT_READ1\(29) & ((\MAIN_ALU|Add0~10\) # (GND)))))
-- \MAIN_ALU|Add0~15\ = CARRY((\MAIN_ALU|Add0~13_combout\ & (!\IDEX|IDEX_OUT_READ1\(29) & !\MAIN_ALU|Add0~10\)) # (!\MAIN_ALU|Add0~13_combout\ & ((!\MAIN_ALU|Add0~10\) # (!\IDEX|IDEX_OUT_READ1\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~13_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(29),
	datad => VCC,
	cin => \MAIN_ALU|Add0~10\,
	combout => \MAIN_ALU|Add0~14_combout\,
	cout => \MAIN_ALU|Add0~15\);

\MAIN_ALU|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~16_combout\ = (\MAIN_ALU|Add0~12_combout\) # ((\MAIN_ALU|Add0~14_combout\ & !\ALU_CONTROL|ULA_CODE\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~12_combout\,
	datab => \MAIN_ALU|Add0~14_combout\,
	datad => \ALU_CONTROL|ULA_CODE\(0),
	combout => \MAIN_ALU|Add0~16_combout\);

\EXMEM|EXMEM_OUT_RESULT_ULA[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MAIN_ALU|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ULA\(29));

\MEMWB|MEMWB_OUT_RESULT_ULA[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ULA\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWB|MEMWB_OUT_RESULT_ULA\(29));

\MUX_WB|X[29]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_WB|X[29]~2_combout\ = (\MEMWB|MEMWB_OUT_WB\(1) & \MEMWB|MEMWB_OUT_RESULT_ULA\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMWB|MEMWB_OUT_WB\(1),
	datab => \MEMWB|MEMWB_OUT_RESULT_ULA\(29),
	combout => \MUX_WB|X[29]~2_combout\);

\FILE_REG|REGISTERS[1][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[29]~2_combout\,
	ena => \FILE_REG|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[1][29]~q\);

\FILE_REG|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux29~0_combout\ = (\IFID|OUT_INSTR_MEM\(28) & (((\IFID|OUT_INSTR_MEM\(31))))) # (!\IFID|OUT_INSTR_MEM\(28) & ((\IFID|OUT_INSTR_MEM\(31) & (\FILE_REG|REGISTERS[2][29]~q\)) # (!\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|REGISTERS[0][29]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(28),
	datab => \FILE_REG|REGISTERS[2][29]~q\,
	datac => \IFID|OUT_INSTR_MEM\(31),
	datad => \FILE_REG|REGISTERS[0][29]~q\,
	combout => \FILE_REG|Mux29~0_combout\);

\FILE_REG|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux29~1_combout\ = (\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|Mux29~0_combout\ & ((\FILE_REG|REGISTERS[3][29]~q\))) # (!\FILE_REG|Mux29~0_combout\ & (\FILE_REG|REGISTERS[1][29]~q\)))) # (!\IFID|OUT_INSTR_MEM\(28) & (((\FILE_REG|Mux29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[1][29]~q\,
	datab => \IFID|OUT_INSTR_MEM\(28),
	datac => \FILE_REG|Mux29~0_combout\,
	datad => \FILE_REG|REGISTERS[3][29]~q\,
	combout => \FILE_REG|Mux29~1_combout\);

\IDEX|IDEX_OUT_READ1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux29~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(29));

\FILE_REG|REGISTERS[2][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[28]~3_combout\,
	ena => \FILE_REG|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[2][28]~q\);

\FILE_REG|REGISTERS[0][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[28]~3_combout\,
	ena => \FILE_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[0][28]~q\);

\FILE_REG|Mux60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux60~0_combout\ = (\IFID|OUT_INSTR_MEM\(28) & (((\IFID|OUT_INSTR_MEM\(31))))) # (!\IFID|OUT_INSTR_MEM\(28) & ((\IFID|OUT_INSTR_MEM\(31) & (\FILE_REG|REGISTERS[1][28]~q\)) # (!\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|REGISTERS[0][28]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(28),
	datab => \FILE_REG|REGISTERS[1][28]~q\,
	datac => \IFID|OUT_INSTR_MEM\(31),
	datad => \FILE_REG|REGISTERS[0][28]~q\,
	combout => \FILE_REG|Mux60~0_combout\);

\FILE_REG|REGISTERS[3][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[28]~3_combout\,
	ena => \FILE_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[3][28]~q\);

\FILE_REG|Mux60~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux60~1_combout\ = (\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|Mux60~0_combout\ & ((\FILE_REG|REGISTERS[3][28]~q\))) # (!\FILE_REG|Mux60~0_combout\ & (\FILE_REG|REGISTERS[2][28]~q\)))) # (!\IFID|OUT_INSTR_MEM\(28) & (((\FILE_REG|Mux60~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[2][28]~q\,
	datab => \IFID|OUT_INSTR_MEM\(28),
	datac => \FILE_REG|Mux60~0_combout\,
	datad => \FILE_REG|REGISTERS[3][28]~q\,
	combout => \FILE_REG|Mux60~1_combout\);

\IDEX|IDEX_OUT_READ2[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux60~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ2\(28));

\MUX_ALU_B|X[28]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_ALU_B|X[28]~3_combout\ = (\IDEX|IDEX_OUT_EX\(4) & (\IDEX|IDEX_OUT_RT\(3))) # (!\IDEX|IDEX_OUT_EX\(4) & ((\IDEX|IDEX_OUT_READ2\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_RT\(3),
	datab => \IDEX|IDEX_OUT_READ2\(28),
	datad => \IDEX|IDEX_OUT_EX\(4),
	combout => \MUX_ALU_B|X[28]~3_combout\);

\MAIN_ALU|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~17_combout\ = (\ALU_CONTROL|ULA_CODE\(0) & ((\IDEX|IDEX_OUT_READ1\(28) & ((\MUX_ALU_B|X[28]~3_combout\) # (\ALU_CONTROL|ULA_CODE\(1)))) # (!\IDEX|IDEX_OUT_READ1\(28) & (\MUX_ALU_B|X[28]~3_combout\ & \ALU_CONTROL|ULA_CODE\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(0),
	datab => \IDEX|IDEX_OUT_READ1\(28),
	datac => \MUX_ALU_B|X[28]~3_combout\,
	datad => \ALU_CONTROL|ULA_CODE\(1),
	combout => \MAIN_ALU|Add0~17_combout\);

\MAIN_ALU|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~18_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (((\IDEX|IDEX_OUT_EX\(4) & ((\IDEX|IDEX_OUT_RT\(3)))) # (!\IDEX|IDEX_OUT_EX\(4) & (\IDEX|IDEX_OUT_READ2\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_EX\(4),
	datab => \IDEX|IDEX_OUT_READ2\(28),
	datac => \IDEX|IDEX_OUT_RT\(3),
	datad => \ALU_CONTROL|ULA_CODE\(1),
	combout => \MAIN_ALU|Add0~18_combout\);

\MAIN_ALU|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~19_combout\ = ((\MAIN_ALU|Add0~18_combout\ $ (\IDEX|IDEX_OUT_READ1\(28) $ (!\MAIN_ALU|Add0~15\)))) # (GND)
-- \MAIN_ALU|Add0~20\ = CARRY((\MAIN_ALU|Add0~18_combout\ & ((\IDEX|IDEX_OUT_READ1\(28)) # (!\MAIN_ALU|Add0~15\))) # (!\MAIN_ALU|Add0~18_combout\ & (\IDEX|IDEX_OUT_READ1\(28) & !\MAIN_ALU|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~18_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(28),
	datad => VCC,
	cin => \MAIN_ALU|Add0~15\,
	combout => \MAIN_ALU|Add0~19_combout\,
	cout => \MAIN_ALU|Add0~20\);

\MAIN_ALU|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~21_combout\ = (\MAIN_ALU|Add0~17_combout\) # ((\MAIN_ALU|Add0~19_combout\ & !\ALU_CONTROL|ULA_CODE\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~17_combout\,
	datab => \MAIN_ALU|Add0~19_combout\,
	datad => \ALU_CONTROL|ULA_CODE\(0),
	combout => \MAIN_ALU|Add0~21_combout\);

\EXMEM|EXMEM_OUT_RESULT_ULA[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MAIN_ALU|Add0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ULA\(28));

\MEMWB|MEMWB_OUT_RESULT_ULA[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ULA\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWB|MEMWB_OUT_RESULT_ULA\(28));

\MUX_WB|X[28]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_WB|X[28]~3_combout\ = (\MEMWB|MEMWB_OUT_WB\(1) & \MEMWB|MEMWB_OUT_RESULT_ULA\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMWB|MEMWB_OUT_WB\(1),
	datab => \MEMWB|MEMWB_OUT_RESULT_ULA\(28),
	combout => \MUX_WB|X[28]~3_combout\);

\FILE_REG|REGISTERS[1][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[28]~3_combout\,
	ena => \FILE_REG|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[1][28]~q\);

\FILE_REG|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux28~0_combout\ = (\IFID|OUT_INSTR_MEM\(28) & (((\IFID|OUT_INSTR_MEM\(31))))) # (!\IFID|OUT_INSTR_MEM\(28) & ((\IFID|OUT_INSTR_MEM\(31) & (\FILE_REG|REGISTERS[2][28]~q\)) # (!\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|REGISTERS[0][28]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(28),
	datab => \FILE_REG|REGISTERS[2][28]~q\,
	datac => \IFID|OUT_INSTR_MEM\(31),
	datad => \FILE_REG|REGISTERS[0][28]~q\,
	combout => \FILE_REG|Mux28~0_combout\);

\FILE_REG|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux28~1_combout\ = (\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|Mux28~0_combout\ & ((\FILE_REG|REGISTERS[3][28]~q\))) # (!\FILE_REG|Mux28~0_combout\ & (\FILE_REG|REGISTERS[1][28]~q\)))) # (!\IFID|OUT_INSTR_MEM\(28) & (((\FILE_REG|Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[1][28]~q\,
	datab => \IFID|OUT_INSTR_MEM\(28),
	datac => \FILE_REG|Mux28~0_combout\,
	datad => \FILE_REG|REGISTERS[3][28]~q\,
	combout => \FILE_REG|Mux28~1_combout\);

\IDEX|IDEX_OUT_READ1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux28~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(28));

\FILE_REG|REGISTERS[2][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[27]~4_combout\,
	ena => \FILE_REG|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[2][27]~q\);

\FILE_REG|REGISTERS[0][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[27]~4_combout\,
	ena => \FILE_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[0][27]~q\);

\FILE_REG|Mux59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux59~0_combout\ = (\IFID|OUT_INSTR_MEM\(31) & (((\IFID|OUT_INSTR_MEM\(28))))) # (!\IFID|OUT_INSTR_MEM\(31) & ((\IFID|OUT_INSTR_MEM\(28) & (\FILE_REG|REGISTERS[2][27]~q\)) # (!\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|REGISTERS[0][27]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(31),
	datab => \FILE_REG|REGISTERS[2][27]~q\,
	datac => \IFID|OUT_INSTR_MEM\(28),
	datad => \FILE_REG|REGISTERS[0][27]~q\,
	combout => \FILE_REG|Mux59~0_combout\);

\FILE_REG|REGISTERS[3][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[27]~4_combout\,
	ena => \FILE_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[3][27]~q\);

\FILE_REG|Mux59~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux59~1_combout\ = (\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|Mux59~0_combout\ & ((\FILE_REG|REGISTERS[3][27]~q\))) # (!\FILE_REG|Mux59~0_combout\ & (\FILE_REG|REGISTERS[1][27]~q\)))) # (!\IFID|OUT_INSTR_MEM\(31) & (((\FILE_REG|Mux59~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[1][27]~q\,
	datab => \IFID|OUT_INSTR_MEM\(31),
	datac => \FILE_REG|Mux59~0_combout\,
	datad => \FILE_REG|REGISTERS[3][27]~q\,
	combout => \FILE_REG|Mux59~1_combout\);

\IDEX|IDEX_OUT_READ2[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux59~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ2\(27));

\MAIN_ALU|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~22_combout\ = (\IDEX|IDEX_OUT_READ1\(27) & ((\ALU_CONTROL|ULA_CODE\(1)) # ((\IDEX|IDEX_OUT_READ2\(27) & !\IDEX|IDEX_OUT_EX\(4))))) # (!\IDEX|IDEX_OUT_READ1\(27) & (\ALU_CONTROL|ULA_CODE\(1) & (\IDEX|IDEX_OUT_READ2\(27) & 
-- !\IDEX|IDEX_OUT_EX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_READ1\(27),
	datab => \ALU_CONTROL|ULA_CODE\(1),
	datac => \IDEX|IDEX_OUT_READ2\(27),
	datad => \IDEX|IDEX_OUT_EX\(4),
	combout => \MAIN_ALU|Add0~22_combout\);

\MAIN_ALU|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~23_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (((!\IDEX|IDEX_OUT_EX\(4) & \IDEX|IDEX_OUT_READ2\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(1),
	datab => \IDEX|IDEX_OUT_EX\(4),
	datad => \IDEX|IDEX_OUT_READ2\(27),
	combout => \MAIN_ALU|Add0~23_combout\);

\MAIN_ALU|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~24_combout\ = (\MAIN_ALU|Add0~23_combout\ & ((\IDEX|IDEX_OUT_READ1\(27) & (\MAIN_ALU|Add0~20\ & VCC)) # (!\IDEX|IDEX_OUT_READ1\(27) & (!\MAIN_ALU|Add0~20\)))) # (!\MAIN_ALU|Add0~23_combout\ & ((\IDEX|IDEX_OUT_READ1\(27) & 
-- (!\MAIN_ALU|Add0~20\)) # (!\IDEX|IDEX_OUT_READ1\(27) & ((\MAIN_ALU|Add0~20\) # (GND)))))
-- \MAIN_ALU|Add0~25\ = CARRY((\MAIN_ALU|Add0~23_combout\ & (!\IDEX|IDEX_OUT_READ1\(27) & !\MAIN_ALU|Add0~20\)) # (!\MAIN_ALU|Add0~23_combout\ & ((!\MAIN_ALU|Add0~20\) # (!\IDEX|IDEX_OUT_READ1\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~23_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(27),
	datad => VCC,
	cin => \MAIN_ALU|Add0~20\,
	combout => \MAIN_ALU|Add0~24_combout\,
	cout => \MAIN_ALU|Add0~25\);

\MAIN_ALU|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~26_combout\ = (\ALU_CONTROL|ULA_CODE\(0) & (\MAIN_ALU|Add0~22_combout\)) # (!\ALU_CONTROL|ULA_CODE\(0) & ((\MAIN_ALU|Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~22_combout\,
	datab => \MAIN_ALU|Add0~24_combout\,
	datad => \ALU_CONTROL|ULA_CODE\(0),
	combout => \MAIN_ALU|Add0~26_combout\);

\EXMEM|EXMEM_OUT_RESULT_ULA[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MAIN_ALU|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ULA\(27));

\MEMWB|MEMWB_OUT_RESULT_ULA[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ULA\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWB|MEMWB_OUT_RESULT_ULA\(27));

\MUX_WB|X[27]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_WB|X[27]~4_combout\ = (\MEMWB|MEMWB_OUT_WB\(1) & \MEMWB|MEMWB_OUT_RESULT_ULA\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMWB|MEMWB_OUT_WB\(1),
	datab => \MEMWB|MEMWB_OUT_RESULT_ULA\(27),
	combout => \MUX_WB|X[27]~4_combout\);

\FILE_REG|REGISTERS[1][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[27]~4_combout\,
	ena => \FILE_REG|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[1][27]~q\);

\FILE_REG|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux27~0_combout\ = (\IFID|OUT_INSTR_MEM\(28) & (((\IFID|OUT_INSTR_MEM\(31))))) # (!\IFID|OUT_INSTR_MEM\(28) & ((\IFID|OUT_INSTR_MEM\(31) & (\FILE_REG|REGISTERS[2][27]~q\)) # (!\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|REGISTERS[0][27]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(28),
	datab => \FILE_REG|REGISTERS[2][27]~q\,
	datac => \IFID|OUT_INSTR_MEM\(31),
	datad => \FILE_REG|REGISTERS[0][27]~q\,
	combout => \FILE_REG|Mux27~0_combout\);

\FILE_REG|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux27~1_combout\ = (\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|Mux27~0_combout\ & ((\FILE_REG|REGISTERS[3][27]~q\))) # (!\FILE_REG|Mux27~0_combout\ & (\FILE_REG|REGISTERS[1][27]~q\)))) # (!\IFID|OUT_INSTR_MEM\(28) & (((\FILE_REG|Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[1][27]~q\,
	datab => \IFID|OUT_INSTR_MEM\(28),
	datac => \FILE_REG|Mux27~0_combout\,
	datad => \FILE_REG|REGISTERS[3][27]~q\,
	combout => \FILE_REG|Mux27~1_combout\);

\IDEX|IDEX_OUT_READ1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux27~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(27));

\FILE_REG|REGISTERS[1][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[26]~5_combout\,
	ena => \FILE_REG|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[1][26]~q\);

\FILE_REG|REGISTERS[0][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[26]~5_combout\,
	ena => \FILE_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[0][26]~q\);

\FILE_REG|Mux58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux58~0_combout\ = (\IFID|OUT_INSTR_MEM\(28) & (((\IFID|OUT_INSTR_MEM\(31))))) # (!\IFID|OUT_INSTR_MEM\(28) & ((\IFID|OUT_INSTR_MEM\(31) & (\FILE_REG|REGISTERS[1][26]~q\)) # (!\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|REGISTERS[0][26]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(28),
	datab => \FILE_REG|REGISTERS[1][26]~q\,
	datac => \IFID|OUT_INSTR_MEM\(31),
	datad => \FILE_REG|REGISTERS[0][26]~q\,
	combout => \FILE_REG|Mux58~0_combout\);

\FILE_REG|REGISTERS[3][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[26]~5_combout\,
	ena => \FILE_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[3][26]~q\);

\FILE_REG|Mux58~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux58~1_combout\ = (\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|Mux58~0_combout\ & ((\FILE_REG|REGISTERS[3][26]~q\))) # (!\FILE_REG|Mux58~0_combout\ & (\FILE_REG|REGISTERS[2][26]~q\)))) # (!\IFID|OUT_INSTR_MEM\(28) & (((\FILE_REG|Mux58~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[2][26]~q\,
	datab => \IFID|OUT_INSTR_MEM\(28),
	datac => \FILE_REG|Mux58~0_combout\,
	datad => \FILE_REG|REGISTERS[3][26]~q\,
	combout => \FILE_REG|Mux58~1_combout\);

\IDEX|IDEX_OUT_READ2[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux58~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ2\(26));

\MAIN_ALU|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~27_combout\ = (\IDEX|IDEX_OUT_READ1\(26) & ((\ALU_CONTROL|ULA_CODE\(1)) # ((\IDEX|IDEX_OUT_READ2\(26) & !\IDEX|IDEX_OUT_EX\(4))))) # (!\IDEX|IDEX_OUT_READ1\(26) & (\ALU_CONTROL|ULA_CODE\(1) & (\IDEX|IDEX_OUT_READ2\(26) & 
-- !\IDEX|IDEX_OUT_EX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_READ1\(26),
	datab => \ALU_CONTROL|ULA_CODE\(1),
	datac => \IDEX|IDEX_OUT_READ2\(26),
	datad => \IDEX|IDEX_OUT_EX\(4),
	combout => \MAIN_ALU|Add0~27_combout\);

\MAIN_ALU|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~28_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (((!\IDEX|IDEX_OUT_EX\(4) & \IDEX|IDEX_OUT_READ2\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(1),
	datab => \IDEX|IDEX_OUT_EX\(4),
	datad => \IDEX|IDEX_OUT_READ2\(26),
	combout => \MAIN_ALU|Add0~28_combout\);

\MAIN_ALU|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~29_combout\ = ((\MAIN_ALU|Add0~28_combout\ $ (\IDEX|IDEX_OUT_READ1\(26) $ (!\MAIN_ALU|Add0~25\)))) # (GND)
-- \MAIN_ALU|Add0~30\ = CARRY((\MAIN_ALU|Add0~28_combout\ & ((\IDEX|IDEX_OUT_READ1\(26)) # (!\MAIN_ALU|Add0~25\))) # (!\MAIN_ALU|Add0~28_combout\ & (\IDEX|IDEX_OUT_READ1\(26) & !\MAIN_ALU|Add0~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~28_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(26),
	datad => VCC,
	cin => \MAIN_ALU|Add0~25\,
	combout => \MAIN_ALU|Add0~29_combout\,
	cout => \MAIN_ALU|Add0~30\);

\MAIN_ALU|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~31_combout\ = (\ALU_CONTROL|ULA_CODE\(0) & (\MAIN_ALU|Add0~27_combout\)) # (!\ALU_CONTROL|ULA_CODE\(0) & ((\MAIN_ALU|Add0~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~27_combout\,
	datab => \MAIN_ALU|Add0~29_combout\,
	datad => \ALU_CONTROL|ULA_CODE\(0),
	combout => \MAIN_ALU|Add0~31_combout\);

\EXMEM|EXMEM_OUT_RESULT_ULA[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MAIN_ALU|Add0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ULA\(26));

\MEMWB|MEMWB_OUT_RESULT_ULA[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ULA\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWB|MEMWB_OUT_RESULT_ULA\(26));

\MUX_WB|X[26]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_WB|X[26]~5_combout\ = (\MEMWB|MEMWB_OUT_WB\(1) & \MEMWB|MEMWB_OUT_RESULT_ULA\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMWB|MEMWB_OUT_WB\(1),
	datab => \MEMWB|MEMWB_OUT_RESULT_ULA\(26),
	combout => \MUX_WB|X[26]~5_combout\);

\FILE_REG|REGISTERS[2][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[26]~5_combout\,
	ena => \FILE_REG|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[2][26]~q\);

\FILE_REG|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux26~0_combout\ = (\IFID|OUT_INSTR_MEM\(31) & (((\IFID|OUT_INSTR_MEM\(28))))) # (!\IFID|OUT_INSTR_MEM\(31) & ((\IFID|OUT_INSTR_MEM\(28) & (\FILE_REG|REGISTERS[1][26]~q\)) # (!\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|REGISTERS[0][26]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(31),
	datab => \FILE_REG|REGISTERS[1][26]~q\,
	datac => \IFID|OUT_INSTR_MEM\(28),
	datad => \FILE_REG|REGISTERS[0][26]~q\,
	combout => \FILE_REG|Mux26~0_combout\);

\FILE_REG|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux26~1_combout\ = (\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|Mux26~0_combout\ & ((\FILE_REG|REGISTERS[3][26]~q\))) # (!\FILE_REG|Mux26~0_combout\ & (\FILE_REG|REGISTERS[2][26]~q\)))) # (!\IFID|OUT_INSTR_MEM\(31) & (((\FILE_REG|Mux26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[2][26]~q\,
	datab => \IFID|OUT_INSTR_MEM\(31),
	datac => \FILE_REG|Mux26~0_combout\,
	datad => \FILE_REG|REGISTERS[3][26]~q\,
	combout => \FILE_REG|Mux26~1_combout\);

\IDEX|IDEX_OUT_READ1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux26~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(26));

\FILE_REG|REGISTERS[2][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[25]~6_combout\,
	ena => \FILE_REG|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[2][25]~q\);

\FILE_REG|REGISTERS[0][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[25]~6_combout\,
	ena => \FILE_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[0][25]~q\);

\FILE_REG|Mux57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux57~0_combout\ = (\IFID|OUT_INSTR_MEM\(31) & (((\IFID|OUT_INSTR_MEM\(28))))) # (!\IFID|OUT_INSTR_MEM\(31) & ((\IFID|OUT_INSTR_MEM\(28) & (\FILE_REG|REGISTERS[2][25]~q\)) # (!\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|REGISTERS[0][25]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(31),
	datab => \FILE_REG|REGISTERS[2][25]~q\,
	datac => \IFID|OUT_INSTR_MEM\(28),
	datad => \FILE_REG|REGISTERS[0][25]~q\,
	combout => \FILE_REG|Mux57~0_combout\);

\FILE_REG|REGISTERS[3][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[25]~6_combout\,
	ena => \FILE_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[3][25]~q\);

\FILE_REG|Mux57~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux57~1_combout\ = (\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|Mux57~0_combout\ & ((\FILE_REG|REGISTERS[3][25]~q\))) # (!\FILE_REG|Mux57~0_combout\ & (\FILE_REG|REGISTERS[1][25]~q\)))) # (!\IFID|OUT_INSTR_MEM\(31) & (((\FILE_REG|Mux57~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[1][25]~q\,
	datab => \IFID|OUT_INSTR_MEM\(31),
	datac => \FILE_REG|Mux57~0_combout\,
	datad => \FILE_REG|REGISTERS[3][25]~q\,
	combout => \FILE_REG|Mux57~1_combout\);

\IDEX|IDEX_OUT_READ2[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux57~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ2\(25));

\MUX_ALU_B|X[25]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_ALU_B|X[25]~6_combout\ = (\IDEX|IDEX_OUT_READ2\(25) & !\IDEX|IDEX_OUT_EX\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_READ2\(25),
	datad => \IDEX|IDEX_OUT_EX\(4),
	combout => \MUX_ALU_B|X[25]~6_combout\);

\MAIN_ALU|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~32_combout\ = (\ALU_CONTROL|ULA_CODE\(0) & ((\IDEX|IDEX_OUT_READ1\(25) & ((\MUX_ALU_B|X[25]~6_combout\) # (\ALU_CONTROL|ULA_CODE\(1)))) # (!\IDEX|IDEX_OUT_READ1\(25) & (\MUX_ALU_B|X[25]~6_combout\ & \ALU_CONTROL|ULA_CODE\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(0),
	datab => \IDEX|IDEX_OUT_READ1\(25),
	datac => \MUX_ALU_B|X[25]~6_combout\,
	datad => \ALU_CONTROL|ULA_CODE\(1),
	combout => \MAIN_ALU|Add0~32_combout\);

\MAIN_ALU|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~33_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (((!\IDEX|IDEX_OUT_EX\(4) & \IDEX|IDEX_OUT_READ2\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(1),
	datab => \IDEX|IDEX_OUT_EX\(4),
	datad => \IDEX|IDEX_OUT_READ2\(25),
	combout => \MAIN_ALU|Add0~33_combout\);

\MAIN_ALU|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~34_combout\ = (\MAIN_ALU|Add0~33_combout\ & ((\IDEX|IDEX_OUT_READ1\(25) & (\MAIN_ALU|Add0~30\ & VCC)) # (!\IDEX|IDEX_OUT_READ1\(25) & (!\MAIN_ALU|Add0~30\)))) # (!\MAIN_ALU|Add0~33_combout\ & ((\IDEX|IDEX_OUT_READ1\(25) & 
-- (!\MAIN_ALU|Add0~30\)) # (!\IDEX|IDEX_OUT_READ1\(25) & ((\MAIN_ALU|Add0~30\) # (GND)))))
-- \MAIN_ALU|Add0~35\ = CARRY((\MAIN_ALU|Add0~33_combout\ & (!\IDEX|IDEX_OUT_READ1\(25) & !\MAIN_ALU|Add0~30\)) # (!\MAIN_ALU|Add0~33_combout\ & ((!\MAIN_ALU|Add0~30\) # (!\IDEX|IDEX_OUT_READ1\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~33_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(25),
	datad => VCC,
	cin => \MAIN_ALU|Add0~30\,
	combout => \MAIN_ALU|Add0~34_combout\,
	cout => \MAIN_ALU|Add0~35\);

\MAIN_ALU|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~36_combout\ = (\MAIN_ALU|Add0~32_combout\) # ((\MAIN_ALU|Add0~34_combout\ & !\ALU_CONTROL|ULA_CODE\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~32_combout\,
	datab => \MAIN_ALU|Add0~34_combout\,
	datad => \ALU_CONTROL|ULA_CODE\(0),
	combout => \MAIN_ALU|Add0~36_combout\);

\EXMEM|EXMEM_OUT_RESULT_ULA[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MAIN_ALU|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ULA\(25));

\MEMWB|MEMWB_OUT_RESULT_ULA[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ULA\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWB|MEMWB_OUT_RESULT_ULA\(25));

\MUX_WB|X[25]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_WB|X[25]~6_combout\ = (\MEMWB|MEMWB_OUT_WB\(1) & \MEMWB|MEMWB_OUT_RESULT_ULA\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMWB|MEMWB_OUT_WB\(1),
	datab => \MEMWB|MEMWB_OUT_RESULT_ULA\(25),
	combout => \MUX_WB|X[25]~6_combout\);

\FILE_REG|REGISTERS[1][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[25]~6_combout\,
	ena => \FILE_REG|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[1][25]~q\);

\FILE_REG|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux25~0_combout\ = (\IFID|OUT_INSTR_MEM\(28) & (((\IFID|OUT_INSTR_MEM\(31))))) # (!\IFID|OUT_INSTR_MEM\(28) & ((\IFID|OUT_INSTR_MEM\(31) & (\FILE_REG|REGISTERS[2][25]~q\)) # (!\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|REGISTERS[0][25]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(28),
	datab => \FILE_REG|REGISTERS[2][25]~q\,
	datac => \IFID|OUT_INSTR_MEM\(31),
	datad => \FILE_REG|REGISTERS[0][25]~q\,
	combout => \FILE_REG|Mux25~0_combout\);

\FILE_REG|Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux25~1_combout\ = (\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|Mux25~0_combout\ & ((\FILE_REG|REGISTERS[3][25]~q\))) # (!\FILE_REG|Mux25~0_combout\ & (\FILE_REG|REGISTERS[1][25]~q\)))) # (!\IFID|OUT_INSTR_MEM\(28) & (((\FILE_REG|Mux25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[1][25]~q\,
	datab => \IFID|OUT_INSTR_MEM\(28),
	datac => \FILE_REG|Mux25~0_combout\,
	datad => \FILE_REG|REGISTERS[3][25]~q\,
	combout => \FILE_REG|Mux25~1_combout\);

\IDEX|IDEX_OUT_READ1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux25~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(25));

\FILE_REG|REGISTERS[1][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[24]~7_combout\,
	ena => \FILE_REG|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[1][24]~q\);

\FILE_REG|REGISTERS[0][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[24]~7_combout\,
	ena => \FILE_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[0][24]~q\);

\FILE_REG|Mux56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux56~0_combout\ = (\IFID|OUT_INSTR_MEM\(28) & (((\IFID|OUT_INSTR_MEM\(31))))) # (!\IFID|OUT_INSTR_MEM\(28) & ((\IFID|OUT_INSTR_MEM\(31) & (\FILE_REG|REGISTERS[1][24]~q\)) # (!\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|REGISTERS[0][24]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(28),
	datab => \FILE_REG|REGISTERS[1][24]~q\,
	datac => \IFID|OUT_INSTR_MEM\(31),
	datad => \FILE_REG|REGISTERS[0][24]~q\,
	combout => \FILE_REG|Mux56~0_combout\);

\FILE_REG|REGISTERS[3][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[24]~7_combout\,
	ena => \FILE_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[3][24]~q\);

\FILE_REG|Mux56~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux56~1_combout\ = (\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|Mux56~0_combout\ & ((\FILE_REG|REGISTERS[3][24]~q\))) # (!\FILE_REG|Mux56~0_combout\ & (\FILE_REG|REGISTERS[2][24]~q\)))) # (!\IFID|OUT_INSTR_MEM\(28) & (((\FILE_REG|Mux56~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[2][24]~q\,
	datab => \IFID|OUT_INSTR_MEM\(28),
	datac => \FILE_REG|Mux56~0_combout\,
	datad => \FILE_REG|REGISTERS[3][24]~q\,
	combout => \FILE_REG|Mux56~1_combout\);

\IDEX|IDEX_OUT_READ2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux56~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ2\(24));

\MAIN_ALU|Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~37_combout\ = (\IDEX|IDEX_OUT_READ1\(24) & ((\ALU_CONTROL|ULA_CODE\(1)) # ((\IDEX|IDEX_OUT_READ2\(24) & !\IDEX|IDEX_OUT_EX\(4))))) # (!\IDEX|IDEX_OUT_READ1\(24) & (\ALU_CONTROL|ULA_CODE\(1) & (\IDEX|IDEX_OUT_READ2\(24) & 
-- !\IDEX|IDEX_OUT_EX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_READ1\(24),
	datab => \ALU_CONTROL|ULA_CODE\(1),
	datac => \IDEX|IDEX_OUT_READ2\(24),
	datad => \IDEX|IDEX_OUT_EX\(4),
	combout => \MAIN_ALU|Add0~37_combout\);

\MAIN_ALU|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~38_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (((!\IDEX|IDEX_OUT_EX\(4) & \IDEX|IDEX_OUT_READ2\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(1),
	datab => \IDEX|IDEX_OUT_EX\(4),
	datad => \IDEX|IDEX_OUT_READ2\(24),
	combout => \MAIN_ALU|Add0~38_combout\);

\MAIN_ALU|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~39_combout\ = ((\MAIN_ALU|Add0~38_combout\ $ (\IDEX|IDEX_OUT_READ1\(24) $ (!\MAIN_ALU|Add0~35\)))) # (GND)
-- \MAIN_ALU|Add0~40\ = CARRY((\MAIN_ALU|Add0~38_combout\ & ((\IDEX|IDEX_OUT_READ1\(24)) # (!\MAIN_ALU|Add0~35\))) # (!\MAIN_ALU|Add0~38_combout\ & (\IDEX|IDEX_OUT_READ1\(24) & !\MAIN_ALU|Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~38_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(24),
	datad => VCC,
	cin => \MAIN_ALU|Add0~35\,
	combout => \MAIN_ALU|Add0~39_combout\,
	cout => \MAIN_ALU|Add0~40\);

\MAIN_ALU|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~41_combout\ = (\ALU_CONTROL|ULA_CODE\(0) & (\MAIN_ALU|Add0~37_combout\)) # (!\ALU_CONTROL|ULA_CODE\(0) & ((\MAIN_ALU|Add0~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~37_combout\,
	datab => \MAIN_ALU|Add0~39_combout\,
	datad => \ALU_CONTROL|ULA_CODE\(0),
	combout => \MAIN_ALU|Add0~41_combout\);

\EXMEM|EXMEM_OUT_RESULT_ULA[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MAIN_ALU|Add0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ULA\(24));

\MEMWB|MEMWB_OUT_RESULT_ULA[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ULA\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWB|MEMWB_OUT_RESULT_ULA\(24));

\MUX_WB|X[24]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_WB|X[24]~7_combout\ = (\MEMWB|MEMWB_OUT_WB\(1) & \MEMWB|MEMWB_OUT_RESULT_ULA\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMWB|MEMWB_OUT_WB\(1),
	datab => \MEMWB|MEMWB_OUT_RESULT_ULA\(24),
	combout => \MUX_WB|X[24]~7_combout\);

\FILE_REG|REGISTERS[2][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[24]~7_combout\,
	ena => \FILE_REG|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[2][24]~q\);

\FILE_REG|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux24~0_combout\ = (\IFID|OUT_INSTR_MEM\(31) & (((\IFID|OUT_INSTR_MEM\(28))))) # (!\IFID|OUT_INSTR_MEM\(31) & ((\IFID|OUT_INSTR_MEM\(28) & (\FILE_REG|REGISTERS[1][24]~q\)) # (!\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|REGISTERS[0][24]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(31),
	datab => \FILE_REG|REGISTERS[1][24]~q\,
	datac => \IFID|OUT_INSTR_MEM\(28),
	datad => \FILE_REG|REGISTERS[0][24]~q\,
	combout => \FILE_REG|Mux24~0_combout\);

\FILE_REG|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux24~1_combout\ = (\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|Mux24~0_combout\ & ((\FILE_REG|REGISTERS[3][24]~q\))) # (!\FILE_REG|Mux24~0_combout\ & (\FILE_REG|REGISTERS[2][24]~q\)))) # (!\IFID|OUT_INSTR_MEM\(31) & (((\FILE_REG|Mux24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[2][24]~q\,
	datab => \IFID|OUT_INSTR_MEM\(31),
	datac => \FILE_REG|Mux24~0_combout\,
	datad => \FILE_REG|REGISTERS[3][24]~q\,
	combout => \FILE_REG|Mux24~1_combout\);

\IDEX|IDEX_OUT_READ1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux24~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(24));

\FILE_REG|REGISTERS[2][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[23]~8_combout\,
	ena => \FILE_REG|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[2][23]~q\);

\FILE_REG|REGISTERS[0][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[23]~8_combout\,
	ena => \FILE_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[0][23]~q\);

\FILE_REG|Mux55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux55~0_combout\ = (\IFID|OUT_INSTR_MEM\(31) & (((\IFID|OUT_INSTR_MEM\(28))))) # (!\IFID|OUT_INSTR_MEM\(31) & ((\IFID|OUT_INSTR_MEM\(28) & (\FILE_REG|REGISTERS[2][23]~q\)) # (!\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|REGISTERS[0][23]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(31),
	datab => \FILE_REG|REGISTERS[2][23]~q\,
	datac => \IFID|OUT_INSTR_MEM\(28),
	datad => \FILE_REG|REGISTERS[0][23]~q\,
	combout => \FILE_REG|Mux55~0_combout\);

\FILE_REG|REGISTERS[3][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[23]~8_combout\,
	ena => \FILE_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[3][23]~q\);

\FILE_REG|Mux55~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux55~1_combout\ = (\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|Mux55~0_combout\ & ((\FILE_REG|REGISTERS[3][23]~q\))) # (!\FILE_REG|Mux55~0_combout\ & (\FILE_REG|REGISTERS[1][23]~q\)))) # (!\IFID|OUT_INSTR_MEM\(31) & (((\FILE_REG|Mux55~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[1][23]~q\,
	datab => \IFID|OUT_INSTR_MEM\(31),
	datac => \FILE_REG|Mux55~0_combout\,
	datad => \FILE_REG|REGISTERS[3][23]~q\,
	combout => \FILE_REG|Mux55~1_combout\);

\IDEX|IDEX_OUT_READ2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux55~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ2\(23));

\MUX_ALU_B|X[23]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_ALU_B|X[23]~8_combout\ = (\IDEX|IDEX_OUT_READ2\(23) & !\IDEX|IDEX_OUT_EX\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_READ2\(23),
	datad => \IDEX|IDEX_OUT_EX\(4),
	combout => \MUX_ALU_B|X[23]~8_combout\);

\MAIN_ALU|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~42_combout\ = (\ALU_CONTROL|ULA_CODE\(0) & ((\IDEX|IDEX_OUT_READ1\(23) & ((\MUX_ALU_B|X[23]~8_combout\) # (\ALU_CONTROL|ULA_CODE\(1)))) # (!\IDEX|IDEX_OUT_READ1\(23) & (\MUX_ALU_B|X[23]~8_combout\ & \ALU_CONTROL|ULA_CODE\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(0),
	datab => \IDEX|IDEX_OUT_READ1\(23),
	datac => \MUX_ALU_B|X[23]~8_combout\,
	datad => \ALU_CONTROL|ULA_CODE\(1),
	combout => \MAIN_ALU|Add0~42_combout\);

\MAIN_ALU|Add0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~43_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (((!\IDEX|IDEX_OUT_EX\(4) & \IDEX|IDEX_OUT_READ2\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(1),
	datab => \IDEX|IDEX_OUT_EX\(4),
	datad => \IDEX|IDEX_OUT_READ2\(23),
	combout => \MAIN_ALU|Add0~43_combout\);

\MAIN_ALU|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~44_combout\ = (\MAIN_ALU|Add0~43_combout\ & ((\IDEX|IDEX_OUT_READ1\(23) & (\MAIN_ALU|Add0~40\ & VCC)) # (!\IDEX|IDEX_OUT_READ1\(23) & (!\MAIN_ALU|Add0~40\)))) # (!\MAIN_ALU|Add0~43_combout\ & ((\IDEX|IDEX_OUT_READ1\(23) & 
-- (!\MAIN_ALU|Add0~40\)) # (!\IDEX|IDEX_OUT_READ1\(23) & ((\MAIN_ALU|Add0~40\) # (GND)))))
-- \MAIN_ALU|Add0~45\ = CARRY((\MAIN_ALU|Add0~43_combout\ & (!\IDEX|IDEX_OUT_READ1\(23) & !\MAIN_ALU|Add0~40\)) # (!\MAIN_ALU|Add0~43_combout\ & ((!\MAIN_ALU|Add0~40\) # (!\IDEX|IDEX_OUT_READ1\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~43_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(23),
	datad => VCC,
	cin => \MAIN_ALU|Add0~40\,
	combout => \MAIN_ALU|Add0~44_combout\,
	cout => \MAIN_ALU|Add0~45\);

\MAIN_ALU|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~46_combout\ = (\MAIN_ALU|Add0~42_combout\) # ((\MAIN_ALU|Add0~44_combout\ & !\ALU_CONTROL|ULA_CODE\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~42_combout\,
	datab => \MAIN_ALU|Add0~44_combout\,
	datad => \ALU_CONTROL|ULA_CODE\(0),
	combout => \MAIN_ALU|Add0~46_combout\);

\EXMEM|EXMEM_OUT_RESULT_ULA[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MAIN_ALU|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ULA\(23));

\MEMWB|MEMWB_OUT_RESULT_ULA[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ULA\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWB|MEMWB_OUT_RESULT_ULA\(23));

\MUX_WB|X[23]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_WB|X[23]~8_combout\ = (\MEMWB|MEMWB_OUT_WB\(1) & \MEMWB|MEMWB_OUT_RESULT_ULA\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMWB|MEMWB_OUT_WB\(1),
	datab => \MEMWB|MEMWB_OUT_RESULT_ULA\(23),
	combout => \MUX_WB|X[23]~8_combout\);

\FILE_REG|REGISTERS[1][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[23]~8_combout\,
	ena => \FILE_REG|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[1][23]~q\);

\FILE_REG|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux23~0_combout\ = (\IFID|OUT_INSTR_MEM\(28) & (((\IFID|OUT_INSTR_MEM\(31))))) # (!\IFID|OUT_INSTR_MEM\(28) & ((\IFID|OUT_INSTR_MEM\(31) & (\FILE_REG|REGISTERS[2][23]~q\)) # (!\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|REGISTERS[0][23]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(28),
	datab => \FILE_REG|REGISTERS[2][23]~q\,
	datac => \IFID|OUT_INSTR_MEM\(31),
	datad => \FILE_REG|REGISTERS[0][23]~q\,
	combout => \FILE_REG|Mux23~0_combout\);

\FILE_REG|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux23~1_combout\ = (\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|Mux23~0_combout\ & ((\FILE_REG|REGISTERS[3][23]~q\))) # (!\FILE_REG|Mux23~0_combout\ & (\FILE_REG|REGISTERS[1][23]~q\)))) # (!\IFID|OUT_INSTR_MEM\(28) & (((\FILE_REG|Mux23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[1][23]~q\,
	datab => \IFID|OUT_INSTR_MEM\(28),
	datac => \FILE_REG|Mux23~0_combout\,
	datad => \FILE_REG|REGISTERS[3][23]~q\,
	combout => \FILE_REG|Mux23~1_combout\);

\IDEX|IDEX_OUT_READ1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(23));

\FILE_REG|REGISTERS[1][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[22]~9_combout\,
	ena => \FILE_REG|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[1][22]~q\);

\FILE_REG|REGISTERS[0][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[22]~9_combout\,
	ena => \FILE_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[0][22]~q\);

\FILE_REG|Mux54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux54~0_combout\ = (\IFID|OUT_INSTR_MEM\(28) & (((\IFID|OUT_INSTR_MEM\(31))))) # (!\IFID|OUT_INSTR_MEM\(28) & ((\IFID|OUT_INSTR_MEM\(31) & (\FILE_REG|REGISTERS[1][22]~q\)) # (!\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|REGISTERS[0][22]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(28),
	datab => \FILE_REG|REGISTERS[1][22]~q\,
	datac => \IFID|OUT_INSTR_MEM\(31),
	datad => \FILE_REG|REGISTERS[0][22]~q\,
	combout => \FILE_REG|Mux54~0_combout\);

\FILE_REG|REGISTERS[3][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[22]~9_combout\,
	ena => \FILE_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[3][22]~q\);

\FILE_REG|Mux54~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux54~1_combout\ = (\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|Mux54~0_combout\ & ((\FILE_REG|REGISTERS[3][22]~q\))) # (!\FILE_REG|Mux54~0_combout\ & (\FILE_REG|REGISTERS[2][22]~q\)))) # (!\IFID|OUT_INSTR_MEM\(28) & (((\FILE_REG|Mux54~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[2][22]~q\,
	datab => \IFID|OUT_INSTR_MEM\(28),
	datac => \FILE_REG|Mux54~0_combout\,
	datad => \FILE_REG|REGISTERS[3][22]~q\,
	combout => \FILE_REG|Mux54~1_combout\);

\IDEX|IDEX_OUT_READ2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux54~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ2\(22));

\MUX_ALU_B|X[22]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_ALU_B|X[22]~9_combout\ = (\IDEX|IDEX_OUT_READ2\(22) & !\IDEX|IDEX_OUT_EX\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_READ2\(22),
	datad => \IDEX|IDEX_OUT_EX\(4),
	combout => \MUX_ALU_B|X[22]~9_combout\);

\MAIN_ALU|Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~47_combout\ = (\ALU_CONTROL|ULA_CODE\(0) & ((\IDEX|IDEX_OUT_READ1\(22) & ((\MUX_ALU_B|X[22]~9_combout\) # (\ALU_CONTROL|ULA_CODE\(1)))) # (!\IDEX|IDEX_OUT_READ1\(22) & (\MUX_ALU_B|X[22]~9_combout\ & \ALU_CONTROL|ULA_CODE\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(0),
	datab => \IDEX|IDEX_OUT_READ1\(22),
	datac => \MUX_ALU_B|X[22]~9_combout\,
	datad => \ALU_CONTROL|ULA_CODE\(1),
	combout => \MAIN_ALU|Add0~47_combout\);

\MAIN_ALU|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~48_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (((!\IDEX|IDEX_OUT_EX\(4) & \IDEX|IDEX_OUT_READ2\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(1),
	datab => \IDEX|IDEX_OUT_EX\(4),
	datad => \IDEX|IDEX_OUT_READ2\(22),
	combout => \MAIN_ALU|Add0~48_combout\);

\MAIN_ALU|Add0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~49_combout\ = ((\MAIN_ALU|Add0~48_combout\ $ (\IDEX|IDEX_OUT_READ1\(22) $ (!\MAIN_ALU|Add0~45\)))) # (GND)
-- \MAIN_ALU|Add0~50\ = CARRY((\MAIN_ALU|Add0~48_combout\ & ((\IDEX|IDEX_OUT_READ1\(22)) # (!\MAIN_ALU|Add0~45\))) # (!\MAIN_ALU|Add0~48_combout\ & (\IDEX|IDEX_OUT_READ1\(22) & !\MAIN_ALU|Add0~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~48_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(22),
	datad => VCC,
	cin => \MAIN_ALU|Add0~45\,
	combout => \MAIN_ALU|Add0~49_combout\,
	cout => \MAIN_ALU|Add0~50\);

\MAIN_ALU|Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~51_combout\ = (\MAIN_ALU|Add0~47_combout\) # ((\MAIN_ALU|Add0~49_combout\ & !\ALU_CONTROL|ULA_CODE\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~47_combout\,
	datab => \MAIN_ALU|Add0~49_combout\,
	datad => \ALU_CONTROL|ULA_CODE\(0),
	combout => \MAIN_ALU|Add0~51_combout\);

\EXMEM|EXMEM_OUT_RESULT_ULA[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MAIN_ALU|Add0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ULA\(22));

\MEMWB|MEMWB_OUT_RESULT_ULA[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ULA\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWB|MEMWB_OUT_RESULT_ULA\(22));

\MUX_WB|X[22]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_WB|X[22]~9_combout\ = (\MEMWB|MEMWB_OUT_WB\(1) & \MEMWB|MEMWB_OUT_RESULT_ULA\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMWB|MEMWB_OUT_WB\(1),
	datab => \MEMWB|MEMWB_OUT_RESULT_ULA\(22),
	combout => \MUX_WB|X[22]~9_combout\);

\FILE_REG|REGISTERS[2][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[22]~9_combout\,
	ena => \FILE_REG|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[2][22]~q\);

\FILE_REG|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux22~0_combout\ = (\IFID|OUT_INSTR_MEM\(31) & (((\IFID|OUT_INSTR_MEM\(28))))) # (!\IFID|OUT_INSTR_MEM\(31) & ((\IFID|OUT_INSTR_MEM\(28) & (\FILE_REG|REGISTERS[1][22]~q\)) # (!\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|REGISTERS[0][22]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(31),
	datab => \FILE_REG|REGISTERS[1][22]~q\,
	datac => \IFID|OUT_INSTR_MEM\(28),
	datad => \FILE_REG|REGISTERS[0][22]~q\,
	combout => \FILE_REG|Mux22~0_combout\);

\FILE_REG|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux22~1_combout\ = (\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|Mux22~0_combout\ & ((\FILE_REG|REGISTERS[3][22]~q\))) # (!\FILE_REG|Mux22~0_combout\ & (\FILE_REG|REGISTERS[2][22]~q\)))) # (!\IFID|OUT_INSTR_MEM\(31) & (((\FILE_REG|Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[2][22]~q\,
	datab => \IFID|OUT_INSTR_MEM\(31),
	datac => \FILE_REG|Mux22~0_combout\,
	datad => \FILE_REG|REGISTERS[3][22]~q\,
	combout => \FILE_REG|Mux22~1_combout\);

\IDEX|IDEX_OUT_READ1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(22));

\FILE_REG|REGISTERS[2][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[21]~10_combout\,
	ena => \FILE_REG|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[2][21]~q\);

\FILE_REG|REGISTERS[0][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[21]~10_combout\,
	ena => \FILE_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[0][21]~q\);

\FILE_REG|Mux53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux53~0_combout\ = (\IFID|OUT_INSTR_MEM\(31) & (((\IFID|OUT_INSTR_MEM\(28))))) # (!\IFID|OUT_INSTR_MEM\(31) & ((\IFID|OUT_INSTR_MEM\(28) & (\FILE_REG|REGISTERS[2][21]~q\)) # (!\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|REGISTERS[0][21]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(31),
	datab => \FILE_REG|REGISTERS[2][21]~q\,
	datac => \IFID|OUT_INSTR_MEM\(28),
	datad => \FILE_REG|REGISTERS[0][21]~q\,
	combout => \FILE_REG|Mux53~0_combout\);

\FILE_REG|REGISTERS[3][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[21]~10_combout\,
	ena => \FILE_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[3][21]~q\);

\FILE_REG|Mux53~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux53~1_combout\ = (\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|Mux53~0_combout\ & ((\FILE_REG|REGISTERS[3][21]~q\))) # (!\FILE_REG|Mux53~0_combout\ & (\FILE_REG|REGISTERS[1][21]~q\)))) # (!\IFID|OUT_INSTR_MEM\(31) & (((\FILE_REG|Mux53~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[1][21]~q\,
	datab => \IFID|OUT_INSTR_MEM\(31),
	datac => \FILE_REG|Mux53~0_combout\,
	datad => \FILE_REG|REGISTERS[3][21]~q\,
	combout => \FILE_REG|Mux53~1_combout\);

\IDEX|IDEX_OUT_READ2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux53~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ2\(21));

\MAIN_ALU|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~52_combout\ = (\IDEX|IDEX_OUT_READ1\(21) & ((\ALU_CONTROL|ULA_CODE\(1)) # ((\IDEX|IDEX_OUT_READ2\(21) & !\IDEX|IDEX_OUT_EX\(4))))) # (!\IDEX|IDEX_OUT_READ1\(21) & (\ALU_CONTROL|ULA_CODE\(1) & (\IDEX|IDEX_OUT_READ2\(21) & 
-- !\IDEX|IDEX_OUT_EX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_READ1\(21),
	datab => \ALU_CONTROL|ULA_CODE\(1),
	datac => \IDEX|IDEX_OUT_READ2\(21),
	datad => \IDEX|IDEX_OUT_EX\(4),
	combout => \MAIN_ALU|Add0~52_combout\);

\MAIN_ALU|Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~53_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (((!\IDEX|IDEX_OUT_EX\(4) & \IDEX|IDEX_OUT_READ2\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(1),
	datab => \IDEX|IDEX_OUT_EX\(4),
	datad => \IDEX|IDEX_OUT_READ2\(21),
	combout => \MAIN_ALU|Add0~53_combout\);

\MAIN_ALU|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~54_combout\ = (\MAIN_ALU|Add0~53_combout\ & ((\IDEX|IDEX_OUT_READ1\(21) & (\MAIN_ALU|Add0~50\ & VCC)) # (!\IDEX|IDEX_OUT_READ1\(21) & (!\MAIN_ALU|Add0~50\)))) # (!\MAIN_ALU|Add0~53_combout\ & ((\IDEX|IDEX_OUT_READ1\(21) & 
-- (!\MAIN_ALU|Add0~50\)) # (!\IDEX|IDEX_OUT_READ1\(21) & ((\MAIN_ALU|Add0~50\) # (GND)))))
-- \MAIN_ALU|Add0~55\ = CARRY((\MAIN_ALU|Add0~53_combout\ & (!\IDEX|IDEX_OUT_READ1\(21) & !\MAIN_ALU|Add0~50\)) # (!\MAIN_ALU|Add0~53_combout\ & ((!\MAIN_ALU|Add0~50\) # (!\IDEX|IDEX_OUT_READ1\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~53_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(21),
	datad => VCC,
	cin => \MAIN_ALU|Add0~50\,
	combout => \MAIN_ALU|Add0~54_combout\,
	cout => \MAIN_ALU|Add0~55\);

\MAIN_ALU|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~56_combout\ = (\ALU_CONTROL|ULA_CODE\(0) & (\MAIN_ALU|Add0~52_combout\)) # (!\ALU_CONTROL|ULA_CODE\(0) & ((\MAIN_ALU|Add0~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~52_combout\,
	datab => \MAIN_ALU|Add0~54_combout\,
	datad => \ALU_CONTROL|ULA_CODE\(0),
	combout => \MAIN_ALU|Add0~56_combout\);

\EXMEM|EXMEM_OUT_RESULT_ULA[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MAIN_ALU|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ULA\(21));

\MEMWB|MEMWB_OUT_RESULT_ULA[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ULA\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWB|MEMWB_OUT_RESULT_ULA\(21));

\MUX_WB|X[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_WB|X[21]~10_combout\ = (\MEMWB|MEMWB_OUT_WB\(1) & \MEMWB|MEMWB_OUT_RESULT_ULA\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMWB|MEMWB_OUT_WB\(1),
	datab => \MEMWB|MEMWB_OUT_RESULT_ULA\(21),
	combout => \MUX_WB|X[21]~10_combout\);

\FILE_REG|REGISTERS[1][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[21]~10_combout\,
	ena => \FILE_REG|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[1][21]~q\);

\FILE_REG|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux21~0_combout\ = (\IFID|OUT_INSTR_MEM\(28) & (((\IFID|OUT_INSTR_MEM\(31))))) # (!\IFID|OUT_INSTR_MEM\(28) & ((\IFID|OUT_INSTR_MEM\(31) & (\FILE_REG|REGISTERS[2][21]~q\)) # (!\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|REGISTERS[0][21]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(28),
	datab => \FILE_REG|REGISTERS[2][21]~q\,
	datac => \IFID|OUT_INSTR_MEM\(31),
	datad => \FILE_REG|REGISTERS[0][21]~q\,
	combout => \FILE_REG|Mux21~0_combout\);

\FILE_REG|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux21~1_combout\ = (\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|Mux21~0_combout\ & ((\FILE_REG|REGISTERS[3][21]~q\))) # (!\FILE_REG|Mux21~0_combout\ & (\FILE_REG|REGISTERS[1][21]~q\)))) # (!\IFID|OUT_INSTR_MEM\(28) & (((\FILE_REG|Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[1][21]~q\,
	datab => \IFID|OUT_INSTR_MEM\(28),
	datac => \FILE_REG|Mux21~0_combout\,
	datad => \FILE_REG|REGISTERS[3][21]~q\,
	combout => \FILE_REG|Mux21~1_combout\);

\IDEX|IDEX_OUT_READ1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux21~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(21));

\FILE_REG|REGISTERS[1][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[20]~11_combout\,
	ena => \FILE_REG|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[1][20]~q\);

\FILE_REG|REGISTERS[0][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[20]~11_combout\,
	ena => \FILE_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[0][20]~q\);

\FILE_REG|Mux52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux52~0_combout\ = (\IFID|OUT_INSTR_MEM\(28) & (((\IFID|OUT_INSTR_MEM\(31))))) # (!\IFID|OUT_INSTR_MEM\(28) & ((\IFID|OUT_INSTR_MEM\(31) & (\FILE_REG|REGISTERS[1][20]~q\)) # (!\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|REGISTERS[0][20]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(28),
	datab => \FILE_REG|REGISTERS[1][20]~q\,
	datac => \IFID|OUT_INSTR_MEM\(31),
	datad => \FILE_REG|REGISTERS[0][20]~q\,
	combout => \FILE_REG|Mux52~0_combout\);

\FILE_REG|REGISTERS[3][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[20]~11_combout\,
	ena => \FILE_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[3][20]~q\);

\FILE_REG|Mux52~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux52~1_combout\ = (\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|Mux52~0_combout\ & ((\FILE_REG|REGISTERS[3][20]~q\))) # (!\FILE_REG|Mux52~0_combout\ & (\FILE_REG|REGISTERS[2][20]~q\)))) # (!\IFID|OUT_INSTR_MEM\(28) & (((\FILE_REG|Mux52~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[2][20]~q\,
	datab => \IFID|OUT_INSTR_MEM\(28),
	datac => \FILE_REG|Mux52~0_combout\,
	datad => \FILE_REG|REGISTERS[3][20]~q\,
	combout => \FILE_REG|Mux52~1_combout\);

\IDEX|IDEX_OUT_READ2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux52~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ2\(20));

\MUX_ALU_B|X[20]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_ALU_B|X[20]~11_combout\ = (\IDEX|IDEX_OUT_READ2\(20) & !\IDEX|IDEX_OUT_EX\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_READ2\(20),
	datad => \IDEX|IDEX_OUT_EX\(4),
	combout => \MUX_ALU_B|X[20]~11_combout\);

\MAIN_ALU|Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~57_combout\ = (\ALU_CONTROL|ULA_CODE\(0) & ((\IDEX|IDEX_OUT_READ1\(20) & ((\MUX_ALU_B|X[20]~11_combout\) # (\ALU_CONTROL|ULA_CODE\(1)))) # (!\IDEX|IDEX_OUT_READ1\(20) & (\MUX_ALU_B|X[20]~11_combout\ & \ALU_CONTROL|ULA_CODE\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(0),
	datab => \IDEX|IDEX_OUT_READ1\(20),
	datac => \MUX_ALU_B|X[20]~11_combout\,
	datad => \ALU_CONTROL|ULA_CODE\(1),
	combout => \MAIN_ALU|Add0~57_combout\);

\MAIN_ALU|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~58_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (((!\IDEX|IDEX_OUT_EX\(4) & \IDEX|IDEX_OUT_READ2\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(1),
	datab => \IDEX|IDEX_OUT_EX\(4),
	datad => \IDEX|IDEX_OUT_READ2\(20),
	combout => \MAIN_ALU|Add0~58_combout\);

\MAIN_ALU|Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~59_combout\ = ((\MAIN_ALU|Add0~58_combout\ $ (\IDEX|IDEX_OUT_READ1\(20) $ (!\MAIN_ALU|Add0~55\)))) # (GND)
-- \MAIN_ALU|Add0~60\ = CARRY((\MAIN_ALU|Add0~58_combout\ & ((\IDEX|IDEX_OUT_READ1\(20)) # (!\MAIN_ALU|Add0~55\))) # (!\MAIN_ALU|Add0~58_combout\ & (\IDEX|IDEX_OUT_READ1\(20) & !\MAIN_ALU|Add0~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~58_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(20),
	datad => VCC,
	cin => \MAIN_ALU|Add0~55\,
	combout => \MAIN_ALU|Add0~59_combout\,
	cout => \MAIN_ALU|Add0~60\);

\MAIN_ALU|Add0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~61_combout\ = (\MAIN_ALU|Add0~57_combout\) # ((\MAIN_ALU|Add0~59_combout\ & !\ALU_CONTROL|ULA_CODE\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~57_combout\,
	datab => \MAIN_ALU|Add0~59_combout\,
	datad => \ALU_CONTROL|ULA_CODE\(0),
	combout => \MAIN_ALU|Add0~61_combout\);

\EXMEM|EXMEM_OUT_RESULT_ULA[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MAIN_ALU|Add0~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ULA\(20));

\MEMWB|MEMWB_OUT_RESULT_ULA[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ULA\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWB|MEMWB_OUT_RESULT_ULA\(20));

\MUX_WB|X[20]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_WB|X[20]~11_combout\ = (\MEMWB|MEMWB_OUT_WB\(1) & \MEMWB|MEMWB_OUT_RESULT_ULA\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMWB|MEMWB_OUT_WB\(1),
	datab => \MEMWB|MEMWB_OUT_RESULT_ULA\(20),
	combout => \MUX_WB|X[20]~11_combout\);

\FILE_REG|REGISTERS[2][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[20]~11_combout\,
	ena => \FILE_REG|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[2][20]~q\);

\FILE_REG|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux20~0_combout\ = (\IFID|OUT_INSTR_MEM\(31) & (((\IFID|OUT_INSTR_MEM\(28))))) # (!\IFID|OUT_INSTR_MEM\(31) & ((\IFID|OUT_INSTR_MEM\(28) & (\FILE_REG|REGISTERS[1][20]~q\)) # (!\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|REGISTERS[0][20]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(31),
	datab => \FILE_REG|REGISTERS[1][20]~q\,
	datac => \IFID|OUT_INSTR_MEM\(28),
	datad => \FILE_REG|REGISTERS[0][20]~q\,
	combout => \FILE_REG|Mux20~0_combout\);

\FILE_REG|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux20~1_combout\ = (\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|Mux20~0_combout\ & ((\FILE_REG|REGISTERS[3][20]~q\))) # (!\FILE_REG|Mux20~0_combout\ & (\FILE_REG|REGISTERS[2][20]~q\)))) # (!\IFID|OUT_INSTR_MEM\(31) & (((\FILE_REG|Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[2][20]~q\,
	datab => \IFID|OUT_INSTR_MEM\(31),
	datac => \FILE_REG|Mux20~0_combout\,
	datad => \FILE_REG|REGISTERS[3][20]~q\,
	combout => \FILE_REG|Mux20~1_combout\);

\IDEX|IDEX_OUT_READ1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux20~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(20));

\FILE_REG|REGISTERS[2][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[19]~12_combout\,
	ena => \FILE_REG|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[2][19]~q\);

\FILE_REG|REGISTERS[0][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[19]~12_combout\,
	ena => \FILE_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[0][19]~q\);

\FILE_REG|Mux51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux51~0_combout\ = (\IFID|OUT_INSTR_MEM\(31) & (((\IFID|OUT_INSTR_MEM\(28))))) # (!\IFID|OUT_INSTR_MEM\(31) & ((\IFID|OUT_INSTR_MEM\(28) & (\FILE_REG|REGISTERS[2][19]~q\)) # (!\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|REGISTERS[0][19]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(31),
	datab => \FILE_REG|REGISTERS[2][19]~q\,
	datac => \IFID|OUT_INSTR_MEM\(28),
	datad => \FILE_REG|REGISTERS[0][19]~q\,
	combout => \FILE_REG|Mux51~0_combout\);

\FILE_REG|REGISTERS[3][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[19]~12_combout\,
	ena => \FILE_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[3][19]~q\);

\FILE_REG|Mux51~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux51~1_combout\ = (\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|Mux51~0_combout\ & ((\FILE_REG|REGISTERS[3][19]~q\))) # (!\FILE_REG|Mux51~0_combout\ & (\FILE_REG|REGISTERS[1][19]~q\)))) # (!\IFID|OUT_INSTR_MEM\(31) & (((\FILE_REG|Mux51~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[1][19]~q\,
	datab => \IFID|OUT_INSTR_MEM\(31),
	datac => \FILE_REG|Mux51~0_combout\,
	datad => \FILE_REG|REGISTERS[3][19]~q\,
	combout => \FILE_REG|Mux51~1_combout\);

\IDEX|IDEX_OUT_READ2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux51~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ2\(19));

\MAIN_ALU|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~62_combout\ = (\IDEX|IDEX_OUT_READ1\(19) & ((\ALU_CONTROL|ULA_CODE\(1)) # ((\IDEX|IDEX_OUT_READ2\(19) & !\IDEX|IDEX_OUT_EX\(4))))) # (!\IDEX|IDEX_OUT_READ1\(19) & (\ALU_CONTROL|ULA_CODE\(1) & (\IDEX|IDEX_OUT_READ2\(19) & 
-- !\IDEX|IDEX_OUT_EX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_READ1\(19),
	datab => \ALU_CONTROL|ULA_CODE\(1),
	datac => \IDEX|IDEX_OUT_READ2\(19),
	datad => \IDEX|IDEX_OUT_EX\(4),
	combout => \MAIN_ALU|Add0~62_combout\);

\MAIN_ALU|Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~63_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (((!\IDEX|IDEX_OUT_EX\(4) & \IDEX|IDEX_OUT_READ2\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(1),
	datab => \IDEX|IDEX_OUT_EX\(4),
	datad => \IDEX|IDEX_OUT_READ2\(19),
	combout => \MAIN_ALU|Add0~63_combout\);

\MAIN_ALU|Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~64_combout\ = (\MAIN_ALU|Add0~63_combout\ & ((\IDEX|IDEX_OUT_READ1\(19) & (\MAIN_ALU|Add0~60\ & VCC)) # (!\IDEX|IDEX_OUT_READ1\(19) & (!\MAIN_ALU|Add0~60\)))) # (!\MAIN_ALU|Add0~63_combout\ & ((\IDEX|IDEX_OUT_READ1\(19) & 
-- (!\MAIN_ALU|Add0~60\)) # (!\IDEX|IDEX_OUT_READ1\(19) & ((\MAIN_ALU|Add0~60\) # (GND)))))
-- \MAIN_ALU|Add0~65\ = CARRY((\MAIN_ALU|Add0~63_combout\ & (!\IDEX|IDEX_OUT_READ1\(19) & !\MAIN_ALU|Add0~60\)) # (!\MAIN_ALU|Add0~63_combout\ & ((!\MAIN_ALU|Add0~60\) # (!\IDEX|IDEX_OUT_READ1\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~63_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(19),
	datad => VCC,
	cin => \MAIN_ALU|Add0~60\,
	combout => \MAIN_ALU|Add0~64_combout\,
	cout => \MAIN_ALU|Add0~65\);

\MAIN_ALU|Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~66_combout\ = (\ALU_CONTROL|ULA_CODE\(0) & (\MAIN_ALU|Add0~62_combout\)) # (!\ALU_CONTROL|ULA_CODE\(0) & ((\MAIN_ALU|Add0~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~62_combout\,
	datab => \MAIN_ALU|Add0~64_combout\,
	datad => \ALU_CONTROL|ULA_CODE\(0),
	combout => \MAIN_ALU|Add0~66_combout\);

\EXMEM|EXMEM_OUT_RESULT_ULA[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MAIN_ALU|Add0~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ULA\(19));

\MEMWB|MEMWB_OUT_RESULT_ULA[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ULA\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWB|MEMWB_OUT_RESULT_ULA\(19));

\MUX_WB|X[19]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_WB|X[19]~12_combout\ = (\MEMWB|MEMWB_OUT_WB\(1) & \MEMWB|MEMWB_OUT_RESULT_ULA\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMWB|MEMWB_OUT_WB\(1),
	datab => \MEMWB|MEMWB_OUT_RESULT_ULA\(19),
	combout => \MUX_WB|X[19]~12_combout\);

\FILE_REG|REGISTERS[1][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[19]~12_combout\,
	ena => \FILE_REG|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[1][19]~q\);

\FILE_REG|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux19~0_combout\ = (\IFID|OUT_INSTR_MEM\(28) & (((\IFID|OUT_INSTR_MEM\(31))))) # (!\IFID|OUT_INSTR_MEM\(28) & ((\IFID|OUT_INSTR_MEM\(31) & (\FILE_REG|REGISTERS[2][19]~q\)) # (!\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|REGISTERS[0][19]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(28),
	datab => \FILE_REG|REGISTERS[2][19]~q\,
	datac => \IFID|OUT_INSTR_MEM\(31),
	datad => \FILE_REG|REGISTERS[0][19]~q\,
	combout => \FILE_REG|Mux19~0_combout\);

\FILE_REG|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux19~1_combout\ = (\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|Mux19~0_combout\ & ((\FILE_REG|REGISTERS[3][19]~q\))) # (!\FILE_REG|Mux19~0_combout\ & (\FILE_REG|REGISTERS[1][19]~q\)))) # (!\IFID|OUT_INSTR_MEM\(28) & (((\FILE_REG|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[1][19]~q\,
	datab => \IFID|OUT_INSTR_MEM\(28),
	datac => \FILE_REG|Mux19~0_combout\,
	datad => \FILE_REG|REGISTERS[3][19]~q\,
	combout => \FILE_REG|Mux19~1_combout\);

\IDEX|IDEX_OUT_READ1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux19~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(19));

\FILE_REG|REGISTERS[1][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[18]~13_combout\,
	ena => \FILE_REG|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[1][18]~q\);

\FILE_REG|REGISTERS[0][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[18]~13_combout\,
	ena => \FILE_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[0][18]~q\);

\FILE_REG|Mux50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux50~0_combout\ = (\IFID|OUT_INSTR_MEM\(28) & (((\IFID|OUT_INSTR_MEM\(31))))) # (!\IFID|OUT_INSTR_MEM\(28) & ((\IFID|OUT_INSTR_MEM\(31) & (\FILE_REG|REGISTERS[1][18]~q\)) # (!\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|REGISTERS[0][18]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(28),
	datab => \FILE_REG|REGISTERS[1][18]~q\,
	datac => \IFID|OUT_INSTR_MEM\(31),
	datad => \FILE_REG|REGISTERS[0][18]~q\,
	combout => \FILE_REG|Mux50~0_combout\);

\FILE_REG|REGISTERS[3][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[18]~13_combout\,
	ena => \FILE_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[3][18]~q\);

\FILE_REG|Mux50~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux50~1_combout\ = (\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|Mux50~0_combout\ & ((\FILE_REG|REGISTERS[3][18]~q\))) # (!\FILE_REG|Mux50~0_combout\ & (\FILE_REG|REGISTERS[2][18]~q\)))) # (!\IFID|OUT_INSTR_MEM\(28) & (((\FILE_REG|Mux50~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[2][18]~q\,
	datab => \IFID|OUT_INSTR_MEM\(28),
	datac => \FILE_REG|Mux50~0_combout\,
	datad => \FILE_REG|REGISTERS[3][18]~q\,
	combout => \FILE_REG|Mux50~1_combout\);

\IDEX|IDEX_OUT_READ2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux50~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ2\(18));

\MUX_ALU_B|X[18]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_ALU_B|X[18]~13_combout\ = (\IDEX|IDEX_OUT_READ2\(18) & !\IDEX|IDEX_OUT_EX\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_READ2\(18),
	datad => \IDEX|IDEX_OUT_EX\(4),
	combout => \MUX_ALU_B|X[18]~13_combout\);

\MAIN_ALU|Add0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~67_combout\ = (\ALU_CONTROL|ULA_CODE\(0) & ((\IDEX|IDEX_OUT_READ1\(18) & ((\MUX_ALU_B|X[18]~13_combout\) # (\ALU_CONTROL|ULA_CODE\(1)))) # (!\IDEX|IDEX_OUT_READ1\(18) & (\MUX_ALU_B|X[18]~13_combout\ & \ALU_CONTROL|ULA_CODE\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(0),
	datab => \IDEX|IDEX_OUT_READ1\(18),
	datac => \MUX_ALU_B|X[18]~13_combout\,
	datad => \ALU_CONTROL|ULA_CODE\(1),
	combout => \MAIN_ALU|Add0~67_combout\);

\MAIN_ALU|Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~68_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (((!\IDEX|IDEX_OUT_EX\(4) & \IDEX|IDEX_OUT_READ2\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(1),
	datab => \IDEX|IDEX_OUT_EX\(4),
	datad => \IDEX|IDEX_OUT_READ2\(18),
	combout => \MAIN_ALU|Add0~68_combout\);

\MAIN_ALU|Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~69_combout\ = ((\MAIN_ALU|Add0~68_combout\ $ (\IDEX|IDEX_OUT_READ1\(18) $ (!\MAIN_ALU|Add0~65\)))) # (GND)
-- \MAIN_ALU|Add0~70\ = CARRY((\MAIN_ALU|Add0~68_combout\ & ((\IDEX|IDEX_OUT_READ1\(18)) # (!\MAIN_ALU|Add0~65\))) # (!\MAIN_ALU|Add0~68_combout\ & (\IDEX|IDEX_OUT_READ1\(18) & !\MAIN_ALU|Add0~65\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~68_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(18),
	datad => VCC,
	cin => \MAIN_ALU|Add0~65\,
	combout => \MAIN_ALU|Add0~69_combout\,
	cout => \MAIN_ALU|Add0~70\);

\MAIN_ALU|Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~71_combout\ = (\MAIN_ALU|Add0~67_combout\) # ((\MAIN_ALU|Add0~69_combout\ & !\ALU_CONTROL|ULA_CODE\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~67_combout\,
	datab => \MAIN_ALU|Add0~69_combout\,
	datad => \ALU_CONTROL|ULA_CODE\(0),
	combout => \MAIN_ALU|Add0~71_combout\);

\EXMEM|EXMEM_OUT_RESULT_ULA[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MAIN_ALU|Add0~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ULA\(18));

\MEMWB|MEMWB_OUT_RESULT_ULA[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ULA\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWB|MEMWB_OUT_RESULT_ULA\(18));

\MUX_WB|X[18]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_WB|X[18]~13_combout\ = (\MEMWB|MEMWB_OUT_WB\(1) & \MEMWB|MEMWB_OUT_RESULT_ULA\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMWB|MEMWB_OUT_WB\(1),
	datab => \MEMWB|MEMWB_OUT_RESULT_ULA\(18),
	combout => \MUX_WB|X[18]~13_combout\);

\FILE_REG|REGISTERS[2][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[18]~13_combout\,
	ena => \FILE_REG|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[2][18]~q\);

\FILE_REG|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux18~0_combout\ = (\IFID|OUT_INSTR_MEM\(31) & (((\IFID|OUT_INSTR_MEM\(28))))) # (!\IFID|OUT_INSTR_MEM\(31) & ((\IFID|OUT_INSTR_MEM\(28) & (\FILE_REG|REGISTERS[1][18]~q\)) # (!\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|REGISTERS[0][18]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(31),
	datab => \FILE_REG|REGISTERS[1][18]~q\,
	datac => \IFID|OUT_INSTR_MEM\(28),
	datad => \FILE_REG|REGISTERS[0][18]~q\,
	combout => \FILE_REG|Mux18~0_combout\);

\FILE_REG|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux18~1_combout\ = (\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|Mux18~0_combout\ & ((\FILE_REG|REGISTERS[3][18]~q\))) # (!\FILE_REG|Mux18~0_combout\ & (\FILE_REG|REGISTERS[2][18]~q\)))) # (!\IFID|OUT_INSTR_MEM\(31) & (((\FILE_REG|Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[2][18]~q\,
	datab => \IFID|OUT_INSTR_MEM\(31),
	datac => \FILE_REG|Mux18~0_combout\,
	datad => \FILE_REG|REGISTERS[3][18]~q\,
	combout => \FILE_REG|Mux18~1_combout\);

\IDEX|IDEX_OUT_READ1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(18));

\FILE_REG|REGISTERS[2][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[17]~14_combout\,
	ena => \FILE_REG|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[2][17]~q\);

\FILE_REG|REGISTERS[0][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[17]~14_combout\,
	ena => \FILE_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[0][17]~q\);

\FILE_REG|Mux49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux49~0_combout\ = (\IFID|OUT_INSTR_MEM\(31) & (((\IFID|OUT_INSTR_MEM\(28))))) # (!\IFID|OUT_INSTR_MEM\(31) & ((\IFID|OUT_INSTR_MEM\(28) & (\FILE_REG|REGISTERS[2][17]~q\)) # (!\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|REGISTERS[0][17]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(31),
	datab => \FILE_REG|REGISTERS[2][17]~q\,
	datac => \IFID|OUT_INSTR_MEM\(28),
	datad => \FILE_REG|REGISTERS[0][17]~q\,
	combout => \FILE_REG|Mux49~0_combout\);

\FILE_REG|REGISTERS[3][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[17]~14_combout\,
	ena => \FILE_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[3][17]~q\);

\FILE_REG|Mux49~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux49~1_combout\ = (\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|Mux49~0_combout\ & ((\FILE_REG|REGISTERS[3][17]~q\))) # (!\FILE_REG|Mux49~0_combout\ & (\FILE_REG|REGISTERS[1][17]~q\)))) # (!\IFID|OUT_INSTR_MEM\(31) & (((\FILE_REG|Mux49~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[1][17]~q\,
	datab => \IFID|OUT_INSTR_MEM\(31),
	datac => \FILE_REG|Mux49~0_combout\,
	datad => \FILE_REG|REGISTERS[3][17]~q\,
	combout => \FILE_REG|Mux49~1_combout\);

\IDEX|IDEX_OUT_READ2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux49~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ2\(17));

\MUX_ALU_B|X[17]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_ALU_B|X[17]~14_combout\ = (\IDEX|IDEX_OUT_READ2\(17) & !\IDEX|IDEX_OUT_EX\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_READ2\(17),
	datad => \IDEX|IDEX_OUT_EX\(4),
	combout => \MUX_ALU_B|X[17]~14_combout\);

\MAIN_ALU|Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~72_combout\ = (\ALU_CONTROL|ULA_CODE\(0) & ((\IDEX|IDEX_OUT_READ1\(17) & ((\MUX_ALU_B|X[17]~14_combout\) # (\ALU_CONTROL|ULA_CODE\(1)))) # (!\IDEX|IDEX_OUT_READ1\(17) & (\MUX_ALU_B|X[17]~14_combout\ & \ALU_CONTROL|ULA_CODE\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(0),
	datab => \IDEX|IDEX_OUT_READ1\(17),
	datac => \MUX_ALU_B|X[17]~14_combout\,
	datad => \ALU_CONTROL|ULA_CODE\(1),
	combout => \MAIN_ALU|Add0~72_combout\);

\MAIN_ALU|Add0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~73_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (((!\IDEX|IDEX_OUT_EX\(4) & \IDEX|IDEX_OUT_READ2\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(1),
	datab => \IDEX|IDEX_OUT_EX\(4),
	datad => \IDEX|IDEX_OUT_READ2\(17),
	combout => \MAIN_ALU|Add0~73_combout\);

\MAIN_ALU|Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~74_combout\ = (\MAIN_ALU|Add0~73_combout\ & ((\IDEX|IDEX_OUT_READ1\(17) & (\MAIN_ALU|Add0~70\ & VCC)) # (!\IDEX|IDEX_OUT_READ1\(17) & (!\MAIN_ALU|Add0~70\)))) # (!\MAIN_ALU|Add0~73_combout\ & ((\IDEX|IDEX_OUT_READ1\(17) & 
-- (!\MAIN_ALU|Add0~70\)) # (!\IDEX|IDEX_OUT_READ1\(17) & ((\MAIN_ALU|Add0~70\) # (GND)))))
-- \MAIN_ALU|Add0~75\ = CARRY((\MAIN_ALU|Add0~73_combout\ & (!\IDEX|IDEX_OUT_READ1\(17) & !\MAIN_ALU|Add0~70\)) # (!\MAIN_ALU|Add0~73_combout\ & ((!\MAIN_ALU|Add0~70\) # (!\IDEX|IDEX_OUT_READ1\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~73_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(17),
	datad => VCC,
	cin => \MAIN_ALU|Add0~70\,
	combout => \MAIN_ALU|Add0~74_combout\,
	cout => \MAIN_ALU|Add0~75\);

\MAIN_ALU|Add0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~76_combout\ = (\MAIN_ALU|Add0~72_combout\) # ((\MAIN_ALU|Add0~74_combout\ & !\ALU_CONTROL|ULA_CODE\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~72_combout\,
	datab => \MAIN_ALU|Add0~74_combout\,
	datad => \ALU_CONTROL|ULA_CODE\(0),
	combout => \MAIN_ALU|Add0~76_combout\);

\EXMEM|EXMEM_OUT_RESULT_ULA[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MAIN_ALU|Add0~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ULA\(17));

\MEMWB|MEMWB_OUT_RESULT_ULA[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ULA\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWB|MEMWB_OUT_RESULT_ULA\(17));

\MUX_WB|X[17]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_WB|X[17]~14_combout\ = (\MEMWB|MEMWB_OUT_WB\(1) & \MEMWB|MEMWB_OUT_RESULT_ULA\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMWB|MEMWB_OUT_WB\(1),
	datab => \MEMWB|MEMWB_OUT_RESULT_ULA\(17),
	combout => \MUX_WB|X[17]~14_combout\);

\FILE_REG|REGISTERS[1][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[17]~14_combout\,
	ena => \FILE_REG|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[1][17]~q\);

\FILE_REG|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux17~0_combout\ = (\IFID|OUT_INSTR_MEM\(28) & (((\IFID|OUT_INSTR_MEM\(31))))) # (!\IFID|OUT_INSTR_MEM\(28) & ((\IFID|OUT_INSTR_MEM\(31) & (\FILE_REG|REGISTERS[2][17]~q\)) # (!\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|REGISTERS[0][17]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(28),
	datab => \FILE_REG|REGISTERS[2][17]~q\,
	datac => \IFID|OUT_INSTR_MEM\(31),
	datad => \FILE_REG|REGISTERS[0][17]~q\,
	combout => \FILE_REG|Mux17~0_combout\);

\FILE_REG|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux17~1_combout\ = (\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|Mux17~0_combout\ & ((\FILE_REG|REGISTERS[3][17]~q\))) # (!\FILE_REG|Mux17~0_combout\ & (\FILE_REG|REGISTERS[1][17]~q\)))) # (!\IFID|OUT_INSTR_MEM\(28) & (((\FILE_REG|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[1][17]~q\,
	datab => \IFID|OUT_INSTR_MEM\(28),
	datac => \FILE_REG|Mux17~0_combout\,
	datad => \FILE_REG|REGISTERS[3][17]~q\,
	combout => \FILE_REG|Mux17~1_combout\);

\IDEX|IDEX_OUT_READ1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux17~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(17));

\FILE_REG|REGISTERS[1][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[16]~15_combout\,
	ena => \FILE_REG|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[1][16]~q\);

\FILE_REG|REGISTERS[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[16]~15_combout\,
	ena => \FILE_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[0][16]~q\);

\FILE_REG|Mux48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux48~0_combout\ = (\IFID|OUT_INSTR_MEM\(28) & (((\IFID|OUT_INSTR_MEM\(31))))) # (!\IFID|OUT_INSTR_MEM\(28) & ((\IFID|OUT_INSTR_MEM\(31) & (\FILE_REG|REGISTERS[1][16]~q\)) # (!\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|REGISTERS[0][16]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(28),
	datab => \FILE_REG|REGISTERS[1][16]~q\,
	datac => \IFID|OUT_INSTR_MEM\(31),
	datad => \FILE_REG|REGISTERS[0][16]~q\,
	combout => \FILE_REG|Mux48~0_combout\);

\FILE_REG|REGISTERS[3][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[16]~15_combout\,
	ena => \FILE_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[3][16]~q\);

\FILE_REG|Mux48~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux48~1_combout\ = (\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|Mux48~0_combout\ & ((\FILE_REG|REGISTERS[3][16]~q\))) # (!\FILE_REG|Mux48~0_combout\ & (\FILE_REG|REGISTERS[2][16]~q\)))) # (!\IFID|OUT_INSTR_MEM\(28) & (((\FILE_REG|Mux48~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[2][16]~q\,
	datab => \IFID|OUT_INSTR_MEM\(28),
	datac => \FILE_REG|Mux48~0_combout\,
	datad => \FILE_REG|REGISTERS[3][16]~q\,
	combout => \FILE_REG|Mux48~1_combout\);

\IDEX|IDEX_OUT_READ2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux48~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ2\(16));

\MUX_ALU_B|X[16]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_ALU_B|X[16]~15_combout\ = (\IDEX|IDEX_OUT_READ2\(16) & !\IDEX|IDEX_OUT_EX\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_READ2\(16),
	datad => \IDEX|IDEX_OUT_EX\(4),
	combout => \MUX_ALU_B|X[16]~15_combout\);

\MAIN_ALU|Add0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~77_combout\ = (\ALU_CONTROL|ULA_CODE\(0) & ((\IDEX|IDEX_OUT_READ1\(16) & ((\MUX_ALU_B|X[16]~15_combout\) # (\ALU_CONTROL|ULA_CODE\(1)))) # (!\IDEX|IDEX_OUT_READ1\(16) & (\MUX_ALU_B|X[16]~15_combout\ & \ALU_CONTROL|ULA_CODE\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(0),
	datab => \IDEX|IDEX_OUT_READ1\(16),
	datac => \MUX_ALU_B|X[16]~15_combout\,
	datad => \ALU_CONTROL|ULA_CODE\(1),
	combout => \MAIN_ALU|Add0~77_combout\);

\MAIN_ALU|Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~78_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (((!\IDEX|IDEX_OUT_EX\(4) & \IDEX|IDEX_OUT_READ2\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(1),
	datab => \IDEX|IDEX_OUT_EX\(4),
	datad => \IDEX|IDEX_OUT_READ2\(16),
	combout => \MAIN_ALU|Add0~78_combout\);

\MAIN_ALU|Add0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~79_combout\ = ((\MAIN_ALU|Add0~78_combout\ $ (\IDEX|IDEX_OUT_READ1\(16) $ (!\MAIN_ALU|Add0~75\)))) # (GND)
-- \MAIN_ALU|Add0~80\ = CARRY((\MAIN_ALU|Add0~78_combout\ & ((\IDEX|IDEX_OUT_READ1\(16)) # (!\MAIN_ALU|Add0~75\))) # (!\MAIN_ALU|Add0~78_combout\ & (\IDEX|IDEX_OUT_READ1\(16) & !\MAIN_ALU|Add0~75\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~78_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(16),
	datad => VCC,
	cin => \MAIN_ALU|Add0~75\,
	combout => \MAIN_ALU|Add0~79_combout\,
	cout => \MAIN_ALU|Add0~80\);

\MAIN_ALU|Add0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~81_combout\ = (\MAIN_ALU|Add0~77_combout\) # ((\MAIN_ALU|Add0~79_combout\ & !\ALU_CONTROL|ULA_CODE\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~77_combout\,
	datab => \MAIN_ALU|Add0~79_combout\,
	datad => \ALU_CONTROL|ULA_CODE\(0),
	combout => \MAIN_ALU|Add0~81_combout\);

\EXMEM|EXMEM_OUT_RESULT_ULA[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MAIN_ALU|Add0~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ULA\(16));

\MEMWB|MEMWB_OUT_RESULT_ULA[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ULA\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWB|MEMWB_OUT_RESULT_ULA\(16));

\MUX_WB|X[16]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_WB|X[16]~15_combout\ = (\MEMWB|MEMWB_OUT_WB\(1) & \MEMWB|MEMWB_OUT_RESULT_ULA\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMWB|MEMWB_OUT_WB\(1),
	datab => \MEMWB|MEMWB_OUT_RESULT_ULA\(16),
	combout => \MUX_WB|X[16]~15_combout\);

\FILE_REG|REGISTERS[2][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[16]~15_combout\,
	ena => \FILE_REG|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[2][16]~q\);

\FILE_REG|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux16~0_combout\ = (\IFID|OUT_INSTR_MEM\(31) & (((\IFID|OUT_INSTR_MEM\(28))))) # (!\IFID|OUT_INSTR_MEM\(31) & ((\IFID|OUT_INSTR_MEM\(28) & (\FILE_REG|REGISTERS[1][16]~q\)) # (!\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|REGISTERS[0][16]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(31),
	datab => \FILE_REG|REGISTERS[1][16]~q\,
	datac => \IFID|OUT_INSTR_MEM\(28),
	datad => \FILE_REG|REGISTERS[0][16]~q\,
	combout => \FILE_REG|Mux16~0_combout\);

\FILE_REG|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux16~1_combout\ = (\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|Mux16~0_combout\ & ((\FILE_REG|REGISTERS[3][16]~q\))) # (!\FILE_REG|Mux16~0_combout\ & (\FILE_REG|REGISTERS[2][16]~q\)))) # (!\IFID|OUT_INSTR_MEM\(31) & (((\FILE_REG|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[2][16]~q\,
	datab => \IFID|OUT_INSTR_MEM\(31),
	datac => \FILE_REG|Mux16~0_combout\,
	datad => \FILE_REG|REGISTERS[3][16]~q\,
	combout => \FILE_REG|Mux16~1_combout\);

\IDEX|IDEX_OUT_READ1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(16));

\FILE_REG|REGISTERS[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[15]~16_combout\,
	ena => \FILE_REG|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[2][15]~q\);

\FILE_REG|REGISTERS[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[15]~16_combout\,
	ena => \FILE_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[0][15]~q\);

\FILE_REG|Mux47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux47~0_combout\ = (\IFID|OUT_INSTR_MEM\(31) & (((\IFID|OUT_INSTR_MEM\(28))))) # (!\IFID|OUT_INSTR_MEM\(31) & ((\IFID|OUT_INSTR_MEM\(28) & (\FILE_REG|REGISTERS[2][15]~q\)) # (!\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|REGISTERS[0][15]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(31),
	datab => \FILE_REG|REGISTERS[2][15]~q\,
	datac => \IFID|OUT_INSTR_MEM\(28),
	datad => \FILE_REG|REGISTERS[0][15]~q\,
	combout => \FILE_REG|Mux47~0_combout\);

\FILE_REG|REGISTERS[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[15]~16_combout\,
	ena => \FILE_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[3][15]~q\);

\FILE_REG|Mux47~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux47~1_combout\ = (\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|Mux47~0_combout\ & ((\FILE_REG|REGISTERS[3][15]~q\))) # (!\FILE_REG|Mux47~0_combout\ & (\FILE_REG|REGISTERS[1][15]~q\)))) # (!\IFID|OUT_INSTR_MEM\(31) & (((\FILE_REG|Mux47~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[1][15]~q\,
	datab => \IFID|OUT_INSTR_MEM\(31),
	datac => \FILE_REG|Mux47~0_combout\,
	datad => \FILE_REG|REGISTERS[3][15]~q\,
	combout => \FILE_REG|Mux47~1_combout\);

\IDEX|IDEX_OUT_READ2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux47~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ2\(15));

\MAIN_ALU|Add0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~82_combout\ = (\IDEX|IDEX_OUT_READ1\(15) & ((\ALU_CONTROL|ULA_CODE\(1)) # ((\IDEX|IDEX_OUT_READ2\(15) & !\IDEX|IDEX_OUT_EX\(4))))) # (!\IDEX|IDEX_OUT_READ1\(15) & (\ALU_CONTROL|ULA_CODE\(1) & (\IDEX|IDEX_OUT_READ2\(15) & 
-- !\IDEX|IDEX_OUT_EX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_READ1\(15),
	datab => \ALU_CONTROL|ULA_CODE\(1),
	datac => \IDEX|IDEX_OUT_READ2\(15),
	datad => \IDEX|IDEX_OUT_EX\(4),
	combout => \MAIN_ALU|Add0~82_combout\);

\MAIN_ALU|Add0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~83_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (((!\IDEX|IDEX_OUT_EX\(4) & \IDEX|IDEX_OUT_READ2\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(1),
	datab => \IDEX|IDEX_OUT_EX\(4),
	datad => \IDEX|IDEX_OUT_READ2\(15),
	combout => \MAIN_ALU|Add0~83_combout\);

\MAIN_ALU|Add0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~84_combout\ = (\MAIN_ALU|Add0~83_combout\ & ((\IDEX|IDEX_OUT_READ1\(15) & (\MAIN_ALU|Add0~80\ & VCC)) # (!\IDEX|IDEX_OUT_READ1\(15) & (!\MAIN_ALU|Add0~80\)))) # (!\MAIN_ALU|Add0~83_combout\ & ((\IDEX|IDEX_OUT_READ1\(15) & 
-- (!\MAIN_ALU|Add0~80\)) # (!\IDEX|IDEX_OUT_READ1\(15) & ((\MAIN_ALU|Add0~80\) # (GND)))))
-- \MAIN_ALU|Add0~85\ = CARRY((\MAIN_ALU|Add0~83_combout\ & (!\IDEX|IDEX_OUT_READ1\(15) & !\MAIN_ALU|Add0~80\)) # (!\MAIN_ALU|Add0~83_combout\ & ((!\MAIN_ALU|Add0~80\) # (!\IDEX|IDEX_OUT_READ1\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~83_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(15),
	datad => VCC,
	cin => \MAIN_ALU|Add0~80\,
	combout => \MAIN_ALU|Add0~84_combout\,
	cout => \MAIN_ALU|Add0~85\);

\MAIN_ALU|Add0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~86_combout\ = (\ALU_CONTROL|ULA_CODE\(0) & (\MAIN_ALU|Add0~82_combout\)) # (!\ALU_CONTROL|ULA_CODE\(0) & ((\MAIN_ALU|Add0~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~82_combout\,
	datab => \MAIN_ALU|Add0~84_combout\,
	datad => \ALU_CONTROL|ULA_CODE\(0),
	combout => \MAIN_ALU|Add0~86_combout\);

\EXMEM|EXMEM_OUT_RESULT_ULA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MAIN_ALU|Add0~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ULA\(15));

\MEMWB|MEMWB_OUT_RESULT_ULA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ULA\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWB|MEMWB_OUT_RESULT_ULA\(15));

\MUX_WB|X[15]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_WB|X[15]~16_combout\ = (\MEMWB|MEMWB_OUT_WB\(1) & \MEMWB|MEMWB_OUT_RESULT_ULA\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMWB|MEMWB_OUT_WB\(1),
	datab => \MEMWB|MEMWB_OUT_RESULT_ULA\(15),
	combout => \MUX_WB|X[15]~16_combout\);

\FILE_REG|REGISTERS[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[15]~16_combout\,
	ena => \FILE_REG|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[1][15]~q\);

\FILE_REG|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux15~0_combout\ = (\IFID|OUT_INSTR_MEM\(28) & (((\IFID|OUT_INSTR_MEM\(31))))) # (!\IFID|OUT_INSTR_MEM\(28) & ((\IFID|OUT_INSTR_MEM\(31) & (\FILE_REG|REGISTERS[2][15]~q\)) # (!\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|REGISTERS[0][15]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(28),
	datab => \FILE_REG|REGISTERS[2][15]~q\,
	datac => \IFID|OUT_INSTR_MEM\(31),
	datad => \FILE_REG|REGISTERS[0][15]~q\,
	combout => \FILE_REG|Mux15~0_combout\);

\FILE_REG|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux15~1_combout\ = (\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|Mux15~0_combout\ & ((\FILE_REG|REGISTERS[3][15]~q\))) # (!\FILE_REG|Mux15~0_combout\ & (\FILE_REG|REGISTERS[1][15]~q\)))) # (!\IFID|OUT_INSTR_MEM\(28) & (((\FILE_REG|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[1][15]~q\,
	datab => \IFID|OUT_INSTR_MEM\(28),
	datac => \FILE_REG|Mux15~0_combout\,
	datad => \FILE_REG|REGISTERS[3][15]~q\,
	combout => \FILE_REG|Mux15~1_combout\);

\IDEX|IDEX_OUT_READ1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(15));

\FILE_REG|REGISTERS[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[14]~17_combout\,
	ena => \FILE_REG|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[1][14]~q\);

\FILE_REG|REGISTERS[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[14]~17_combout\,
	ena => \FILE_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[0][14]~q\);

\FILE_REG|Mux46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux46~0_combout\ = (\IFID|OUT_INSTR_MEM\(28) & (((\IFID|OUT_INSTR_MEM\(31))))) # (!\IFID|OUT_INSTR_MEM\(28) & ((\IFID|OUT_INSTR_MEM\(31) & (\FILE_REG|REGISTERS[1][14]~q\)) # (!\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|REGISTERS[0][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(28),
	datab => \FILE_REG|REGISTERS[1][14]~q\,
	datac => \IFID|OUT_INSTR_MEM\(31),
	datad => \FILE_REG|REGISTERS[0][14]~q\,
	combout => \FILE_REG|Mux46~0_combout\);

\FILE_REG|REGISTERS[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[14]~17_combout\,
	ena => \FILE_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[3][14]~q\);

\FILE_REG|Mux46~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux46~1_combout\ = (\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|Mux46~0_combout\ & ((\FILE_REG|REGISTERS[3][14]~q\))) # (!\FILE_REG|Mux46~0_combout\ & (\FILE_REG|REGISTERS[2][14]~q\)))) # (!\IFID|OUT_INSTR_MEM\(28) & (((\FILE_REG|Mux46~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[2][14]~q\,
	datab => \IFID|OUT_INSTR_MEM\(28),
	datac => \FILE_REG|Mux46~0_combout\,
	datad => \FILE_REG|REGISTERS[3][14]~q\,
	combout => \FILE_REG|Mux46~1_combout\);

\IDEX|IDEX_OUT_READ2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux46~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ2\(14));

\MUX_ALU_B|X[14]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_ALU_B|X[14]~17_combout\ = (\IDEX|IDEX_OUT_READ2\(14) & !\IDEX|IDEX_OUT_EX\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_READ2\(14),
	datad => \IDEX|IDEX_OUT_EX\(4),
	combout => \MUX_ALU_B|X[14]~17_combout\);

\MAIN_ALU|Add0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~87_combout\ = (\ALU_CONTROL|ULA_CODE\(0) & ((\IDEX|IDEX_OUT_READ1\(14) & ((\MUX_ALU_B|X[14]~17_combout\) # (\ALU_CONTROL|ULA_CODE\(1)))) # (!\IDEX|IDEX_OUT_READ1\(14) & (\MUX_ALU_B|X[14]~17_combout\ & \ALU_CONTROL|ULA_CODE\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(0),
	datab => \IDEX|IDEX_OUT_READ1\(14),
	datac => \MUX_ALU_B|X[14]~17_combout\,
	datad => \ALU_CONTROL|ULA_CODE\(1),
	combout => \MAIN_ALU|Add0~87_combout\);

\MAIN_ALU|Add0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~88_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (((!\IDEX|IDEX_OUT_EX\(4) & \IDEX|IDEX_OUT_READ2\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(1),
	datab => \IDEX|IDEX_OUT_EX\(4),
	datad => \IDEX|IDEX_OUT_READ2\(14),
	combout => \MAIN_ALU|Add0~88_combout\);

\MAIN_ALU|Add0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~89_combout\ = ((\MAIN_ALU|Add0~88_combout\ $ (\IDEX|IDEX_OUT_READ1\(14) $ (!\MAIN_ALU|Add0~85\)))) # (GND)
-- \MAIN_ALU|Add0~90\ = CARRY((\MAIN_ALU|Add0~88_combout\ & ((\IDEX|IDEX_OUT_READ1\(14)) # (!\MAIN_ALU|Add0~85\))) # (!\MAIN_ALU|Add0~88_combout\ & (\IDEX|IDEX_OUT_READ1\(14) & !\MAIN_ALU|Add0~85\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~88_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(14),
	datad => VCC,
	cin => \MAIN_ALU|Add0~85\,
	combout => \MAIN_ALU|Add0~89_combout\,
	cout => \MAIN_ALU|Add0~90\);

\MAIN_ALU|Add0~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~91_combout\ = (\MAIN_ALU|Add0~87_combout\) # ((\MAIN_ALU|Add0~89_combout\ & !\ALU_CONTROL|ULA_CODE\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~87_combout\,
	datab => \MAIN_ALU|Add0~89_combout\,
	datad => \ALU_CONTROL|ULA_CODE\(0),
	combout => \MAIN_ALU|Add0~91_combout\);

\EXMEM|EXMEM_OUT_RESULT_ULA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MAIN_ALU|Add0~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ULA\(14));

\MEMWB|MEMWB_OUT_RESULT_ULA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ULA\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWB|MEMWB_OUT_RESULT_ULA\(14));

\MUX_WB|X[14]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_WB|X[14]~17_combout\ = (\MEMWB|MEMWB_OUT_WB\(1) & \MEMWB|MEMWB_OUT_RESULT_ULA\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMWB|MEMWB_OUT_WB\(1),
	datab => \MEMWB|MEMWB_OUT_RESULT_ULA\(14),
	combout => \MUX_WB|X[14]~17_combout\);

\FILE_REG|REGISTERS[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[14]~17_combout\,
	ena => \FILE_REG|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[2][14]~q\);

\FILE_REG|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux14~0_combout\ = (\IFID|OUT_INSTR_MEM\(31) & (((\IFID|OUT_INSTR_MEM\(28))))) # (!\IFID|OUT_INSTR_MEM\(31) & ((\IFID|OUT_INSTR_MEM\(28) & (\FILE_REG|REGISTERS[1][14]~q\)) # (!\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|REGISTERS[0][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(31),
	datab => \FILE_REG|REGISTERS[1][14]~q\,
	datac => \IFID|OUT_INSTR_MEM\(28),
	datad => \FILE_REG|REGISTERS[0][14]~q\,
	combout => \FILE_REG|Mux14~0_combout\);

\FILE_REG|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux14~1_combout\ = (\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|Mux14~0_combout\ & ((\FILE_REG|REGISTERS[3][14]~q\))) # (!\FILE_REG|Mux14~0_combout\ & (\FILE_REG|REGISTERS[2][14]~q\)))) # (!\IFID|OUT_INSTR_MEM\(31) & (((\FILE_REG|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[2][14]~q\,
	datab => \IFID|OUT_INSTR_MEM\(31),
	datac => \FILE_REG|Mux14~0_combout\,
	datad => \FILE_REG|REGISTERS[3][14]~q\,
	combout => \FILE_REG|Mux14~1_combout\);

\IDEX|IDEX_OUT_READ1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(14));

\FILE_REG|REGISTERS[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[13]~18_combout\,
	ena => \FILE_REG|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[2][13]~q\);

\FILE_REG|REGISTERS[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[13]~18_combout\,
	ena => \FILE_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[0][13]~q\);

\FILE_REG|Mux45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux45~0_combout\ = (\IFID|OUT_INSTR_MEM\(31) & (((\IFID|OUT_INSTR_MEM\(28))))) # (!\IFID|OUT_INSTR_MEM\(31) & ((\IFID|OUT_INSTR_MEM\(28) & (\FILE_REG|REGISTERS[2][13]~q\)) # (!\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|REGISTERS[0][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(31),
	datab => \FILE_REG|REGISTERS[2][13]~q\,
	datac => \IFID|OUT_INSTR_MEM\(28),
	datad => \FILE_REG|REGISTERS[0][13]~q\,
	combout => \FILE_REG|Mux45~0_combout\);

\FILE_REG|REGISTERS[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[13]~18_combout\,
	ena => \FILE_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[3][13]~q\);

\FILE_REG|Mux45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux45~1_combout\ = (\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|Mux45~0_combout\ & ((\FILE_REG|REGISTERS[3][13]~q\))) # (!\FILE_REG|Mux45~0_combout\ & (\FILE_REG|REGISTERS[1][13]~q\)))) # (!\IFID|OUT_INSTR_MEM\(31) & (((\FILE_REG|Mux45~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[1][13]~q\,
	datab => \IFID|OUT_INSTR_MEM\(31),
	datac => \FILE_REG|Mux45~0_combout\,
	datad => \FILE_REG|REGISTERS[3][13]~q\,
	combout => \FILE_REG|Mux45~1_combout\);

\IDEX|IDEX_OUT_READ2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux45~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ2\(13));

\MUX_ALU_B|X[13]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_ALU_B|X[13]~18_combout\ = (\IDEX|IDEX_OUT_READ2\(13) & !\IDEX|IDEX_OUT_EX\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_READ2\(13),
	datad => \IDEX|IDEX_OUT_EX\(4),
	combout => \MUX_ALU_B|X[13]~18_combout\);

\MAIN_ALU|Add0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~92_combout\ = (\ALU_CONTROL|ULA_CODE\(0) & ((\IDEX|IDEX_OUT_READ1\(13) & ((\MUX_ALU_B|X[13]~18_combout\) # (\ALU_CONTROL|ULA_CODE\(1)))) # (!\IDEX|IDEX_OUT_READ1\(13) & (\MUX_ALU_B|X[13]~18_combout\ & \ALU_CONTROL|ULA_CODE\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(0),
	datab => \IDEX|IDEX_OUT_READ1\(13),
	datac => \MUX_ALU_B|X[13]~18_combout\,
	datad => \ALU_CONTROL|ULA_CODE\(1),
	combout => \MAIN_ALU|Add0~92_combout\);

\MAIN_ALU|Add0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~93_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (((!\IDEX|IDEX_OUT_EX\(4) & \IDEX|IDEX_OUT_READ2\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(1),
	datab => \IDEX|IDEX_OUT_EX\(4),
	datad => \IDEX|IDEX_OUT_READ2\(13),
	combout => \MAIN_ALU|Add0~93_combout\);

\MAIN_ALU|Add0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~94_combout\ = (\MAIN_ALU|Add0~93_combout\ & ((\IDEX|IDEX_OUT_READ1\(13) & (\MAIN_ALU|Add0~90\ & VCC)) # (!\IDEX|IDEX_OUT_READ1\(13) & (!\MAIN_ALU|Add0~90\)))) # (!\MAIN_ALU|Add0~93_combout\ & ((\IDEX|IDEX_OUT_READ1\(13) & 
-- (!\MAIN_ALU|Add0~90\)) # (!\IDEX|IDEX_OUT_READ1\(13) & ((\MAIN_ALU|Add0~90\) # (GND)))))
-- \MAIN_ALU|Add0~95\ = CARRY((\MAIN_ALU|Add0~93_combout\ & (!\IDEX|IDEX_OUT_READ1\(13) & !\MAIN_ALU|Add0~90\)) # (!\MAIN_ALU|Add0~93_combout\ & ((!\MAIN_ALU|Add0~90\) # (!\IDEX|IDEX_OUT_READ1\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~93_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(13),
	datad => VCC,
	cin => \MAIN_ALU|Add0~90\,
	combout => \MAIN_ALU|Add0~94_combout\,
	cout => \MAIN_ALU|Add0~95\);

\MAIN_ALU|Add0~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~96_combout\ = (\MAIN_ALU|Add0~92_combout\) # ((\MAIN_ALU|Add0~94_combout\ & !\ALU_CONTROL|ULA_CODE\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~92_combout\,
	datab => \MAIN_ALU|Add0~94_combout\,
	datad => \ALU_CONTROL|ULA_CODE\(0),
	combout => \MAIN_ALU|Add0~96_combout\);

\EXMEM|EXMEM_OUT_RESULT_ULA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MAIN_ALU|Add0~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ULA\(13));

\MEMWB|MEMWB_OUT_RESULT_ULA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ULA\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWB|MEMWB_OUT_RESULT_ULA\(13));

\MUX_WB|X[13]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_WB|X[13]~18_combout\ = (\MEMWB|MEMWB_OUT_WB\(1) & \MEMWB|MEMWB_OUT_RESULT_ULA\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMWB|MEMWB_OUT_WB\(1),
	datab => \MEMWB|MEMWB_OUT_RESULT_ULA\(13),
	combout => \MUX_WB|X[13]~18_combout\);

\FILE_REG|REGISTERS[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[13]~18_combout\,
	ena => \FILE_REG|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[1][13]~q\);

\FILE_REG|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux13~0_combout\ = (\IFID|OUT_INSTR_MEM\(28) & (((\IFID|OUT_INSTR_MEM\(31))))) # (!\IFID|OUT_INSTR_MEM\(28) & ((\IFID|OUT_INSTR_MEM\(31) & (\FILE_REG|REGISTERS[2][13]~q\)) # (!\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|REGISTERS[0][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(28),
	datab => \FILE_REG|REGISTERS[2][13]~q\,
	datac => \IFID|OUT_INSTR_MEM\(31),
	datad => \FILE_REG|REGISTERS[0][13]~q\,
	combout => \FILE_REG|Mux13~0_combout\);

\FILE_REG|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux13~1_combout\ = (\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|Mux13~0_combout\ & ((\FILE_REG|REGISTERS[3][13]~q\))) # (!\FILE_REG|Mux13~0_combout\ & (\FILE_REG|REGISTERS[1][13]~q\)))) # (!\IFID|OUT_INSTR_MEM\(28) & (((\FILE_REG|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[1][13]~q\,
	datab => \IFID|OUT_INSTR_MEM\(28),
	datac => \FILE_REG|Mux13~0_combout\,
	datad => \FILE_REG|REGISTERS[3][13]~q\,
	combout => \FILE_REG|Mux13~1_combout\);

\IDEX|IDEX_OUT_READ1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(13));

\FILE_REG|REGISTERS[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[12]~19_combout\,
	ena => \FILE_REG|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[1][12]~q\);

\FILE_REG|REGISTERS[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[12]~19_combout\,
	ena => \FILE_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[0][12]~q\);

\FILE_REG|Mux44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux44~0_combout\ = (\IFID|OUT_INSTR_MEM\(28) & (((\IFID|OUT_INSTR_MEM\(31))))) # (!\IFID|OUT_INSTR_MEM\(28) & ((\IFID|OUT_INSTR_MEM\(31) & (\FILE_REG|REGISTERS[1][12]~q\)) # (!\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|REGISTERS[0][12]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(28),
	datab => \FILE_REG|REGISTERS[1][12]~q\,
	datac => \IFID|OUT_INSTR_MEM\(31),
	datad => \FILE_REG|REGISTERS[0][12]~q\,
	combout => \FILE_REG|Mux44~0_combout\);

\FILE_REG|REGISTERS[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[12]~19_combout\,
	ena => \FILE_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[3][12]~q\);

\FILE_REG|Mux44~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux44~1_combout\ = (\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|Mux44~0_combout\ & ((\FILE_REG|REGISTERS[3][12]~q\))) # (!\FILE_REG|Mux44~0_combout\ & (\FILE_REG|REGISTERS[2][12]~q\)))) # (!\IFID|OUT_INSTR_MEM\(28) & (((\FILE_REG|Mux44~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[2][12]~q\,
	datab => \IFID|OUT_INSTR_MEM\(28),
	datac => \FILE_REG|Mux44~0_combout\,
	datad => \FILE_REG|REGISTERS[3][12]~q\,
	combout => \FILE_REG|Mux44~1_combout\);

\IDEX|IDEX_OUT_READ2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux44~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ2\(12));

\MUX_ALU_B|X[12]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_ALU_B|X[12]~19_combout\ = (\IDEX|IDEX_OUT_READ2\(12) & !\IDEX|IDEX_OUT_EX\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_READ2\(12),
	datad => \IDEX|IDEX_OUT_EX\(4),
	combout => \MUX_ALU_B|X[12]~19_combout\);

\MAIN_ALU|Add0~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~97_combout\ = (\ALU_CONTROL|ULA_CODE\(0) & ((\IDEX|IDEX_OUT_READ1\(12) & ((\MUX_ALU_B|X[12]~19_combout\) # (\ALU_CONTROL|ULA_CODE\(1)))) # (!\IDEX|IDEX_OUT_READ1\(12) & (\MUX_ALU_B|X[12]~19_combout\ & \ALU_CONTROL|ULA_CODE\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(0),
	datab => \IDEX|IDEX_OUT_READ1\(12),
	datac => \MUX_ALU_B|X[12]~19_combout\,
	datad => \ALU_CONTROL|ULA_CODE\(1),
	combout => \MAIN_ALU|Add0~97_combout\);

\MAIN_ALU|Add0~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~98_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (((!\IDEX|IDEX_OUT_EX\(4) & \IDEX|IDEX_OUT_READ2\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(1),
	datab => \IDEX|IDEX_OUT_EX\(4),
	datad => \IDEX|IDEX_OUT_READ2\(12),
	combout => \MAIN_ALU|Add0~98_combout\);

\MAIN_ALU|Add0~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~99_combout\ = ((\MAIN_ALU|Add0~98_combout\ $ (\IDEX|IDEX_OUT_READ1\(12) $ (!\MAIN_ALU|Add0~95\)))) # (GND)
-- \MAIN_ALU|Add0~100\ = CARRY((\MAIN_ALU|Add0~98_combout\ & ((\IDEX|IDEX_OUT_READ1\(12)) # (!\MAIN_ALU|Add0~95\))) # (!\MAIN_ALU|Add0~98_combout\ & (\IDEX|IDEX_OUT_READ1\(12) & !\MAIN_ALU|Add0~95\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~98_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(12),
	datad => VCC,
	cin => \MAIN_ALU|Add0~95\,
	combout => \MAIN_ALU|Add0~99_combout\,
	cout => \MAIN_ALU|Add0~100\);

\MAIN_ALU|Add0~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~101_combout\ = (\MAIN_ALU|Add0~97_combout\) # ((\MAIN_ALU|Add0~99_combout\ & !\ALU_CONTROL|ULA_CODE\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~97_combout\,
	datab => \MAIN_ALU|Add0~99_combout\,
	datad => \ALU_CONTROL|ULA_CODE\(0),
	combout => \MAIN_ALU|Add0~101_combout\);

\EXMEM|EXMEM_OUT_RESULT_ULA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MAIN_ALU|Add0~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ULA\(12));

\MEMWB|MEMWB_OUT_RESULT_ULA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ULA\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWB|MEMWB_OUT_RESULT_ULA\(12));

\MUX_WB|X[12]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_WB|X[12]~19_combout\ = (\MEMWB|MEMWB_OUT_WB\(1) & \MEMWB|MEMWB_OUT_RESULT_ULA\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMWB|MEMWB_OUT_WB\(1),
	datab => \MEMWB|MEMWB_OUT_RESULT_ULA\(12),
	combout => \MUX_WB|X[12]~19_combout\);

\FILE_REG|REGISTERS[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[12]~19_combout\,
	ena => \FILE_REG|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[2][12]~q\);

\FILE_REG|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux12~0_combout\ = (\IFID|OUT_INSTR_MEM\(31) & (((\IFID|OUT_INSTR_MEM\(28))))) # (!\IFID|OUT_INSTR_MEM\(31) & ((\IFID|OUT_INSTR_MEM\(28) & (\FILE_REG|REGISTERS[1][12]~q\)) # (!\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|REGISTERS[0][12]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(31),
	datab => \FILE_REG|REGISTERS[1][12]~q\,
	datac => \IFID|OUT_INSTR_MEM\(28),
	datad => \FILE_REG|REGISTERS[0][12]~q\,
	combout => \FILE_REG|Mux12~0_combout\);

\FILE_REG|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux12~1_combout\ = (\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|Mux12~0_combout\ & ((\FILE_REG|REGISTERS[3][12]~q\))) # (!\FILE_REG|Mux12~0_combout\ & (\FILE_REG|REGISTERS[2][12]~q\)))) # (!\IFID|OUT_INSTR_MEM\(31) & (((\FILE_REG|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[2][12]~q\,
	datab => \IFID|OUT_INSTR_MEM\(31),
	datac => \FILE_REG|Mux12~0_combout\,
	datad => \FILE_REG|REGISTERS[3][12]~q\,
	combout => \FILE_REG|Mux12~1_combout\);

\IDEX|IDEX_OUT_READ1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(12));

\FILE_REG|REGISTERS[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[11]~20_combout\,
	ena => \FILE_REG|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[2][11]~q\);

\FILE_REG|REGISTERS[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[11]~20_combout\,
	ena => \FILE_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[0][11]~q\);

\FILE_REG|Mux43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux43~0_combout\ = (\IFID|OUT_INSTR_MEM\(31) & (((\IFID|OUT_INSTR_MEM\(28))))) # (!\IFID|OUT_INSTR_MEM\(31) & ((\IFID|OUT_INSTR_MEM\(28) & (\FILE_REG|REGISTERS[2][11]~q\)) # (!\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|REGISTERS[0][11]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(31),
	datab => \FILE_REG|REGISTERS[2][11]~q\,
	datac => \IFID|OUT_INSTR_MEM\(28),
	datad => \FILE_REG|REGISTERS[0][11]~q\,
	combout => \FILE_REG|Mux43~0_combout\);

\FILE_REG|REGISTERS[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[11]~20_combout\,
	ena => \FILE_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[3][11]~q\);

\FILE_REG|Mux43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux43~1_combout\ = (\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|Mux43~0_combout\ & ((\FILE_REG|REGISTERS[3][11]~q\))) # (!\FILE_REG|Mux43~0_combout\ & (\FILE_REG|REGISTERS[1][11]~q\)))) # (!\IFID|OUT_INSTR_MEM\(31) & (((\FILE_REG|Mux43~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[1][11]~q\,
	datab => \IFID|OUT_INSTR_MEM\(31),
	datac => \FILE_REG|Mux43~0_combout\,
	datad => \FILE_REG|REGISTERS[3][11]~q\,
	combout => \FILE_REG|Mux43~1_combout\);

\IDEX|IDEX_OUT_READ2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux43~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ2\(11));

\MAIN_ALU|Add0~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~102_combout\ = (\IDEX|IDEX_OUT_READ1\(11) & ((\ALU_CONTROL|ULA_CODE\(1)) # ((\IDEX|IDEX_OUT_READ2\(11) & !\IDEX|IDEX_OUT_EX\(4))))) # (!\IDEX|IDEX_OUT_READ1\(11) & (\ALU_CONTROL|ULA_CODE\(1) & (\IDEX|IDEX_OUT_READ2\(11) & 
-- !\IDEX|IDEX_OUT_EX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_READ1\(11),
	datab => \ALU_CONTROL|ULA_CODE\(1),
	datac => \IDEX|IDEX_OUT_READ2\(11),
	datad => \IDEX|IDEX_OUT_EX\(4),
	combout => \MAIN_ALU|Add0~102_combout\);

\MAIN_ALU|Add0~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~103_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (((!\IDEX|IDEX_OUT_EX\(4) & \IDEX|IDEX_OUT_READ2\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(1),
	datab => \IDEX|IDEX_OUT_EX\(4),
	datad => \IDEX|IDEX_OUT_READ2\(11),
	combout => \MAIN_ALU|Add0~103_combout\);

\MAIN_ALU|Add0~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~104_combout\ = (\MAIN_ALU|Add0~103_combout\ & ((\IDEX|IDEX_OUT_READ1\(11) & (\MAIN_ALU|Add0~100\ & VCC)) # (!\IDEX|IDEX_OUT_READ1\(11) & (!\MAIN_ALU|Add0~100\)))) # (!\MAIN_ALU|Add0~103_combout\ & ((\IDEX|IDEX_OUT_READ1\(11) & 
-- (!\MAIN_ALU|Add0~100\)) # (!\IDEX|IDEX_OUT_READ1\(11) & ((\MAIN_ALU|Add0~100\) # (GND)))))
-- \MAIN_ALU|Add0~105\ = CARRY((\MAIN_ALU|Add0~103_combout\ & (!\IDEX|IDEX_OUT_READ1\(11) & !\MAIN_ALU|Add0~100\)) # (!\MAIN_ALU|Add0~103_combout\ & ((!\MAIN_ALU|Add0~100\) # (!\IDEX|IDEX_OUT_READ1\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~103_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(11),
	datad => VCC,
	cin => \MAIN_ALU|Add0~100\,
	combout => \MAIN_ALU|Add0~104_combout\,
	cout => \MAIN_ALU|Add0~105\);

\MAIN_ALU|Add0~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~106_combout\ = (\ALU_CONTROL|ULA_CODE\(0) & (\MAIN_ALU|Add0~102_combout\)) # (!\ALU_CONTROL|ULA_CODE\(0) & ((\MAIN_ALU|Add0~104_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~102_combout\,
	datab => \MAIN_ALU|Add0~104_combout\,
	datad => \ALU_CONTROL|ULA_CODE\(0),
	combout => \MAIN_ALU|Add0~106_combout\);

\EXMEM|EXMEM_OUT_RESULT_ULA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MAIN_ALU|Add0~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ULA\(11));

\MEMWB|MEMWB_OUT_RESULT_ULA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ULA\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWB|MEMWB_OUT_RESULT_ULA\(11));

\MUX_WB|X[11]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_WB|X[11]~20_combout\ = (\MEMWB|MEMWB_OUT_WB\(1) & \MEMWB|MEMWB_OUT_RESULT_ULA\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMWB|MEMWB_OUT_WB\(1),
	datab => \MEMWB|MEMWB_OUT_RESULT_ULA\(11),
	combout => \MUX_WB|X[11]~20_combout\);

\FILE_REG|REGISTERS[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[11]~20_combout\,
	ena => \FILE_REG|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[1][11]~q\);

\FILE_REG|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux11~0_combout\ = (\IFID|OUT_INSTR_MEM\(28) & (((\IFID|OUT_INSTR_MEM\(31))))) # (!\IFID|OUT_INSTR_MEM\(28) & ((\IFID|OUT_INSTR_MEM\(31) & (\FILE_REG|REGISTERS[2][11]~q\)) # (!\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|REGISTERS[0][11]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(28),
	datab => \FILE_REG|REGISTERS[2][11]~q\,
	datac => \IFID|OUT_INSTR_MEM\(31),
	datad => \FILE_REG|REGISTERS[0][11]~q\,
	combout => \FILE_REG|Mux11~0_combout\);

\FILE_REG|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux11~1_combout\ = (\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|Mux11~0_combout\ & ((\FILE_REG|REGISTERS[3][11]~q\))) # (!\FILE_REG|Mux11~0_combout\ & (\FILE_REG|REGISTERS[1][11]~q\)))) # (!\IFID|OUT_INSTR_MEM\(28) & (((\FILE_REG|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[1][11]~q\,
	datab => \IFID|OUT_INSTR_MEM\(28),
	datac => \FILE_REG|Mux11~0_combout\,
	datad => \FILE_REG|REGISTERS[3][11]~q\,
	combout => \FILE_REG|Mux11~1_combout\);

\IDEX|IDEX_OUT_READ1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(11));

\FILE_REG|REGISTERS[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[10]~21_combout\,
	ena => \FILE_REG|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[1][10]~q\);

\FILE_REG|REGISTERS[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[10]~21_combout\,
	ena => \FILE_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[0][10]~q\);

\FILE_REG|Mux42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux42~0_combout\ = (\IFID|OUT_INSTR_MEM\(28) & (((\IFID|OUT_INSTR_MEM\(31))))) # (!\IFID|OUT_INSTR_MEM\(28) & ((\IFID|OUT_INSTR_MEM\(31) & (\FILE_REG|REGISTERS[1][10]~q\)) # (!\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|REGISTERS[0][10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(28),
	datab => \FILE_REG|REGISTERS[1][10]~q\,
	datac => \IFID|OUT_INSTR_MEM\(31),
	datad => \FILE_REG|REGISTERS[0][10]~q\,
	combout => \FILE_REG|Mux42~0_combout\);

\FILE_REG|REGISTERS[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[10]~21_combout\,
	ena => \FILE_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[3][10]~q\);

\FILE_REG|Mux42~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux42~1_combout\ = (\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|Mux42~0_combout\ & ((\FILE_REG|REGISTERS[3][10]~q\))) # (!\FILE_REG|Mux42~0_combout\ & (\FILE_REG|REGISTERS[2][10]~q\)))) # (!\IFID|OUT_INSTR_MEM\(28) & (((\FILE_REG|Mux42~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[2][10]~q\,
	datab => \IFID|OUT_INSTR_MEM\(28),
	datac => \FILE_REG|Mux42~0_combout\,
	datad => \FILE_REG|REGISTERS[3][10]~q\,
	combout => \FILE_REG|Mux42~1_combout\);

\IDEX|IDEX_OUT_READ2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux42~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ2\(10));

\MUX_ALU_B|X[10]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_ALU_B|X[10]~21_combout\ = (\IDEX|IDEX_OUT_READ2\(10) & !\IDEX|IDEX_OUT_EX\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_READ2\(10),
	datad => \IDEX|IDEX_OUT_EX\(4),
	combout => \MUX_ALU_B|X[10]~21_combout\);

\MAIN_ALU|Add0~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~107_combout\ = (\ALU_CONTROL|ULA_CODE\(0) & ((\IDEX|IDEX_OUT_READ1\(10) & ((\MUX_ALU_B|X[10]~21_combout\) # (\ALU_CONTROL|ULA_CODE\(1)))) # (!\IDEX|IDEX_OUT_READ1\(10) & (\MUX_ALU_B|X[10]~21_combout\ & \ALU_CONTROL|ULA_CODE\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(0),
	datab => \IDEX|IDEX_OUT_READ1\(10),
	datac => \MUX_ALU_B|X[10]~21_combout\,
	datad => \ALU_CONTROL|ULA_CODE\(1),
	combout => \MAIN_ALU|Add0~107_combout\);

\MAIN_ALU|Add0~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~108_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (((!\IDEX|IDEX_OUT_EX\(4) & \IDEX|IDEX_OUT_READ2\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(1),
	datab => \IDEX|IDEX_OUT_EX\(4),
	datad => \IDEX|IDEX_OUT_READ2\(10),
	combout => \MAIN_ALU|Add0~108_combout\);

\MAIN_ALU|Add0~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~109_combout\ = ((\MAIN_ALU|Add0~108_combout\ $ (\IDEX|IDEX_OUT_READ1\(10) $ (!\MAIN_ALU|Add0~105\)))) # (GND)
-- \MAIN_ALU|Add0~110\ = CARRY((\MAIN_ALU|Add0~108_combout\ & ((\IDEX|IDEX_OUT_READ1\(10)) # (!\MAIN_ALU|Add0~105\))) # (!\MAIN_ALU|Add0~108_combout\ & (\IDEX|IDEX_OUT_READ1\(10) & !\MAIN_ALU|Add0~105\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~108_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(10),
	datad => VCC,
	cin => \MAIN_ALU|Add0~105\,
	combout => \MAIN_ALU|Add0~109_combout\,
	cout => \MAIN_ALU|Add0~110\);

\MAIN_ALU|Add0~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~111_combout\ = (\MAIN_ALU|Add0~107_combout\) # ((\MAIN_ALU|Add0~109_combout\ & !\ALU_CONTROL|ULA_CODE\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~107_combout\,
	datab => \MAIN_ALU|Add0~109_combout\,
	datad => \ALU_CONTROL|ULA_CODE\(0),
	combout => \MAIN_ALU|Add0~111_combout\);

\EXMEM|EXMEM_OUT_RESULT_ULA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MAIN_ALU|Add0~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ULA\(10));

\MEMWB|MEMWB_OUT_RESULT_ULA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ULA\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWB|MEMWB_OUT_RESULT_ULA\(10));

\MUX_WB|X[10]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_WB|X[10]~21_combout\ = (\MEMWB|MEMWB_OUT_WB\(1) & \MEMWB|MEMWB_OUT_RESULT_ULA\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMWB|MEMWB_OUT_WB\(1),
	datab => \MEMWB|MEMWB_OUT_RESULT_ULA\(10),
	combout => \MUX_WB|X[10]~21_combout\);

\FILE_REG|REGISTERS[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[10]~21_combout\,
	ena => \FILE_REG|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[2][10]~q\);

\FILE_REG|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux10~0_combout\ = (\IFID|OUT_INSTR_MEM\(31) & (((\IFID|OUT_INSTR_MEM\(28))))) # (!\IFID|OUT_INSTR_MEM\(31) & ((\IFID|OUT_INSTR_MEM\(28) & (\FILE_REG|REGISTERS[1][10]~q\)) # (!\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|REGISTERS[0][10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(31),
	datab => \FILE_REG|REGISTERS[1][10]~q\,
	datac => \IFID|OUT_INSTR_MEM\(28),
	datad => \FILE_REG|REGISTERS[0][10]~q\,
	combout => \FILE_REG|Mux10~0_combout\);

\FILE_REG|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux10~1_combout\ = (\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|Mux10~0_combout\ & ((\FILE_REG|REGISTERS[3][10]~q\))) # (!\FILE_REG|Mux10~0_combout\ & (\FILE_REG|REGISTERS[2][10]~q\)))) # (!\IFID|OUT_INSTR_MEM\(31) & (((\FILE_REG|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[2][10]~q\,
	datab => \IFID|OUT_INSTR_MEM\(31),
	datac => \FILE_REG|Mux10~0_combout\,
	datad => \FILE_REG|REGISTERS[3][10]~q\,
	combout => \FILE_REG|Mux10~1_combout\);

\IDEX|IDEX_OUT_READ1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(10));

\FILE_REG|REGISTERS[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[9]~22_combout\,
	ena => \FILE_REG|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[2][9]~q\);

\FILE_REG|REGISTERS[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[9]~22_combout\,
	ena => \FILE_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[0][9]~q\);

\FILE_REG|Mux41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux41~0_combout\ = (\IFID|OUT_INSTR_MEM\(31) & (((\IFID|OUT_INSTR_MEM\(28))))) # (!\IFID|OUT_INSTR_MEM\(31) & ((\IFID|OUT_INSTR_MEM\(28) & (\FILE_REG|REGISTERS[2][9]~q\)) # (!\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|REGISTERS[0][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(31),
	datab => \FILE_REG|REGISTERS[2][9]~q\,
	datac => \IFID|OUT_INSTR_MEM\(28),
	datad => \FILE_REG|REGISTERS[0][9]~q\,
	combout => \FILE_REG|Mux41~0_combout\);

\FILE_REG|REGISTERS[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[9]~22_combout\,
	ena => \FILE_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[3][9]~q\);

\FILE_REG|Mux41~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux41~1_combout\ = (\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|Mux41~0_combout\ & ((\FILE_REG|REGISTERS[3][9]~q\))) # (!\FILE_REG|Mux41~0_combout\ & (\FILE_REG|REGISTERS[1][9]~q\)))) # (!\IFID|OUT_INSTR_MEM\(31) & (((\FILE_REG|Mux41~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[1][9]~q\,
	datab => \IFID|OUT_INSTR_MEM\(31),
	datac => \FILE_REG|Mux41~0_combout\,
	datad => \FILE_REG|REGISTERS[3][9]~q\,
	combout => \FILE_REG|Mux41~1_combout\);

\IDEX|IDEX_OUT_READ2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux41~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ2\(9));

\MUX_ALU_B|X[9]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_ALU_B|X[9]~22_combout\ = (\IDEX|IDEX_OUT_READ2\(9) & !\IDEX|IDEX_OUT_EX\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_READ2\(9),
	datad => \IDEX|IDEX_OUT_EX\(4),
	combout => \MUX_ALU_B|X[9]~22_combout\);

\MAIN_ALU|Add0~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~112_combout\ = (\ALU_CONTROL|ULA_CODE\(0) & ((\IDEX|IDEX_OUT_READ1\(9) & ((\MUX_ALU_B|X[9]~22_combout\) # (\ALU_CONTROL|ULA_CODE\(1)))) # (!\IDEX|IDEX_OUT_READ1\(9) & (\MUX_ALU_B|X[9]~22_combout\ & \ALU_CONTROL|ULA_CODE\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(0),
	datab => \IDEX|IDEX_OUT_READ1\(9),
	datac => \MUX_ALU_B|X[9]~22_combout\,
	datad => \ALU_CONTROL|ULA_CODE\(1),
	combout => \MAIN_ALU|Add0~112_combout\);

\MAIN_ALU|Add0~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~113_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (((!\IDEX|IDEX_OUT_EX\(4) & \IDEX|IDEX_OUT_READ2\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(1),
	datab => \IDEX|IDEX_OUT_EX\(4),
	datad => \IDEX|IDEX_OUT_READ2\(9),
	combout => \MAIN_ALU|Add0~113_combout\);

\MAIN_ALU|Add0~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~114_combout\ = (\MAIN_ALU|Add0~113_combout\ & ((\IDEX|IDEX_OUT_READ1\(9) & (\MAIN_ALU|Add0~110\ & VCC)) # (!\IDEX|IDEX_OUT_READ1\(9) & (!\MAIN_ALU|Add0~110\)))) # (!\MAIN_ALU|Add0~113_combout\ & ((\IDEX|IDEX_OUT_READ1\(9) & 
-- (!\MAIN_ALU|Add0~110\)) # (!\IDEX|IDEX_OUT_READ1\(9) & ((\MAIN_ALU|Add0~110\) # (GND)))))
-- \MAIN_ALU|Add0~115\ = CARRY((\MAIN_ALU|Add0~113_combout\ & (!\IDEX|IDEX_OUT_READ1\(9) & !\MAIN_ALU|Add0~110\)) # (!\MAIN_ALU|Add0~113_combout\ & ((!\MAIN_ALU|Add0~110\) # (!\IDEX|IDEX_OUT_READ1\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~113_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(9),
	datad => VCC,
	cin => \MAIN_ALU|Add0~110\,
	combout => \MAIN_ALU|Add0~114_combout\,
	cout => \MAIN_ALU|Add0~115\);

\MAIN_ALU|Add0~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~116_combout\ = (\MAIN_ALU|Add0~112_combout\) # ((\MAIN_ALU|Add0~114_combout\ & !\ALU_CONTROL|ULA_CODE\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~112_combout\,
	datab => \MAIN_ALU|Add0~114_combout\,
	datad => \ALU_CONTROL|ULA_CODE\(0),
	combout => \MAIN_ALU|Add0~116_combout\);

\EXMEM|EXMEM_OUT_RESULT_ULA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MAIN_ALU|Add0~116_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ULA\(9));

\MEMWB|MEMWB_OUT_RESULT_ULA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ULA\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWB|MEMWB_OUT_RESULT_ULA\(9));

\MUX_WB|X[9]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_WB|X[9]~22_combout\ = (\MEMWB|MEMWB_OUT_WB\(1) & \MEMWB|MEMWB_OUT_RESULT_ULA\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMWB|MEMWB_OUT_WB\(1),
	datab => \MEMWB|MEMWB_OUT_RESULT_ULA\(9),
	combout => \MUX_WB|X[9]~22_combout\);

\FILE_REG|REGISTERS[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[9]~22_combout\,
	ena => \FILE_REG|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[1][9]~q\);

\FILE_REG|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux9~0_combout\ = (\IFID|OUT_INSTR_MEM\(28) & (((\IFID|OUT_INSTR_MEM\(31))))) # (!\IFID|OUT_INSTR_MEM\(28) & ((\IFID|OUT_INSTR_MEM\(31) & (\FILE_REG|REGISTERS[2][9]~q\)) # (!\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|REGISTERS[0][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(28),
	datab => \FILE_REG|REGISTERS[2][9]~q\,
	datac => \IFID|OUT_INSTR_MEM\(31),
	datad => \FILE_REG|REGISTERS[0][9]~q\,
	combout => \FILE_REG|Mux9~0_combout\);

\FILE_REG|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux9~1_combout\ = (\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|Mux9~0_combout\ & ((\FILE_REG|REGISTERS[3][9]~q\))) # (!\FILE_REG|Mux9~0_combout\ & (\FILE_REG|REGISTERS[1][9]~q\)))) # (!\IFID|OUT_INSTR_MEM\(28) & (((\FILE_REG|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[1][9]~q\,
	datab => \IFID|OUT_INSTR_MEM\(28),
	datac => \FILE_REG|Mux9~0_combout\,
	datad => \FILE_REG|REGISTERS[3][9]~q\,
	combout => \FILE_REG|Mux9~1_combout\);

\IDEX|IDEX_OUT_READ1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(9));

\FILE_REG|REGISTERS[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[8]~23_combout\,
	ena => \FILE_REG|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[1][8]~q\);

\FILE_REG|REGISTERS[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[8]~23_combout\,
	ena => \FILE_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[0][8]~q\);

\FILE_REG|Mux40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux40~0_combout\ = (\IFID|OUT_INSTR_MEM\(28) & (((\IFID|OUT_INSTR_MEM\(31))))) # (!\IFID|OUT_INSTR_MEM\(28) & ((\IFID|OUT_INSTR_MEM\(31) & (\FILE_REG|REGISTERS[1][8]~q\)) # (!\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|REGISTERS[0][8]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(28),
	datab => \FILE_REG|REGISTERS[1][8]~q\,
	datac => \IFID|OUT_INSTR_MEM\(31),
	datad => \FILE_REG|REGISTERS[0][8]~q\,
	combout => \FILE_REG|Mux40~0_combout\);

\FILE_REG|REGISTERS[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[8]~23_combout\,
	ena => \FILE_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[3][8]~q\);

\FILE_REG|Mux40~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux40~1_combout\ = (\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|Mux40~0_combout\ & ((\FILE_REG|REGISTERS[3][8]~q\))) # (!\FILE_REG|Mux40~0_combout\ & (\FILE_REG|REGISTERS[2][8]~q\)))) # (!\IFID|OUT_INSTR_MEM\(28) & (((\FILE_REG|Mux40~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[2][8]~q\,
	datab => \IFID|OUT_INSTR_MEM\(28),
	datac => \FILE_REG|Mux40~0_combout\,
	datad => \FILE_REG|REGISTERS[3][8]~q\,
	combout => \FILE_REG|Mux40~1_combout\);

\IDEX|IDEX_OUT_READ2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux40~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ2\(8));

\MUX_ALU_B|X[8]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_ALU_B|X[8]~23_combout\ = (\IDEX|IDEX_OUT_READ2\(8) & !\IDEX|IDEX_OUT_EX\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_READ2\(8),
	datad => \IDEX|IDEX_OUT_EX\(4),
	combout => \MUX_ALU_B|X[8]~23_combout\);

\MAIN_ALU|Add0~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~117_combout\ = (\ALU_CONTROL|ULA_CODE\(0) & ((\IDEX|IDEX_OUT_READ1\(8) & ((\MUX_ALU_B|X[8]~23_combout\) # (\ALU_CONTROL|ULA_CODE\(1)))) # (!\IDEX|IDEX_OUT_READ1\(8) & (\MUX_ALU_B|X[8]~23_combout\ & \ALU_CONTROL|ULA_CODE\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(0),
	datab => \IDEX|IDEX_OUT_READ1\(8),
	datac => \MUX_ALU_B|X[8]~23_combout\,
	datad => \ALU_CONTROL|ULA_CODE\(1),
	combout => \MAIN_ALU|Add0~117_combout\);

\MAIN_ALU|Add0~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~118_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (((!\IDEX|IDEX_OUT_EX\(4) & \IDEX|IDEX_OUT_READ2\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(1),
	datab => \IDEX|IDEX_OUT_EX\(4),
	datad => \IDEX|IDEX_OUT_READ2\(8),
	combout => \MAIN_ALU|Add0~118_combout\);

\MAIN_ALU|Add0~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~119_combout\ = ((\MAIN_ALU|Add0~118_combout\ $ (\IDEX|IDEX_OUT_READ1\(8) $ (!\MAIN_ALU|Add0~115\)))) # (GND)
-- \MAIN_ALU|Add0~120\ = CARRY((\MAIN_ALU|Add0~118_combout\ & ((\IDEX|IDEX_OUT_READ1\(8)) # (!\MAIN_ALU|Add0~115\))) # (!\MAIN_ALU|Add0~118_combout\ & (\IDEX|IDEX_OUT_READ1\(8) & !\MAIN_ALU|Add0~115\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~118_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(8),
	datad => VCC,
	cin => \MAIN_ALU|Add0~115\,
	combout => \MAIN_ALU|Add0~119_combout\,
	cout => \MAIN_ALU|Add0~120\);

\MAIN_ALU|Add0~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~121_combout\ = (\MAIN_ALU|Add0~117_combout\) # ((\MAIN_ALU|Add0~119_combout\ & !\ALU_CONTROL|ULA_CODE\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~117_combout\,
	datab => \MAIN_ALU|Add0~119_combout\,
	datad => \ALU_CONTROL|ULA_CODE\(0),
	combout => \MAIN_ALU|Add0~121_combout\);

\EXMEM|EXMEM_OUT_RESULT_ULA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MAIN_ALU|Add0~121_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ULA\(8));

\MEMWB|MEMWB_OUT_RESULT_ULA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ULA\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWB|MEMWB_OUT_RESULT_ULA\(8));

\MUX_WB|X[8]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_WB|X[8]~23_combout\ = (\MEMWB|MEMWB_OUT_WB\(1) & \MEMWB|MEMWB_OUT_RESULT_ULA\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMWB|MEMWB_OUT_WB\(1),
	datab => \MEMWB|MEMWB_OUT_RESULT_ULA\(8),
	combout => \MUX_WB|X[8]~23_combout\);

\FILE_REG|REGISTERS[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[8]~23_combout\,
	ena => \FILE_REG|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[2][8]~q\);

\FILE_REG|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux8~0_combout\ = (\IFID|OUT_INSTR_MEM\(31) & (((\IFID|OUT_INSTR_MEM\(28))))) # (!\IFID|OUT_INSTR_MEM\(31) & ((\IFID|OUT_INSTR_MEM\(28) & (\FILE_REG|REGISTERS[1][8]~q\)) # (!\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|REGISTERS[0][8]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(31),
	datab => \FILE_REG|REGISTERS[1][8]~q\,
	datac => \IFID|OUT_INSTR_MEM\(28),
	datad => \FILE_REG|REGISTERS[0][8]~q\,
	combout => \FILE_REG|Mux8~0_combout\);

\FILE_REG|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux8~1_combout\ = (\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|Mux8~0_combout\ & ((\FILE_REG|REGISTERS[3][8]~q\))) # (!\FILE_REG|Mux8~0_combout\ & (\FILE_REG|REGISTERS[2][8]~q\)))) # (!\IFID|OUT_INSTR_MEM\(31) & (((\FILE_REG|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[2][8]~q\,
	datab => \IFID|OUT_INSTR_MEM\(31),
	datac => \FILE_REG|Mux8~0_combout\,
	datad => \FILE_REG|REGISTERS[3][8]~q\,
	combout => \FILE_REG|Mux8~1_combout\);

\IDEX|IDEX_OUT_READ1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(8));

\FILE_REG|REGISTERS[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[7]~24_combout\,
	ena => \FILE_REG|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[2][7]~q\);

\FILE_REG|REGISTERS[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[7]~24_combout\,
	ena => \FILE_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[0][7]~q\);

\FILE_REG|Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux39~0_combout\ = (\IFID|OUT_INSTR_MEM\(31) & (((\IFID|OUT_INSTR_MEM\(28))))) # (!\IFID|OUT_INSTR_MEM\(31) & ((\IFID|OUT_INSTR_MEM\(28) & (\FILE_REG|REGISTERS[2][7]~q\)) # (!\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|REGISTERS[0][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(31),
	datab => \FILE_REG|REGISTERS[2][7]~q\,
	datac => \IFID|OUT_INSTR_MEM\(28),
	datad => \FILE_REG|REGISTERS[0][7]~q\,
	combout => \FILE_REG|Mux39~0_combout\);

\FILE_REG|REGISTERS[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[7]~24_combout\,
	ena => \FILE_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[3][7]~q\);

\FILE_REG|Mux39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux39~1_combout\ = (\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|Mux39~0_combout\ & ((\FILE_REG|REGISTERS[3][7]~q\))) # (!\FILE_REG|Mux39~0_combout\ & (\FILE_REG|REGISTERS[1][7]~q\)))) # (!\IFID|OUT_INSTR_MEM\(31) & (((\FILE_REG|Mux39~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[1][7]~q\,
	datab => \IFID|OUT_INSTR_MEM\(31),
	datac => \FILE_REG|Mux39~0_combout\,
	datad => \FILE_REG|REGISTERS[3][7]~q\,
	combout => \FILE_REG|Mux39~1_combout\);

\IDEX|IDEX_OUT_READ2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux39~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ2\(7));

\MUX_ALU_B|X[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_ALU_B|X[7]~24_combout\ = (\IDEX|IDEX_OUT_READ2\(7) & !\IDEX|IDEX_OUT_EX\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_READ2\(7),
	datad => \IDEX|IDEX_OUT_EX\(4),
	combout => \MUX_ALU_B|X[7]~24_combout\);

\MAIN_ALU|Add0~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~122_combout\ = (\ALU_CONTROL|ULA_CODE\(0) & ((\IDEX|IDEX_OUT_READ1\(7) & ((\MUX_ALU_B|X[7]~24_combout\) # (\ALU_CONTROL|ULA_CODE\(1)))) # (!\IDEX|IDEX_OUT_READ1\(7) & (\MUX_ALU_B|X[7]~24_combout\ & \ALU_CONTROL|ULA_CODE\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(0),
	datab => \IDEX|IDEX_OUT_READ1\(7),
	datac => \MUX_ALU_B|X[7]~24_combout\,
	datad => \ALU_CONTROL|ULA_CODE\(1),
	combout => \MAIN_ALU|Add0~122_combout\);

\MAIN_ALU|Add0~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~123_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (((!\IDEX|IDEX_OUT_EX\(4) & \IDEX|IDEX_OUT_READ2\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(1),
	datab => \IDEX|IDEX_OUT_EX\(4),
	datad => \IDEX|IDEX_OUT_READ2\(7),
	combout => \MAIN_ALU|Add0~123_combout\);

\MAIN_ALU|Add0~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~124_combout\ = (\MAIN_ALU|Add0~123_combout\ & ((\IDEX|IDEX_OUT_READ1\(7) & (\MAIN_ALU|Add0~120\ & VCC)) # (!\IDEX|IDEX_OUT_READ1\(7) & (!\MAIN_ALU|Add0~120\)))) # (!\MAIN_ALU|Add0~123_combout\ & ((\IDEX|IDEX_OUT_READ1\(7) & 
-- (!\MAIN_ALU|Add0~120\)) # (!\IDEX|IDEX_OUT_READ1\(7) & ((\MAIN_ALU|Add0~120\) # (GND)))))
-- \MAIN_ALU|Add0~125\ = CARRY((\MAIN_ALU|Add0~123_combout\ & (!\IDEX|IDEX_OUT_READ1\(7) & !\MAIN_ALU|Add0~120\)) # (!\MAIN_ALU|Add0~123_combout\ & ((!\MAIN_ALU|Add0~120\) # (!\IDEX|IDEX_OUT_READ1\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~123_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(7),
	datad => VCC,
	cin => \MAIN_ALU|Add0~120\,
	combout => \MAIN_ALU|Add0~124_combout\,
	cout => \MAIN_ALU|Add0~125\);

\MAIN_ALU|Add0~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~126_combout\ = (\MAIN_ALU|Add0~122_combout\) # ((\MAIN_ALU|Add0~124_combout\ & !\ALU_CONTROL|ULA_CODE\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~122_combout\,
	datab => \MAIN_ALU|Add0~124_combout\,
	datad => \ALU_CONTROL|ULA_CODE\(0),
	combout => \MAIN_ALU|Add0~126_combout\);

\EXMEM|EXMEM_OUT_RESULT_ULA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MAIN_ALU|Add0~126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ULA\(7));

\MEMWB|MEMWB_OUT_RESULT_ULA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ULA\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWB|MEMWB_OUT_RESULT_ULA\(7));

\MUX_WB|X[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_WB|X[7]~24_combout\ = (\MEMWB|MEMWB_OUT_WB\(1) & \MEMWB|MEMWB_OUT_RESULT_ULA\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMWB|MEMWB_OUT_WB\(1),
	datab => \MEMWB|MEMWB_OUT_RESULT_ULA\(7),
	combout => \MUX_WB|X[7]~24_combout\);

\FILE_REG|REGISTERS[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[7]~24_combout\,
	ena => \FILE_REG|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[1][7]~q\);

\FILE_REG|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux7~0_combout\ = (\IFID|OUT_INSTR_MEM\(28) & (((\IFID|OUT_INSTR_MEM\(31))))) # (!\IFID|OUT_INSTR_MEM\(28) & ((\IFID|OUT_INSTR_MEM\(31) & (\FILE_REG|REGISTERS[2][7]~q\)) # (!\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|REGISTERS[0][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(28),
	datab => \FILE_REG|REGISTERS[2][7]~q\,
	datac => \IFID|OUT_INSTR_MEM\(31),
	datad => \FILE_REG|REGISTERS[0][7]~q\,
	combout => \FILE_REG|Mux7~0_combout\);

\FILE_REG|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux7~1_combout\ = (\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|Mux7~0_combout\ & ((\FILE_REG|REGISTERS[3][7]~q\))) # (!\FILE_REG|Mux7~0_combout\ & (\FILE_REG|REGISTERS[1][7]~q\)))) # (!\IFID|OUT_INSTR_MEM\(28) & (((\FILE_REG|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[1][7]~q\,
	datab => \IFID|OUT_INSTR_MEM\(28),
	datac => \FILE_REG|Mux7~0_combout\,
	datad => \FILE_REG|REGISTERS[3][7]~q\,
	combout => \FILE_REG|Mux7~1_combout\);

\IDEX|IDEX_OUT_READ1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(7));

\FILE_REG|REGISTERS[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[6]~25_combout\,
	ena => \FILE_REG|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[1][6]~q\);

\FILE_REG|REGISTERS[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[6]~25_combout\,
	ena => \FILE_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[0][6]~q\);

\FILE_REG|Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux38~0_combout\ = (\IFID|OUT_INSTR_MEM\(28) & (((\IFID|OUT_INSTR_MEM\(31))))) # (!\IFID|OUT_INSTR_MEM\(28) & ((\IFID|OUT_INSTR_MEM\(31) & (\FILE_REG|REGISTERS[1][6]~q\)) # (!\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|REGISTERS[0][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(28),
	datab => \FILE_REG|REGISTERS[1][6]~q\,
	datac => \IFID|OUT_INSTR_MEM\(31),
	datad => \FILE_REG|REGISTERS[0][6]~q\,
	combout => \FILE_REG|Mux38~0_combout\);

\FILE_REG|REGISTERS[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[6]~25_combout\,
	ena => \FILE_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[3][6]~q\);

\FILE_REG|Mux38~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux38~1_combout\ = (\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|Mux38~0_combout\ & ((\FILE_REG|REGISTERS[3][6]~q\))) # (!\FILE_REG|Mux38~0_combout\ & (\FILE_REG|REGISTERS[2][6]~q\)))) # (!\IFID|OUT_INSTR_MEM\(28) & (((\FILE_REG|Mux38~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[2][6]~q\,
	datab => \IFID|OUT_INSTR_MEM\(28),
	datac => \FILE_REG|Mux38~0_combout\,
	datad => \FILE_REG|REGISTERS[3][6]~q\,
	combout => \FILE_REG|Mux38~1_combout\);

\IDEX|IDEX_OUT_READ2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux38~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ2\(6));

\MAIN_ALU|Add0~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~127_combout\ = (\IDEX|IDEX_OUT_READ1\(6) & ((\ALU_CONTROL|ULA_CODE\(1)) # ((\IDEX|IDEX_OUT_READ2\(6) & !\IDEX|IDEX_OUT_EX\(4))))) # (!\IDEX|IDEX_OUT_READ1\(6) & (\ALU_CONTROL|ULA_CODE\(1) & (\IDEX|IDEX_OUT_READ2\(6) & 
-- !\IDEX|IDEX_OUT_EX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_READ1\(6),
	datab => \ALU_CONTROL|ULA_CODE\(1),
	datac => \IDEX|IDEX_OUT_READ2\(6),
	datad => \IDEX|IDEX_OUT_EX\(4),
	combout => \MAIN_ALU|Add0~127_combout\);

\MAIN_ALU|Add0~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~128_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (((!\IDEX|IDEX_OUT_EX\(4) & \IDEX|IDEX_OUT_READ2\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(1),
	datab => \IDEX|IDEX_OUT_EX\(4),
	datad => \IDEX|IDEX_OUT_READ2\(6),
	combout => \MAIN_ALU|Add0~128_combout\);

\MAIN_ALU|Add0~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~129_combout\ = ((\MAIN_ALU|Add0~128_combout\ $ (\IDEX|IDEX_OUT_READ1\(6) $ (!\MAIN_ALU|Add0~125\)))) # (GND)
-- \MAIN_ALU|Add0~130\ = CARRY((\MAIN_ALU|Add0~128_combout\ & ((\IDEX|IDEX_OUT_READ1\(6)) # (!\MAIN_ALU|Add0~125\))) # (!\MAIN_ALU|Add0~128_combout\ & (\IDEX|IDEX_OUT_READ1\(6) & !\MAIN_ALU|Add0~125\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~128_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(6),
	datad => VCC,
	cin => \MAIN_ALU|Add0~125\,
	combout => \MAIN_ALU|Add0~129_combout\,
	cout => \MAIN_ALU|Add0~130\);

\MAIN_ALU|Add0~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~131_combout\ = (\ALU_CONTROL|ULA_CODE\(0) & (\MAIN_ALU|Add0~127_combout\)) # (!\ALU_CONTROL|ULA_CODE\(0) & ((\MAIN_ALU|Add0~129_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~127_combout\,
	datab => \MAIN_ALU|Add0~129_combout\,
	datad => \ALU_CONTROL|ULA_CODE\(0),
	combout => \MAIN_ALU|Add0~131_combout\);

\EXMEM|EXMEM_OUT_RESULT_ULA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MAIN_ALU|Add0~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ULA\(6));

\MEMWB|MEMWB_OUT_RESULT_ULA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ULA\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWB|MEMWB_OUT_RESULT_ULA\(6));

\MUX_WB|X[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_WB|X[6]~25_combout\ = (\MEMWB|MEMWB_OUT_WB\(1) & \MEMWB|MEMWB_OUT_RESULT_ULA\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMWB|MEMWB_OUT_WB\(1),
	datab => \MEMWB|MEMWB_OUT_RESULT_ULA\(6),
	combout => \MUX_WB|X[6]~25_combout\);

\FILE_REG|REGISTERS[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[6]~25_combout\,
	ena => \FILE_REG|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[2][6]~q\);

\FILE_REG|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux6~0_combout\ = (\IFID|OUT_INSTR_MEM\(31) & (((\IFID|OUT_INSTR_MEM\(28))))) # (!\IFID|OUT_INSTR_MEM\(31) & ((\IFID|OUT_INSTR_MEM\(28) & (\FILE_REG|REGISTERS[1][6]~q\)) # (!\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|REGISTERS[0][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(31),
	datab => \FILE_REG|REGISTERS[1][6]~q\,
	datac => \IFID|OUT_INSTR_MEM\(28),
	datad => \FILE_REG|REGISTERS[0][6]~q\,
	combout => \FILE_REG|Mux6~0_combout\);

\FILE_REG|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux6~1_combout\ = (\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|Mux6~0_combout\ & ((\FILE_REG|REGISTERS[3][6]~q\))) # (!\FILE_REG|Mux6~0_combout\ & (\FILE_REG|REGISTERS[2][6]~q\)))) # (!\IFID|OUT_INSTR_MEM\(31) & (((\FILE_REG|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[2][6]~q\,
	datab => \IFID|OUT_INSTR_MEM\(31),
	datac => \FILE_REG|Mux6~0_combout\,
	datad => \FILE_REG|REGISTERS[3][6]~q\,
	combout => \FILE_REG|Mux6~1_combout\);

\IDEX|IDEX_OUT_READ1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(6));

\FILE_REG|REGISTERS[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[5]~26_combout\,
	ena => \FILE_REG|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[2][5]~q\);

\FILE_REG|REGISTERS[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[5]~26_combout\,
	ena => \FILE_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[0][5]~q\);

\FILE_REG|Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux37~0_combout\ = (\IFID|OUT_INSTR_MEM\(31) & (((\IFID|OUT_INSTR_MEM\(28))))) # (!\IFID|OUT_INSTR_MEM\(31) & ((\IFID|OUT_INSTR_MEM\(28) & (\FILE_REG|REGISTERS[2][5]~q\)) # (!\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|REGISTERS[0][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(31),
	datab => \FILE_REG|REGISTERS[2][5]~q\,
	datac => \IFID|OUT_INSTR_MEM\(28),
	datad => \FILE_REG|REGISTERS[0][5]~q\,
	combout => \FILE_REG|Mux37~0_combout\);

\FILE_REG|REGISTERS[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[5]~26_combout\,
	ena => \FILE_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[3][5]~q\);

\FILE_REG|Mux37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux37~1_combout\ = (\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|Mux37~0_combout\ & ((\FILE_REG|REGISTERS[3][5]~q\))) # (!\FILE_REG|Mux37~0_combout\ & (\FILE_REG|REGISTERS[1][5]~q\)))) # (!\IFID|OUT_INSTR_MEM\(31) & (((\FILE_REG|Mux37~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[1][5]~q\,
	datab => \IFID|OUT_INSTR_MEM\(31),
	datac => \FILE_REG|Mux37~0_combout\,
	datad => \FILE_REG|REGISTERS[3][5]~q\,
	combout => \FILE_REG|Mux37~1_combout\);

\IDEX|IDEX_OUT_READ2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux37~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ2\(5));

\MUX_ALU_B|X[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_ALU_B|X[5]~26_combout\ = (\IDEX|IDEX_OUT_READ2\(5) & !\IDEX|IDEX_OUT_EX\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_READ2\(5),
	datad => \IDEX|IDEX_OUT_EX\(4),
	combout => \MUX_ALU_B|X[5]~26_combout\);

\MAIN_ALU|Add0~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~132_combout\ = (\ALU_CONTROL|ULA_CODE\(0) & ((\IDEX|IDEX_OUT_READ1\(5) & ((\MUX_ALU_B|X[5]~26_combout\) # (\ALU_CONTROL|ULA_CODE\(1)))) # (!\IDEX|IDEX_OUT_READ1\(5) & (\MUX_ALU_B|X[5]~26_combout\ & \ALU_CONTROL|ULA_CODE\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(0),
	datab => \IDEX|IDEX_OUT_READ1\(5),
	datac => \MUX_ALU_B|X[5]~26_combout\,
	datad => \ALU_CONTROL|ULA_CODE\(1),
	combout => \MAIN_ALU|Add0~132_combout\);

\MAIN_ALU|Add0~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~133_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (((!\IDEX|IDEX_OUT_EX\(4) & \IDEX|IDEX_OUT_READ2\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(1),
	datab => \IDEX|IDEX_OUT_EX\(4),
	datad => \IDEX|IDEX_OUT_READ2\(5),
	combout => \MAIN_ALU|Add0~133_combout\);

\MAIN_ALU|Add0~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~134_combout\ = (\MAIN_ALU|Add0~133_combout\ & ((\IDEX|IDEX_OUT_READ1\(5) & (\MAIN_ALU|Add0~130\ & VCC)) # (!\IDEX|IDEX_OUT_READ1\(5) & (!\MAIN_ALU|Add0~130\)))) # (!\MAIN_ALU|Add0~133_combout\ & ((\IDEX|IDEX_OUT_READ1\(5) & 
-- (!\MAIN_ALU|Add0~130\)) # (!\IDEX|IDEX_OUT_READ1\(5) & ((\MAIN_ALU|Add0~130\) # (GND)))))
-- \MAIN_ALU|Add0~135\ = CARRY((\MAIN_ALU|Add0~133_combout\ & (!\IDEX|IDEX_OUT_READ1\(5) & !\MAIN_ALU|Add0~130\)) # (!\MAIN_ALU|Add0~133_combout\ & ((!\MAIN_ALU|Add0~130\) # (!\IDEX|IDEX_OUT_READ1\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~133_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(5),
	datad => VCC,
	cin => \MAIN_ALU|Add0~130\,
	combout => \MAIN_ALU|Add0~134_combout\,
	cout => \MAIN_ALU|Add0~135\);

\MAIN_ALU|Add0~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~136_combout\ = (\MAIN_ALU|Add0~132_combout\) # ((\MAIN_ALU|Add0~134_combout\ & !\ALU_CONTROL|ULA_CODE\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~132_combout\,
	datab => \MAIN_ALU|Add0~134_combout\,
	datad => \ALU_CONTROL|ULA_CODE\(0),
	combout => \MAIN_ALU|Add0~136_combout\);

\EXMEM|EXMEM_OUT_RESULT_ULA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MAIN_ALU|Add0~136_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ULA\(5));

\MEMWB|MEMWB_OUT_RESULT_ULA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ULA\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWB|MEMWB_OUT_RESULT_ULA\(5));

\MUX_WB|X[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_WB|X[5]~26_combout\ = (\MEMWB|MEMWB_OUT_WB\(1) & \MEMWB|MEMWB_OUT_RESULT_ULA\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMWB|MEMWB_OUT_WB\(1),
	datab => \MEMWB|MEMWB_OUT_RESULT_ULA\(5),
	combout => \MUX_WB|X[5]~26_combout\);

\FILE_REG|REGISTERS[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[5]~26_combout\,
	ena => \FILE_REG|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[1][5]~q\);

\FILE_REG|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux5~0_combout\ = (\IFID|OUT_INSTR_MEM\(28) & (((\IFID|OUT_INSTR_MEM\(31))))) # (!\IFID|OUT_INSTR_MEM\(28) & ((\IFID|OUT_INSTR_MEM\(31) & (\FILE_REG|REGISTERS[2][5]~q\)) # (!\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|REGISTERS[0][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(28),
	datab => \FILE_REG|REGISTERS[2][5]~q\,
	datac => \IFID|OUT_INSTR_MEM\(31),
	datad => \FILE_REG|REGISTERS[0][5]~q\,
	combout => \FILE_REG|Mux5~0_combout\);

\FILE_REG|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux5~1_combout\ = (\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|Mux5~0_combout\ & ((\FILE_REG|REGISTERS[3][5]~q\))) # (!\FILE_REG|Mux5~0_combout\ & (\FILE_REG|REGISTERS[1][5]~q\)))) # (!\IFID|OUT_INSTR_MEM\(28) & (((\FILE_REG|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[1][5]~q\,
	datab => \IFID|OUT_INSTR_MEM\(28),
	datac => \FILE_REG|Mux5~0_combout\,
	datad => \FILE_REG|REGISTERS[3][5]~q\,
	combout => \FILE_REG|Mux5~1_combout\);

\IDEX|IDEX_OUT_READ1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(5));

\FILE_REG|REGISTERS[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[4]~27_combout\,
	ena => \FILE_REG|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[1][4]~q\);

\FILE_REG|REGISTERS[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[4]~27_combout\,
	ena => \FILE_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[0][4]~q\);

\FILE_REG|Mux36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux36~0_combout\ = (\IFID|OUT_INSTR_MEM\(28) & (((\IFID|OUT_INSTR_MEM\(31))))) # (!\IFID|OUT_INSTR_MEM\(28) & ((\IFID|OUT_INSTR_MEM\(31) & (\FILE_REG|REGISTERS[1][4]~q\)) # (!\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|REGISTERS[0][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(28),
	datab => \FILE_REG|REGISTERS[1][4]~q\,
	datac => \IFID|OUT_INSTR_MEM\(31),
	datad => \FILE_REG|REGISTERS[0][4]~q\,
	combout => \FILE_REG|Mux36~0_combout\);

\FILE_REG|REGISTERS[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[4]~27_combout\,
	ena => \FILE_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[3][4]~q\);

\FILE_REG|Mux36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux36~1_combout\ = (\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|Mux36~0_combout\ & ((\FILE_REG|REGISTERS[3][4]~q\))) # (!\FILE_REG|Mux36~0_combout\ & (\FILE_REG|REGISTERS[2][4]~q\)))) # (!\IFID|OUT_INSTR_MEM\(28) & (((\FILE_REG|Mux36~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[2][4]~q\,
	datab => \IFID|OUT_INSTR_MEM\(28),
	datac => \FILE_REG|Mux36~0_combout\,
	datad => \FILE_REG|REGISTERS[3][4]~q\,
	combout => \FILE_REG|Mux36~1_combout\);

\IDEX|IDEX_OUT_READ2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux36~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ2\(4));

\MAIN_ALU|Add0~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~137_combout\ = (\IDEX|IDEX_OUT_READ1\(4) & ((\ALU_CONTROL|ULA_CODE\(1)) # ((\IDEX|IDEX_OUT_READ2\(4) & !\IDEX|IDEX_OUT_EX\(4))))) # (!\IDEX|IDEX_OUT_READ1\(4) & (\ALU_CONTROL|ULA_CODE\(1) & (\IDEX|IDEX_OUT_READ2\(4) & 
-- !\IDEX|IDEX_OUT_EX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_READ1\(4),
	datab => \ALU_CONTROL|ULA_CODE\(1),
	datac => \IDEX|IDEX_OUT_READ2\(4),
	datad => \IDEX|IDEX_OUT_EX\(4),
	combout => \MAIN_ALU|Add0~137_combout\);

\MAIN_ALU|Add0~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~138_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (((!\IDEX|IDEX_OUT_EX\(4) & \IDEX|IDEX_OUT_READ2\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(1),
	datab => \IDEX|IDEX_OUT_EX\(4),
	datad => \IDEX|IDEX_OUT_READ2\(4),
	combout => \MAIN_ALU|Add0~138_combout\);

\MAIN_ALU|Add0~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~139_combout\ = ((\MAIN_ALU|Add0~138_combout\ $ (\IDEX|IDEX_OUT_READ1\(4) $ (!\MAIN_ALU|Add0~135\)))) # (GND)
-- \MAIN_ALU|Add0~140\ = CARRY((\MAIN_ALU|Add0~138_combout\ & ((\IDEX|IDEX_OUT_READ1\(4)) # (!\MAIN_ALU|Add0~135\))) # (!\MAIN_ALU|Add0~138_combout\ & (\IDEX|IDEX_OUT_READ1\(4) & !\MAIN_ALU|Add0~135\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~138_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(4),
	datad => VCC,
	cin => \MAIN_ALU|Add0~135\,
	combout => \MAIN_ALU|Add0~139_combout\,
	cout => \MAIN_ALU|Add0~140\);

\MAIN_ALU|Add0~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~141_combout\ = (\ALU_CONTROL|ULA_CODE\(0) & (\MAIN_ALU|Add0~137_combout\)) # (!\ALU_CONTROL|ULA_CODE\(0) & ((\MAIN_ALU|Add0~139_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~137_combout\,
	datab => \MAIN_ALU|Add0~139_combout\,
	datad => \ALU_CONTROL|ULA_CODE\(0),
	combout => \MAIN_ALU|Add0~141_combout\);

\EXMEM|EXMEM_OUT_RESULT_ULA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MAIN_ALU|Add0~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ULA\(4));

\MEMWB|MEMWB_OUT_RESULT_ULA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ULA\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWB|MEMWB_OUT_RESULT_ULA\(4));

\MUX_WB|X[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_WB|X[4]~27_combout\ = (\MEMWB|MEMWB_OUT_WB\(1) & \MEMWB|MEMWB_OUT_RESULT_ULA\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMWB|MEMWB_OUT_WB\(1),
	datab => \MEMWB|MEMWB_OUT_RESULT_ULA\(4),
	combout => \MUX_WB|X[4]~27_combout\);

\FILE_REG|REGISTERS[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[4]~27_combout\,
	ena => \FILE_REG|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[2][4]~q\);

\FILE_REG|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux4~0_combout\ = (\IFID|OUT_INSTR_MEM\(31) & (((\IFID|OUT_INSTR_MEM\(28))))) # (!\IFID|OUT_INSTR_MEM\(31) & ((\IFID|OUT_INSTR_MEM\(28) & (\FILE_REG|REGISTERS[1][4]~q\)) # (!\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|REGISTERS[0][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(31),
	datab => \FILE_REG|REGISTERS[1][4]~q\,
	datac => \IFID|OUT_INSTR_MEM\(28),
	datad => \FILE_REG|REGISTERS[0][4]~q\,
	combout => \FILE_REG|Mux4~0_combout\);

\FILE_REG|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux4~1_combout\ = (\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|Mux4~0_combout\ & ((\FILE_REG|REGISTERS[3][4]~q\))) # (!\FILE_REG|Mux4~0_combout\ & (\FILE_REG|REGISTERS[2][4]~q\)))) # (!\IFID|OUT_INSTR_MEM\(31) & (((\FILE_REG|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[2][4]~q\,
	datab => \IFID|OUT_INSTR_MEM\(31),
	datac => \FILE_REG|Mux4~0_combout\,
	datad => \FILE_REG|REGISTERS[3][4]~q\,
	combout => \FILE_REG|Mux4~1_combout\);

\IDEX|IDEX_OUT_READ1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(4));

\FILE_REG|REGISTERS[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[3]~28_combout\,
	ena => \FILE_REG|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[2][3]~q\);

\FILE_REG|REGISTERS[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[3]~28_combout\,
	ena => \FILE_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[0][3]~q\);

\FILE_REG|Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux35~0_combout\ = (\IFID|OUT_INSTR_MEM\(31) & (((\IFID|OUT_INSTR_MEM\(28))))) # (!\IFID|OUT_INSTR_MEM\(31) & ((\IFID|OUT_INSTR_MEM\(28) & (\FILE_REG|REGISTERS[2][3]~q\)) # (!\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|REGISTERS[0][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(31),
	datab => \FILE_REG|REGISTERS[2][3]~q\,
	datac => \IFID|OUT_INSTR_MEM\(28),
	datad => \FILE_REG|REGISTERS[0][3]~q\,
	combout => \FILE_REG|Mux35~0_combout\);

\FILE_REG|REGISTERS[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[3]~28_combout\,
	ena => \FILE_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[3][3]~q\);

\FILE_REG|Mux35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux35~1_combout\ = (\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|Mux35~0_combout\ & ((\FILE_REG|REGISTERS[3][3]~q\))) # (!\FILE_REG|Mux35~0_combout\ & (\FILE_REG|REGISTERS[1][3]~q\)))) # (!\IFID|OUT_INSTR_MEM\(31) & (((\FILE_REG|Mux35~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[1][3]~q\,
	datab => \IFID|OUT_INSTR_MEM\(31),
	datac => \FILE_REG|Mux35~0_combout\,
	datad => \FILE_REG|REGISTERS[3][3]~q\,
	combout => \FILE_REG|Mux35~1_combout\);

\IDEX|IDEX_OUT_READ2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux35~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ2\(3));

\MUX_ALU_B|X[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_ALU_B|X[3]~28_combout\ = (\IDEX|IDEX_OUT_READ2\(3) & !\IDEX|IDEX_OUT_EX\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_READ2\(3),
	datad => \IDEX|IDEX_OUT_EX\(4),
	combout => \MUX_ALU_B|X[3]~28_combout\);

\MAIN_ALU|Add0~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~142_combout\ = (\ALU_CONTROL|ULA_CODE\(0) & ((\IDEX|IDEX_OUT_READ1\(3) & ((\MUX_ALU_B|X[3]~28_combout\) # (\ALU_CONTROL|ULA_CODE\(1)))) # (!\IDEX|IDEX_OUT_READ1\(3) & (\MUX_ALU_B|X[3]~28_combout\ & \ALU_CONTROL|ULA_CODE\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(0),
	datab => \IDEX|IDEX_OUT_READ1\(3),
	datac => \MUX_ALU_B|X[3]~28_combout\,
	datad => \ALU_CONTROL|ULA_CODE\(1),
	combout => \MAIN_ALU|Add0~142_combout\);

\MAIN_ALU|Add0~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~143_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (((!\IDEX|IDEX_OUT_EX\(4) & \IDEX|IDEX_OUT_READ2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(1),
	datab => \IDEX|IDEX_OUT_EX\(4),
	datad => \IDEX|IDEX_OUT_READ2\(3),
	combout => \MAIN_ALU|Add0~143_combout\);

\MAIN_ALU|Add0~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~144_combout\ = (\MAIN_ALU|Add0~143_combout\ & ((\IDEX|IDEX_OUT_READ1\(3) & (\MAIN_ALU|Add0~140\ & VCC)) # (!\IDEX|IDEX_OUT_READ1\(3) & (!\MAIN_ALU|Add0~140\)))) # (!\MAIN_ALU|Add0~143_combout\ & ((\IDEX|IDEX_OUT_READ1\(3) & 
-- (!\MAIN_ALU|Add0~140\)) # (!\IDEX|IDEX_OUT_READ1\(3) & ((\MAIN_ALU|Add0~140\) # (GND)))))
-- \MAIN_ALU|Add0~145\ = CARRY((\MAIN_ALU|Add0~143_combout\ & (!\IDEX|IDEX_OUT_READ1\(3) & !\MAIN_ALU|Add0~140\)) # (!\MAIN_ALU|Add0~143_combout\ & ((!\MAIN_ALU|Add0~140\) # (!\IDEX|IDEX_OUT_READ1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~143_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(3),
	datad => VCC,
	cin => \MAIN_ALU|Add0~140\,
	combout => \MAIN_ALU|Add0~144_combout\,
	cout => \MAIN_ALU|Add0~145\);

\MAIN_ALU|Add0~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~146_combout\ = (\MAIN_ALU|Add0~142_combout\) # ((\MAIN_ALU|Add0~144_combout\ & !\ALU_CONTROL|ULA_CODE\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~142_combout\,
	datab => \MAIN_ALU|Add0~144_combout\,
	datad => \ALU_CONTROL|ULA_CODE\(0),
	combout => \MAIN_ALU|Add0~146_combout\);

\EXMEM|EXMEM_OUT_RESULT_ULA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MAIN_ALU|Add0~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ULA\(3));

\MEMWB|MEMWB_OUT_RESULT_ULA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ULA\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWB|MEMWB_OUT_RESULT_ULA\(3));

\MUX_WB|X[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_WB|X[3]~28_combout\ = (\MEMWB|MEMWB_OUT_WB\(1) & \MEMWB|MEMWB_OUT_RESULT_ULA\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMWB|MEMWB_OUT_WB\(1),
	datab => \MEMWB|MEMWB_OUT_RESULT_ULA\(3),
	combout => \MUX_WB|X[3]~28_combout\);

\FILE_REG|REGISTERS[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[3]~28_combout\,
	ena => \FILE_REG|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[1][3]~q\);

\FILE_REG|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux3~0_combout\ = (\IFID|OUT_INSTR_MEM\(28) & (((\IFID|OUT_INSTR_MEM\(31))))) # (!\IFID|OUT_INSTR_MEM\(28) & ((\IFID|OUT_INSTR_MEM\(31) & (\FILE_REG|REGISTERS[2][3]~q\)) # (!\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|REGISTERS[0][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(28),
	datab => \FILE_REG|REGISTERS[2][3]~q\,
	datac => \IFID|OUT_INSTR_MEM\(31),
	datad => \FILE_REG|REGISTERS[0][3]~q\,
	combout => \FILE_REG|Mux3~0_combout\);

\FILE_REG|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux3~1_combout\ = (\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|Mux3~0_combout\ & ((\FILE_REG|REGISTERS[3][3]~q\))) # (!\FILE_REG|Mux3~0_combout\ & (\FILE_REG|REGISTERS[1][3]~q\)))) # (!\IFID|OUT_INSTR_MEM\(28) & (((\FILE_REG|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[1][3]~q\,
	datab => \IFID|OUT_INSTR_MEM\(28),
	datac => \FILE_REG|Mux3~0_combout\,
	datad => \FILE_REG|REGISTERS[3][3]~q\,
	combout => \FILE_REG|Mux3~1_combout\);

\IDEX|IDEX_OUT_READ1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(3));

\FILE_REG|REGISTERS[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[2]~29_combout\,
	ena => \FILE_REG|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[1][2]~q\);

\FILE_REG|REGISTERS[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[2]~29_combout\,
	ena => \FILE_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[0][2]~q\);

\FILE_REG|Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux34~0_combout\ = (\IFID|OUT_INSTR_MEM\(28) & (((\IFID|OUT_INSTR_MEM\(31))))) # (!\IFID|OUT_INSTR_MEM\(28) & ((\IFID|OUT_INSTR_MEM\(31) & (\FILE_REG|REGISTERS[1][2]~q\)) # (!\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|REGISTERS[0][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(28),
	datab => \FILE_REG|REGISTERS[1][2]~q\,
	datac => \IFID|OUT_INSTR_MEM\(31),
	datad => \FILE_REG|REGISTERS[0][2]~q\,
	combout => \FILE_REG|Mux34~0_combout\);

\FILE_REG|REGISTERS[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[2]~29_combout\,
	ena => \FILE_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[3][2]~q\);

\FILE_REG|Mux34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux34~1_combout\ = (\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|Mux34~0_combout\ & ((\FILE_REG|REGISTERS[3][2]~q\))) # (!\FILE_REG|Mux34~0_combout\ & (\FILE_REG|REGISTERS[2][2]~q\)))) # (!\IFID|OUT_INSTR_MEM\(28) & (((\FILE_REG|Mux34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[2][2]~q\,
	datab => \IFID|OUT_INSTR_MEM\(28),
	datac => \FILE_REG|Mux34~0_combout\,
	datad => \FILE_REG|REGISTERS[3][2]~q\,
	combout => \FILE_REG|Mux34~1_combout\);

\IDEX|IDEX_OUT_READ2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux34~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ2\(2));

\MAIN_ALU|Add0~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~147_combout\ = (\IDEX|IDEX_OUT_READ1\(2) & ((\ALU_CONTROL|ULA_CODE\(1)) # ((\IDEX|IDEX_OUT_READ2\(2) & !\IDEX|IDEX_OUT_EX\(4))))) # (!\IDEX|IDEX_OUT_READ1\(2) & (\ALU_CONTROL|ULA_CODE\(1) & (\IDEX|IDEX_OUT_READ2\(2) & 
-- !\IDEX|IDEX_OUT_EX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_READ1\(2),
	datab => \ALU_CONTROL|ULA_CODE\(1),
	datac => \IDEX|IDEX_OUT_READ2\(2),
	datad => \IDEX|IDEX_OUT_EX\(4),
	combout => \MAIN_ALU|Add0~147_combout\);

\MAIN_ALU|Add0~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~148_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (((!\IDEX|IDEX_OUT_EX\(4) & \IDEX|IDEX_OUT_READ2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(1),
	datab => \IDEX|IDEX_OUT_EX\(4),
	datad => \IDEX|IDEX_OUT_READ2\(2),
	combout => \MAIN_ALU|Add0~148_combout\);

\MAIN_ALU|Add0~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~149_combout\ = ((\MAIN_ALU|Add0~148_combout\ $ (\IDEX|IDEX_OUT_READ1\(2) $ (!\MAIN_ALU|Add0~145\)))) # (GND)
-- \MAIN_ALU|Add0~150\ = CARRY((\MAIN_ALU|Add0~148_combout\ & ((\IDEX|IDEX_OUT_READ1\(2)) # (!\MAIN_ALU|Add0~145\))) # (!\MAIN_ALU|Add0~148_combout\ & (\IDEX|IDEX_OUT_READ1\(2) & !\MAIN_ALU|Add0~145\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~148_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(2),
	datad => VCC,
	cin => \MAIN_ALU|Add0~145\,
	combout => \MAIN_ALU|Add0~149_combout\,
	cout => \MAIN_ALU|Add0~150\);

\MAIN_ALU|Add0~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~151_combout\ = (\ALU_CONTROL|ULA_CODE\(0) & (\MAIN_ALU|Add0~147_combout\)) # (!\ALU_CONTROL|ULA_CODE\(0) & ((\MAIN_ALU|Add0~149_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~147_combout\,
	datab => \MAIN_ALU|Add0~149_combout\,
	datad => \ALU_CONTROL|ULA_CODE\(0),
	combout => \MAIN_ALU|Add0~151_combout\);

\EXMEM|EXMEM_OUT_RESULT_ULA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MAIN_ALU|Add0~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ULA\(2));

\MEMWB|MEMWB_OUT_RESULT_ULA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ULA\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWB|MEMWB_OUT_RESULT_ULA\(2));

\MUX_WB|X[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_WB|X[2]~29_combout\ = (\MEMWB|MEMWB_OUT_WB\(1) & \MEMWB|MEMWB_OUT_RESULT_ULA\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMWB|MEMWB_OUT_WB\(1),
	datab => \MEMWB|MEMWB_OUT_RESULT_ULA\(2),
	combout => \MUX_WB|X[2]~29_combout\);

\FILE_REG|REGISTERS[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[2]~29_combout\,
	ena => \FILE_REG|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[2][2]~q\);

\FILE_REG|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux2~0_combout\ = (\IFID|OUT_INSTR_MEM\(31) & (((\IFID|OUT_INSTR_MEM\(28))))) # (!\IFID|OUT_INSTR_MEM\(31) & ((\IFID|OUT_INSTR_MEM\(28) & (\FILE_REG|REGISTERS[1][2]~q\)) # (!\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|REGISTERS[0][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(31),
	datab => \FILE_REG|REGISTERS[1][2]~q\,
	datac => \IFID|OUT_INSTR_MEM\(28),
	datad => \FILE_REG|REGISTERS[0][2]~q\,
	combout => \FILE_REG|Mux2~0_combout\);

\FILE_REG|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux2~1_combout\ = (\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|Mux2~0_combout\ & ((\FILE_REG|REGISTERS[3][2]~q\))) # (!\FILE_REG|Mux2~0_combout\ & (\FILE_REG|REGISTERS[2][2]~q\)))) # (!\IFID|OUT_INSTR_MEM\(31) & (((\FILE_REG|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[2][2]~q\,
	datab => \IFID|OUT_INSTR_MEM\(31),
	datac => \FILE_REG|Mux2~0_combout\,
	datad => \FILE_REG|REGISTERS[3][2]~q\,
	combout => \FILE_REG|Mux2~1_combout\);

\IDEX|IDEX_OUT_READ1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(2));

\FILE_REG|REGISTERS[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[1]~30_combout\,
	ena => \FILE_REG|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[2][1]~q\);

\FILE_REG|REGISTERS[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[1]~30_combout\,
	ena => \FILE_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[0][1]~q\);

\FILE_REG|Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux33~0_combout\ = (\IFID|OUT_INSTR_MEM\(31) & (((\IFID|OUT_INSTR_MEM\(28))))) # (!\IFID|OUT_INSTR_MEM\(31) & ((\IFID|OUT_INSTR_MEM\(28) & (\FILE_REG|REGISTERS[2][1]~q\)) # (!\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|REGISTERS[0][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(31),
	datab => \FILE_REG|REGISTERS[2][1]~q\,
	datac => \IFID|OUT_INSTR_MEM\(28),
	datad => \FILE_REG|REGISTERS[0][1]~q\,
	combout => \FILE_REG|Mux33~0_combout\);

\FILE_REG|REGISTERS[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[1]~30_combout\,
	ena => \FILE_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[3][1]~q\);

\FILE_REG|Mux33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux33~1_combout\ = (\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|Mux33~0_combout\ & ((\FILE_REG|REGISTERS[3][1]~q\))) # (!\FILE_REG|Mux33~0_combout\ & (\FILE_REG|REGISTERS[1][1]~q\)))) # (!\IFID|OUT_INSTR_MEM\(31) & (((\FILE_REG|Mux33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[1][1]~q\,
	datab => \IFID|OUT_INSTR_MEM\(31),
	datac => \FILE_REG|Mux33~0_combout\,
	datad => \FILE_REG|REGISTERS[3][1]~q\,
	combout => \FILE_REG|Mux33~1_combout\);

\IDEX|IDEX_OUT_READ2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux33~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ2\(1));

\MUX_ALU_B|X[1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_ALU_B|X[1]~30_combout\ = (\IDEX|IDEX_OUT_READ2\(1) & !\IDEX|IDEX_OUT_EX\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_READ2\(1),
	datad => \IDEX|IDEX_OUT_EX\(4),
	combout => \MUX_ALU_B|X[1]~30_combout\);

\MAIN_ALU|Add0~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~152_combout\ = (\ALU_CONTROL|ULA_CODE\(0) & ((\IDEX|IDEX_OUT_READ1\(1) & ((\MUX_ALU_B|X[1]~30_combout\) # (\ALU_CONTROL|ULA_CODE\(1)))) # (!\IDEX|IDEX_OUT_READ1\(1) & (\MUX_ALU_B|X[1]~30_combout\ & \ALU_CONTROL|ULA_CODE\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(0),
	datab => \IDEX|IDEX_OUT_READ1\(1),
	datac => \MUX_ALU_B|X[1]~30_combout\,
	datad => \ALU_CONTROL|ULA_CODE\(1),
	combout => \MAIN_ALU|Add0~152_combout\);

\MAIN_ALU|Add0~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~153_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (((!\IDEX|IDEX_OUT_EX\(4) & \IDEX|IDEX_OUT_READ2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(1),
	datab => \IDEX|IDEX_OUT_EX\(4),
	datad => \IDEX|IDEX_OUT_READ2\(1),
	combout => \MAIN_ALU|Add0~153_combout\);

\MAIN_ALU|Add0~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~154_combout\ = (\MAIN_ALU|Add0~153_combout\ & ((\IDEX|IDEX_OUT_READ1\(1) & (\MAIN_ALU|Add0~150\ & VCC)) # (!\IDEX|IDEX_OUT_READ1\(1) & (!\MAIN_ALU|Add0~150\)))) # (!\MAIN_ALU|Add0~153_combout\ & ((\IDEX|IDEX_OUT_READ1\(1) & 
-- (!\MAIN_ALU|Add0~150\)) # (!\IDEX|IDEX_OUT_READ1\(1) & ((\MAIN_ALU|Add0~150\) # (GND)))))
-- \MAIN_ALU|Add0~155\ = CARRY((\MAIN_ALU|Add0~153_combout\ & (!\IDEX|IDEX_OUT_READ1\(1) & !\MAIN_ALU|Add0~150\)) # (!\MAIN_ALU|Add0~153_combout\ & ((!\MAIN_ALU|Add0~150\) # (!\IDEX|IDEX_OUT_READ1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~153_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(1),
	datad => VCC,
	cin => \MAIN_ALU|Add0~150\,
	combout => \MAIN_ALU|Add0~154_combout\,
	cout => \MAIN_ALU|Add0~155\);

\MAIN_ALU|Add0~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~156_combout\ = (\MAIN_ALU|Add0~152_combout\) # ((\MAIN_ALU|Add0~154_combout\ & !\ALU_CONTROL|ULA_CODE\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~152_combout\,
	datab => \MAIN_ALU|Add0~154_combout\,
	datad => \ALU_CONTROL|ULA_CODE\(0),
	combout => \MAIN_ALU|Add0~156_combout\);

\EXMEM|EXMEM_OUT_RESULT_ULA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MAIN_ALU|Add0~156_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ULA\(1));

\MEMWB|MEMWB_OUT_RESULT_ULA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ULA\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWB|MEMWB_OUT_RESULT_ULA\(1));

\MUX_WB|X[1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_WB|X[1]~30_combout\ = (\MEMWB|MEMWB_OUT_WB\(1) & \MEMWB|MEMWB_OUT_RESULT_ULA\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMWB|MEMWB_OUT_WB\(1),
	datab => \MEMWB|MEMWB_OUT_RESULT_ULA\(1),
	combout => \MUX_WB|X[1]~30_combout\);

\FILE_REG|REGISTERS[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[1]~30_combout\,
	ena => \FILE_REG|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[1][1]~q\);

\FILE_REG|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux1~0_combout\ = (\IFID|OUT_INSTR_MEM\(28) & (((\IFID|OUT_INSTR_MEM\(31))))) # (!\IFID|OUT_INSTR_MEM\(28) & ((\IFID|OUT_INSTR_MEM\(31) & (\FILE_REG|REGISTERS[2][1]~q\)) # (!\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|REGISTERS[0][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(28),
	datab => \FILE_REG|REGISTERS[2][1]~q\,
	datac => \IFID|OUT_INSTR_MEM\(31),
	datad => \FILE_REG|REGISTERS[0][1]~q\,
	combout => \FILE_REG|Mux1~0_combout\);

\FILE_REG|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux1~1_combout\ = (\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|Mux1~0_combout\ & ((\FILE_REG|REGISTERS[3][1]~q\))) # (!\FILE_REG|Mux1~0_combout\ & (\FILE_REG|REGISTERS[1][1]~q\)))) # (!\IFID|OUT_INSTR_MEM\(28) & (((\FILE_REG|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[1][1]~q\,
	datab => \IFID|OUT_INSTR_MEM\(28),
	datac => \FILE_REG|Mux1~0_combout\,
	datad => \FILE_REG|REGISTERS[3][1]~q\,
	combout => \FILE_REG|Mux1~1_combout\);

\IDEX|IDEX_OUT_READ1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(1));

\FILE_REG|REGISTERS[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[0]~31_combout\,
	ena => \FILE_REG|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[1][0]~q\);

\FILE_REG|REGISTERS[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[0]~31_combout\,
	ena => \FILE_REG|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[0][0]~q\);

\FILE_REG|Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux32~0_combout\ = (\IFID|OUT_INSTR_MEM\(28) & (((\IFID|OUT_INSTR_MEM\(31))))) # (!\IFID|OUT_INSTR_MEM\(28) & ((\IFID|OUT_INSTR_MEM\(31) & (\FILE_REG|REGISTERS[1][0]~q\)) # (!\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|REGISTERS[0][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(28),
	datab => \FILE_REG|REGISTERS[1][0]~q\,
	datac => \IFID|OUT_INSTR_MEM\(31),
	datad => \FILE_REG|REGISTERS[0][0]~q\,
	combout => \FILE_REG|Mux32~0_combout\);

\FILE_REG|REGISTERS[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[0]~31_combout\,
	ena => \FILE_REG|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[3][0]~q\);

\FILE_REG|Mux32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux32~1_combout\ = (\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|Mux32~0_combout\ & ((\FILE_REG|REGISTERS[3][0]~q\))) # (!\FILE_REG|Mux32~0_combout\ & (\FILE_REG|REGISTERS[2][0]~q\)))) # (!\IFID|OUT_INSTR_MEM\(28) & (((\FILE_REG|Mux32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[2][0]~q\,
	datab => \IFID|OUT_INSTR_MEM\(28),
	datac => \FILE_REG|Mux32~0_combout\,
	datad => \FILE_REG|REGISTERS[3][0]~q\,
	combout => \FILE_REG|Mux32~1_combout\);

\IDEX|IDEX_OUT_READ2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux32~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ2\(0));

\MAIN_ALU|Add0~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~157_combout\ = (\IDEX|IDEX_OUT_READ1\(0) & ((\ALU_CONTROL|ULA_CODE\(1)) # ((\IDEX|IDEX_OUT_READ2\(0) & !\IDEX|IDEX_OUT_EX\(4))))) # (!\IDEX|IDEX_OUT_READ1\(0) & (\ALU_CONTROL|ULA_CODE\(1) & (\IDEX|IDEX_OUT_READ2\(0) & 
-- !\IDEX|IDEX_OUT_EX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_READ1\(0),
	datab => \ALU_CONTROL|ULA_CODE\(1),
	datac => \IDEX|IDEX_OUT_READ2\(0),
	datad => \IDEX|IDEX_OUT_EX\(4),
	combout => \MAIN_ALU|Add0~157_combout\);

\MAIN_ALU|Add0~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~158_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (((!\IDEX|IDEX_OUT_EX\(4) & \IDEX|IDEX_OUT_READ2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(1),
	datab => \IDEX|IDEX_OUT_EX\(4),
	datad => \IDEX|IDEX_OUT_READ2\(0),
	combout => \MAIN_ALU|Add0~158_combout\);

\MAIN_ALU|Add0~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~159_combout\ = \MAIN_ALU|Add0~158_combout\ $ (\IDEX|IDEX_OUT_READ1\(0) $ (!\MAIN_ALU|Add0~155\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~158_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(0),
	cin => \MAIN_ALU|Add0~155\,
	combout => \MAIN_ALU|Add0~159_combout\);

\MAIN_ALU|Add0~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~161_combout\ = (\ALU_CONTROL|ULA_CODE\(0) & (\MAIN_ALU|Add0~157_combout\)) # (!\ALU_CONTROL|ULA_CODE\(0) & ((\MAIN_ALU|Add0~159_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~157_combout\,
	datab => \MAIN_ALU|Add0~159_combout\,
	datad => \ALU_CONTROL|ULA_CODE\(0),
	combout => \MAIN_ALU|Add0~161_combout\);

\EXMEM|EXMEM_OUT_RESULT_ULA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MAIN_ALU|Add0~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ULA\(0));

\MEMWB|MEMWB_OUT_RESULT_ULA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ULA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWB|MEMWB_OUT_RESULT_ULA\(0));

\MUX_WB|X[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_WB|X[0]~31_combout\ = (\MEMWB|MEMWB_OUT_WB\(1) & \MEMWB|MEMWB_OUT_RESULT_ULA\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMWB|MEMWB_OUT_WB\(1),
	datab => \MEMWB|MEMWB_OUT_RESULT_ULA\(0),
	combout => \MUX_WB|X[0]~31_combout\);

\FILE_REG|REGISTERS[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_WB|X[0]~31_combout\,
	ena => \FILE_REG|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FILE_REG|REGISTERS[2][0]~q\);

\FILE_REG|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux0~0_combout\ = (\IFID|OUT_INSTR_MEM\(31) & (((\IFID|OUT_INSTR_MEM\(28))))) # (!\IFID|OUT_INSTR_MEM\(31) & ((\IFID|OUT_INSTR_MEM\(28) & (\FILE_REG|REGISTERS[1][0]~q\)) # (!\IFID|OUT_INSTR_MEM\(28) & ((\FILE_REG|REGISTERS[0][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(31),
	datab => \FILE_REG|REGISTERS[1][0]~q\,
	datac => \IFID|OUT_INSTR_MEM\(28),
	datad => \FILE_REG|REGISTERS[0][0]~q\,
	combout => \FILE_REG|Mux0~0_combout\);

\FILE_REG|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|Mux0~1_combout\ = (\IFID|OUT_INSTR_MEM\(31) & ((\FILE_REG|Mux0~0_combout\ & ((\FILE_REG|REGISTERS[3][0]~q\))) # (!\FILE_REG|Mux0~0_combout\ & (\FILE_REG|REGISTERS[2][0]~q\)))) # (!\IFID|OUT_INSTR_MEM\(31) & (((\FILE_REG|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS[2][0]~q\,
	datab => \IFID|OUT_INSTR_MEM\(31),
	datac => \FILE_REG|Mux0~0_combout\,
	datad => \FILE_REG|REGISTERS[3][0]~q\,
	combout => \FILE_REG|Mux0~1_combout\);

\IDEX|IDEX_OUT_READ1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \FILE_REG|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(0));

\MUX_ALU_B|X[30]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_ALU_B|X[30]~1_combout\ = (\IDEX|IDEX_OUT_READ2\(30) & !\IDEX|IDEX_OUT_EX\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_READ2\(30),
	datad => \IDEX|IDEX_OUT_EX\(4),
	combout => \MUX_ALU_B|X[30]~1_combout\);

\MUX_ALU_B|X[27]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_ALU_B|X[27]~4_combout\ = (\IDEX|IDEX_OUT_READ2\(27) & !\IDEX|IDEX_OUT_EX\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_READ2\(27),
	datad => \IDEX|IDEX_OUT_EX\(4),
	combout => \MUX_ALU_B|X[27]~4_combout\);

\MUX_ALU_B|X[26]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_ALU_B|X[26]~5_combout\ = (\IDEX|IDEX_OUT_READ2\(26) & !\IDEX|IDEX_OUT_EX\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_READ2\(26),
	datad => \IDEX|IDEX_OUT_EX\(4),
	combout => \MUX_ALU_B|X[26]~5_combout\);

\MUX_ALU_B|X[24]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_ALU_B|X[24]~7_combout\ = (\IDEX|IDEX_OUT_READ2\(24) & !\IDEX|IDEX_OUT_EX\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_READ2\(24),
	datad => \IDEX|IDEX_OUT_EX\(4),
	combout => \MUX_ALU_B|X[24]~7_combout\);

\MUX_ALU_B|X[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_ALU_B|X[21]~10_combout\ = (\IDEX|IDEX_OUT_READ2\(21) & !\IDEX|IDEX_OUT_EX\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_READ2\(21),
	datad => \IDEX|IDEX_OUT_EX\(4),
	combout => \MUX_ALU_B|X[21]~10_combout\);

\MUX_ALU_B|X[19]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_ALU_B|X[19]~12_combout\ = (\IDEX|IDEX_OUT_READ2\(19) & !\IDEX|IDEX_OUT_EX\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_READ2\(19),
	datad => \IDEX|IDEX_OUT_EX\(4),
	combout => \MUX_ALU_B|X[19]~12_combout\);

\MUX_ALU_B|X[15]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_ALU_B|X[15]~16_combout\ = (\IDEX|IDEX_OUT_READ2\(15) & !\IDEX|IDEX_OUT_EX\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_READ2\(15),
	datad => \IDEX|IDEX_OUT_EX\(4),
	combout => \MUX_ALU_B|X[15]~16_combout\);

\MUX_ALU_B|X[11]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_ALU_B|X[11]~20_combout\ = (\IDEX|IDEX_OUT_READ2\(11) & !\IDEX|IDEX_OUT_EX\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_READ2\(11),
	datad => \IDEX|IDEX_OUT_EX\(4),
	combout => \MUX_ALU_B|X[11]~20_combout\);

\MUX_ALU_B|X[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_ALU_B|X[6]~25_combout\ = (\IDEX|IDEX_OUT_READ2\(6) & !\IDEX|IDEX_OUT_EX\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_READ2\(6),
	datad => \IDEX|IDEX_OUT_EX\(4),
	combout => \MUX_ALU_B|X[6]~25_combout\);

\MUX_ALU_B|X[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_ALU_B|X[4]~27_combout\ = (\IDEX|IDEX_OUT_READ2\(4) & !\IDEX|IDEX_OUT_EX\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_READ2\(4),
	datad => \IDEX|IDEX_OUT_EX\(4),
	combout => \MUX_ALU_B|X[4]~27_combout\);

\MUX_ALU_B|X[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_ALU_B|X[2]~29_combout\ = (\IDEX|IDEX_OUT_READ2\(2) & !\IDEX|IDEX_OUT_EX\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_READ2\(2),
	datad => \IDEX|IDEX_OUT_EX\(4),
	combout => \MUX_ALU_B|X[2]~29_combout\);

\MUX_ALU_B|X[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_ALU_B|X[0]~31_combout\ = (\IDEX|IDEX_OUT_READ2\(0) & !\IDEX|IDEX_OUT_EX\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_READ2\(0),
	datad => \IDEX|IDEX_OUT_EX\(4),
	combout => \MUX_ALU_B|X[0]~31_combout\);

\MEMWB|MEMWB_OUT_WB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_WB\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWB|MEMWB_OUT_WB\(0));

ww_INSTRUCTION_OUT_IFID(31) <= \INSTRUCTION_OUT_IFID[31]~output_o\;

ww_INSTRUCTION_OUT_IFID(30) <= \INSTRUCTION_OUT_IFID[30]~output_o\;

ww_INSTRUCTION_OUT_IFID(29) <= \INSTRUCTION_OUT_IFID[29]~output_o\;

ww_INSTRUCTION_OUT_IFID(28) <= \INSTRUCTION_OUT_IFID[28]~output_o\;

ww_INSTRUCTION_OUT_IFID(27) <= \INSTRUCTION_OUT_IFID[27]~output_o\;

ww_INSTRUCTION_OUT_IFID(26) <= \INSTRUCTION_OUT_IFID[26]~output_o\;

ww_INSTRUCTION_OUT_IFID(25) <= \INSTRUCTION_OUT_IFID[25]~output_o\;

ww_INSTRUCTION_OUT_IFID(24) <= \INSTRUCTION_OUT_IFID[24]~output_o\;

ww_INSTRUCTION_OUT_IFID(23) <= \INSTRUCTION_OUT_IFID[23]~output_o\;

ww_INSTRUCTION_OUT_IFID(22) <= \INSTRUCTION_OUT_IFID[22]~output_o\;

ww_INSTRUCTION_OUT_IFID(21) <= \INSTRUCTION_OUT_IFID[21]~output_o\;

ww_INSTRUCTION_OUT_IFID(20) <= \INSTRUCTION_OUT_IFID[20]~output_o\;

ww_INSTRUCTION_OUT_IFID(19) <= \INSTRUCTION_OUT_IFID[19]~output_o\;

ww_INSTRUCTION_OUT_IFID(18) <= \INSTRUCTION_OUT_IFID[18]~output_o\;

ww_INSTRUCTION_OUT_IFID(17) <= \INSTRUCTION_OUT_IFID[17]~output_o\;

ww_INSTRUCTION_OUT_IFID(16) <= \INSTRUCTION_OUT_IFID[16]~output_o\;

ww_INSTRUCTION_OUT_IFID(15) <= \INSTRUCTION_OUT_IFID[15]~output_o\;

ww_INSTRUCTION_OUT_IFID(14) <= \INSTRUCTION_OUT_IFID[14]~output_o\;

ww_INSTRUCTION_OUT_IFID(13) <= \INSTRUCTION_OUT_IFID[13]~output_o\;

ww_INSTRUCTION_OUT_IFID(12) <= \INSTRUCTION_OUT_IFID[12]~output_o\;

ww_INSTRUCTION_OUT_IFID(11) <= \INSTRUCTION_OUT_IFID[11]~output_o\;

ww_INSTRUCTION_OUT_IFID(10) <= \INSTRUCTION_OUT_IFID[10]~output_o\;

ww_INSTRUCTION_OUT_IFID(9) <= \INSTRUCTION_OUT_IFID[9]~output_o\;

ww_INSTRUCTION_OUT_IFID(8) <= \INSTRUCTION_OUT_IFID[8]~output_o\;

ww_INSTRUCTION_OUT_IFID(7) <= \INSTRUCTION_OUT_IFID[7]~output_o\;

ww_INSTRUCTION_OUT_IFID(6) <= \INSTRUCTION_OUT_IFID[6]~output_o\;

ww_INSTRUCTION_OUT_IFID(5) <= \INSTRUCTION_OUT_IFID[5]~output_o\;

ww_INSTRUCTION_OUT_IFID(4) <= \INSTRUCTION_OUT_IFID[4]~output_o\;

ww_INSTRUCTION_OUT_IFID(3) <= \INSTRUCTION_OUT_IFID[3]~output_o\;

ww_INSTRUCTION_OUT_IFID(2) <= \INSTRUCTION_OUT_IFID[2]~output_o\;

ww_INSTRUCTION_OUT_IFID(1) <= \INSTRUCTION_OUT_IFID[1]~output_o\;

ww_INSTRUCTION_OUT_IFID(0) <= \INSTRUCTION_OUT_IFID[0]~output_o\;

ww_DEB_REGS_PC(31) <= \DEB_REGS_PC[31]~output_o\;

ww_DEB_REGS_PC(30) <= \DEB_REGS_PC[30]~output_o\;

ww_DEB_REGS_PC(29) <= \DEB_REGS_PC[29]~output_o\;

ww_DEB_REGS_PC(28) <= \DEB_REGS_PC[28]~output_o\;

ww_DEB_REGS_PC(27) <= \DEB_REGS_PC[27]~output_o\;

ww_DEB_REGS_PC(26) <= \DEB_REGS_PC[26]~output_o\;

ww_DEB_REGS_PC(25) <= \DEB_REGS_PC[25]~output_o\;

ww_DEB_REGS_PC(24) <= \DEB_REGS_PC[24]~output_o\;

ww_DEB_REGS_PC(23) <= \DEB_REGS_PC[23]~output_o\;

ww_DEB_REGS_PC(22) <= \DEB_REGS_PC[22]~output_o\;

ww_DEB_REGS_PC(21) <= \DEB_REGS_PC[21]~output_o\;

ww_DEB_REGS_PC(20) <= \DEB_REGS_PC[20]~output_o\;

ww_DEB_REGS_PC(19) <= \DEB_REGS_PC[19]~output_o\;

ww_DEB_REGS_PC(18) <= \DEB_REGS_PC[18]~output_o\;

ww_DEB_REGS_PC(17) <= \DEB_REGS_PC[17]~output_o\;

ww_DEB_REGS_PC(16) <= \DEB_REGS_PC[16]~output_o\;

ww_DEB_REGS_PC(15) <= \DEB_REGS_PC[15]~output_o\;

ww_DEB_REGS_PC(14) <= \DEB_REGS_PC[14]~output_o\;

ww_DEB_REGS_PC(13) <= \DEB_REGS_PC[13]~output_o\;

ww_DEB_REGS_PC(12) <= \DEB_REGS_PC[12]~output_o\;

ww_DEB_REGS_PC(11) <= \DEB_REGS_PC[11]~output_o\;

ww_DEB_REGS_PC(10) <= \DEB_REGS_PC[10]~output_o\;

ww_DEB_REGS_PC(9) <= \DEB_REGS_PC[9]~output_o\;

ww_DEB_REGS_PC(8) <= \DEB_REGS_PC[8]~output_o\;

ww_DEB_REGS_PC(7) <= \DEB_REGS_PC[7]~output_o\;

ww_DEB_REGS_PC(6) <= \DEB_REGS_PC[6]~output_o\;

ww_DEB_REGS_PC(5) <= \DEB_REGS_PC[5]~output_o\;

ww_DEB_REGS_PC(4) <= \DEB_REGS_PC[4]~output_o\;

ww_DEB_REGS_PC(3) <= \DEB_REGS_PC[3]~output_o\;

ww_DEB_REGS_PC(2) <= \DEB_REGS_PC[2]~output_o\;

ww_DEB_REGS_PC(1) <= \DEB_REGS_PC[1]~output_o\;

ww_DEB_REGS_PC(0) <= \DEB_REGS_PC[0]~output_o\;

ww_DEB_CONTROL <= \DEB_CONTROL~output_o\;

ww_DEB_ULA_IN_1(31) <= \DEB_ULA_IN_1[31]~output_o\;

ww_DEB_ULA_IN_1(30) <= \DEB_ULA_IN_1[30]~output_o\;

ww_DEB_ULA_IN_1(29) <= \DEB_ULA_IN_1[29]~output_o\;

ww_DEB_ULA_IN_1(28) <= \DEB_ULA_IN_1[28]~output_o\;

ww_DEB_ULA_IN_1(27) <= \DEB_ULA_IN_1[27]~output_o\;

ww_DEB_ULA_IN_1(26) <= \DEB_ULA_IN_1[26]~output_o\;

ww_DEB_ULA_IN_1(25) <= \DEB_ULA_IN_1[25]~output_o\;

ww_DEB_ULA_IN_1(24) <= \DEB_ULA_IN_1[24]~output_o\;

ww_DEB_ULA_IN_1(23) <= \DEB_ULA_IN_1[23]~output_o\;

ww_DEB_ULA_IN_1(22) <= \DEB_ULA_IN_1[22]~output_o\;

ww_DEB_ULA_IN_1(21) <= \DEB_ULA_IN_1[21]~output_o\;

ww_DEB_ULA_IN_1(20) <= \DEB_ULA_IN_1[20]~output_o\;

ww_DEB_ULA_IN_1(19) <= \DEB_ULA_IN_1[19]~output_o\;

ww_DEB_ULA_IN_1(18) <= \DEB_ULA_IN_1[18]~output_o\;

ww_DEB_ULA_IN_1(17) <= \DEB_ULA_IN_1[17]~output_o\;

ww_DEB_ULA_IN_1(16) <= \DEB_ULA_IN_1[16]~output_o\;

ww_DEB_ULA_IN_1(15) <= \DEB_ULA_IN_1[15]~output_o\;

ww_DEB_ULA_IN_1(14) <= \DEB_ULA_IN_1[14]~output_o\;

ww_DEB_ULA_IN_1(13) <= \DEB_ULA_IN_1[13]~output_o\;

ww_DEB_ULA_IN_1(12) <= \DEB_ULA_IN_1[12]~output_o\;

ww_DEB_ULA_IN_1(11) <= \DEB_ULA_IN_1[11]~output_o\;

ww_DEB_ULA_IN_1(10) <= \DEB_ULA_IN_1[10]~output_o\;

ww_DEB_ULA_IN_1(9) <= \DEB_ULA_IN_1[9]~output_o\;

ww_DEB_ULA_IN_1(8) <= \DEB_ULA_IN_1[8]~output_o\;

ww_DEB_ULA_IN_1(7) <= \DEB_ULA_IN_1[7]~output_o\;

ww_DEB_ULA_IN_1(6) <= \DEB_ULA_IN_1[6]~output_o\;

ww_DEB_ULA_IN_1(5) <= \DEB_ULA_IN_1[5]~output_o\;

ww_DEB_ULA_IN_1(4) <= \DEB_ULA_IN_1[4]~output_o\;

ww_DEB_ULA_IN_1(3) <= \DEB_ULA_IN_1[3]~output_o\;

ww_DEB_ULA_IN_1(2) <= \DEB_ULA_IN_1[2]~output_o\;

ww_DEB_ULA_IN_1(1) <= \DEB_ULA_IN_1[1]~output_o\;

ww_DEB_ULA_IN_1(0) <= \DEB_ULA_IN_1[0]~output_o\;

ww_DEB_ULA_IN_2(31) <= \DEB_ULA_IN_2[31]~output_o\;

ww_DEB_ULA_IN_2(30) <= \DEB_ULA_IN_2[30]~output_o\;

ww_DEB_ULA_IN_2(29) <= \DEB_ULA_IN_2[29]~output_o\;

ww_DEB_ULA_IN_2(28) <= \DEB_ULA_IN_2[28]~output_o\;

ww_DEB_ULA_IN_2(27) <= \DEB_ULA_IN_2[27]~output_o\;

ww_DEB_ULA_IN_2(26) <= \DEB_ULA_IN_2[26]~output_o\;

ww_DEB_ULA_IN_2(25) <= \DEB_ULA_IN_2[25]~output_o\;

ww_DEB_ULA_IN_2(24) <= \DEB_ULA_IN_2[24]~output_o\;

ww_DEB_ULA_IN_2(23) <= \DEB_ULA_IN_2[23]~output_o\;

ww_DEB_ULA_IN_2(22) <= \DEB_ULA_IN_2[22]~output_o\;

ww_DEB_ULA_IN_2(21) <= \DEB_ULA_IN_2[21]~output_o\;

ww_DEB_ULA_IN_2(20) <= \DEB_ULA_IN_2[20]~output_o\;

ww_DEB_ULA_IN_2(19) <= \DEB_ULA_IN_2[19]~output_o\;

ww_DEB_ULA_IN_2(18) <= \DEB_ULA_IN_2[18]~output_o\;

ww_DEB_ULA_IN_2(17) <= \DEB_ULA_IN_2[17]~output_o\;

ww_DEB_ULA_IN_2(16) <= \DEB_ULA_IN_2[16]~output_o\;

ww_DEB_ULA_IN_2(15) <= \DEB_ULA_IN_2[15]~output_o\;

ww_DEB_ULA_IN_2(14) <= \DEB_ULA_IN_2[14]~output_o\;

ww_DEB_ULA_IN_2(13) <= \DEB_ULA_IN_2[13]~output_o\;

ww_DEB_ULA_IN_2(12) <= \DEB_ULA_IN_2[12]~output_o\;

ww_DEB_ULA_IN_2(11) <= \DEB_ULA_IN_2[11]~output_o\;

ww_DEB_ULA_IN_2(10) <= \DEB_ULA_IN_2[10]~output_o\;

ww_DEB_ULA_IN_2(9) <= \DEB_ULA_IN_2[9]~output_o\;

ww_DEB_ULA_IN_2(8) <= \DEB_ULA_IN_2[8]~output_o\;

ww_DEB_ULA_IN_2(7) <= \DEB_ULA_IN_2[7]~output_o\;

ww_DEB_ULA_IN_2(6) <= \DEB_ULA_IN_2[6]~output_o\;

ww_DEB_ULA_IN_2(5) <= \DEB_ULA_IN_2[5]~output_o\;

ww_DEB_ULA_IN_2(4) <= \DEB_ULA_IN_2[4]~output_o\;

ww_DEB_ULA_IN_2(3) <= \DEB_ULA_IN_2[3]~output_o\;

ww_DEB_ULA_IN_2(2) <= \DEB_ULA_IN_2[2]~output_o\;

ww_DEB_ULA_IN_2(1) <= \DEB_ULA_IN_2[1]~output_o\;

ww_DEB_ULA_IN_2(0) <= \DEB_ULA_IN_2[0]~output_o\;

ww_DEB_OUT_ULA(31) <= \DEB_OUT_ULA[31]~output_o\;

ww_DEB_OUT_ULA(30) <= \DEB_OUT_ULA[30]~output_o\;

ww_DEB_OUT_ULA(29) <= \DEB_OUT_ULA[29]~output_o\;

ww_DEB_OUT_ULA(28) <= \DEB_OUT_ULA[28]~output_o\;

ww_DEB_OUT_ULA(27) <= \DEB_OUT_ULA[27]~output_o\;

ww_DEB_OUT_ULA(26) <= \DEB_OUT_ULA[26]~output_o\;

ww_DEB_OUT_ULA(25) <= \DEB_OUT_ULA[25]~output_o\;

ww_DEB_OUT_ULA(24) <= \DEB_OUT_ULA[24]~output_o\;

ww_DEB_OUT_ULA(23) <= \DEB_OUT_ULA[23]~output_o\;

ww_DEB_OUT_ULA(22) <= \DEB_OUT_ULA[22]~output_o\;

ww_DEB_OUT_ULA(21) <= \DEB_OUT_ULA[21]~output_o\;

ww_DEB_OUT_ULA(20) <= \DEB_OUT_ULA[20]~output_o\;

ww_DEB_OUT_ULA(19) <= \DEB_OUT_ULA[19]~output_o\;

ww_DEB_OUT_ULA(18) <= \DEB_OUT_ULA[18]~output_o\;

ww_DEB_OUT_ULA(17) <= \DEB_OUT_ULA[17]~output_o\;

ww_DEB_OUT_ULA(16) <= \DEB_OUT_ULA[16]~output_o\;

ww_DEB_OUT_ULA(15) <= \DEB_OUT_ULA[15]~output_o\;

ww_DEB_OUT_ULA(14) <= \DEB_OUT_ULA[14]~output_o\;

ww_DEB_OUT_ULA(13) <= \DEB_OUT_ULA[13]~output_o\;

ww_DEB_OUT_ULA(12) <= \DEB_OUT_ULA[12]~output_o\;

ww_DEB_OUT_ULA(11) <= \DEB_OUT_ULA[11]~output_o\;

ww_DEB_OUT_ULA(10) <= \DEB_OUT_ULA[10]~output_o\;

ww_DEB_OUT_ULA(9) <= \DEB_OUT_ULA[9]~output_o\;

ww_DEB_OUT_ULA(8) <= \DEB_OUT_ULA[8]~output_o\;

ww_DEB_OUT_ULA(7) <= \DEB_OUT_ULA[7]~output_o\;

ww_DEB_OUT_ULA(6) <= \DEB_OUT_ULA[6]~output_o\;

ww_DEB_OUT_ULA(5) <= \DEB_OUT_ULA[5]~output_o\;

ww_DEB_OUT_ULA(4) <= \DEB_OUT_ULA[4]~output_o\;

ww_DEB_OUT_ULA(3) <= \DEB_OUT_ULA[3]~output_o\;

ww_DEB_OUT_ULA(2) <= \DEB_OUT_ULA[2]~output_o\;

ww_DEB_OUT_ULA(1) <= \DEB_OUT_ULA[1]~output_o\;

ww_DEB_OUT_ULA(0) <= \DEB_OUT_ULA[0]~output_o\;

ww_DEB_RegDst(4) <= \DEB_RegDst[4]~output_o\;

ww_DEB_RegDst(3) <= \DEB_RegDst[3]~output_o\;

ww_DEB_RegDst(2) <= \DEB_RegDst[2]~output_o\;

ww_DEB_RegDst(1) <= \DEB_RegDst[1]~output_o\;

ww_DEB_RegDst(0) <= \DEB_RegDst[0]~output_o\;

ww_DEB_REG_ULA_IN_1(4) <= \DEB_REG_ULA_IN_1[4]~output_o\;

ww_DEB_REG_ULA_IN_1(3) <= \DEB_REG_ULA_IN_1[3]~output_o\;

ww_DEB_REG_ULA_IN_1(2) <= \DEB_REG_ULA_IN_1[2]~output_o\;

ww_DEB_REG_ULA_IN_1(1) <= \DEB_REG_ULA_IN_1[1]~output_o\;

ww_DEB_REG_ULA_IN_1(0) <= \DEB_REG_ULA_IN_1[0]~output_o\;

ww_DEB_SINAL_MUX_MEMWB <= \DEB_SINAL_MUX_MEMWB~output_o\;

ww_DEB_SINAL_REG_WRITE <= \DEB_SINAL_REG_WRITE~output_o\;

ww_DEB_WRITE_REG(4) <= \DEB_WRITE_REG[4]~output_o\;

ww_DEB_WRITE_REG(3) <= \DEB_WRITE_REG[3]~output_o\;

ww_DEB_WRITE_REG(2) <= \DEB_WRITE_REG[2]~output_o\;

ww_DEB_WRITE_REG(1) <= \DEB_WRITE_REG[1]~output_o\;

ww_DEB_WRITE_REG(0) <= \DEB_WRITE_REG[0]~output_o\;

ww_DEB_WRITE_DATA(31) <= \DEB_WRITE_DATA[31]~output_o\;

ww_DEB_WRITE_DATA(30) <= \DEB_WRITE_DATA[30]~output_o\;

ww_DEB_WRITE_DATA(29) <= \DEB_WRITE_DATA[29]~output_o\;

ww_DEB_WRITE_DATA(28) <= \DEB_WRITE_DATA[28]~output_o\;

ww_DEB_WRITE_DATA(27) <= \DEB_WRITE_DATA[27]~output_o\;

ww_DEB_WRITE_DATA(26) <= \DEB_WRITE_DATA[26]~output_o\;

ww_DEB_WRITE_DATA(25) <= \DEB_WRITE_DATA[25]~output_o\;

ww_DEB_WRITE_DATA(24) <= \DEB_WRITE_DATA[24]~output_o\;

ww_DEB_WRITE_DATA(23) <= \DEB_WRITE_DATA[23]~output_o\;

ww_DEB_WRITE_DATA(22) <= \DEB_WRITE_DATA[22]~output_o\;

ww_DEB_WRITE_DATA(21) <= \DEB_WRITE_DATA[21]~output_o\;

ww_DEB_WRITE_DATA(20) <= \DEB_WRITE_DATA[20]~output_o\;

ww_DEB_WRITE_DATA(19) <= \DEB_WRITE_DATA[19]~output_o\;

ww_DEB_WRITE_DATA(18) <= \DEB_WRITE_DATA[18]~output_o\;

ww_DEB_WRITE_DATA(17) <= \DEB_WRITE_DATA[17]~output_o\;

ww_DEB_WRITE_DATA(16) <= \DEB_WRITE_DATA[16]~output_o\;

ww_DEB_WRITE_DATA(15) <= \DEB_WRITE_DATA[15]~output_o\;

ww_DEB_WRITE_DATA(14) <= \DEB_WRITE_DATA[14]~output_o\;

ww_DEB_WRITE_DATA(13) <= \DEB_WRITE_DATA[13]~output_o\;

ww_DEB_WRITE_DATA(12) <= \DEB_WRITE_DATA[12]~output_o\;

ww_DEB_WRITE_DATA(11) <= \DEB_WRITE_DATA[11]~output_o\;

ww_DEB_WRITE_DATA(10) <= \DEB_WRITE_DATA[10]~output_o\;

ww_DEB_WRITE_DATA(9) <= \DEB_WRITE_DATA[9]~output_o\;

ww_DEB_WRITE_DATA(8) <= \DEB_WRITE_DATA[8]~output_o\;

ww_DEB_WRITE_DATA(7) <= \DEB_WRITE_DATA[7]~output_o\;

ww_DEB_WRITE_DATA(6) <= \DEB_WRITE_DATA[6]~output_o\;

ww_DEB_WRITE_DATA(5) <= \DEB_WRITE_DATA[5]~output_o\;

ww_DEB_WRITE_DATA(4) <= \DEB_WRITE_DATA[4]~output_o\;

ww_DEB_WRITE_DATA(3) <= \DEB_WRITE_DATA[3]~output_o\;

ww_DEB_WRITE_DATA(2) <= \DEB_WRITE_DATA[2]~output_o\;

ww_DEB_WRITE_DATA(1) <= \DEB_WRITE_DATA[1]~output_o\;

ww_DEB_WRITE_DATA(0) <= \DEB_WRITE_DATA[0]~output_o\;

ww_DEB_FILE_REG_1(31) <= \DEB_FILE_REG_1[31]~output_o\;

ww_DEB_FILE_REG_1(30) <= \DEB_FILE_REG_1[30]~output_o\;

ww_DEB_FILE_REG_1(29) <= \DEB_FILE_REG_1[29]~output_o\;

ww_DEB_FILE_REG_1(28) <= \DEB_FILE_REG_1[28]~output_o\;

ww_DEB_FILE_REG_1(27) <= \DEB_FILE_REG_1[27]~output_o\;

ww_DEB_FILE_REG_1(26) <= \DEB_FILE_REG_1[26]~output_o\;

ww_DEB_FILE_REG_1(25) <= \DEB_FILE_REG_1[25]~output_o\;

ww_DEB_FILE_REG_1(24) <= \DEB_FILE_REG_1[24]~output_o\;

ww_DEB_FILE_REG_1(23) <= \DEB_FILE_REG_1[23]~output_o\;

ww_DEB_FILE_REG_1(22) <= \DEB_FILE_REG_1[22]~output_o\;

ww_DEB_FILE_REG_1(21) <= \DEB_FILE_REG_1[21]~output_o\;

ww_DEB_FILE_REG_1(20) <= \DEB_FILE_REG_1[20]~output_o\;

ww_DEB_FILE_REG_1(19) <= \DEB_FILE_REG_1[19]~output_o\;

ww_DEB_FILE_REG_1(18) <= \DEB_FILE_REG_1[18]~output_o\;

ww_DEB_FILE_REG_1(17) <= \DEB_FILE_REG_1[17]~output_o\;

ww_DEB_FILE_REG_1(16) <= \DEB_FILE_REG_1[16]~output_o\;

ww_DEB_FILE_REG_1(15) <= \DEB_FILE_REG_1[15]~output_o\;

ww_DEB_FILE_REG_1(14) <= \DEB_FILE_REG_1[14]~output_o\;

ww_DEB_FILE_REG_1(13) <= \DEB_FILE_REG_1[13]~output_o\;

ww_DEB_FILE_REG_1(12) <= \DEB_FILE_REG_1[12]~output_o\;

ww_DEB_FILE_REG_1(11) <= \DEB_FILE_REG_1[11]~output_o\;

ww_DEB_FILE_REG_1(10) <= \DEB_FILE_REG_1[10]~output_o\;

ww_DEB_FILE_REG_1(9) <= \DEB_FILE_REG_1[9]~output_o\;

ww_DEB_FILE_REG_1(8) <= \DEB_FILE_REG_1[8]~output_o\;

ww_DEB_FILE_REG_1(7) <= \DEB_FILE_REG_1[7]~output_o\;

ww_DEB_FILE_REG_1(6) <= \DEB_FILE_REG_1[6]~output_o\;

ww_DEB_FILE_REG_1(5) <= \DEB_FILE_REG_1[5]~output_o\;

ww_DEB_FILE_REG_1(4) <= \DEB_FILE_REG_1[4]~output_o\;

ww_DEB_FILE_REG_1(3) <= \DEB_FILE_REG_1[3]~output_o\;

ww_DEB_FILE_REG_1(2) <= \DEB_FILE_REG_1[2]~output_o\;

ww_DEB_FILE_REG_1(1) <= \DEB_FILE_REG_1[1]~output_o\;

ww_DEB_FILE_REG_1(0) <= \DEB_FILE_REG_1[0]~output_o\;

ww_DEB_FILE_REG_2(31) <= \DEB_FILE_REG_2[31]~output_o\;

ww_DEB_FILE_REG_2(30) <= \DEB_FILE_REG_2[30]~output_o\;

ww_DEB_FILE_REG_2(29) <= \DEB_FILE_REG_2[29]~output_o\;

ww_DEB_FILE_REG_2(28) <= \DEB_FILE_REG_2[28]~output_o\;

ww_DEB_FILE_REG_2(27) <= \DEB_FILE_REG_2[27]~output_o\;

ww_DEB_FILE_REG_2(26) <= \DEB_FILE_REG_2[26]~output_o\;

ww_DEB_FILE_REG_2(25) <= \DEB_FILE_REG_2[25]~output_o\;

ww_DEB_FILE_REG_2(24) <= \DEB_FILE_REG_2[24]~output_o\;

ww_DEB_FILE_REG_2(23) <= \DEB_FILE_REG_2[23]~output_o\;

ww_DEB_FILE_REG_2(22) <= \DEB_FILE_REG_2[22]~output_o\;

ww_DEB_FILE_REG_2(21) <= \DEB_FILE_REG_2[21]~output_o\;

ww_DEB_FILE_REG_2(20) <= \DEB_FILE_REG_2[20]~output_o\;

ww_DEB_FILE_REG_2(19) <= \DEB_FILE_REG_2[19]~output_o\;

ww_DEB_FILE_REG_2(18) <= \DEB_FILE_REG_2[18]~output_o\;

ww_DEB_FILE_REG_2(17) <= \DEB_FILE_REG_2[17]~output_o\;

ww_DEB_FILE_REG_2(16) <= \DEB_FILE_REG_2[16]~output_o\;

ww_DEB_FILE_REG_2(15) <= \DEB_FILE_REG_2[15]~output_o\;

ww_DEB_FILE_REG_2(14) <= \DEB_FILE_REG_2[14]~output_o\;

ww_DEB_FILE_REG_2(13) <= \DEB_FILE_REG_2[13]~output_o\;

ww_DEB_FILE_REG_2(12) <= \DEB_FILE_REG_2[12]~output_o\;

ww_DEB_FILE_REG_2(11) <= \DEB_FILE_REG_2[11]~output_o\;

ww_DEB_FILE_REG_2(10) <= \DEB_FILE_REG_2[10]~output_o\;

ww_DEB_FILE_REG_2(9) <= \DEB_FILE_REG_2[9]~output_o\;

ww_DEB_FILE_REG_2(8) <= \DEB_FILE_REG_2[8]~output_o\;

ww_DEB_FILE_REG_2(7) <= \DEB_FILE_REG_2[7]~output_o\;

ww_DEB_FILE_REG_2(6) <= \DEB_FILE_REG_2[6]~output_o\;

ww_DEB_FILE_REG_2(5) <= \DEB_FILE_REG_2[5]~output_o\;

ww_DEB_FILE_REG_2(4) <= \DEB_FILE_REG_2[4]~output_o\;

ww_DEB_FILE_REG_2(3) <= \DEB_FILE_REG_2[3]~output_o\;

ww_DEB_FILE_REG_2(2) <= \DEB_FILE_REG_2[2]~output_o\;

ww_DEB_FILE_REG_2(1) <= \DEB_FILE_REG_2[1]~output_o\;

ww_DEB_FILE_REG_2(0) <= \DEB_FILE_REG_2[0]~output_o\;

ww_DEB_FILE_REG_AUX <= \DEB_FILE_REG_AUX~output_o\;
END structure;


