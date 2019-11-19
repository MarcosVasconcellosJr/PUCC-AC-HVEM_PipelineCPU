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

-- DATE "11/19/2019 11:13:26"

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
	INSTRUCTION_OUT_IFID : OUT std_logic_vector(0 TO 31);
	DEB_REGS_PC : OUT std_logic_vector(0 TO 31)
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
SIGNAL \IFID|OUT_INSTR_MEM\ : std_logic_vector(0 TO 31);
SIGNAL \IFID|OUT_PC_MAIS_4\ : std_logic_vector(0 TO 31);

BEGIN

ww_CLOCK <= CLOCK;
INSTRUCTION_OUT_IFID <= ww_INSTRUCTION_OUT_IFID;
DEB_REGS_PC <= ww_DEB_REGS_PC;
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
	i => GND,
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT_IFID[15]~output_o\);

\INSTRUCTION_OUT_IFID[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IFID|OUT_INSTR_MEM\(14),
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
	i => \IFID|OUT_INSTR_MEM\(14),
	devoe => ww_devoe,
	o => \INSTRUCTION_OUT_IFID[10]~output_o\);

\INSTRUCTION_OUT_IFID[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
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
	i => \IFID|OUT_INSTR_MEM\(14),
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

\IFID|OUT_INSTR_MEM[14]\ : dffeas
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
	q => \IFID|OUT_INSTR_MEM\(14));

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
END structure;


