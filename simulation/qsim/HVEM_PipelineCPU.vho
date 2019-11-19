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

-- DATE "11/19/2019 00:22:21"

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
	DEB_REGS_PC : BUFFER std_logic_vector(0 TO 31)
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
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a16_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a16_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a17_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a17_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a19_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a19_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a20_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a20_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a21_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a21_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a22_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a22_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a23_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a23_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a24_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a24_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a25_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a25_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a26_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a26_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a27_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a27_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a28_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a28_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a28_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a29_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a29_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a30_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a31_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a31_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a31_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a31_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a31_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a31_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a31_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a30_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a30_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a30_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a30_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a29_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a29_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a29_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a29_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a28_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a28_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a28_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a28_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a27_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a27_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a27_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a26_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a26_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a26_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a26_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a25_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a25_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a25_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a25_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a24_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a24_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a24_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a24_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a23_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a23_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a23_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a23_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a22_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a22_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a22_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a21_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a21_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a21_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a21_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a20_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a20_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a20_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a19_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a19_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a19_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a18_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a18_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a17_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a17_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a17_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a16_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a16_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a16_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a15_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a15_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a14_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a14_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a13_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a13_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a12_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a12_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a11_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a11_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a10_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a10_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a9_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a9_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a8_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a8_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INSTRUCTION_OUT_IFID[31]~input_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[30]~input_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[29]~input_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[28]~input_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[27]~input_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[26]~input_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[25]~input_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[24]~input_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[23]~input_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[22]~input_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[21]~input_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[20]~input_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[19]~input_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[18]~input_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[17]~input_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[16]~input_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[15]~input_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[14]~input_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[13]~input_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[12]~input_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[11]~input_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[10]~input_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[9]~input_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[8]~input_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[7]~input_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[6]~input_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[5]~input_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[4]~input_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[3]~input_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[2]~input_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[1]~input_o\ : std_logic;
SIGNAL \INSTRUCTION_OUT_IFID[0]~input_o\ : std_logic;
SIGNAL \CLOCK~input_o\ : std_logic;
SIGNAL \PC_INC|X[29]~0_combout\ : std_logic;
SIGNAL \IDEX|IDEX_OUT_WB[0]~0_combout\ : std_logic;
SIGNAL \PC|PC[30]~2_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \MUX_REGDST|X[1]~3_combout\ : std_logic;
SIGNAL \INST_MEM|Mux7~1_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a5~portbdataout\ : std_logic;
SIGNAL \PC_INC|X[29]~1\ : std_logic;
SIGNAL \PC_INC|X[28]~3\ : std_logic;
SIGNAL \PC_INC|X[27]~5\ : std_logic;
SIGNAL \PC_INC|X[26]~6_combout\ : std_logic;
SIGNAL \PC_INC|X[27]~4_combout\ : std_logic;
SIGNAL \PC_INC|X[28]~2_combout\ : std_logic;
SIGNAL \INST_MEM|Mux13~0_combout\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[29]~31\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[28]~33\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[27]~35\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[26]~36_combout\ : std_logic;
SIGNAL \UC|Mux5~0_combout\ : std_logic;
SIGNAL \INST_MEM|Mux15~0_combout\ : std_logic;
SIGNAL \ALU_CONTROL|ULA_CODE[0]~0_combout\ : std_logic;
SIGNAL \IDEX|IDEX_OUT_EX[3]~0_combout\ : std_logic;
SIGNAL \UC|Mux0~1_combout\ : std_logic;
SIGNAL \UC|Mux9~0_combout\ : std_logic;
SIGNAL \ALU_CONTROL|ULA_CODE[0]~1_combout\ : std_logic;
SIGNAL \ALU_CONTROL|comb~1_combout\ : std_logic;
SIGNAL \ALU_CONTROL|comb~0_combout\ : std_logic;
SIGNAL \ALU_CONTROL|ULA_CODE[1]~2_combout\ : std_logic;
SIGNAL \ALU_CONTROL|ULA_CODE[1]~3_combout\ : std_logic;
SIGNAL \ALU_CONTROL|comb~3_combout\ : std_logic;
SIGNAL \ALU_CONTROL|comb~2_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a31~portbdataout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~0_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a30~portbdataout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~1_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a30~portbdataout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a29~portbdataout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~2_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a29~portbdataout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a28~portbdataout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~3_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a27~portbdataout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~4_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a27~portbdataout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a26~portbdataout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~5_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a26~portbdataout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a25~portbdataout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~6_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a25~portbdataout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a24~portbdataout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~7_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a24~portbdataout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a23~portbdataout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~8_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a23~portbdataout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a22~portbdataout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~9_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a22~portbdataout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a21~portbdataout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~10_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a21~portbdataout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a20~portbdataout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~11_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a20~portbdataout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a19~portbdataout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~12_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a19~portbdataout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a18~portbdataout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~13_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a18~portbdataout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a17~portbdataout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~14_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a17~portbdataout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a16~portbdataout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~15_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a16~portbdataout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a15~portbdataout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~16_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a15~portbdataout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a14~portbdataout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~17_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a14~portbdataout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a13~portbdataout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~18_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a13~portbdataout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a12~portbdataout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~19_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a12~portbdataout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a11~portbdataout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~20_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a11~portbdataout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a10~portbdataout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~21_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a10~portbdataout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a9~portbdataout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~22_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a9~portbdataout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a8~portbdataout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~23_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a8~portbdataout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a7~portbdataout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~24_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a7~portbdataout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~25_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a5~portbdataout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~26_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~27_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~28_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~29_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~30_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~31_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~33_cout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~35\ : std_logic;
SIGNAL \MAIN_ALU|Add0~37\ : std_logic;
SIGNAL \MAIN_ALU|Add0~39\ : std_logic;
SIGNAL \MAIN_ALU|Add0~41\ : std_logic;
SIGNAL \MAIN_ALU|Add0~43\ : std_logic;
SIGNAL \MAIN_ALU|Add0~45\ : std_logic;
SIGNAL \MAIN_ALU|Add0~47\ : std_logic;
SIGNAL \MAIN_ALU|Add0~49\ : std_logic;
SIGNAL \MAIN_ALU|Add0~51\ : std_logic;
SIGNAL \MAIN_ALU|Add0~53\ : std_logic;
SIGNAL \MAIN_ALU|Add0~55\ : std_logic;
SIGNAL \MAIN_ALU|Add0~57\ : std_logic;
SIGNAL \MAIN_ALU|Add0~59\ : std_logic;
SIGNAL \MAIN_ALU|Add0~61\ : std_logic;
SIGNAL \MAIN_ALU|Add0~63\ : std_logic;
SIGNAL \MAIN_ALU|Add0~65\ : std_logic;
SIGNAL \MAIN_ALU|Add0~67\ : std_logic;
SIGNAL \MAIN_ALU|Add0~69\ : std_logic;
SIGNAL \MAIN_ALU|Add0~71\ : std_logic;
SIGNAL \MAIN_ALU|Add0~73\ : std_logic;
SIGNAL \MAIN_ALU|Add0~75\ : std_logic;
SIGNAL \MAIN_ALU|Add0~77\ : std_logic;
SIGNAL \MAIN_ALU|Add0~79\ : std_logic;
SIGNAL \MAIN_ALU|Add0~81\ : std_logic;
SIGNAL \MAIN_ALU|Add0~83\ : std_logic;
SIGNAL \MAIN_ALU|Add0~85\ : std_logic;
SIGNAL \MAIN_ALU|Add0~87\ : std_logic;
SIGNAL \MAIN_ALU|Add0~89\ : std_logic;
SIGNAL \MAIN_ALU|Add0~91\ : std_logic;
SIGNAL \MAIN_ALU|Add0~93\ : std_logic;
SIGNAL \MAIN_ALU|Add0~95\ : std_logic;
SIGNAL \MAIN_ALU|Add0~96_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~88_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~90_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~34_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~36_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~38_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~0_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~40_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~42_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~44_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~1_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~46_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~48_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~50_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~2_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~52_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~54_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~56_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~3_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~4_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~76_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~78_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~80_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~5_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~9_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~8_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~7_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~6_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~75_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~76_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~13_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~12_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~11_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~10_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~73_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~74_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~21_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~20_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~19_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~18_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~69_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~17_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~16_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~15_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~14_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~71_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~72_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~70_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~22_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~23_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~24_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~25_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~26_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~27_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~28_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~29_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~30_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~31_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~32_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~33_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~34_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~35_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~36_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~37_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~38_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~39_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~40_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~41_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~42_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~43_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~44_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~45_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~46_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~47_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~48_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~49_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~50_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~51_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~52_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~53_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~54_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~55_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~56_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~57_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~58_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~59_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~58_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~60_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~62_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~60_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~64_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~66_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~68_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~61_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~70_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~72_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~74_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~62_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~63_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~64_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~65_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~94_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~92_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~82_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~84_combout\ : std_logic;
SIGNAL \MAIN_ALU|Add0~86_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~66_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~67_combout\ : std_logic;
SIGNAL \MAIN_ALU|Equal0~68_combout\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_ZERO~q\ : std_logic;
SIGNAL \MUX_JUMP|Mux26~2_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux26~3_combout\ : std_logic;
SIGNAL \PC_INC|X[26]~7\ : std_logic;
SIGNAL \PC_INC|X[25]~8_combout\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[26]~37\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[25]~38_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux25~2_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux25~3_combout\ : std_logic;
SIGNAL \PC_INC|X[25]~9\ : std_logic;
SIGNAL \PC_INC|X[24]~10_combout\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[25]~39\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[24]~40_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux24~2_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux24~3_combout\ : std_logic;
SIGNAL \PC_INC|X[24]~11\ : std_logic;
SIGNAL \PC_INC|X[23]~12_combout\ : std_logic;
SIGNAL \INST_MEM|Mux23~1_combout\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[24]~41\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[23]~42_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux23~0_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux23~1_combout\ : std_logic;
SIGNAL \INST_MEM|Mux20~0_combout\ : std_logic;
SIGNAL \INST_MEM|Mux20~1_combout\ : std_logic;
SIGNAL \INST_MEM|Mux30~0_combout\ : std_logic;
SIGNAL \INST_MEM|Mux18~0_combout\ : std_logic;
SIGNAL \MUX_REGDST|X[2]~2_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a31~portbdataout\ : std_logic;
SIGNAL \MUX_JUMP|Mux0~0_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux1~0_combout\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[2]~85\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[1]~86_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux1~1_combout\ : std_logic;
SIGNAL \PC|PC[30]~0_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux1~2_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux8~0_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux9~0_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux11~0_combout\ : std_logic;
SIGNAL \PC_INC|X[23]~13\ : std_logic;
SIGNAL \PC_INC|X[22]~14_combout\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[23]~43\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[22]~44_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux22~0_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux22~1_combout\ : std_logic;
SIGNAL \PC_INC|X[22]~15\ : std_logic;
SIGNAL \PC_INC|X[21]~16_combout\ : std_logic;
SIGNAL \INST_MEM|Mux21~0_combout\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[22]~45\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[21]~46_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux21~0_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux21~1_combout\ : std_logic;
SIGNAL \PC_INC|X[21]~17\ : std_logic;
SIGNAL \PC_INC|X[20]~18_combout\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[21]~47\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[20]~48_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux20~0_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux20~1_combout\ : std_logic;
SIGNAL \PC_INC|X[20]~19\ : std_logic;
SIGNAL \PC_INC|X[19]~20_combout\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[20]~49\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[19]~50_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux19~2_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux19~3_combout\ : std_logic;
SIGNAL \PC_INC|X[19]~21\ : std_logic;
SIGNAL \PC_INC|X[18]~22_combout\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[19]~51\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[18]~52_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux18~0_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux18~1_combout\ : std_logic;
SIGNAL \PC_INC|X[18]~23\ : std_logic;
SIGNAL \PC_INC|X[17]~24_combout\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[18]~53\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[17]~54_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux17~2_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux17~3_combout\ : std_logic;
SIGNAL \PC_INC|X[17]~25\ : std_logic;
SIGNAL \PC_INC|X[16]~26_combout\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[17]~55\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[16]~56_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux16~2_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux16~3_combout\ : std_logic;
SIGNAL \PC_INC|X[16]~27\ : std_logic;
SIGNAL \PC_INC|X[15]~28_combout\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[16]~57\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[15]~58_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux15~0_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux15~1_combout\ : std_logic;
SIGNAL \PC_INC|X[15]~29\ : std_logic;
SIGNAL \PC_INC|X[14]~30_combout\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[15]~59\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[14]~60_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux14~0_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux14~1_combout\ : std_logic;
SIGNAL \PC_INC|X[14]~31\ : std_logic;
SIGNAL \PC_INC|X[13]~32_combout\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[14]~61\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[13]~62_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux13~0_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux13~1_combout\ : std_logic;
SIGNAL \PC_INC|X[13]~33\ : std_logic;
SIGNAL \PC_INC|X[12]~34_combout\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[13]~63\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[12]~64_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux12~0_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux12~1_combout\ : std_logic;
SIGNAL \PC_INC|X[12]~35\ : std_logic;
SIGNAL \PC_INC|X[11]~36_combout\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[12]~65\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[11]~66_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux11~1_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux11~2_combout\ : std_logic;
SIGNAL \PC_INC|X[11]~37\ : std_logic;
SIGNAL \PC_INC|X[10]~38_combout\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[11]~67\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[10]~68_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux10~0_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux10~1_combout\ : std_logic;
SIGNAL \PC_INC|X[10]~39\ : std_logic;
SIGNAL \PC_INC|X[9]~40_combout\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[10]~69\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[9]~70_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux9~1_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux9~2_combout\ : std_logic;
SIGNAL \PC_INC|X[9]~41\ : std_logic;
SIGNAL \PC_INC|X[8]~42_combout\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[9]~71\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[8]~72_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux8~1_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux8~2_combout\ : std_logic;
SIGNAL \PC_INC|X[8]~43\ : std_logic;
SIGNAL \PC_INC|X[7]~44_combout\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[8]~73\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[7]~74_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux7~0_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux7~1_combout\ : std_logic;
SIGNAL \PC_INC|X[7]~45\ : std_logic;
SIGNAL \PC_INC|X[6]~46_combout\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[7]~75\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[6]~76_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux6~0_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux6~1_combout\ : std_logic;
SIGNAL \PC_INC|X[6]~47\ : std_logic;
SIGNAL \PC_INC|X[5]~48_combout\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[6]~77\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[5]~78_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux5~0_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux5~1_combout\ : std_logic;
SIGNAL \PC_INC|X[5]~49\ : std_logic;
SIGNAL \PC_INC|X[4]~51\ : std_logic;
SIGNAL \PC_INC|X[3]~53\ : std_logic;
SIGNAL \PC_INC|X[2]~55\ : std_logic;
SIGNAL \PC_INC|X[1]~56_combout\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[1]~87\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[0]~88_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux0~1_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux0~2_combout\ : std_logic;
SIGNAL \PC_INC|X[1]~57\ : std_logic;
SIGNAL \PC_INC|X[0]~58_combout\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[28]~32_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux28~0_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux28~1_combout\ : std_logic;
SIGNAL \INST_MEM|Mux7~0_combout\ : std_logic;
SIGNAL \INST_MEM|Mux10~0_combout\ : std_logic;
SIGNAL \MUX_REGDST|X[3]~1_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[27]~34_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux27~2_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux27~3_combout\ : std_logic;
SIGNAL \INST_MEM|Mux4~0_combout\ : std_logic;
SIGNAL \INST_MEM|Mux4~1_combout\ : std_logic;
SIGNAL \INST_MEM|Mux4~2_combout\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[5]~79\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[4]~80_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux4~0_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux4~1_combout\ : std_logic;
SIGNAL \PC_INC|X[4]~50_combout\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[4]~81\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[3]~83\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[2]~84_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux2~0_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux2~1_combout\ : std_logic;
SIGNAL \PC_INC|X[2]~54_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux30~0_combout\ : std_logic;
SIGNAL \INST_MEM|Mux20~2_combout\ : std_logic;
SIGNAL \INST_MEM|Mux20~3_combout\ : std_logic;
SIGNAL \MUX_REGDST|X[4]~0_combout\ : std_logic;
SIGNAL \FILE_REG|process_0~0_combout\ : std_logic;
SIGNAL \FILE_REG|process_0~1_combout\ : std_logic;
SIGNAL \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a28~portbdataout\ : std_logic;
SIGNAL \MUX_JUMP|Mux3~0_combout\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[3]~82_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux3~1_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux3~2_combout\ : std_logic;
SIGNAL \PC_INC|X[3]~52_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux31~0_combout\ : std_logic;
SIGNAL \INST_MEM|Mux23~0_combout\ : std_logic;
SIGNAL \UC|Mux0~0_combout\ : std_logic;
SIGNAL \PC|PC[12]~1_combout\ : std_logic;
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER[29]~30_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux29~0_combout\ : std_logic;
SIGNAL \MUX_JUMP|Mux29~1_combout\ : std_logic;
SIGNAL \INST_MEM|Mux5~0_combout\ : std_logic;
SIGNAL \INST_MEM|Mux30~1_combout\ : std_logic;
SIGNAL \INST_MEM|Mux29~0_combout\ : std_logic;
SIGNAL \INST_MEM|Mux28~0_combout\ : std_logic;
SIGNAL \IFID|OUT_PC_MAIS_4\ : std_logic_vector(0 TO 31);
SIGNAL \PC|PC\ : std_logic_vector(0 TO 31);
SIGNAL \IDEX|IDEX_OUT_RT\ : std_logic_vector(0 TO 4);
SIGNAL \MEMWB|MEMWB_OUT_WB\ : std_logic_vector(0 TO 1);
SIGNAL \EXMEM|EXMEM_OUT_RESULT_ADDER\ : std_logic_vector(0 TO 31);
SIGNAL \EXMEM|EXMEM_OUT_MEM\ : std_logic_vector(0 TO 2);
SIGNAL \IFID|OUT_INSTR_MEM\ : std_logic_vector(0 TO 31);
SIGNAL \IDEX|IDEX_OUT_PC\ : std_logic_vector(0 TO 31);
SIGNAL \IDEX|IDEX_OUT_READ1\ : std_logic_vector(0 TO 31);
SIGNAL \MEMWB|MEMWB_OUT_REGDST\ : std_logic_vector(0 TO 4);
SIGNAL \IDEX|IDEX_OUT_MEM\ : std_logic_vector(0 TO 2);
SIGNAL \IDEX|IDEX_OUT_IMED\ : std_logic_vector(0 TO 31);
SIGNAL \EXMEM|EXMEM_OUT_WB\ : std_logic_vector(0 TO 1);
SIGNAL \EXMEM|EXMEM_OUT_REGDST\ : std_logic_vector(0 TO 4);
SIGNAL \IDEX|IDEX_OUT_EX\ : std_logic_vector(0 TO 4);
SIGNAL \IDEX|IDEX_OUT_WB\ : std_logic_vector(0 TO 1);
SIGNAL \IDEX|IDEX_OUT_RD\ : std_logic_vector(0 TO 4);
SIGNAL \UC|SIGNAL_JUMP\ : std_logic_vector(0 TO 1);
SIGNAL \ALU_CONTROL|ULA_CODE\ : std_logic_vector(0 TO 1);
SIGNAL \ALT_INV_CLOCK~input_o\ : std_logic;

BEGIN

ww_CLOCK <= CLOCK;
INSTRUCTION_OUT_IFID <= ww_INSTRUCTION_OUT_IFID;
DEB_REGS_PC <= ww_DEB_REGS_PC;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\~GND~combout\ & \MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\INST_MEM|Mux23~0_combout\ & \INST_MEM|Mux7~1_combout\ & \~GND~combout\ & \~GND~combout\ & \INST_MEM|Mux10~0_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\~GND~combout\ & \MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\INST_MEM|Mux23~0_combout\ & \INST_MEM|Mux7~1_combout\ & \~GND~combout\ & \~GND~combout\ & \INST_MEM|Mux10~0_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a1~portbdataout\ <= \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\~GND~combout\ & \MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\INST_MEM|Mux23~0_combout\ & \INST_MEM|Mux7~1_combout\ & \~GND~combout\ & \~GND~combout\ & \INST_MEM|Mux10~0_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a2~portbdataout\ <= \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\~GND~combout\ & \MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\INST_MEM|Mux23~0_combout\ & \INST_MEM|Mux7~1_combout\ & \~GND~combout\ & \~GND~combout\ & \INST_MEM|Mux10~0_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a3~portbdataout\ <= \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\~GND~combout\ & \MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\INST_MEM|Mux23~0_combout\ & \INST_MEM|Mux7~1_combout\ & \~GND~combout\ & \~GND~combout\ & \INST_MEM|Mux10~0_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a4~portbdataout\ <= \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\~GND~combout\ & \MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\INST_MEM|Mux23~0_combout\ & \INST_MEM|Mux7~1_combout\ & \~GND~combout\ & \~GND~combout\ & \INST_MEM|Mux10~0_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a5~portbdataout\ <= \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\~GND~combout\ & \MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\INST_MEM|Mux23~0_combout\ & \INST_MEM|Mux7~1_combout\ & \~GND~combout\ & \~GND~combout\ & \INST_MEM|Mux10~0_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a6~portbdataout\ <= \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\~GND~combout\ & \MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\INST_MEM|Mux23~0_combout\ & \INST_MEM|Mux7~1_combout\ & \~GND~combout\ & \~GND~combout\ & \INST_MEM|Mux10~0_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a7~portbdataout\ <= \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\~GND~combout\ & \MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (\INST_MEM|Mux23~0_combout\ & \INST_MEM|Mux7~1_combout\ & \~GND~combout\ & \~GND~combout\ & \INST_MEM|Mux10~0_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a8~portbdataout\ <= \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\~GND~combout\ & \MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\ <= (\INST_MEM|Mux23~0_combout\ & \INST_MEM|Mux7~1_combout\ & \~GND~combout\ & \~GND~combout\ & \INST_MEM|Mux10~0_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a9~portbdataout\ <= \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\~GND~combout\ & \MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\ <= (\INST_MEM|Mux23~0_combout\ & \INST_MEM|Mux7~1_combout\ & \~GND~combout\ & \~GND~combout\ & \INST_MEM|Mux10~0_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a10~portbdataout\ <= \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\~GND~combout\ & \MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\ <= (\INST_MEM|Mux23~0_combout\ & \INST_MEM|Mux7~1_combout\ & \~GND~combout\ & \~GND~combout\ & \INST_MEM|Mux10~0_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a11~portbdataout\ <= \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\~GND~combout\ & \MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\ <= (\INST_MEM|Mux23~0_combout\ & \INST_MEM|Mux7~1_combout\ & \~GND~combout\ & \~GND~combout\ & \INST_MEM|Mux10~0_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a12~portbdataout\ <= \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\~GND~combout\ & \MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\ <= (\INST_MEM|Mux23~0_combout\ & \INST_MEM|Mux7~1_combout\ & \~GND~combout\ & \~GND~combout\ & \INST_MEM|Mux10~0_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a13~portbdataout\ <= \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\~GND~combout\ & \MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\ <= (\INST_MEM|Mux23~0_combout\ & \INST_MEM|Mux7~1_combout\ & \~GND~combout\ & \~GND~combout\ & \INST_MEM|Mux10~0_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a14~portbdataout\ <= \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\~GND~combout\ & \MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\ <= (\INST_MEM|Mux23~0_combout\ & \INST_MEM|Mux7~1_combout\ & \~GND~combout\ & \~GND~combout\ & \INST_MEM|Mux10~0_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a15~portbdataout\ <= \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\~GND~combout\ & \MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a16_PORTBADDR_bus\ <= (\INST_MEM|Mux23~0_combout\ & \INST_MEM|Mux7~1_combout\ & \~GND~combout\ & \~GND~combout\ & \INST_MEM|Mux10~0_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a16~portbdataout\ <= \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a16_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (\~GND~combout\ & \MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a17_PORTBADDR_bus\ <= (\INST_MEM|Mux23~0_combout\ & \INST_MEM|Mux7~1_combout\ & \~GND~combout\ & \~GND~combout\ & \INST_MEM|Mux10~0_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a17~portbdataout\ <= \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a17_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\~GND~combout\ & \MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\ <= (\INST_MEM|Mux23~0_combout\ & \INST_MEM|Mux7~1_combout\ & \~GND~combout\ & \~GND~combout\ & \INST_MEM|Mux10~0_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a18~portbdataout\ <= \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (\~GND~combout\ & \MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a19_PORTBADDR_bus\ <= (\INST_MEM|Mux23~0_combout\ & \INST_MEM|Mux7~1_combout\ & \~GND~combout\ & \~GND~combout\ & \INST_MEM|Mux10~0_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a19~portbdataout\ <= \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a19_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\~GND~combout\ & \MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a20_PORTBADDR_bus\ <= (\INST_MEM|Mux23~0_combout\ & \INST_MEM|Mux7~1_combout\ & \~GND~combout\ & \~GND~combout\ & \INST_MEM|Mux10~0_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a20~portbdataout\ <= \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (\~GND~combout\ & \MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a21_PORTBADDR_bus\ <= (\INST_MEM|Mux23~0_combout\ & \INST_MEM|Mux7~1_combout\ & \~GND~combout\ & \~GND~combout\ & \INST_MEM|Mux10~0_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a21~portbdataout\ <= \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a21_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (\~GND~combout\ & \MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a22_PORTBADDR_bus\ <= (\INST_MEM|Mux23~0_combout\ & \INST_MEM|Mux7~1_combout\ & \~GND~combout\ & \~GND~combout\ & \INST_MEM|Mux10~0_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a22~portbdataout\ <= \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a22_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\ <= (\~GND~combout\ & \MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a23_PORTBADDR_bus\ <= (\INST_MEM|Mux23~0_combout\ & \INST_MEM|Mux7~1_combout\ & \~GND~combout\ & \~GND~combout\ & \INST_MEM|Mux10~0_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a23~portbdataout\ <= \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a23_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\ <= (\~GND~combout\ & \MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a24_PORTBADDR_bus\ <= (\INST_MEM|Mux23~0_combout\ & \INST_MEM|Mux7~1_combout\ & \~GND~combout\ & \~GND~combout\ & \INST_MEM|Mux10~0_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a24~portbdataout\ <= \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a24_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\ <= (\~GND~combout\ & \MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a25_PORTBADDR_bus\ <= (\INST_MEM|Mux23~0_combout\ & \INST_MEM|Mux7~1_combout\ & \~GND~combout\ & \~GND~combout\ & \INST_MEM|Mux10~0_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a25~portbdataout\ <= \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a25_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\ <= (\~GND~combout\ & \MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a26_PORTBADDR_bus\ <= (\INST_MEM|Mux23~0_combout\ & \INST_MEM|Mux7~1_combout\ & \~GND~combout\ & \~GND~combout\ & \INST_MEM|Mux10~0_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a26~portbdataout\ <= \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a26_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (\~GND~combout\ & \MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a27_PORTBADDR_bus\ <= (\INST_MEM|Mux23~0_combout\ & \INST_MEM|Mux7~1_combout\ & \~GND~combout\ & \~GND~combout\ & \INST_MEM|Mux10~0_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a27~portbdataout\ <= \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a27_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a28_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\ <= (\~GND~combout\ & \MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a28_PORTBADDR_bus\ <= (\INST_MEM|Mux23~0_combout\ & \INST_MEM|Mux7~1_combout\ & \~GND~combout\ & \~GND~combout\ & \INST_MEM|Mux10~0_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a28~portbdataout\ <= \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a28_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\ <= (\~GND~combout\ & \MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a29_PORTBADDR_bus\ <= (\INST_MEM|Mux23~0_combout\ & \INST_MEM|Mux7~1_combout\ & \~GND~combout\ & \~GND~combout\ & \INST_MEM|Mux10~0_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a29~portbdataout\ <= \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a29_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\ <= (\~GND~combout\ & \MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a30_PORTBADDR_bus\ <= (\INST_MEM|Mux23~0_combout\ & \INST_MEM|Mux7~1_combout\ & \~GND~combout\ & \~GND~combout\ & \INST_MEM|Mux10~0_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a30~portbdataout\ <= \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a31_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\ <= (\~GND~combout\ & \MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a31_PORTBADDR_bus\ <= (\INST_MEM|Mux23~0_combout\ & \INST_MEM|Mux7~1_combout\ & \~GND~combout\ & \~GND~combout\ & \INST_MEM|Mux10~0_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a31~portbdataout\ <= \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a31_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a31_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a31_PORTAADDR_bus\ <= (\MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a31_PORTBADDR_bus\ <= (\INST_MEM|Mux30~0_combout\ & \INST_MEM|Mux13~0_combout\ & \INST_MEM|Mux10~0_combout\ & \INST_MEM|Mux15~0_combout\);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a31~portbdataout\ <= \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a31_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a30_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a30_PORTAADDR_bus\ <= (\MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a30_PORTBADDR_bus\ <= (\INST_MEM|Mux30~0_combout\ & \INST_MEM|Mux13~0_combout\ & \INST_MEM|Mux10~0_combout\ & \INST_MEM|Mux15~0_combout\);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a30~portbdataout\ <= \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a29_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a29_PORTAADDR_bus\ <= (\MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a29_PORTBADDR_bus\ <= (\INST_MEM|Mux30~0_combout\ & \INST_MEM|Mux13~0_combout\ & \INST_MEM|Mux10~0_combout\ & \INST_MEM|Mux15~0_combout\);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a29~portbdataout\ <= \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a29_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a28_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a28_PORTAADDR_bus\ <= (\MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a28_PORTBADDR_bus\ <= (\INST_MEM|Mux30~0_combout\ & \INST_MEM|Mux13~0_combout\ & \INST_MEM|Mux10~0_combout\ & \INST_MEM|Mux15~0_combout\);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a28~portbdataout\ <= \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a28_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a27_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (\MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a27_PORTBADDR_bus\ <= (\INST_MEM|Mux30~0_combout\ & \INST_MEM|Mux13~0_combout\ & \INST_MEM|Mux10~0_combout\ & \INST_MEM|Mux15~0_combout\);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a27~portbdataout\ <= \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a27_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a26_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a26_PORTAADDR_bus\ <= (\MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a26_PORTBADDR_bus\ <= (\INST_MEM|Mux30~0_combout\ & \INST_MEM|Mux13~0_combout\ & \INST_MEM|Mux10~0_combout\ & \INST_MEM|Mux15~0_combout\);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a26~portbdataout\ <= \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a26_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a25_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a25_PORTAADDR_bus\ <= (\MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a25_PORTBADDR_bus\ <= (\INST_MEM|Mux30~0_combout\ & \INST_MEM|Mux13~0_combout\ & \INST_MEM|Mux10~0_combout\ & \INST_MEM|Mux15~0_combout\);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a25~portbdataout\ <= \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a25_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a24_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a24_PORTAADDR_bus\ <= (\MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a24_PORTBADDR_bus\ <= (\INST_MEM|Mux30~0_combout\ & \INST_MEM|Mux13~0_combout\ & \INST_MEM|Mux10~0_combout\ & \INST_MEM|Mux15~0_combout\);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a24~portbdataout\ <= \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a24_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a23_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a23_PORTAADDR_bus\ <= (\MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a23_PORTBADDR_bus\ <= (\INST_MEM|Mux30~0_combout\ & \INST_MEM|Mux13~0_combout\ & \INST_MEM|Mux10~0_combout\ & \INST_MEM|Mux15~0_combout\);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a23~portbdataout\ <= \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a23_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a22_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (\MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a22_PORTBADDR_bus\ <= (\INST_MEM|Mux30~0_combout\ & \INST_MEM|Mux13~0_combout\ & \INST_MEM|Mux10~0_combout\ & \INST_MEM|Mux15~0_combout\);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a22~portbdataout\ <= \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a22_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a21_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (\MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a21_PORTBADDR_bus\ <= (\INST_MEM|Mux30~0_combout\ & \INST_MEM|Mux13~0_combout\ & \INST_MEM|Mux10~0_combout\ & \INST_MEM|Mux15~0_combout\);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a21~portbdataout\ <= \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a21_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a20_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a20_PORTBADDR_bus\ <= (\INST_MEM|Mux30~0_combout\ & \INST_MEM|Mux13~0_combout\ & \INST_MEM|Mux10~0_combout\ & \INST_MEM|Mux15~0_combout\);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a20~portbdataout\ <= \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a19_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (\MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a19_PORTBADDR_bus\ <= (\INST_MEM|Mux30~0_combout\ & \INST_MEM|Mux13~0_combout\ & \INST_MEM|Mux10~0_combout\ & \INST_MEM|Mux15~0_combout\);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a19~portbdataout\ <= \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a19_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a18_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a18_PORTBADDR_bus\ <= (\INST_MEM|Mux30~0_combout\ & \INST_MEM|Mux13~0_combout\ & \INST_MEM|Mux10~0_combout\ & \INST_MEM|Mux15~0_combout\);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a18~portbdataout\ <= \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a17_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (\MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a17_PORTBADDR_bus\ <= (\INST_MEM|Mux30~0_combout\ & \INST_MEM|Mux13~0_combout\ & \INST_MEM|Mux10~0_combout\ & \INST_MEM|Mux15~0_combout\);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a17~portbdataout\ <= \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a17_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a16_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a16_PORTBADDR_bus\ <= (\INST_MEM|Mux30~0_combout\ & \INST_MEM|Mux13~0_combout\ & \INST_MEM|Mux10~0_combout\ & \INST_MEM|Mux15~0_combout\);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a16~portbdataout\ <= \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a16_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a15_PORTBADDR_bus\ <= (\INST_MEM|Mux30~0_combout\ & \INST_MEM|Mux13~0_combout\ & \INST_MEM|Mux10~0_combout\ & \INST_MEM|Mux15~0_combout\);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a15~portbdataout\ <= \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a14_PORTBADDR_bus\ <= (\INST_MEM|Mux30~0_combout\ & \INST_MEM|Mux13~0_combout\ & \INST_MEM|Mux10~0_combout\ & \INST_MEM|Mux15~0_combout\);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a14~portbdataout\ <= \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a13_PORTBADDR_bus\ <= (\INST_MEM|Mux30~0_combout\ & \INST_MEM|Mux13~0_combout\ & \INST_MEM|Mux10~0_combout\ & \INST_MEM|Mux15~0_combout\);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a13~portbdataout\ <= \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a12_PORTBADDR_bus\ <= (\INST_MEM|Mux30~0_combout\ & \INST_MEM|Mux13~0_combout\ & \INST_MEM|Mux10~0_combout\ & \INST_MEM|Mux15~0_combout\);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a12~portbdataout\ <= \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a11_PORTBADDR_bus\ <= (\INST_MEM|Mux30~0_combout\ & \INST_MEM|Mux13~0_combout\ & \INST_MEM|Mux10~0_combout\ & \INST_MEM|Mux15~0_combout\);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a11~portbdataout\ <= \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a10_PORTBADDR_bus\ <= (\INST_MEM|Mux30~0_combout\ & \INST_MEM|Mux13~0_combout\ & \INST_MEM|Mux10~0_combout\ & \INST_MEM|Mux15~0_combout\);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a10~portbdataout\ <= \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a9_PORTBADDR_bus\ <= (\INST_MEM|Mux30~0_combout\ & \INST_MEM|Mux13~0_combout\ & \INST_MEM|Mux10~0_combout\ & \INST_MEM|Mux15~0_combout\);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a9~portbdataout\ <= \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (\INST_MEM|Mux30~0_combout\ & \INST_MEM|Mux13~0_combout\ & \INST_MEM|Mux10~0_combout\ & \INST_MEM|Mux15~0_combout\);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a8~portbdataout\ <= \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\INST_MEM|Mux30~0_combout\ & \INST_MEM|Mux13~0_combout\ & \INST_MEM|Mux10~0_combout\ & \INST_MEM|Mux15~0_combout\);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a7~portbdataout\ <= \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\INST_MEM|Mux30~0_combout\ & \INST_MEM|Mux13~0_combout\ & \INST_MEM|Mux10~0_combout\ & \INST_MEM|Mux15~0_combout\);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a6~portbdataout\ <= \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\INST_MEM|Mux30~0_combout\ & \INST_MEM|Mux13~0_combout\ & \INST_MEM|Mux10~0_combout\ & \INST_MEM|Mux15~0_combout\);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a5~portbdataout\ <= \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\INST_MEM|Mux30~0_combout\ & \INST_MEM|Mux13~0_combout\ & \INST_MEM|Mux10~0_combout\ & \INST_MEM|Mux15~0_combout\);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a4~portbdataout\ <= \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\INST_MEM|Mux30~0_combout\ & \INST_MEM|Mux13~0_combout\ & \INST_MEM|Mux10~0_combout\ & \INST_MEM|Mux15~0_combout\);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a3~portbdataout\ <= \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\INST_MEM|Mux30~0_combout\ & \INST_MEM|Mux13~0_combout\ & \INST_MEM|Mux10~0_combout\ & \INST_MEM|Mux15~0_combout\);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a2~portbdataout\ <= \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\INST_MEM|Mux30~0_combout\ & \INST_MEM|Mux13~0_combout\ & \INST_MEM|Mux10~0_combout\ & \INST_MEM|Mux15~0_combout\);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a1~portbdataout\ <= \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \~GND~combout\;

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\MEMWB|MEMWB_OUT_REGDST\(1) & \MEMWB|MEMWB_OUT_REGDST\(2) & \MEMWB|MEMWB_OUT_REGDST\(3) & \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\INST_MEM|Mux30~0_combout\ & \INST_MEM|Mux13~0_combout\ & \INST_MEM|Mux10~0_combout\ & \INST_MEM|Mux15~0_combout\);

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a0~portbdataout\ <= \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\ALT_INV_CLOCK~input_o\ <= NOT \CLOCK~input_o\;

\DEB_REGS_PC[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|PC\(31),
	devoe => ww_devoe,
	o => ww_DEB_REGS_PC(31));

\DEB_REGS_PC[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|PC\(30),
	devoe => ww_devoe,
	o => ww_DEB_REGS_PC(30));

\DEB_REGS_PC[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[29]~0_combout\,
	devoe => ww_devoe,
	o => ww_DEB_REGS_PC(29));

\DEB_REGS_PC[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[28]~2_combout\,
	devoe => ww_devoe,
	o => ww_DEB_REGS_PC(28));

\DEB_REGS_PC[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[27]~4_combout\,
	devoe => ww_devoe,
	o => ww_DEB_REGS_PC(27));

\DEB_REGS_PC[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[26]~6_combout\,
	devoe => ww_devoe,
	o => ww_DEB_REGS_PC(26));

\DEB_REGS_PC[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[25]~8_combout\,
	devoe => ww_devoe,
	o => ww_DEB_REGS_PC(25));

\DEB_REGS_PC[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[24]~10_combout\,
	devoe => ww_devoe,
	o => ww_DEB_REGS_PC(24));

\DEB_REGS_PC[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[23]~12_combout\,
	devoe => ww_devoe,
	o => ww_DEB_REGS_PC(23));

\DEB_REGS_PC[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[22]~14_combout\,
	devoe => ww_devoe,
	o => ww_DEB_REGS_PC(22));

\DEB_REGS_PC[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[21]~16_combout\,
	devoe => ww_devoe,
	o => ww_DEB_REGS_PC(21));

\DEB_REGS_PC[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[20]~18_combout\,
	devoe => ww_devoe,
	o => ww_DEB_REGS_PC(20));

\DEB_REGS_PC[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[19]~20_combout\,
	devoe => ww_devoe,
	o => ww_DEB_REGS_PC(19));

\DEB_REGS_PC[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[18]~22_combout\,
	devoe => ww_devoe,
	o => ww_DEB_REGS_PC(18));

\DEB_REGS_PC[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[17]~24_combout\,
	devoe => ww_devoe,
	o => ww_DEB_REGS_PC(17));

\DEB_REGS_PC[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[16]~26_combout\,
	devoe => ww_devoe,
	o => ww_DEB_REGS_PC(16));

\DEB_REGS_PC[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[15]~28_combout\,
	devoe => ww_devoe,
	o => ww_DEB_REGS_PC(15));

\DEB_REGS_PC[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[14]~30_combout\,
	devoe => ww_devoe,
	o => ww_DEB_REGS_PC(14));

\DEB_REGS_PC[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[13]~32_combout\,
	devoe => ww_devoe,
	o => ww_DEB_REGS_PC(13));

\DEB_REGS_PC[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[12]~34_combout\,
	devoe => ww_devoe,
	o => ww_DEB_REGS_PC(12));

\DEB_REGS_PC[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[11]~36_combout\,
	devoe => ww_devoe,
	o => ww_DEB_REGS_PC(11));

\DEB_REGS_PC[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[10]~38_combout\,
	devoe => ww_devoe,
	o => ww_DEB_REGS_PC(10));

\DEB_REGS_PC[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[9]~40_combout\,
	devoe => ww_devoe,
	o => ww_DEB_REGS_PC(9));

\DEB_REGS_PC[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[8]~42_combout\,
	devoe => ww_devoe,
	o => ww_DEB_REGS_PC(8));

\DEB_REGS_PC[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[7]~44_combout\,
	devoe => ww_devoe,
	o => ww_DEB_REGS_PC(7));

\DEB_REGS_PC[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[6]~46_combout\,
	devoe => ww_devoe,
	o => ww_DEB_REGS_PC(6));

\DEB_REGS_PC[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[5]~48_combout\,
	devoe => ww_devoe,
	o => ww_DEB_REGS_PC(5));

\DEB_REGS_PC[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[4]~50_combout\,
	devoe => ww_devoe,
	o => ww_DEB_REGS_PC(4));

\DEB_REGS_PC[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[3]~52_combout\,
	devoe => ww_devoe,
	o => ww_DEB_REGS_PC(3));

\DEB_REGS_PC[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[2]~54_combout\,
	devoe => ww_devoe,
	o => ww_DEB_REGS_PC(2));

\DEB_REGS_PC[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[1]~56_combout\,
	devoe => ww_devoe,
	o => ww_DEB_REGS_PC(1));

\DEB_REGS_PC[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC_INC|X[0]~58_combout\,
	devoe => ww_devoe,
	o => ww_DEB_REGS_PC(0));

\INSTRUCTION_OUT_IFID[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IFID|OUT_INSTR_MEM\(5),
	oe => VCC,
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT_IFID(31));

\INSTRUCTION_OUT_IFID[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IFID|OUT_INSTR_MEM\(30),
	oe => VCC,
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT_IFID(30));

\INSTRUCTION_OUT_IFID[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IFID|OUT_INSTR_MEM\(29),
	oe => VCC,
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT_IFID(29));

\INSTRUCTION_OUT_IFID[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IFID|OUT_INSTR_MEM\(28),
	oe => VCC,
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT_IFID(28));

\INSTRUCTION_OUT_IFID[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT_IFID(27));

\INSTRUCTION_OUT_IFID[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IFID|OUT_INSTR_MEM\(30),
	oe => VCC,
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT_IFID(26));

\INSTRUCTION_OUT_IFID[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT_IFID(25));

\INSTRUCTION_OUT_IFID[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT_IFID(24));

\INSTRUCTION_OUT_IFID[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IFID|OUT_INSTR_MEM\(23),
	oe => VCC,
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT_IFID(23));

\INSTRUCTION_OUT_IFID[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IFID|OUT_INSTR_MEM\(18),
	oe => VCC,
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT_IFID(22));

\INSTRUCTION_OUT_IFID[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IFID|OUT_INSTR_MEM\(21),
	oe => VCC,
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT_IFID(21));

\INSTRUCTION_OUT_IFID[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IFID|OUT_INSTR_MEM\(20),
	oe => VCC,
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT_IFID(20));

\INSTRUCTION_OUT_IFID[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT_IFID(19));

\INSTRUCTION_OUT_IFID[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IFID|OUT_INSTR_MEM\(18),
	oe => VCC,
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT_IFID(18));

\INSTRUCTION_OUT_IFID[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT_IFID(17));

\INSTRUCTION_OUT_IFID[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT_IFID(16));

\INSTRUCTION_OUT_IFID[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IFID|OUT_INSTR_MEM\(15),
	oe => VCC,
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT_IFID(15));

\INSTRUCTION_OUT_IFID[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IFID|OUT_INSTR_MEM\(10),
	oe => VCC,
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT_IFID(14));

\INSTRUCTION_OUT_IFID[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IFID|OUT_INSTR_MEM\(13),
	oe => VCC,
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT_IFID(13));

\INSTRUCTION_OUT_IFID[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IFID|OUT_INSTR_MEM\(12),
	oe => VCC,
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT_IFID(12));

\INSTRUCTION_OUT_IFID[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT_IFID(11));

\INSTRUCTION_OUT_IFID[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IFID|OUT_INSTR_MEM\(10),
	oe => VCC,
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT_IFID(10));

\INSTRUCTION_OUT_IFID[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT_IFID(9));

\INSTRUCTION_OUT_IFID[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT_IFID(8));

\INSTRUCTION_OUT_IFID[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IFID|OUT_INSTR_MEM\(7),
	oe => VCC,
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT_IFID(7));

\INSTRUCTION_OUT_IFID[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IFID|OUT_INSTR_MEM\(2),
	oe => VCC,
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT_IFID(6));

\INSTRUCTION_OUT_IFID[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IFID|OUT_INSTR_MEM\(5),
	oe => VCC,
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT_IFID(5));

\INSTRUCTION_OUT_IFID[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IFID|OUT_INSTR_MEM\(4),
	oe => VCC,
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT_IFID(4));

\INSTRUCTION_OUT_IFID[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT_IFID(3));

\INSTRUCTION_OUT_IFID[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IFID|OUT_INSTR_MEM\(2),
	oe => VCC,
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT_IFID(2));

\INSTRUCTION_OUT_IFID[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT_IFID(1));

\INSTRUCTION_OUT_IFID[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_INSTRUCTION_OUT_IFID(0));

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
-- \PC_INC|X[29]~0_combout\ = \PC|PC\(29) $ (VCC)
-- \PC_INC|X[29]~1\ = CARRY(\PC|PC\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC\(29),
	datad => VCC,
	combout => \PC_INC|X[29]~0_combout\,
	cout => \PC_INC|X[29]~1\);

\IDEX|IDEX_OUT_WB[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IDEX|IDEX_OUT_WB[0]~0_combout\ = !\IFID|OUT_INSTR_MEM\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(2),
	combout => \IDEX|IDEX_OUT_WB[0]~0_combout\);

\IDEX|IDEX_OUT_WB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \IDEX|IDEX_OUT_WB[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_WB\(0));

\EXMEM|EXMEM_OUT_WB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \IDEX|IDEX_OUT_WB\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_WB\(0));

\MEMWB|MEMWB_OUT_WB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_WB\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWB|MEMWB_OUT_WB\(0));

\UC|SIGNAL_JUMP[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|SIGNAL_JUMP\(1) = (\UC|Mux0~0_combout\ & (\IFID|OUT_INSTR_MEM\(5))) # (!\UC|Mux0~0_combout\ & ((\UC|SIGNAL_JUMP\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IFID|OUT_INSTR_MEM\(5),
	datac => \UC|SIGNAL_JUMP\(1),
	datad => \UC|Mux0~0_combout\,
	combout => \UC|SIGNAL_JUMP\(1));

\PC|PC[30]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|PC[30]~2_combout\ = (\UC|SIGNAL_JUMP\(1)) # (\UC|SIGNAL_JUMP\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UC|SIGNAL_JUMP\(1),
	datab => \UC|SIGNAL_JUMP\(0),
	combout => \PC|PC[30]~2_combout\);

\IDEX|IDEX_OUT_PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \IFID|OUT_PC_MAIS_4\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_PC\(2));

\IDEX|IDEX_OUT_PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \IFID|OUT_PC_MAIS_4\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_PC\(3));

\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

\IFID|OUT_INSTR_MEM[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \INST_MEM|Mux30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_INSTR_MEM\(12));

\IDEX|IDEX_OUT_RT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \IFID|OUT_INSTR_MEM\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_RT\(1));

\IDEX|IDEX_OUT_EX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_EX\(0));

\MUX_REGDST|X[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_REGDST|X[1]~3_combout\ = (\IDEX|IDEX_OUT_RT\(1) & !\IDEX|IDEX_OUT_EX\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_RT\(1),
	datad => \IDEX|IDEX_OUT_EX\(0),
	combout => \MUX_REGDST|X[1]~3_combout\);

\EXMEM|EXMEM_OUT_REGDST[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \MUX_REGDST|X[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_REGDST\(1));

\MEMWB|MEMWB_OUT_REGDST[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_REGDST\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWB|MEMWB_OUT_REGDST\(1));

\INST_MEM|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \INST_MEM|Mux7~1_combout\ = (\PC|PC\(31) & (\PC|PC\(30) & (\PC|PC\(29) & \INST_MEM|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC\(31),
	datab => \PC|PC\(30),
	datac => \PC|PC\(29),
	datad => \INST_MEM|Mux7~0_combout\,
	combout => \INST_MEM|Mux7~1_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a6\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_0|altsyncram_kvc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a5\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_0|altsyncram_kvc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\);

\PC_INC|X[28]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[28]~2_combout\ = (\PC|PC\(28) & (!\PC_INC|X[29]~1\)) # (!\PC|PC\(28) & ((\PC_INC|X[29]~1\) # (GND)))
-- \PC_INC|X[28]~3\ = CARRY((!\PC_INC|X[29]~1\) # (!\PC|PC\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC\(28),
	datad => VCC,
	cin => \PC_INC|X[29]~1\,
	combout => \PC_INC|X[28]~2_combout\,
	cout => \PC_INC|X[28]~3\);

\PC_INC|X[27]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[27]~4_combout\ = (\PC|PC\(27) & (\PC_INC|X[28]~3\ $ (GND))) # (!\PC|PC\(27) & (!\PC_INC|X[28]~3\ & VCC))
-- \PC_INC|X[27]~5\ = CARRY((\PC|PC\(27) & !\PC_INC|X[28]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC\(27),
	datad => VCC,
	cin => \PC_INC|X[28]~3\,
	combout => \PC_INC|X[27]~4_combout\,
	cout => \PC_INC|X[27]~5\);

\PC_INC|X[26]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[26]~6_combout\ = (\PC|PC\(26) & (!\PC_INC|X[27]~5\)) # (!\PC|PC\(26) & ((\PC_INC|X[27]~5\) # (GND)))
-- \PC_INC|X[26]~7\ = CARRY((!\PC_INC|X[27]~5\) # (!\PC|PC\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC\(26),
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
	clk => \ALT_INV_CLOCK~input_o\,
	d => \PC_INC|X[26]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(26));

\IDEX|IDEX_OUT_PC[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \IFID|OUT_PC_MAIS_4\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_PC\(26));

\IFID|OUT_PC_MAIS_4[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \PC_INC|X[27]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(27));

\IDEX|IDEX_OUT_PC[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \IFID|OUT_PC_MAIS_4\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_PC\(27));

\IFID|OUT_PC_MAIS_4[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \PC_INC|X[28]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(28));

\IDEX|IDEX_OUT_PC[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \IFID|OUT_PC_MAIS_4\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_PC\(28));

\IFID|OUT_PC_MAIS_4[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \PC_INC|X[29]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(29));

\IDEX|IDEX_OUT_PC[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \IFID|OUT_PC_MAIS_4\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_PC\(29));

\INST_MEM|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \INST_MEM|Mux13~0_combout\ = (\PC|PC\(31) & (\PC|PC\(30) & (\INST_MEM|Mux7~0_combout\ & !\PC|PC\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC\(31),
	datab => \PC|PC\(30),
	datac => \INST_MEM|Mux7~0_combout\,
	datad => \PC|PC\(29),
	combout => \INST_MEM|Mux13~0_combout\);

\IFID|OUT_INSTR_MEM[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \INST_MEM|Mux13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_INSTR_MEM\(13));

\IDEX|IDEX_OUT_RT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \IFID|OUT_INSTR_MEM\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_RT\(2));

\EXMEM|EXMEM_OUT_RESULT_ADDER[29]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[29]~30_combout\ = (\IDEX|IDEX_OUT_PC\(29) & (\IDEX|IDEX_OUT_RT\(2) $ (VCC))) # (!\IDEX|IDEX_OUT_PC\(29) & (\IDEX|IDEX_OUT_RT\(2) & VCC))
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[29]~31\ = CARRY((\IDEX|IDEX_OUT_PC\(29) & \IDEX|IDEX_OUT_RT\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_PC\(29),
	datab => \IDEX|IDEX_OUT_RT\(2),
	datad => VCC,
	combout => \EXMEM|EXMEM_OUT_RESULT_ADDER[29]~30_combout\,
	cout => \EXMEM|EXMEM_OUT_RESULT_ADDER[29]~31\);

\EXMEM|EXMEM_OUT_RESULT_ADDER[28]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[28]~32_combout\ = (\IDEX|IDEX_OUT_PC\(28) & ((\IDEX|IDEX_OUT_RT\(1) & (\EXMEM|EXMEM_OUT_RESULT_ADDER[29]~31\ & VCC)) # (!\IDEX|IDEX_OUT_RT\(1) & (!\EXMEM|EXMEM_OUT_RESULT_ADDER[29]~31\)))) # (!\IDEX|IDEX_OUT_PC\(28) & 
-- ((\IDEX|IDEX_OUT_RT\(1) & (!\EXMEM|EXMEM_OUT_RESULT_ADDER[29]~31\)) # (!\IDEX|IDEX_OUT_RT\(1) & ((\EXMEM|EXMEM_OUT_RESULT_ADDER[29]~31\) # (GND)))))
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[28]~33\ = CARRY((\IDEX|IDEX_OUT_PC\(28) & (!\IDEX|IDEX_OUT_RT\(1) & !\EXMEM|EXMEM_OUT_RESULT_ADDER[29]~31\)) # (!\IDEX|IDEX_OUT_PC\(28) & ((!\EXMEM|EXMEM_OUT_RESULT_ADDER[29]~31\) # (!\IDEX|IDEX_OUT_RT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_PC\(28),
	datab => \IDEX|IDEX_OUT_RT\(1),
	datad => VCC,
	cin => \EXMEM|EXMEM_OUT_RESULT_ADDER[29]~31\,
	combout => \EXMEM|EXMEM_OUT_RESULT_ADDER[28]~32_combout\,
	cout => \EXMEM|EXMEM_OUT_RESULT_ADDER[28]~33\);

\EXMEM|EXMEM_OUT_RESULT_ADDER[27]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[27]~34_combout\ = (\IDEX|IDEX_OUT_PC\(27) & (\EXMEM|EXMEM_OUT_RESULT_ADDER[28]~33\ $ (GND))) # (!\IDEX|IDEX_OUT_PC\(27) & (!\EXMEM|EXMEM_OUT_RESULT_ADDER[28]~33\ & VCC))
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[27]~35\ = CARRY((\IDEX|IDEX_OUT_PC\(27) & !\EXMEM|EXMEM_OUT_RESULT_ADDER[28]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_PC\(27),
	datad => VCC,
	cin => \EXMEM|EXMEM_OUT_RESULT_ADDER[28]~33\,
	combout => \EXMEM|EXMEM_OUT_RESULT_ADDER[27]~34_combout\,
	cout => \EXMEM|EXMEM_OUT_RESULT_ADDER[27]~35\);

\EXMEM|EXMEM_OUT_RESULT_ADDER[26]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[26]~36_combout\ = (\IDEX|IDEX_OUT_PC\(26) & ((\IDEX|IDEX_OUT_IMED\(26) & (\EXMEM|EXMEM_OUT_RESULT_ADDER[27]~35\ & VCC)) # (!\IDEX|IDEX_OUT_IMED\(26) & (!\EXMEM|EXMEM_OUT_RESULT_ADDER[27]~35\)))) # (!\IDEX|IDEX_OUT_PC\(26) & 
-- ((\IDEX|IDEX_OUT_IMED\(26) & (!\EXMEM|EXMEM_OUT_RESULT_ADDER[27]~35\)) # (!\IDEX|IDEX_OUT_IMED\(26) & ((\EXMEM|EXMEM_OUT_RESULT_ADDER[27]~35\) # (GND)))))
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[26]~37\ = CARRY((\IDEX|IDEX_OUT_PC\(26) & (!\IDEX|IDEX_OUT_IMED\(26) & !\EXMEM|EXMEM_OUT_RESULT_ADDER[27]~35\)) # (!\IDEX|IDEX_OUT_PC\(26) & ((!\EXMEM|EXMEM_OUT_RESULT_ADDER[27]~35\) # (!\IDEX|IDEX_OUT_IMED\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_PC\(26),
	datab => \IDEX|IDEX_OUT_IMED\(26),
	datad => VCC,
	cin => \EXMEM|EXMEM_OUT_RESULT_ADDER[27]~35\,
	combout => \EXMEM|EXMEM_OUT_RESULT_ADDER[26]~36_combout\,
	cout => \EXMEM|EXMEM_OUT_RESULT_ADDER[26]~37\);

\EXMEM|EXMEM_OUT_RESULT_ADDER[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ADDER[26]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ADDER\(26));

\UC|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|Mux5~0_combout\ = (\IFID|OUT_INSTR_MEM\(2) & (!\IFID|OUT_INSTR_MEM\(5) & !\IFID|OUT_INSTR_MEM\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(2),
	datac => \IFID|OUT_INSTR_MEM\(5),
	datad => \IFID|OUT_INSTR_MEM\(4),
	combout => \UC|Mux5~0_combout\);

\IDEX|IDEX_OUT_MEM[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \UC|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_MEM\(0));

\EXMEM|EXMEM_OUT_MEM[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \IDEX|IDEX_OUT_MEM\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_MEM\(0));

\INST_MEM|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \INST_MEM|Mux15~0_combout\ = (\PC|PC\(30) & (\PC|PC\(29) & (\INST_MEM|Mux7~0_combout\ & !\PC|PC\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC\(30),
	datab => \PC|PC\(29),
	datac => \INST_MEM|Mux7~0_combout\,
	datad => \PC|PC\(31),
	combout => \INST_MEM|Mux15~0_combout\);

\IFID|OUT_INSTR_MEM[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \INST_MEM|Mux15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_INSTR_MEM\(15));

\IDEX|IDEX_OUT_RT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \IFID|OUT_INSTR_MEM\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_RT\(4));

\ALU_CONTROL|ULA_CODE[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_CONTROL|ULA_CODE[0]~0_combout\ = (\IDEX|IDEX_OUT_IMED\(26) & (!\IDEX|IDEX_OUT_RT\(2) & (!\IDEX|IDEX_OUT_RT\(1) & !\IDEX|IDEX_OUT_RT\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_IMED\(26),
	datab => \IDEX|IDEX_OUT_RT\(2),
	datac => \IDEX|IDEX_OUT_RT\(1),
	datad => \IDEX|IDEX_OUT_RT\(4),
	combout => \ALU_CONTROL|ULA_CODE[0]~0_combout\);

\IDEX|IDEX_OUT_EX[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IDEX|IDEX_OUT_EX[3]~0_combout\ = !\IFID|OUT_INSTR_MEM\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(5),
	combout => \IDEX|IDEX_OUT_EX[3]~0_combout\);

\IDEX|IDEX_OUT_EX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \IDEX|IDEX_OUT_EX[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_EX\(3));

\UC|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|Mux0~1_combout\ = \IFID|OUT_INSTR_MEM\(5) $ (\IFID|OUT_INSTR_MEM\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IFID|OUT_INSTR_MEM\(5),
	datad => \IFID|OUT_INSTR_MEM\(4),
	combout => \UC|Mux0~1_combout\);

\IDEX|IDEX_OUT_EX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \UC|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_EX\(2));

\UC|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|Mux9~0_combout\ = (\IFID|OUT_INSTR_MEM\(5) & \IFID|OUT_INSTR_MEM\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(5),
	datab => \IFID|OUT_INSTR_MEM\(4),
	combout => \UC|Mux9~0_combout\);

\IDEX|IDEX_OUT_EX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \UC|Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_EX\(1));

\ALU_CONTROL|ULA_CODE[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_CONTROL|ULA_CODE[0]~1_combout\ = (!\IDEX|IDEX_OUT_EX\(1) & (((\ALU_CONTROL|ULA_CODE[0]~0_combout\ & !\IDEX|IDEX_OUT_EX\(3))) # (!\IDEX|IDEX_OUT_EX\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE[0]~0_combout\,
	datab => \IDEX|IDEX_OUT_EX\(3),
	datac => \IDEX|IDEX_OUT_EX\(2),
	datad => \IDEX|IDEX_OUT_EX\(1),
	combout => \ALU_CONTROL|ULA_CODE[0]~1_combout\);

\ALU_CONTROL|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_CONTROL|comb~1_combout\ = (!\IDEX|IDEX_OUT_EX\(3)) # (!\IDEX|IDEX_OUT_EX\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IDEX|IDEX_OUT_EX\(1),
	datad => \IDEX|IDEX_OUT_EX\(3),
	combout => \ALU_CONTROL|comb~1_combout\);

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
-- \ALU_CONTROL|ULA_CODE\(0) = (!\ALU_CONTROL|comb~0_combout\ & (((\ALU_CONTROL|ULA_CODE\(0) & !\ALU_CONTROL|ULA_CODE[0]~1_combout\)) # (!\ALU_CONTROL|comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(0),
	datab => \ALU_CONTROL|ULA_CODE[0]~1_combout\,
	datac => \ALU_CONTROL|comb~1_combout\,
	datad => \ALU_CONTROL|comb~0_combout\,
	combout => \ALU_CONTROL|ULA_CODE\(0));

\ALU_CONTROL|ULA_CODE[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_CONTROL|ULA_CODE[1]~2_combout\ = (!\IDEX|IDEX_OUT_EX\(1) & ((\IDEX|IDEX_OUT_EX\(3) & ((!\IDEX|IDEX_OUT_EX\(2)))) # (!\IDEX|IDEX_OUT_EX\(3) & (\ALU_CONTROL|ULA_CODE[0]~0_combout\ & \IDEX|IDEX_OUT_EX\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE[0]~0_combout\,
	datab => \IDEX|IDEX_OUT_EX\(3),
	datac => \IDEX|IDEX_OUT_EX\(2),
	datad => \IDEX|IDEX_OUT_EX\(1),
	combout => \ALU_CONTROL|ULA_CODE[1]~2_combout\);

\ALU_CONTROL|ULA_CODE[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_CONTROL|ULA_CODE[1]~3_combout\ = (\ALU_CONTROL|ULA_CODE[0]~1_combout\ & (\ALU_CONTROL|ULA_CODE[1]~2_combout\)) # (!\ALU_CONTROL|ULA_CODE[0]~1_combout\ & ((\ALU_CONTROL|ULA_CODE\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_CONTROL|ULA_CODE[1]~2_combout\,
	datac => \ALU_CONTROL|ULA_CODE\(1),
	datad => \ALU_CONTROL|ULA_CODE[0]~1_combout\,
	combout => \ALU_CONTROL|ULA_CODE[1]~3_combout\);

\ALU_CONTROL|comb~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_CONTROL|comb~3_combout\ = (\IDEX|IDEX_OUT_EX\(1) & (\IDEX|IDEX_OUT_EX\(2) $ (!\IDEX|IDEX_OUT_EX\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_EX\(1),
	datab => \IDEX|IDEX_OUT_EX\(2),
	datac => \IDEX|IDEX_OUT_EX\(3),
	combout => \ALU_CONTROL|comb~3_combout\);

\ALU_CONTROL|comb~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_CONTROL|comb~2_combout\ = (\IDEX|IDEX_OUT_EX\(3) & (\IDEX|IDEX_OUT_EX\(2) $ (\IDEX|IDEX_OUT_EX\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_EX\(3),
	datac => \IDEX|IDEX_OUT_EX\(2),
	datad => \IDEX|IDEX_OUT_EX\(1),
	combout => \ALU_CONTROL|comb~2_combout\);

\ALU_CONTROL|ULA_CODE[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_CONTROL|ULA_CODE\(1) = (!\ALU_CONTROL|comb~2_combout\ & ((\ALU_CONTROL|ULA_CODE[1]~3_combout\) # (\ALU_CONTROL|comb~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_CONTROL|ULA_CODE[1]~3_combout\,
	datac => \ALU_CONTROL|comb~3_combout\,
	datad => \ALU_CONTROL|comb~2_combout\,
	combout => \ALU_CONTROL|ULA_CODE\(1));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a31\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_1|altsyncram_09c1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 31,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 31,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a31_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a31_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a31_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a31_PORTBDATAOUT_bus\);

\MAIN_ALU|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~0_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a31~portbdataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_CONTROL|ULA_CODE\(1),
	datad => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a31~portbdataout\,
	combout => \MAIN_ALU|Add0~0_combout\);

\IDEX|IDEX_OUT_READ1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a31~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(0));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a30\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_1|altsyncram_09c1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 30,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 30,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a30_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a30_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a30_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a30_PORTBDATAOUT_bus\);

\MAIN_ALU|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~1_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a30~portbdataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_CONTROL|ULA_CODE\(1),
	datad => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a30~portbdataout\,
	combout => \MAIN_ALU|Add0~1_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a30\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_0|altsyncram_kvc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 30,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 30,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a30_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\);

\IDEX|IDEX_OUT_READ1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a30~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(1));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a29\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_1|altsyncram_09c1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 29,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 29,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a29_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a29_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a29_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a29_PORTBDATAOUT_bus\);

\MAIN_ALU|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~2_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a29~portbdataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_CONTROL|ULA_CODE\(1),
	datad => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a29~portbdataout\,
	combout => \MAIN_ALU|Add0~2_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a29\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_0|altsyncram_kvc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 29,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 29,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a29_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a29_PORTBDATAOUT_bus\);

\IDEX|IDEX_OUT_READ1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a29~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(2));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a28\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_1|altsyncram_09c1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 28,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 28,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a28_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a28_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a28_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a28_PORTBDATAOUT_bus\);

\MAIN_ALU|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~3_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a28~portbdataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_CONTROL|ULA_CODE\(1),
	datad => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a28~portbdataout\,
	combout => \MAIN_ALU|Add0~3_combout\);

\IDEX|IDEX_OUT_READ1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a28~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(3));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a27\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_1|altsyncram_09c1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 27,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 27,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a27_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a27_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a27_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a27_PORTBDATAOUT_bus\);

\MAIN_ALU|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~4_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a27~portbdataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_CONTROL|ULA_CODE\(1),
	datad => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a27~portbdataout\,
	combout => \MAIN_ALU|Add0~4_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a27\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_0|altsyncram_kvc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 27,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 27,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a27_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a27_PORTBDATAOUT_bus\);

\IDEX|IDEX_OUT_READ1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a27~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(4));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a26\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_1|altsyncram_09c1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 26,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 26,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a26_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a26_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a26_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a26_PORTBDATAOUT_bus\);

\MAIN_ALU|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~5_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a26~portbdataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_CONTROL|ULA_CODE\(1),
	datad => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a26~portbdataout\,
	combout => \MAIN_ALU|Add0~5_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a26\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_0|altsyncram_kvc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 26,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 26,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a26_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a26_PORTBDATAOUT_bus\);

\IDEX|IDEX_OUT_READ1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a26~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(5));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a25\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_1|altsyncram_09c1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 25,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 25,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a25_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a25_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a25_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a25_PORTBDATAOUT_bus\);

\MAIN_ALU|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~6_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a25~portbdataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_CONTROL|ULA_CODE\(1),
	datad => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a25~portbdataout\,
	combout => \MAIN_ALU|Add0~6_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a25\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_0|altsyncram_kvc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 25,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 25,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a25_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a25_PORTBDATAOUT_bus\);

\IDEX|IDEX_OUT_READ1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a25~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(6));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a24\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_1|altsyncram_09c1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 24,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 24,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a24_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a24_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a24_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a24_PORTBDATAOUT_bus\);

\MAIN_ALU|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~7_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a24~portbdataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_CONTROL|ULA_CODE\(1),
	datad => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a24~portbdataout\,
	combout => \MAIN_ALU|Add0~7_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a24\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_0|altsyncram_kvc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 24,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 24,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a24_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a24_PORTBDATAOUT_bus\);

\IDEX|IDEX_OUT_READ1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a24~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(7));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a23\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_1|altsyncram_09c1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 23,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 23,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a23_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a23_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a23_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a23_PORTBDATAOUT_bus\);

\MAIN_ALU|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~8_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a23~portbdataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_CONTROL|ULA_CODE\(1),
	datad => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a23~portbdataout\,
	combout => \MAIN_ALU|Add0~8_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a23\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_0|altsyncram_kvc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 23,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 23,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a23_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a23_PORTBDATAOUT_bus\);

\IDEX|IDEX_OUT_READ1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a23~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(8));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a22\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_1|altsyncram_09c1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 22,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 22,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a22_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a22_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a22_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a22_PORTBDATAOUT_bus\);

\MAIN_ALU|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~9_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a22~portbdataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_CONTROL|ULA_CODE\(1),
	datad => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a22~portbdataout\,
	combout => \MAIN_ALU|Add0~9_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a22\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_0|altsyncram_kvc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 22,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 22,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a22_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a22_PORTBDATAOUT_bus\);

\IDEX|IDEX_OUT_READ1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a22~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(9));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a21\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_1|altsyncram_09c1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 21,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 21,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a21_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a21_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a21_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a21_PORTBDATAOUT_bus\);

\MAIN_ALU|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~10_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a21~portbdataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_CONTROL|ULA_CODE\(1),
	datad => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a21~portbdataout\,
	combout => \MAIN_ALU|Add0~10_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a21\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_0|altsyncram_kvc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 21,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 21,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a21_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a21_PORTBDATAOUT_bus\);

\IDEX|IDEX_OUT_READ1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a21~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(10));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a20\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_1|altsyncram_09c1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 20,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 20,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a20_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a20_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a20_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a20_PORTBDATAOUT_bus\);

\MAIN_ALU|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~11_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a20~portbdataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_CONTROL|ULA_CODE\(1),
	datad => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a20~portbdataout\,
	combout => \MAIN_ALU|Add0~11_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a20\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_0|altsyncram_kvc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 20,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 20,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a20_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a20_PORTBDATAOUT_bus\);

\IDEX|IDEX_OUT_READ1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a20~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(11));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a19\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_1|altsyncram_09c1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 19,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 19,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a19_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a19_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a19_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a19_PORTBDATAOUT_bus\);

\MAIN_ALU|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~12_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a19~portbdataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_CONTROL|ULA_CODE\(1),
	datad => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a19~portbdataout\,
	combout => \MAIN_ALU|Add0~12_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a19\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_0|altsyncram_kvc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 19,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 19,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a19_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a19_PORTBDATAOUT_bus\);

\IDEX|IDEX_OUT_READ1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a19~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(12));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a18\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_1|altsyncram_09c1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 18,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 18,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a18_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a18_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a18_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a18_PORTBDATAOUT_bus\);

\MAIN_ALU|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~13_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a18~portbdataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_CONTROL|ULA_CODE\(1),
	datad => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a18~portbdataout\,
	combout => \MAIN_ALU|Add0~13_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a18\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_0|altsyncram_kvc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 18,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 18,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\);

\IDEX|IDEX_OUT_READ1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a18~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(13));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a17\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_1|altsyncram_09c1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 17,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 17,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a17_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a17_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a17_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a17_PORTBDATAOUT_bus\);

\MAIN_ALU|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~14_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a17~portbdataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_CONTROL|ULA_CODE\(1),
	datad => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a17~portbdataout\,
	combout => \MAIN_ALU|Add0~14_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a17\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_0|altsyncram_kvc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 17,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 17,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a17_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a17_PORTBDATAOUT_bus\);

\IDEX|IDEX_OUT_READ1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a17~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(14));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a16\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_1|altsyncram_09c1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 16,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 16,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a16_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a16_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a16_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a16_PORTBDATAOUT_bus\);

\MAIN_ALU|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~15_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a16~portbdataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_CONTROL|ULA_CODE\(1),
	datad => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a16~portbdataout\,
	combout => \MAIN_ALU|Add0~15_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a16\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_0|altsyncram_kvc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 16,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 16,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a16_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a16_PORTBDATAOUT_bus\);

\IDEX|IDEX_OUT_READ1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a16~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(15));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a15\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_1|altsyncram_09c1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 15,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 15,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a15_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a15_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a15_PORTBDATAOUT_bus\);

\MAIN_ALU|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~16_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a15~portbdataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_CONTROL|ULA_CODE\(1),
	datad => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a15~portbdataout\,
	combout => \MAIN_ALU|Add0~16_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a15\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_0|altsyncram_kvc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 15,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 15,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\);

\IDEX|IDEX_OUT_READ1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a15~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(16));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a14\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_1|altsyncram_09c1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 14,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a14_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a14_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a14_PORTBDATAOUT_bus\);

\MAIN_ALU|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~17_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a14~portbdataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_CONTROL|ULA_CODE\(1),
	datad => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a14~portbdataout\,
	combout => \MAIN_ALU|Add0~17_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a14\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_0|altsyncram_kvc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 14,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\);

\IDEX|IDEX_OUT_READ1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a14~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(17));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a13\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_1|altsyncram_09c1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 13,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a13_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a13_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a13_PORTBDATAOUT_bus\);

\MAIN_ALU|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~18_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a13~portbdataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_CONTROL|ULA_CODE\(1),
	datad => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a13~portbdataout\,
	combout => \MAIN_ALU|Add0~18_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a13\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_0|altsyncram_kvc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 13,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\);

\IDEX|IDEX_OUT_READ1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a13~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(18));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a12\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_1|altsyncram_09c1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 12,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a12_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a12_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a12_PORTBDATAOUT_bus\);

\MAIN_ALU|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~19_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a12~portbdataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_CONTROL|ULA_CODE\(1),
	datad => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a12~portbdataout\,
	combout => \MAIN_ALU|Add0~19_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a12\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_0|altsyncram_kvc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 12,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\);

\IDEX|IDEX_OUT_READ1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a12~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(19));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a11\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_1|altsyncram_09c1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 11,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a11_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a11_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a11_PORTBDATAOUT_bus\);

\MAIN_ALU|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~20_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a11~portbdataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_CONTROL|ULA_CODE\(1),
	datad => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a11~portbdataout\,
	combout => \MAIN_ALU|Add0~20_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a11\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_0|altsyncram_kvc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 11,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\);

\IDEX|IDEX_OUT_READ1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a11~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(20));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a10\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_1|altsyncram_09c1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 10,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a10_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a10_PORTBDATAOUT_bus\);

\MAIN_ALU|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~21_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a10~portbdataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_CONTROL|ULA_CODE\(1),
	datad => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a10~portbdataout\,
	combout => \MAIN_ALU|Add0~21_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a10\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_0|altsyncram_kvc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 10,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\);

\IDEX|IDEX_OUT_READ1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a10~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(21));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a9\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_1|altsyncram_09c1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 9,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a9_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a9_PORTBDATAOUT_bus\);

\MAIN_ALU|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~22_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a9~portbdataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_CONTROL|ULA_CODE\(1),
	datad => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a9~portbdataout\,
	combout => \MAIN_ALU|Add0~22_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a9\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_0|altsyncram_kvc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 9,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\);

\IDEX|IDEX_OUT_READ1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a9~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(22));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a8\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_1|altsyncram_09c1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 8,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a8_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a8_PORTBDATAOUT_bus\);

\MAIN_ALU|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~23_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a8~portbdataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_CONTROL|ULA_CODE\(1),
	datad => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a8~portbdataout\,
	combout => \MAIN_ALU|Add0~23_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a8\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_0|altsyncram_kvc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 8,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\);

\IDEX|IDEX_OUT_READ1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a8~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(23));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a7\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_1|altsyncram_09c1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a7_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a7_PORTBDATAOUT_bus\);

\MAIN_ALU|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~24_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a7~portbdataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_CONTROL|ULA_CODE\(1),
	datad => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a7~portbdataout\,
	combout => \MAIN_ALU|Add0~24_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a7\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_0|altsyncram_kvc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\);

\IDEX|IDEX_OUT_READ1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a7~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(24));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a6\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_1|altsyncram_09c1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

\MAIN_ALU|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~25_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a6~portbdataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_CONTROL|ULA_CODE\(1),
	datad => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a6~portbdataout\,
	combout => \MAIN_ALU|Add0~25_combout\);

\IDEX|IDEX_OUT_READ1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a6~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(25));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a5\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_1|altsyncram_09c1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a5_PORTBDATAOUT_bus\);

\MAIN_ALU|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~26_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a5~portbdataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_CONTROL|ULA_CODE\(1),
	datad => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a5~portbdataout\,
	combout => \MAIN_ALU|Add0~26_combout\);

\IDEX|IDEX_OUT_READ1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a5~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(26));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a4\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_1|altsyncram_09c1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

\MAIN_ALU|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~27_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a4~portbdataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_CONTROL|ULA_CODE\(1),
	datad => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a4~portbdataout\,
	combout => \MAIN_ALU|Add0~27_combout\);

\IDEX|IDEX_OUT_READ1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a4~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(27));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a3\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_1|altsyncram_09c1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

\MAIN_ALU|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~28_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a3~portbdataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_CONTROL|ULA_CODE\(1),
	datad => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a3~portbdataout\,
	combout => \MAIN_ALU|Add0~28_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a3\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_0|altsyncram_kvc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

\IDEX|IDEX_OUT_READ1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a3~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(28));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a2\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_1|altsyncram_09c1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

\MAIN_ALU|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~29_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a2~portbdataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_CONTROL|ULA_CODE\(1),
	datad => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a2~portbdataout\,
	combout => \MAIN_ALU|Add0~29_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a2\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_0|altsyncram_kvc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

\IDEX|IDEX_OUT_READ1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a2~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(29));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a1\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_1|altsyncram_09c1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

\MAIN_ALU|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~30_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a1~portbdataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_CONTROL|ULA_CODE\(1),
	datad => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a1~portbdataout\,
	combout => \MAIN_ALU|Add0~30_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a1\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_0|altsyncram_kvc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

\IDEX|IDEX_OUT_READ1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a1~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(30));

\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_1|altsyncram_09c1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

\MAIN_ALU|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~31_combout\ = \ALU_CONTROL|ULA_CODE\(1) $ (\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a0~portbdataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_CONTROL|ULA_CODE\(1),
	datad => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a0~portbdataout\,
	combout => \MAIN_ALU|Add0~31_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_0|altsyncram_kvc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

\IDEX|IDEX_OUT_READ1[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_READ1\(31));

\MAIN_ALU|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~33_cout\ = CARRY(\ALU_CONTROL|ULA_CODE\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(1),
	datad => VCC,
	cout => \MAIN_ALU|Add0~33_cout\);

\MAIN_ALU|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~34_combout\ = (\MAIN_ALU|Add0~31_combout\ & ((\IDEX|IDEX_OUT_READ1\(31) & (\MAIN_ALU|Add0~33_cout\ & VCC)) # (!\IDEX|IDEX_OUT_READ1\(31) & (!\MAIN_ALU|Add0~33_cout\)))) # (!\MAIN_ALU|Add0~31_combout\ & ((\IDEX|IDEX_OUT_READ1\(31) & 
-- (!\MAIN_ALU|Add0~33_cout\)) # (!\IDEX|IDEX_OUT_READ1\(31) & ((\MAIN_ALU|Add0~33_cout\) # (GND)))))
-- \MAIN_ALU|Add0~35\ = CARRY((\MAIN_ALU|Add0~31_combout\ & (!\IDEX|IDEX_OUT_READ1\(31) & !\MAIN_ALU|Add0~33_cout\)) # (!\MAIN_ALU|Add0~31_combout\ & ((!\MAIN_ALU|Add0~33_cout\) # (!\IDEX|IDEX_OUT_READ1\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~31_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(31),
	datad => VCC,
	cin => \MAIN_ALU|Add0~33_cout\,
	combout => \MAIN_ALU|Add0~34_combout\,
	cout => \MAIN_ALU|Add0~35\);

\MAIN_ALU|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~36_combout\ = ((\MAIN_ALU|Add0~30_combout\ $ (\IDEX|IDEX_OUT_READ1\(30) $ (!\MAIN_ALU|Add0~35\)))) # (GND)
-- \MAIN_ALU|Add0~37\ = CARRY((\MAIN_ALU|Add0~30_combout\ & ((\IDEX|IDEX_OUT_READ1\(30)) # (!\MAIN_ALU|Add0~35\))) # (!\MAIN_ALU|Add0~30_combout\ & (\IDEX|IDEX_OUT_READ1\(30) & !\MAIN_ALU|Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~30_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(30),
	datad => VCC,
	cin => \MAIN_ALU|Add0~35\,
	combout => \MAIN_ALU|Add0~36_combout\,
	cout => \MAIN_ALU|Add0~37\);

\MAIN_ALU|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~38_combout\ = (\MAIN_ALU|Add0~29_combout\ & ((\IDEX|IDEX_OUT_READ1\(29) & (\MAIN_ALU|Add0~37\ & VCC)) # (!\IDEX|IDEX_OUT_READ1\(29) & (!\MAIN_ALU|Add0~37\)))) # (!\MAIN_ALU|Add0~29_combout\ & ((\IDEX|IDEX_OUT_READ1\(29) & 
-- (!\MAIN_ALU|Add0~37\)) # (!\IDEX|IDEX_OUT_READ1\(29) & ((\MAIN_ALU|Add0~37\) # (GND)))))
-- \MAIN_ALU|Add0~39\ = CARRY((\MAIN_ALU|Add0~29_combout\ & (!\IDEX|IDEX_OUT_READ1\(29) & !\MAIN_ALU|Add0~37\)) # (!\MAIN_ALU|Add0~29_combout\ & ((!\MAIN_ALU|Add0~37\) # (!\IDEX|IDEX_OUT_READ1\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~29_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(29),
	datad => VCC,
	cin => \MAIN_ALU|Add0~37\,
	combout => \MAIN_ALU|Add0~38_combout\,
	cout => \MAIN_ALU|Add0~39\);

\MAIN_ALU|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~40_combout\ = ((\MAIN_ALU|Add0~28_combout\ $ (\IDEX|IDEX_OUT_READ1\(28) $ (!\MAIN_ALU|Add0~39\)))) # (GND)
-- \MAIN_ALU|Add0~41\ = CARRY((\MAIN_ALU|Add0~28_combout\ & ((\IDEX|IDEX_OUT_READ1\(28)) # (!\MAIN_ALU|Add0~39\))) # (!\MAIN_ALU|Add0~28_combout\ & (\IDEX|IDEX_OUT_READ1\(28) & !\MAIN_ALU|Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~28_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(28),
	datad => VCC,
	cin => \MAIN_ALU|Add0~39\,
	combout => \MAIN_ALU|Add0~40_combout\,
	cout => \MAIN_ALU|Add0~41\);

\MAIN_ALU|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~42_combout\ = (\MAIN_ALU|Add0~27_combout\ & ((\IDEX|IDEX_OUT_READ1\(27) & (\MAIN_ALU|Add0~41\ & VCC)) # (!\IDEX|IDEX_OUT_READ1\(27) & (!\MAIN_ALU|Add0~41\)))) # (!\MAIN_ALU|Add0~27_combout\ & ((\IDEX|IDEX_OUT_READ1\(27) & 
-- (!\MAIN_ALU|Add0~41\)) # (!\IDEX|IDEX_OUT_READ1\(27) & ((\MAIN_ALU|Add0~41\) # (GND)))))
-- \MAIN_ALU|Add0~43\ = CARRY((\MAIN_ALU|Add0~27_combout\ & (!\IDEX|IDEX_OUT_READ1\(27) & !\MAIN_ALU|Add0~41\)) # (!\MAIN_ALU|Add0~27_combout\ & ((!\MAIN_ALU|Add0~41\) # (!\IDEX|IDEX_OUT_READ1\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~27_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(27),
	datad => VCC,
	cin => \MAIN_ALU|Add0~41\,
	combout => \MAIN_ALU|Add0~42_combout\,
	cout => \MAIN_ALU|Add0~43\);

\MAIN_ALU|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~44_combout\ = ((\MAIN_ALU|Add0~26_combout\ $ (\IDEX|IDEX_OUT_READ1\(26) $ (!\MAIN_ALU|Add0~43\)))) # (GND)
-- \MAIN_ALU|Add0~45\ = CARRY((\MAIN_ALU|Add0~26_combout\ & ((\IDEX|IDEX_OUT_READ1\(26)) # (!\MAIN_ALU|Add0~43\))) # (!\MAIN_ALU|Add0~26_combout\ & (\IDEX|IDEX_OUT_READ1\(26) & !\MAIN_ALU|Add0~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~26_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(26),
	datad => VCC,
	cin => \MAIN_ALU|Add0~43\,
	combout => \MAIN_ALU|Add0~44_combout\,
	cout => \MAIN_ALU|Add0~45\);

\MAIN_ALU|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~46_combout\ = (\MAIN_ALU|Add0~25_combout\ & ((\IDEX|IDEX_OUT_READ1\(25) & (\MAIN_ALU|Add0~45\ & VCC)) # (!\IDEX|IDEX_OUT_READ1\(25) & (!\MAIN_ALU|Add0~45\)))) # (!\MAIN_ALU|Add0~25_combout\ & ((\IDEX|IDEX_OUT_READ1\(25) & 
-- (!\MAIN_ALU|Add0~45\)) # (!\IDEX|IDEX_OUT_READ1\(25) & ((\MAIN_ALU|Add0~45\) # (GND)))))
-- \MAIN_ALU|Add0~47\ = CARRY((\MAIN_ALU|Add0~25_combout\ & (!\IDEX|IDEX_OUT_READ1\(25) & !\MAIN_ALU|Add0~45\)) # (!\MAIN_ALU|Add0~25_combout\ & ((!\MAIN_ALU|Add0~45\) # (!\IDEX|IDEX_OUT_READ1\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~25_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(25),
	datad => VCC,
	cin => \MAIN_ALU|Add0~45\,
	combout => \MAIN_ALU|Add0~46_combout\,
	cout => \MAIN_ALU|Add0~47\);

\MAIN_ALU|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~48_combout\ = ((\MAIN_ALU|Add0~24_combout\ $ (\IDEX|IDEX_OUT_READ1\(24) $ (!\MAIN_ALU|Add0~47\)))) # (GND)
-- \MAIN_ALU|Add0~49\ = CARRY((\MAIN_ALU|Add0~24_combout\ & ((\IDEX|IDEX_OUT_READ1\(24)) # (!\MAIN_ALU|Add0~47\))) # (!\MAIN_ALU|Add0~24_combout\ & (\IDEX|IDEX_OUT_READ1\(24) & !\MAIN_ALU|Add0~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~24_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(24),
	datad => VCC,
	cin => \MAIN_ALU|Add0~47\,
	combout => \MAIN_ALU|Add0~48_combout\,
	cout => \MAIN_ALU|Add0~49\);

\MAIN_ALU|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~50_combout\ = (\MAIN_ALU|Add0~23_combout\ & ((\IDEX|IDEX_OUT_READ1\(23) & (\MAIN_ALU|Add0~49\ & VCC)) # (!\IDEX|IDEX_OUT_READ1\(23) & (!\MAIN_ALU|Add0~49\)))) # (!\MAIN_ALU|Add0~23_combout\ & ((\IDEX|IDEX_OUT_READ1\(23) & 
-- (!\MAIN_ALU|Add0~49\)) # (!\IDEX|IDEX_OUT_READ1\(23) & ((\MAIN_ALU|Add0~49\) # (GND)))))
-- \MAIN_ALU|Add0~51\ = CARRY((\MAIN_ALU|Add0~23_combout\ & (!\IDEX|IDEX_OUT_READ1\(23) & !\MAIN_ALU|Add0~49\)) # (!\MAIN_ALU|Add0~23_combout\ & ((!\MAIN_ALU|Add0~49\) # (!\IDEX|IDEX_OUT_READ1\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~23_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(23),
	datad => VCC,
	cin => \MAIN_ALU|Add0~49\,
	combout => \MAIN_ALU|Add0~50_combout\,
	cout => \MAIN_ALU|Add0~51\);

\MAIN_ALU|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~52_combout\ = ((\MAIN_ALU|Add0~22_combout\ $ (\IDEX|IDEX_OUT_READ1\(22) $ (!\MAIN_ALU|Add0~51\)))) # (GND)
-- \MAIN_ALU|Add0~53\ = CARRY((\MAIN_ALU|Add0~22_combout\ & ((\IDEX|IDEX_OUT_READ1\(22)) # (!\MAIN_ALU|Add0~51\))) # (!\MAIN_ALU|Add0~22_combout\ & (\IDEX|IDEX_OUT_READ1\(22) & !\MAIN_ALU|Add0~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~22_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(22),
	datad => VCC,
	cin => \MAIN_ALU|Add0~51\,
	combout => \MAIN_ALU|Add0~52_combout\,
	cout => \MAIN_ALU|Add0~53\);

\MAIN_ALU|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~54_combout\ = (\MAIN_ALU|Add0~21_combout\ & ((\IDEX|IDEX_OUT_READ1\(21) & (\MAIN_ALU|Add0~53\ & VCC)) # (!\IDEX|IDEX_OUT_READ1\(21) & (!\MAIN_ALU|Add0~53\)))) # (!\MAIN_ALU|Add0~21_combout\ & ((\IDEX|IDEX_OUT_READ1\(21) & 
-- (!\MAIN_ALU|Add0~53\)) # (!\IDEX|IDEX_OUT_READ1\(21) & ((\MAIN_ALU|Add0~53\) # (GND)))))
-- \MAIN_ALU|Add0~55\ = CARRY((\MAIN_ALU|Add0~21_combout\ & (!\IDEX|IDEX_OUT_READ1\(21) & !\MAIN_ALU|Add0~53\)) # (!\MAIN_ALU|Add0~21_combout\ & ((!\MAIN_ALU|Add0~53\) # (!\IDEX|IDEX_OUT_READ1\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~21_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(21),
	datad => VCC,
	cin => \MAIN_ALU|Add0~53\,
	combout => \MAIN_ALU|Add0~54_combout\,
	cout => \MAIN_ALU|Add0~55\);

\MAIN_ALU|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~56_combout\ = ((\MAIN_ALU|Add0~20_combout\ $ (\IDEX|IDEX_OUT_READ1\(20) $ (!\MAIN_ALU|Add0~55\)))) # (GND)
-- \MAIN_ALU|Add0~57\ = CARRY((\MAIN_ALU|Add0~20_combout\ & ((\IDEX|IDEX_OUT_READ1\(20)) # (!\MAIN_ALU|Add0~55\))) # (!\MAIN_ALU|Add0~20_combout\ & (\IDEX|IDEX_OUT_READ1\(20) & !\MAIN_ALU|Add0~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~20_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(20),
	datad => VCC,
	cin => \MAIN_ALU|Add0~55\,
	combout => \MAIN_ALU|Add0~56_combout\,
	cout => \MAIN_ALU|Add0~57\);

\MAIN_ALU|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~58_combout\ = (\MAIN_ALU|Add0~19_combout\ & ((\IDEX|IDEX_OUT_READ1\(19) & (\MAIN_ALU|Add0~57\ & VCC)) # (!\IDEX|IDEX_OUT_READ1\(19) & (!\MAIN_ALU|Add0~57\)))) # (!\MAIN_ALU|Add0~19_combout\ & ((\IDEX|IDEX_OUT_READ1\(19) & 
-- (!\MAIN_ALU|Add0~57\)) # (!\IDEX|IDEX_OUT_READ1\(19) & ((\MAIN_ALU|Add0~57\) # (GND)))))
-- \MAIN_ALU|Add0~59\ = CARRY((\MAIN_ALU|Add0~19_combout\ & (!\IDEX|IDEX_OUT_READ1\(19) & !\MAIN_ALU|Add0~57\)) # (!\MAIN_ALU|Add0~19_combout\ & ((!\MAIN_ALU|Add0~57\) # (!\IDEX|IDEX_OUT_READ1\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~19_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(19),
	datad => VCC,
	cin => \MAIN_ALU|Add0~57\,
	combout => \MAIN_ALU|Add0~58_combout\,
	cout => \MAIN_ALU|Add0~59\);

\MAIN_ALU|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~60_combout\ = ((\MAIN_ALU|Add0~18_combout\ $ (\IDEX|IDEX_OUT_READ1\(18) $ (!\MAIN_ALU|Add0~59\)))) # (GND)
-- \MAIN_ALU|Add0~61\ = CARRY((\MAIN_ALU|Add0~18_combout\ & ((\IDEX|IDEX_OUT_READ1\(18)) # (!\MAIN_ALU|Add0~59\))) # (!\MAIN_ALU|Add0~18_combout\ & (\IDEX|IDEX_OUT_READ1\(18) & !\MAIN_ALU|Add0~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~18_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(18),
	datad => VCC,
	cin => \MAIN_ALU|Add0~59\,
	combout => \MAIN_ALU|Add0~60_combout\,
	cout => \MAIN_ALU|Add0~61\);

\MAIN_ALU|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~62_combout\ = (\MAIN_ALU|Add0~17_combout\ & ((\IDEX|IDEX_OUT_READ1\(17) & (\MAIN_ALU|Add0~61\ & VCC)) # (!\IDEX|IDEX_OUT_READ1\(17) & (!\MAIN_ALU|Add0~61\)))) # (!\MAIN_ALU|Add0~17_combout\ & ((\IDEX|IDEX_OUT_READ1\(17) & 
-- (!\MAIN_ALU|Add0~61\)) # (!\IDEX|IDEX_OUT_READ1\(17) & ((\MAIN_ALU|Add0~61\) # (GND)))))
-- \MAIN_ALU|Add0~63\ = CARRY((\MAIN_ALU|Add0~17_combout\ & (!\IDEX|IDEX_OUT_READ1\(17) & !\MAIN_ALU|Add0~61\)) # (!\MAIN_ALU|Add0~17_combout\ & ((!\MAIN_ALU|Add0~61\) # (!\IDEX|IDEX_OUT_READ1\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~17_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(17),
	datad => VCC,
	cin => \MAIN_ALU|Add0~61\,
	combout => \MAIN_ALU|Add0~62_combout\,
	cout => \MAIN_ALU|Add0~63\);

\MAIN_ALU|Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~64_combout\ = ((\MAIN_ALU|Add0~16_combout\ $ (\IDEX|IDEX_OUT_READ1\(16) $ (!\MAIN_ALU|Add0~63\)))) # (GND)
-- \MAIN_ALU|Add0~65\ = CARRY((\MAIN_ALU|Add0~16_combout\ & ((\IDEX|IDEX_OUT_READ1\(16)) # (!\MAIN_ALU|Add0~63\))) # (!\MAIN_ALU|Add0~16_combout\ & (\IDEX|IDEX_OUT_READ1\(16) & !\MAIN_ALU|Add0~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~16_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(16),
	datad => VCC,
	cin => \MAIN_ALU|Add0~63\,
	combout => \MAIN_ALU|Add0~64_combout\,
	cout => \MAIN_ALU|Add0~65\);

\MAIN_ALU|Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~66_combout\ = (\MAIN_ALU|Add0~15_combout\ & ((\IDEX|IDEX_OUT_READ1\(15) & (\MAIN_ALU|Add0~65\ & VCC)) # (!\IDEX|IDEX_OUT_READ1\(15) & (!\MAIN_ALU|Add0~65\)))) # (!\MAIN_ALU|Add0~15_combout\ & ((\IDEX|IDEX_OUT_READ1\(15) & 
-- (!\MAIN_ALU|Add0~65\)) # (!\IDEX|IDEX_OUT_READ1\(15) & ((\MAIN_ALU|Add0~65\) # (GND)))))
-- \MAIN_ALU|Add0~67\ = CARRY((\MAIN_ALU|Add0~15_combout\ & (!\IDEX|IDEX_OUT_READ1\(15) & !\MAIN_ALU|Add0~65\)) # (!\MAIN_ALU|Add0~15_combout\ & ((!\MAIN_ALU|Add0~65\) # (!\IDEX|IDEX_OUT_READ1\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~15_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(15),
	datad => VCC,
	cin => \MAIN_ALU|Add0~65\,
	combout => \MAIN_ALU|Add0~66_combout\,
	cout => \MAIN_ALU|Add0~67\);

\MAIN_ALU|Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~68_combout\ = ((\MAIN_ALU|Add0~14_combout\ $ (\IDEX|IDEX_OUT_READ1\(14) $ (!\MAIN_ALU|Add0~67\)))) # (GND)
-- \MAIN_ALU|Add0~69\ = CARRY((\MAIN_ALU|Add0~14_combout\ & ((\IDEX|IDEX_OUT_READ1\(14)) # (!\MAIN_ALU|Add0~67\))) # (!\MAIN_ALU|Add0~14_combout\ & (\IDEX|IDEX_OUT_READ1\(14) & !\MAIN_ALU|Add0~67\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~14_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(14),
	datad => VCC,
	cin => \MAIN_ALU|Add0~67\,
	combout => \MAIN_ALU|Add0~68_combout\,
	cout => \MAIN_ALU|Add0~69\);

\MAIN_ALU|Add0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~70_combout\ = (\MAIN_ALU|Add0~13_combout\ & ((\IDEX|IDEX_OUT_READ1\(13) & (\MAIN_ALU|Add0~69\ & VCC)) # (!\IDEX|IDEX_OUT_READ1\(13) & (!\MAIN_ALU|Add0~69\)))) # (!\MAIN_ALU|Add0~13_combout\ & ((\IDEX|IDEX_OUT_READ1\(13) & 
-- (!\MAIN_ALU|Add0~69\)) # (!\IDEX|IDEX_OUT_READ1\(13) & ((\MAIN_ALU|Add0~69\) # (GND)))))
-- \MAIN_ALU|Add0~71\ = CARRY((\MAIN_ALU|Add0~13_combout\ & (!\IDEX|IDEX_OUT_READ1\(13) & !\MAIN_ALU|Add0~69\)) # (!\MAIN_ALU|Add0~13_combout\ & ((!\MAIN_ALU|Add0~69\) # (!\IDEX|IDEX_OUT_READ1\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~13_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(13),
	datad => VCC,
	cin => \MAIN_ALU|Add0~69\,
	combout => \MAIN_ALU|Add0~70_combout\,
	cout => \MAIN_ALU|Add0~71\);

\MAIN_ALU|Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~72_combout\ = ((\MAIN_ALU|Add0~12_combout\ $ (\IDEX|IDEX_OUT_READ1\(12) $ (!\MAIN_ALU|Add0~71\)))) # (GND)
-- \MAIN_ALU|Add0~73\ = CARRY((\MAIN_ALU|Add0~12_combout\ & ((\IDEX|IDEX_OUT_READ1\(12)) # (!\MAIN_ALU|Add0~71\))) # (!\MAIN_ALU|Add0~12_combout\ & (\IDEX|IDEX_OUT_READ1\(12) & !\MAIN_ALU|Add0~71\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~12_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(12),
	datad => VCC,
	cin => \MAIN_ALU|Add0~71\,
	combout => \MAIN_ALU|Add0~72_combout\,
	cout => \MAIN_ALU|Add0~73\);

\MAIN_ALU|Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~74_combout\ = (\MAIN_ALU|Add0~11_combout\ & ((\IDEX|IDEX_OUT_READ1\(11) & (\MAIN_ALU|Add0~73\ & VCC)) # (!\IDEX|IDEX_OUT_READ1\(11) & (!\MAIN_ALU|Add0~73\)))) # (!\MAIN_ALU|Add0~11_combout\ & ((\IDEX|IDEX_OUT_READ1\(11) & 
-- (!\MAIN_ALU|Add0~73\)) # (!\IDEX|IDEX_OUT_READ1\(11) & ((\MAIN_ALU|Add0~73\) # (GND)))))
-- \MAIN_ALU|Add0~75\ = CARRY((\MAIN_ALU|Add0~11_combout\ & (!\IDEX|IDEX_OUT_READ1\(11) & !\MAIN_ALU|Add0~73\)) # (!\MAIN_ALU|Add0~11_combout\ & ((!\MAIN_ALU|Add0~73\) # (!\IDEX|IDEX_OUT_READ1\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~11_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(11),
	datad => VCC,
	cin => \MAIN_ALU|Add0~73\,
	combout => \MAIN_ALU|Add0~74_combout\,
	cout => \MAIN_ALU|Add0~75\);

\MAIN_ALU|Add0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~76_combout\ = ((\MAIN_ALU|Add0~10_combout\ $ (\IDEX|IDEX_OUT_READ1\(10) $ (!\MAIN_ALU|Add0~75\)))) # (GND)
-- \MAIN_ALU|Add0~77\ = CARRY((\MAIN_ALU|Add0~10_combout\ & ((\IDEX|IDEX_OUT_READ1\(10)) # (!\MAIN_ALU|Add0~75\))) # (!\MAIN_ALU|Add0~10_combout\ & (\IDEX|IDEX_OUT_READ1\(10) & !\MAIN_ALU|Add0~75\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~10_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(10),
	datad => VCC,
	cin => \MAIN_ALU|Add0~75\,
	combout => \MAIN_ALU|Add0~76_combout\,
	cout => \MAIN_ALU|Add0~77\);

\MAIN_ALU|Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~78_combout\ = (\MAIN_ALU|Add0~9_combout\ & ((\IDEX|IDEX_OUT_READ1\(9) & (\MAIN_ALU|Add0~77\ & VCC)) # (!\IDEX|IDEX_OUT_READ1\(9) & (!\MAIN_ALU|Add0~77\)))) # (!\MAIN_ALU|Add0~9_combout\ & ((\IDEX|IDEX_OUT_READ1\(9) & (!\MAIN_ALU|Add0~77\)) 
-- # (!\IDEX|IDEX_OUT_READ1\(9) & ((\MAIN_ALU|Add0~77\) # (GND)))))
-- \MAIN_ALU|Add0~79\ = CARRY((\MAIN_ALU|Add0~9_combout\ & (!\IDEX|IDEX_OUT_READ1\(9) & !\MAIN_ALU|Add0~77\)) # (!\MAIN_ALU|Add0~9_combout\ & ((!\MAIN_ALU|Add0~77\) # (!\IDEX|IDEX_OUT_READ1\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~9_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(9),
	datad => VCC,
	cin => \MAIN_ALU|Add0~77\,
	combout => \MAIN_ALU|Add0~78_combout\,
	cout => \MAIN_ALU|Add0~79\);

\MAIN_ALU|Add0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~80_combout\ = ((\MAIN_ALU|Add0~8_combout\ $ (\IDEX|IDEX_OUT_READ1\(8) $ (!\MAIN_ALU|Add0~79\)))) # (GND)
-- \MAIN_ALU|Add0~81\ = CARRY((\MAIN_ALU|Add0~8_combout\ & ((\IDEX|IDEX_OUT_READ1\(8)) # (!\MAIN_ALU|Add0~79\))) # (!\MAIN_ALU|Add0~8_combout\ & (\IDEX|IDEX_OUT_READ1\(8) & !\MAIN_ALU|Add0~79\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~8_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(8),
	datad => VCC,
	cin => \MAIN_ALU|Add0~79\,
	combout => \MAIN_ALU|Add0~80_combout\,
	cout => \MAIN_ALU|Add0~81\);

\MAIN_ALU|Add0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~82_combout\ = (\MAIN_ALU|Add0~7_combout\ & ((\IDEX|IDEX_OUT_READ1\(7) & (\MAIN_ALU|Add0~81\ & VCC)) # (!\IDEX|IDEX_OUT_READ1\(7) & (!\MAIN_ALU|Add0~81\)))) # (!\MAIN_ALU|Add0~7_combout\ & ((\IDEX|IDEX_OUT_READ1\(7) & (!\MAIN_ALU|Add0~81\)) 
-- # (!\IDEX|IDEX_OUT_READ1\(7) & ((\MAIN_ALU|Add0~81\) # (GND)))))
-- \MAIN_ALU|Add0~83\ = CARRY((\MAIN_ALU|Add0~7_combout\ & (!\IDEX|IDEX_OUT_READ1\(7) & !\MAIN_ALU|Add0~81\)) # (!\MAIN_ALU|Add0~7_combout\ & ((!\MAIN_ALU|Add0~81\) # (!\IDEX|IDEX_OUT_READ1\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~7_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(7),
	datad => VCC,
	cin => \MAIN_ALU|Add0~81\,
	combout => \MAIN_ALU|Add0~82_combout\,
	cout => \MAIN_ALU|Add0~83\);

\MAIN_ALU|Add0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~84_combout\ = ((\MAIN_ALU|Add0~6_combout\ $ (\IDEX|IDEX_OUT_READ1\(6) $ (!\MAIN_ALU|Add0~83\)))) # (GND)
-- \MAIN_ALU|Add0~85\ = CARRY((\MAIN_ALU|Add0~6_combout\ & ((\IDEX|IDEX_OUT_READ1\(6)) # (!\MAIN_ALU|Add0~83\))) # (!\MAIN_ALU|Add0~6_combout\ & (\IDEX|IDEX_OUT_READ1\(6) & !\MAIN_ALU|Add0~83\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~6_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(6),
	datad => VCC,
	cin => \MAIN_ALU|Add0~83\,
	combout => \MAIN_ALU|Add0~84_combout\,
	cout => \MAIN_ALU|Add0~85\);

\MAIN_ALU|Add0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~86_combout\ = (\MAIN_ALU|Add0~5_combout\ & ((\IDEX|IDEX_OUT_READ1\(5) & (\MAIN_ALU|Add0~85\ & VCC)) # (!\IDEX|IDEX_OUT_READ1\(5) & (!\MAIN_ALU|Add0~85\)))) # (!\MAIN_ALU|Add0~5_combout\ & ((\IDEX|IDEX_OUT_READ1\(5) & (!\MAIN_ALU|Add0~85\)) 
-- # (!\IDEX|IDEX_OUT_READ1\(5) & ((\MAIN_ALU|Add0~85\) # (GND)))))
-- \MAIN_ALU|Add0~87\ = CARRY((\MAIN_ALU|Add0~5_combout\ & (!\IDEX|IDEX_OUT_READ1\(5) & !\MAIN_ALU|Add0~85\)) # (!\MAIN_ALU|Add0~5_combout\ & ((!\MAIN_ALU|Add0~85\) # (!\IDEX|IDEX_OUT_READ1\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~5_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(5),
	datad => VCC,
	cin => \MAIN_ALU|Add0~85\,
	combout => \MAIN_ALU|Add0~86_combout\,
	cout => \MAIN_ALU|Add0~87\);

\MAIN_ALU|Add0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~88_combout\ = ((\MAIN_ALU|Add0~4_combout\ $ (\IDEX|IDEX_OUT_READ1\(4) $ (!\MAIN_ALU|Add0~87\)))) # (GND)
-- \MAIN_ALU|Add0~89\ = CARRY((\MAIN_ALU|Add0~4_combout\ & ((\IDEX|IDEX_OUT_READ1\(4)) # (!\MAIN_ALU|Add0~87\))) # (!\MAIN_ALU|Add0~4_combout\ & (\IDEX|IDEX_OUT_READ1\(4) & !\MAIN_ALU|Add0~87\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~4_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(4),
	datad => VCC,
	cin => \MAIN_ALU|Add0~87\,
	combout => \MAIN_ALU|Add0~88_combout\,
	cout => \MAIN_ALU|Add0~89\);

\MAIN_ALU|Add0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~90_combout\ = (\MAIN_ALU|Add0~3_combout\ & ((\IDEX|IDEX_OUT_READ1\(3) & (\MAIN_ALU|Add0~89\ & VCC)) # (!\IDEX|IDEX_OUT_READ1\(3) & (!\MAIN_ALU|Add0~89\)))) # (!\MAIN_ALU|Add0~3_combout\ & ((\IDEX|IDEX_OUT_READ1\(3) & (!\MAIN_ALU|Add0~89\)) 
-- # (!\IDEX|IDEX_OUT_READ1\(3) & ((\MAIN_ALU|Add0~89\) # (GND)))))
-- \MAIN_ALU|Add0~91\ = CARRY((\MAIN_ALU|Add0~3_combout\ & (!\IDEX|IDEX_OUT_READ1\(3) & !\MAIN_ALU|Add0~89\)) # (!\MAIN_ALU|Add0~3_combout\ & ((!\MAIN_ALU|Add0~89\) # (!\IDEX|IDEX_OUT_READ1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~3_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(3),
	datad => VCC,
	cin => \MAIN_ALU|Add0~89\,
	combout => \MAIN_ALU|Add0~90_combout\,
	cout => \MAIN_ALU|Add0~91\);

\MAIN_ALU|Add0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~92_combout\ = ((\MAIN_ALU|Add0~2_combout\ $ (\IDEX|IDEX_OUT_READ1\(2) $ (!\MAIN_ALU|Add0~91\)))) # (GND)
-- \MAIN_ALU|Add0~93\ = CARRY((\MAIN_ALU|Add0~2_combout\ & ((\IDEX|IDEX_OUT_READ1\(2)) # (!\MAIN_ALU|Add0~91\))) # (!\MAIN_ALU|Add0~2_combout\ & (\IDEX|IDEX_OUT_READ1\(2) & !\MAIN_ALU|Add0~91\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~2_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(2),
	datad => VCC,
	cin => \MAIN_ALU|Add0~91\,
	combout => \MAIN_ALU|Add0~92_combout\,
	cout => \MAIN_ALU|Add0~93\);

\MAIN_ALU|Add0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~94_combout\ = (\MAIN_ALU|Add0~1_combout\ & ((\IDEX|IDEX_OUT_READ1\(1) & (\MAIN_ALU|Add0~93\ & VCC)) # (!\IDEX|IDEX_OUT_READ1\(1) & (!\MAIN_ALU|Add0~93\)))) # (!\MAIN_ALU|Add0~1_combout\ & ((\IDEX|IDEX_OUT_READ1\(1) & (!\MAIN_ALU|Add0~93\)) 
-- # (!\IDEX|IDEX_OUT_READ1\(1) & ((\MAIN_ALU|Add0~93\) # (GND)))))
-- \MAIN_ALU|Add0~95\ = CARRY((\MAIN_ALU|Add0~1_combout\ & (!\IDEX|IDEX_OUT_READ1\(1) & !\MAIN_ALU|Add0~93\)) # (!\MAIN_ALU|Add0~1_combout\ & ((!\MAIN_ALU|Add0~93\) # (!\IDEX|IDEX_OUT_READ1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~1_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(1),
	datad => VCC,
	cin => \MAIN_ALU|Add0~93\,
	combout => \MAIN_ALU|Add0~94_combout\,
	cout => \MAIN_ALU|Add0~95\);

\MAIN_ALU|Add0~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Add0~96_combout\ = \MAIN_ALU|Add0~0_combout\ $ (\IDEX|IDEX_OUT_READ1\(0) $ (!\MAIN_ALU|Add0~95\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~0_combout\,
	datab => \IDEX|IDEX_OUT_READ1\(0),
	cin => \MAIN_ALU|Add0~95\,
	combout => \MAIN_ALU|Add0~96_combout\);

\MAIN_ALU|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~0_combout\ = (\ALU_CONTROL|ULA_CODE\(0)) # ((!\MAIN_ALU|Add0~34_combout\ & (!\MAIN_ALU|Add0~36_combout\ & !\MAIN_ALU|Add0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(0),
	datab => \MAIN_ALU|Add0~34_combout\,
	datac => \MAIN_ALU|Add0~36_combout\,
	datad => \MAIN_ALU|Add0~38_combout\,
	combout => \MAIN_ALU|Equal0~0_combout\);

\MAIN_ALU|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~1_combout\ = (\ALU_CONTROL|ULA_CODE\(0)) # ((!\MAIN_ALU|Add0~40_combout\ & (!\MAIN_ALU|Add0~42_combout\ & !\MAIN_ALU|Add0~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(0),
	datab => \MAIN_ALU|Add0~40_combout\,
	datac => \MAIN_ALU|Add0~42_combout\,
	datad => \MAIN_ALU|Add0~44_combout\,
	combout => \MAIN_ALU|Equal0~1_combout\);

\MAIN_ALU|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~2_combout\ = (\ALU_CONTROL|ULA_CODE\(0)) # ((!\MAIN_ALU|Add0~46_combout\ & (!\MAIN_ALU|Add0~48_combout\ & !\MAIN_ALU|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(0),
	datab => \MAIN_ALU|Add0~46_combout\,
	datac => \MAIN_ALU|Add0~48_combout\,
	datad => \MAIN_ALU|Add0~50_combout\,
	combout => \MAIN_ALU|Equal0~2_combout\);

\MAIN_ALU|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~3_combout\ = (\ALU_CONTROL|ULA_CODE\(0)) # ((!\MAIN_ALU|Add0~52_combout\ & (!\MAIN_ALU|Add0~54_combout\ & !\MAIN_ALU|Add0~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(0),
	datab => \MAIN_ALU|Add0~52_combout\,
	datac => \MAIN_ALU|Add0~54_combout\,
	datad => \MAIN_ALU|Add0~56_combout\,
	combout => \MAIN_ALU|Equal0~3_combout\);

\MAIN_ALU|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~4_combout\ = (\MAIN_ALU|Equal0~0_combout\ & (\MAIN_ALU|Equal0~1_combout\ & (\MAIN_ALU|Equal0~2_combout\ & \MAIN_ALU|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Equal0~0_combout\,
	datab => \MAIN_ALU|Equal0~1_combout\,
	datac => \MAIN_ALU|Equal0~2_combout\,
	datad => \MAIN_ALU|Equal0~3_combout\,
	combout => \MAIN_ALU|Equal0~4_combout\);

\MAIN_ALU|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~5_combout\ = (\ALU_CONTROL|ULA_CODE\(0)) # ((!\MAIN_ALU|Add0~76_combout\ & (!\MAIN_ALU|Add0~78_combout\ & !\MAIN_ALU|Add0~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(0),
	datab => \MAIN_ALU|Add0~76_combout\,
	datac => \MAIN_ALU|Add0~78_combout\,
	datad => \MAIN_ALU|Add0~80_combout\,
	combout => \MAIN_ALU|Equal0~5_combout\);

\MAIN_ALU|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~9_combout\ = (\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a6~portbdataout\ & ((\IDEX|IDEX_OUT_READ1\(25)) # ((\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a7~portbdataout\ & \IDEX|IDEX_OUT_READ1\(24))))) # 
-- (!\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a6~portbdataout\ & (((\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a7~portbdataout\ & \IDEX|IDEX_OUT_READ1\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a6~portbdataout\,
	datab => \IDEX|IDEX_OUT_READ1\(25),
	datac => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a7~portbdataout\,
	datad => \IDEX|IDEX_OUT_READ1\(24),
	combout => \MAIN_ALU|Equal0~9_combout\);

\MAIN_ALU|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~8_combout\ = (\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a4~portbdataout\ & ((\IDEX|IDEX_OUT_READ1\(27)) # ((\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a5~portbdataout\ & \IDEX|IDEX_OUT_READ1\(26))))) # 
-- (!\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a4~portbdataout\ & (((\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a5~portbdataout\ & \IDEX|IDEX_OUT_READ1\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a4~portbdataout\,
	datab => \IDEX|IDEX_OUT_READ1\(27),
	datac => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a5~portbdataout\,
	datad => \IDEX|IDEX_OUT_READ1\(26),
	combout => \MAIN_ALU|Equal0~8_combout\);

\MAIN_ALU|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~7_combout\ = (\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a2~portbdataout\ & ((\IDEX|IDEX_OUT_READ1\(29)) # ((\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a3~portbdataout\ & \IDEX|IDEX_OUT_READ1\(28))))) # 
-- (!\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a2~portbdataout\ & (((\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a3~portbdataout\ & \IDEX|IDEX_OUT_READ1\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a2~portbdataout\,
	datab => \IDEX|IDEX_OUT_READ1\(29),
	datac => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a3~portbdataout\,
	datad => \IDEX|IDEX_OUT_READ1\(28),
	combout => \MAIN_ALU|Equal0~7_combout\);

\MAIN_ALU|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~6_combout\ = (\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a0~portbdataout\ & ((\IDEX|IDEX_OUT_READ1\(31)) # ((\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a1~portbdataout\ & \IDEX|IDEX_OUT_READ1\(30))))) # 
-- (!\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a0~portbdataout\ & (((\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a1~portbdataout\ & \IDEX|IDEX_OUT_READ1\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a0~portbdataout\,
	datab => \IDEX|IDEX_OUT_READ1\(31),
	datac => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a1~portbdataout\,
	datad => \IDEX|IDEX_OUT_READ1\(30),
	combout => \MAIN_ALU|Equal0~6_combout\);

\MAIN_ALU|Equal0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~75_combout\ = (\MAIN_ALU|Equal0~9_combout\) # ((!\MAIN_ALU|Equal0~8_combout\ & (!\MAIN_ALU|Equal0~7_combout\ & !\MAIN_ALU|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Equal0~9_combout\,
	datab => \MAIN_ALU|Equal0~8_combout\,
	datac => \MAIN_ALU|Equal0~7_combout\,
	datad => \MAIN_ALU|Equal0~6_combout\,
	combout => \MAIN_ALU|Equal0~75_combout\);

\MAIN_ALU|Equal0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~76_combout\ = (\MAIN_ALU|Equal0~9_combout\ & (\MAIN_ALU|Equal0~75_combout\ & ((\ALU_CONTROL|ULA_CODE\(1)) # (!\ALU_CONTROL|ULA_CODE\(0))))) # (!\MAIN_ALU|Equal0~9_combout\ & ((\MAIN_ALU|Equal0~75_combout\) # ((\ALU_CONTROL|ULA_CODE\(1)) # 
-- (!\ALU_CONTROL|ULA_CODE\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Equal0~9_combout\,
	datab => \MAIN_ALU|Equal0~75_combout\,
	datac => \ALU_CONTROL|ULA_CODE\(1),
	datad => \ALU_CONTROL|ULA_CODE\(0),
	combout => \MAIN_ALU|Equal0~76_combout\);

\MAIN_ALU|Equal0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~13_combout\ = (\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a14~portbdataout\ & ((\IDEX|IDEX_OUT_READ1\(17)) # ((\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a15~portbdataout\ & \IDEX|IDEX_OUT_READ1\(16))))) # 
-- (!\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a14~portbdataout\ & (((\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a15~portbdataout\ & \IDEX|IDEX_OUT_READ1\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a14~portbdataout\,
	datab => \IDEX|IDEX_OUT_READ1\(17),
	datac => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a15~portbdataout\,
	datad => \IDEX|IDEX_OUT_READ1\(16),
	combout => \MAIN_ALU|Equal0~13_combout\);

\MAIN_ALU|Equal0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~12_combout\ = (\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a12~portbdataout\ & ((\IDEX|IDEX_OUT_READ1\(19)) # ((\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a13~portbdataout\ & \IDEX|IDEX_OUT_READ1\(18))))) # 
-- (!\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a12~portbdataout\ & (((\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a13~portbdataout\ & \IDEX|IDEX_OUT_READ1\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a12~portbdataout\,
	datab => \IDEX|IDEX_OUT_READ1\(19),
	datac => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a13~portbdataout\,
	datad => \IDEX|IDEX_OUT_READ1\(18),
	combout => \MAIN_ALU|Equal0~12_combout\);

\MAIN_ALU|Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~11_combout\ = (\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a10~portbdataout\ & ((\IDEX|IDEX_OUT_READ1\(21)) # ((\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a11~portbdataout\ & \IDEX|IDEX_OUT_READ1\(20))))) # 
-- (!\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a10~portbdataout\ & (((\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a11~portbdataout\ & \IDEX|IDEX_OUT_READ1\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a10~portbdataout\,
	datab => \IDEX|IDEX_OUT_READ1\(21),
	datac => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a11~portbdataout\,
	datad => \IDEX|IDEX_OUT_READ1\(20),
	combout => \MAIN_ALU|Equal0~11_combout\);

\MAIN_ALU|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~10_combout\ = (\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a8~portbdataout\ & ((\IDEX|IDEX_OUT_READ1\(23)) # ((\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a9~portbdataout\ & \IDEX|IDEX_OUT_READ1\(22))))) # 
-- (!\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a8~portbdataout\ & (((\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a9~portbdataout\ & \IDEX|IDEX_OUT_READ1\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a8~portbdataout\,
	datab => \IDEX|IDEX_OUT_READ1\(23),
	datac => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a9~portbdataout\,
	datad => \IDEX|IDEX_OUT_READ1\(22),
	combout => \MAIN_ALU|Equal0~10_combout\);

\MAIN_ALU|Equal0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~73_combout\ = (\MAIN_ALU|Equal0~13_combout\) # ((!\MAIN_ALU|Equal0~12_combout\ & (!\MAIN_ALU|Equal0~11_combout\ & !\MAIN_ALU|Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Equal0~13_combout\,
	datab => \MAIN_ALU|Equal0~12_combout\,
	datac => \MAIN_ALU|Equal0~11_combout\,
	datad => \MAIN_ALU|Equal0~10_combout\,
	combout => \MAIN_ALU|Equal0~73_combout\);

\MAIN_ALU|Equal0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~74_combout\ = (\MAIN_ALU|Equal0~13_combout\ & (\MAIN_ALU|Equal0~73_combout\ & ((\ALU_CONTROL|ULA_CODE\(1)) # (!\ALU_CONTROL|ULA_CODE\(0))))) # (!\MAIN_ALU|Equal0~13_combout\ & ((\MAIN_ALU|Equal0~73_combout\) # ((\ALU_CONTROL|ULA_CODE\(1)) 
-- # (!\ALU_CONTROL|ULA_CODE\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Equal0~13_combout\,
	datab => \MAIN_ALU|Equal0~73_combout\,
	datac => \ALU_CONTROL|ULA_CODE\(1),
	datad => \ALU_CONTROL|ULA_CODE\(0),
	combout => \MAIN_ALU|Equal0~74_combout\);

\MAIN_ALU|Equal0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~21_combout\ = (\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a30~portbdataout\ & ((\IDEX|IDEX_OUT_READ1\(1)) # ((\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a31~portbdataout\ & \IDEX|IDEX_OUT_READ1\(0))))) # 
-- (!\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a30~portbdataout\ & (((\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a31~portbdataout\ & \IDEX|IDEX_OUT_READ1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a30~portbdataout\,
	datab => \IDEX|IDEX_OUT_READ1\(1),
	datac => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a31~portbdataout\,
	datad => \IDEX|IDEX_OUT_READ1\(0),
	combout => \MAIN_ALU|Equal0~21_combout\);

\MAIN_ALU|Equal0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~20_combout\ = (\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a28~portbdataout\ & ((\IDEX|IDEX_OUT_READ1\(3)) # ((\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a29~portbdataout\ & \IDEX|IDEX_OUT_READ1\(2))))) # 
-- (!\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a28~portbdataout\ & (((\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a29~portbdataout\ & \IDEX|IDEX_OUT_READ1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a28~portbdataout\,
	datab => \IDEX|IDEX_OUT_READ1\(3),
	datac => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a29~portbdataout\,
	datad => \IDEX|IDEX_OUT_READ1\(2),
	combout => \MAIN_ALU|Equal0~20_combout\);

\MAIN_ALU|Equal0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~19_combout\ = (\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a24~portbdataout\ & ((\IDEX|IDEX_OUT_READ1\(7)) # ((\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a27~portbdataout\ & \IDEX|IDEX_OUT_READ1\(4))))) # 
-- (!\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a24~portbdataout\ & (((\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a27~portbdataout\ & \IDEX|IDEX_OUT_READ1\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a24~portbdataout\,
	datab => \IDEX|IDEX_OUT_READ1\(7),
	datac => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a27~portbdataout\,
	datad => \IDEX|IDEX_OUT_READ1\(4),
	combout => \MAIN_ALU|Equal0~19_combout\);

\MAIN_ALU|Equal0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~18_combout\ = (\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a25~portbdataout\ & ((\IDEX|IDEX_OUT_READ1\(6)) # ((\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a26~portbdataout\ & \IDEX|IDEX_OUT_READ1\(5))))) # 
-- (!\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a25~portbdataout\ & (((\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a26~portbdataout\ & \IDEX|IDEX_OUT_READ1\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a25~portbdataout\,
	datab => \IDEX|IDEX_OUT_READ1\(6),
	datac => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a26~portbdataout\,
	datad => \IDEX|IDEX_OUT_READ1\(5),
	combout => \MAIN_ALU|Equal0~18_combout\);

\MAIN_ALU|Equal0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~69_combout\ = (!\MAIN_ALU|Equal0~21_combout\ & (!\MAIN_ALU|Equal0~20_combout\ & (!\MAIN_ALU|Equal0~19_combout\ & !\MAIN_ALU|Equal0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Equal0~21_combout\,
	datab => \MAIN_ALU|Equal0~20_combout\,
	datac => \MAIN_ALU|Equal0~19_combout\,
	datad => \MAIN_ALU|Equal0~18_combout\,
	combout => \MAIN_ALU|Equal0~69_combout\);

\MAIN_ALU|Equal0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~17_combout\ = (\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a22~portbdataout\ & ((\IDEX|IDEX_OUT_READ1\(9)) # ((\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a23~portbdataout\ & \IDEX|IDEX_OUT_READ1\(8))))) # 
-- (!\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a22~portbdataout\ & (((\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a23~portbdataout\ & \IDEX|IDEX_OUT_READ1\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a22~portbdataout\,
	datab => \IDEX|IDEX_OUT_READ1\(9),
	datac => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a23~portbdataout\,
	datad => \IDEX|IDEX_OUT_READ1\(8),
	combout => \MAIN_ALU|Equal0~17_combout\);

\MAIN_ALU|Equal0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~16_combout\ = (\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a20~portbdataout\ & ((\IDEX|IDEX_OUT_READ1\(11)) # ((\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a21~portbdataout\ & \IDEX|IDEX_OUT_READ1\(10))))) # 
-- (!\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a20~portbdataout\ & (((\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a21~portbdataout\ & \IDEX|IDEX_OUT_READ1\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a20~portbdataout\,
	datab => \IDEX|IDEX_OUT_READ1\(11),
	datac => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a21~portbdataout\,
	datad => \IDEX|IDEX_OUT_READ1\(10),
	combout => \MAIN_ALU|Equal0~16_combout\);

\MAIN_ALU|Equal0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~15_combout\ = (\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a18~portbdataout\ & ((\IDEX|IDEX_OUT_READ1\(13)) # ((\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a19~portbdataout\ & \IDEX|IDEX_OUT_READ1\(12))))) # 
-- (!\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a18~portbdataout\ & (((\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a19~portbdataout\ & \IDEX|IDEX_OUT_READ1\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a18~portbdataout\,
	datab => \IDEX|IDEX_OUT_READ1\(13),
	datac => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a19~portbdataout\,
	datad => \IDEX|IDEX_OUT_READ1\(12),
	combout => \MAIN_ALU|Equal0~15_combout\);

\MAIN_ALU|Equal0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~14_combout\ = (\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a16~portbdataout\ & ((\IDEX|IDEX_OUT_READ1\(15)) # ((\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a17~portbdataout\ & \IDEX|IDEX_OUT_READ1\(14))))) # 
-- (!\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a16~portbdataout\ & (((\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a17~portbdataout\ & \IDEX|IDEX_OUT_READ1\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a16~portbdataout\,
	datab => \IDEX|IDEX_OUT_READ1\(15),
	datac => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a17~portbdataout\,
	datad => \IDEX|IDEX_OUT_READ1\(14),
	combout => \MAIN_ALU|Equal0~14_combout\);

\MAIN_ALU|Equal0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~71_combout\ = (\MAIN_ALU|Equal0~17_combout\) # ((!\MAIN_ALU|Equal0~16_combout\ & (!\MAIN_ALU|Equal0~15_combout\ & !\MAIN_ALU|Equal0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Equal0~17_combout\,
	datab => \MAIN_ALU|Equal0~16_combout\,
	datac => \MAIN_ALU|Equal0~15_combout\,
	datad => \MAIN_ALU|Equal0~14_combout\,
	combout => \MAIN_ALU|Equal0~71_combout\);

\MAIN_ALU|Equal0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~72_combout\ = (\MAIN_ALU|Equal0~17_combout\ & (\MAIN_ALU|Equal0~71_combout\ & ((\ALU_CONTROL|ULA_CODE\(1)) # (!\ALU_CONTROL|ULA_CODE\(0))))) # (!\MAIN_ALU|Equal0~17_combout\ & ((\MAIN_ALU|Equal0~71_combout\) # ((\ALU_CONTROL|ULA_CODE\(1)) 
-- # (!\ALU_CONTROL|ULA_CODE\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Equal0~17_combout\,
	datab => \MAIN_ALU|Equal0~71_combout\,
	datac => \ALU_CONTROL|ULA_CODE\(1),
	datad => \ALU_CONTROL|ULA_CODE\(0),
	combout => \MAIN_ALU|Equal0~72_combout\);

\MAIN_ALU|Equal0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~70_combout\ = (\MAIN_ALU|Equal0~72_combout\ & ((\ALU_CONTROL|ULA_CODE\(1)) # ((\MAIN_ALU|Equal0~69_combout\) # (!\ALU_CONTROL|ULA_CODE\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(1),
	datab => \MAIN_ALU|Equal0~69_combout\,
	datac => \ALU_CONTROL|ULA_CODE\(0),
	datad => \MAIN_ALU|Equal0~72_combout\,
	combout => \MAIN_ALU|Equal0~70_combout\);

\MAIN_ALU|Equal0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~22_combout\ = (\IDEX|IDEX_OUT_READ1\(31)) # ((\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a1~portbdataout\) # (\IDEX|IDEX_OUT_READ1\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_READ1\(31),
	datab => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a1~portbdataout\,
	datac => \IDEX|IDEX_OUT_READ1\(30),
	combout => \MAIN_ALU|Equal0~22_combout\);

\MAIN_ALU|Equal0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~23_combout\ = (((!\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a0~portbdataout\ & !\MAIN_ALU|Equal0~22_combout\)) # (!\ALU_CONTROL|ULA_CODE\(1))) # (!\ALU_CONTROL|ULA_CODE\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a0~portbdataout\,
	datab => \ALU_CONTROL|ULA_CODE\(0),
	datac => \ALU_CONTROL|ULA_CODE\(1),
	datad => \MAIN_ALU|Equal0~22_combout\,
	combout => \MAIN_ALU|Equal0~23_combout\);

\MAIN_ALU|Equal0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~24_combout\ = (\IDEX|IDEX_OUT_READ1\(29)) # ((\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a3~portbdataout\) # (\IDEX|IDEX_OUT_READ1\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_READ1\(29),
	datab => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a3~portbdataout\,
	datac => \IDEX|IDEX_OUT_READ1\(28),
	combout => \MAIN_ALU|Equal0~24_combout\);

\MAIN_ALU|Equal0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~25_combout\ = (((!\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a2~portbdataout\ & !\MAIN_ALU|Equal0~24_combout\)) # (!\ALU_CONTROL|ULA_CODE\(1))) # (!\ALU_CONTROL|ULA_CODE\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a2~portbdataout\,
	datab => \ALU_CONTROL|ULA_CODE\(0),
	datac => \ALU_CONTROL|ULA_CODE\(1),
	datad => \MAIN_ALU|Equal0~24_combout\,
	combout => \MAIN_ALU|Equal0~25_combout\);

\MAIN_ALU|Equal0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~26_combout\ = (\IDEX|IDEX_OUT_READ1\(27)) # ((\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a5~portbdataout\) # (\IDEX|IDEX_OUT_READ1\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_READ1\(27),
	datab => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a5~portbdataout\,
	datac => \IDEX|IDEX_OUT_READ1\(26),
	combout => \MAIN_ALU|Equal0~26_combout\);

\MAIN_ALU|Equal0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~27_combout\ = (((!\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a4~portbdataout\ & !\MAIN_ALU|Equal0~26_combout\)) # (!\ALU_CONTROL|ULA_CODE\(1))) # (!\ALU_CONTROL|ULA_CODE\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a4~portbdataout\,
	datab => \ALU_CONTROL|ULA_CODE\(0),
	datac => \ALU_CONTROL|ULA_CODE\(1),
	datad => \MAIN_ALU|Equal0~26_combout\,
	combout => \MAIN_ALU|Equal0~27_combout\);

\MAIN_ALU|Equal0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~28_combout\ = (\IDEX|IDEX_OUT_READ1\(25)) # ((\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a7~portbdataout\) # (\IDEX|IDEX_OUT_READ1\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_READ1\(25),
	datab => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a7~portbdataout\,
	datac => \IDEX|IDEX_OUT_READ1\(24),
	combout => \MAIN_ALU|Equal0~28_combout\);

\MAIN_ALU|Equal0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~29_combout\ = (((!\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a6~portbdataout\ & !\MAIN_ALU|Equal0~28_combout\)) # (!\ALU_CONTROL|ULA_CODE\(1))) # (!\ALU_CONTROL|ULA_CODE\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a6~portbdataout\,
	datab => \ALU_CONTROL|ULA_CODE\(0),
	datac => \ALU_CONTROL|ULA_CODE\(1),
	datad => \MAIN_ALU|Equal0~28_combout\,
	combout => \MAIN_ALU|Equal0~29_combout\);

\MAIN_ALU|Equal0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~30_combout\ = (\MAIN_ALU|Equal0~23_combout\ & (\MAIN_ALU|Equal0~25_combout\ & (\MAIN_ALU|Equal0~27_combout\ & \MAIN_ALU|Equal0~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Equal0~23_combout\,
	datab => \MAIN_ALU|Equal0~25_combout\,
	datac => \MAIN_ALU|Equal0~27_combout\,
	datad => \MAIN_ALU|Equal0~29_combout\,
	combout => \MAIN_ALU|Equal0~30_combout\);

\MAIN_ALU|Equal0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~31_combout\ = (\IDEX|IDEX_OUT_READ1\(23)) # ((\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a9~portbdataout\) # (\IDEX|IDEX_OUT_READ1\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_READ1\(23),
	datab => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a9~portbdataout\,
	datac => \IDEX|IDEX_OUT_READ1\(22),
	combout => \MAIN_ALU|Equal0~31_combout\);

\MAIN_ALU|Equal0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~32_combout\ = (((!\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a8~portbdataout\ & !\MAIN_ALU|Equal0~31_combout\)) # (!\ALU_CONTROL|ULA_CODE\(1))) # (!\ALU_CONTROL|ULA_CODE\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a8~portbdataout\,
	datab => \ALU_CONTROL|ULA_CODE\(0),
	datac => \ALU_CONTROL|ULA_CODE\(1),
	datad => \MAIN_ALU|Equal0~31_combout\,
	combout => \MAIN_ALU|Equal0~32_combout\);

\MAIN_ALU|Equal0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~33_combout\ = (\IDEX|IDEX_OUT_READ1\(21)) # ((\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a11~portbdataout\) # (\IDEX|IDEX_OUT_READ1\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_READ1\(21),
	datab => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a11~portbdataout\,
	datac => \IDEX|IDEX_OUT_READ1\(20),
	combout => \MAIN_ALU|Equal0~33_combout\);

\MAIN_ALU|Equal0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~34_combout\ = (((!\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a10~portbdataout\ & !\MAIN_ALU|Equal0~33_combout\)) # (!\ALU_CONTROL|ULA_CODE\(1))) # (!\ALU_CONTROL|ULA_CODE\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a10~portbdataout\,
	datab => \ALU_CONTROL|ULA_CODE\(0),
	datac => \ALU_CONTROL|ULA_CODE\(1),
	datad => \MAIN_ALU|Equal0~33_combout\,
	combout => \MAIN_ALU|Equal0~34_combout\);

\MAIN_ALU|Equal0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~35_combout\ = (\IDEX|IDEX_OUT_READ1\(19)) # ((\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a13~portbdataout\) # (\IDEX|IDEX_OUT_READ1\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_READ1\(19),
	datab => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a13~portbdataout\,
	datac => \IDEX|IDEX_OUT_READ1\(18),
	combout => \MAIN_ALU|Equal0~35_combout\);

\MAIN_ALU|Equal0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~36_combout\ = (((!\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a12~portbdataout\ & !\MAIN_ALU|Equal0~35_combout\)) # (!\ALU_CONTROL|ULA_CODE\(1))) # (!\ALU_CONTROL|ULA_CODE\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a12~portbdataout\,
	datab => \ALU_CONTROL|ULA_CODE\(0),
	datac => \ALU_CONTROL|ULA_CODE\(1),
	datad => \MAIN_ALU|Equal0~35_combout\,
	combout => \MAIN_ALU|Equal0~36_combout\);

\MAIN_ALU|Equal0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~37_combout\ = (\IDEX|IDEX_OUT_READ1\(17)) # ((\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a15~portbdataout\) # (\IDEX|IDEX_OUT_READ1\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_READ1\(17),
	datab => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a15~portbdataout\,
	datac => \IDEX|IDEX_OUT_READ1\(16),
	combout => \MAIN_ALU|Equal0~37_combout\);

\MAIN_ALU|Equal0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~38_combout\ = (((!\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a14~portbdataout\ & !\MAIN_ALU|Equal0~37_combout\)) # (!\ALU_CONTROL|ULA_CODE\(1))) # (!\ALU_CONTROL|ULA_CODE\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a14~portbdataout\,
	datab => \ALU_CONTROL|ULA_CODE\(0),
	datac => \ALU_CONTROL|ULA_CODE\(1),
	datad => \MAIN_ALU|Equal0~37_combout\,
	combout => \MAIN_ALU|Equal0~38_combout\);

\MAIN_ALU|Equal0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~39_combout\ = (\MAIN_ALU|Equal0~32_combout\ & (\MAIN_ALU|Equal0~34_combout\ & (\MAIN_ALU|Equal0~36_combout\ & \MAIN_ALU|Equal0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Equal0~32_combout\,
	datab => \MAIN_ALU|Equal0~34_combout\,
	datac => \MAIN_ALU|Equal0~36_combout\,
	datad => \MAIN_ALU|Equal0~38_combout\,
	combout => \MAIN_ALU|Equal0~39_combout\);

\MAIN_ALU|Equal0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~40_combout\ = (\IDEX|IDEX_OUT_READ1\(15)) # ((\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a17~portbdataout\) # (\IDEX|IDEX_OUT_READ1\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_READ1\(15),
	datab => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a17~portbdataout\,
	datac => \IDEX|IDEX_OUT_READ1\(14),
	combout => \MAIN_ALU|Equal0~40_combout\);

\MAIN_ALU|Equal0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~41_combout\ = (((!\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a16~portbdataout\ & !\MAIN_ALU|Equal0~40_combout\)) # (!\ALU_CONTROL|ULA_CODE\(1))) # (!\ALU_CONTROL|ULA_CODE\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a16~portbdataout\,
	datab => \ALU_CONTROL|ULA_CODE\(0),
	datac => \ALU_CONTROL|ULA_CODE\(1),
	datad => \MAIN_ALU|Equal0~40_combout\,
	combout => \MAIN_ALU|Equal0~41_combout\);

\MAIN_ALU|Equal0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~42_combout\ = (\IDEX|IDEX_OUT_READ1\(13)) # ((\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a19~portbdataout\) # (\IDEX|IDEX_OUT_READ1\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_READ1\(13),
	datab => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a19~portbdataout\,
	datac => \IDEX|IDEX_OUT_READ1\(12),
	combout => \MAIN_ALU|Equal0~42_combout\);

\MAIN_ALU|Equal0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~43_combout\ = (((!\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a18~portbdataout\ & !\MAIN_ALU|Equal0~42_combout\)) # (!\ALU_CONTROL|ULA_CODE\(1))) # (!\ALU_CONTROL|ULA_CODE\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a18~portbdataout\,
	datab => \ALU_CONTROL|ULA_CODE\(0),
	datac => \ALU_CONTROL|ULA_CODE\(1),
	datad => \MAIN_ALU|Equal0~42_combout\,
	combout => \MAIN_ALU|Equal0~43_combout\);

\MAIN_ALU|Equal0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~44_combout\ = (\IDEX|IDEX_OUT_READ1\(11)) # ((\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a21~portbdataout\) # (\IDEX|IDEX_OUT_READ1\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_READ1\(11),
	datab => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a21~portbdataout\,
	datac => \IDEX|IDEX_OUT_READ1\(10),
	combout => \MAIN_ALU|Equal0~44_combout\);

\MAIN_ALU|Equal0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~45_combout\ = (((!\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a20~portbdataout\ & !\MAIN_ALU|Equal0~44_combout\)) # (!\ALU_CONTROL|ULA_CODE\(1))) # (!\ALU_CONTROL|ULA_CODE\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a20~portbdataout\,
	datab => \ALU_CONTROL|ULA_CODE\(0),
	datac => \ALU_CONTROL|ULA_CODE\(1),
	datad => \MAIN_ALU|Equal0~44_combout\,
	combout => \MAIN_ALU|Equal0~45_combout\);

\MAIN_ALU|Equal0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~46_combout\ = (\IDEX|IDEX_OUT_READ1\(9)) # ((\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a23~portbdataout\) # (\IDEX|IDEX_OUT_READ1\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_READ1\(9),
	datab => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a23~portbdataout\,
	datac => \IDEX|IDEX_OUT_READ1\(8),
	combout => \MAIN_ALU|Equal0~46_combout\);

\MAIN_ALU|Equal0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~47_combout\ = (((!\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a22~portbdataout\ & !\MAIN_ALU|Equal0~46_combout\)) # (!\ALU_CONTROL|ULA_CODE\(1))) # (!\ALU_CONTROL|ULA_CODE\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a22~portbdataout\,
	datab => \ALU_CONTROL|ULA_CODE\(0),
	datac => \ALU_CONTROL|ULA_CODE\(1),
	datad => \MAIN_ALU|Equal0~46_combout\,
	combout => \MAIN_ALU|Equal0~47_combout\);

\MAIN_ALU|Equal0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~48_combout\ = (\MAIN_ALU|Equal0~41_combout\ & (\MAIN_ALU|Equal0~43_combout\ & (\MAIN_ALU|Equal0~45_combout\ & \MAIN_ALU|Equal0~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Equal0~41_combout\,
	datab => \MAIN_ALU|Equal0~43_combout\,
	datac => \MAIN_ALU|Equal0~45_combout\,
	datad => \MAIN_ALU|Equal0~47_combout\,
	combout => \MAIN_ALU|Equal0~48_combout\);

\MAIN_ALU|Equal0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~49_combout\ = (\IDEX|IDEX_OUT_READ1\(7)) # ((\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a25~portbdataout\) # (\IDEX|IDEX_OUT_READ1\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_READ1\(7),
	datab => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a25~portbdataout\,
	datac => \IDEX|IDEX_OUT_READ1\(6),
	combout => \MAIN_ALU|Equal0~49_combout\);

\MAIN_ALU|Equal0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~50_combout\ = (((!\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a24~portbdataout\ & !\MAIN_ALU|Equal0~49_combout\)) # (!\ALU_CONTROL|ULA_CODE\(1))) # (!\ALU_CONTROL|ULA_CODE\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a24~portbdataout\,
	datab => \ALU_CONTROL|ULA_CODE\(0),
	datac => \ALU_CONTROL|ULA_CODE\(1),
	datad => \MAIN_ALU|Equal0~49_combout\,
	combout => \MAIN_ALU|Equal0~50_combout\);

\MAIN_ALU|Equal0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~51_combout\ = (\IDEX|IDEX_OUT_READ1\(5)) # ((\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a27~portbdataout\) # (\IDEX|IDEX_OUT_READ1\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_READ1\(5),
	datab => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a27~portbdataout\,
	datac => \IDEX|IDEX_OUT_READ1\(4),
	combout => \MAIN_ALU|Equal0~51_combout\);

\MAIN_ALU|Equal0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~52_combout\ = (((!\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a26~portbdataout\ & !\MAIN_ALU|Equal0~51_combout\)) # (!\ALU_CONTROL|ULA_CODE\(1))) # (!\ALU_CONTROL|ULA_CODE\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a26~portbdataout\,
	datab => \ALU_CONTROL|ULA_CODE\(0),
	datac => \ALU_CONTROL|ULA_CODE\(1),
	datad => \MAIN_ALU|Equal0~51_combout\,
	combout => \MAIN_ALU|Equal0~52_combout\);

\MAIN_ALU|Equal0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~53_combout\ = (\IDEX|IDEX_OUT_READ1\(3)) # ((\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a29~portbdataout\) # (\IDEX|IDEX_OUT_READ1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_READ1\(3),
	datab => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a29~portbdataout\,
	datac => \IDEX|IDEX_OUT_READ1\(2),
	combout => \MAIN_ALU|Equal0~53_combout\);

\MAIN_ALU|Equal0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~54_combout\ = (((!\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a28~portbdataout\ & !\MAIN_ALU|Equal0~53_combout\)) # (!\ALU_CONTROL|ULA_CODE\(1))) # (!\ALU_CONTROL|ULA_CODE\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a28~portbdataout\,
	datab => \ALU_CONTROL|ULA_CODE\(0),
	datac => \ALU_CONTROL|ULA_CODE\(1),
	datad => \MAIN_ALU|Equal0~53_combout\,
	combout => \MAIN_ALU|Equal0~54_combout\);

\MAIN_ALU|Equal0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~55_combout\ = (\IDEX|IDEX_OUT_READ1\(1)) # ((\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a31~portbdataout\) # (\IDEX|IDEX_OUT_READ1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_READ1\(1),
	datab => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a31~portbdataout\,
	datac => \IDEX|IDEX_OUT_READ1\(0),
	combout => \MAIN_ALU|Equal0~55_combout\);

\MAIN_ALU|Equal0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~56_combout\ = (((!\FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a30~portbdataout\ & !\MAIN_ALU|Equal0~55_combout\)) # (!\ALU_CONTROL|ULA_CODE\(1))) # (!\ALU_CONTROL|ULA_CODE\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILE_REG|REGISTERS_rtl_1|auto_generated|ram_block1a30~portbdataout\,
	datab => \ALU_CONTROL|ULA_CODE\(0),
	datac => \ALU_CONTROL|ULA_CODE\(1),
	datad => \MAIN_ALU|Equal0~55_combout\,
	combout => \MAIN_ALU|Equal0~56_combout\);

\MAIN_ALU|Equal0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~57_combout\ = (\MAIN_ALU|Equal0~50_combout\ & (\MAIN_ALU|Equal0~52_combout\ & (\MAIN_ALU|Equal0~54_combout\ & \MAIN_ALU|Equal0~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Equal0~50_combout\,
	datab => \MAIN_ALU|Equal0~52_combout\,
	datac => \MAIN_ALU|Equal0~54_combout\,
	datad => \MAIN_ALU|Equal0~56_combout\,
	combout => \MAIN_ALU|Equal0~57_combout\);

\MAIN_ALU|Equal0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~58_combout\ = (\MAIN_ALU|Equal0~30_combout\ & (\MAIN_ALU|Equal0~39_combout\ & (\MAIN_ALU|Equal0~48_combout\ & \MAIN_ALU|Equal0~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Equal0~30_combout\,
	datab => \MAIN_ALU|Equal0~39_combout\,
	datac => \MAIN_ALU|Equal0~48_combout\,
	datad => \MAIN_ALU|Equal0~57_combout\,
	combout => \MAIN_ALU|Equal0~58_combout\);

\MAIN_ALU|Equal0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~59_combout\ = (\MAIN_ALU|Equal0~76_combout\ & (\MAIN_ALU|Equal0~74_combout\ & (\MAIN_ALU|Equal0~70_combout\ & \MAIN_ALU|Equal0~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Equal0~76_combout\,
	datab => \MAIN_ALU|Equal0~74_combout\,
	datac => \MAIN_ALU|Equal0~70_combout\,
	datad => \MAIN_ALU|Equal0~58_combout\,
	combout => \MAIN_ALU|Equal0~59_combout\);

\MAIN_ALU|Equal0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~60_combout\ = (\ALU_CONTROL|ULA_CODE\(0)) # ((!\MAIN_ALU|Add0~58_combout\ & (!\MAIN_ALU|Add0~60_combout\ & !\MAIN_ALU|Add0~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(0),
	datab => \MAIN_ALU|Add0~58_combout\,
	datac => \MAIN_ALU|Add0~60_combout\,
	datad => \MAIN_ALU|Add0~62_combout\,
	combout => \MAIN_ALU|Equal0~60_combout\);

\MAIN_ALU|Equal0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~61_combout\ = (\ALU_CONTROL|ULA_CODE\(0)) # ((!\MAIN_ALU|Add0~64_combout\ & (!\MAIN_ALU|Add0~66_combout\ & !\MAIN_ALU|Add0~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(0),
	datab => \MAIN_ALU|Add0~64_combout\,
	datac => \MAIN_ALU|Add0~66_combout\,
	datad => \MAIN_ALU|Add0~68_combout\,
	combout => \MAIN_ALU|Equal0~61_combout\);

\MAIN_ALU|Equal0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~62_combout\ = (\ALU_CONTROL|ULA_CODE\(0)) # ((!\MAIN_ALU|Add0~70_combout\ & (!\MAIN_ALU|Add0~72_combout\ & !\MAIN_ALU|Add0~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(0),
	datab => \MAIN_ALU|Add0~70_combout\,
	datac => \MAIN_ALU|Add0~72_combout\,
	datad => \MAIN_ALU|Add0~74_combout\,
	combout => \MAIN_ALU|Equal0~62_combout\);

\MAIN_ALU|Equal0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~63_combout\ = (\MAIN_ALU|Equal0~59_combout\ & (\MAIN_ALU|Equal0~60_combout\ & (\MAIN_ALU|Equal0~61_combout\ & \MAIN_ALU|Equal0~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Equal0~59_combout\,
	datab => \MAIN_ALU|Equal0~60_combout\,
	datac => \MAIN_ALU|Equal0~61_combout\,
	datad => \MAIN_ALU|Equal0~62_combout\,
	combout => \MAIN_ALU|Equal0~63_combout\);

\MAIN_ALU|Equal0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~64_combout\ = (\MAIN_ALU|Equal0~4_combout\ & (\MAIN_ALU|Equal0~5_combout\ & \MAIN_ALU|Equal0~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Equal0~4_combout\,
	datab => \MAIN_ALU|Equal0~5_combout\,
	datac => \MAIN_ALU|Equal0~63_combout\,
	combout => \MAIN_ALU|Equal0~64_combout\);

\MAIN_ALU|Equal0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~65_combout\ = (\MAIN_ALU|Equal0~64_combout\ & ((\ALU_CONTROL|ULA_CODE\(0)) # ((!\MAIN_ALU|Add0~88_combout\ & !\MAIN_ALU|Add0~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(0),
	datab => \MAIN_ALU|Add0~88_combout\,
	datac => \MAIN_ALU|Add0~90_combout\,
	datad => \MAIN_ALU|Equal0~64_combout\,
	combout => \MAIN_ALU|Equal0~65_combout\);

\MAIN_ALU|Equal0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~66_combout\ = (!\MAIN_ALU|Add0~82_combout\ & (!\MAIN_ALU|Add0~84_combout\ & !\MAIN_ALU|Add0~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~82_combout\,
	datab => \MAIN_ALU|Add0~84_combout\,
	datac => \MAIN_ALU|Add0~86_combout\,
	combout => \MAIN_ALU|Equal0~66_combout\);

\MAIN_ALU|Equal0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~67_combout\ = (!\MAIN_ALU|Add0~94_combout\ & (!\MAIN_ALU|Add0~92_combout\ & \MAIN_ALU|Equal0~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN_ALU|Add0~94_combout\,
	datab => \MAIN_ALU|Add0~92_combout\,
	datac => \MAIN_ALU|Equal0~66_combout\,
	combout => \MAIN_ALU|Equal0~67_combout\);

\MAIN_ALU|Equal0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAIN_ALU|Equal0~68_combout\ = (\MAIN_ALU|Equal0~65_combout\ & ((\ALU_CONTROL|ULA_CODE\(0)) # ((!\MAIN_ALU|Add0~96_combout\ & \MAIN_ALU|Equal0~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTROL|ULA_CODE\(0),
	datab => \MAIN_ALU|Add0~96_combout\,
	datac => \MAIN_ALU|Equal0~65_combout\,
	datad => \MAIN_ALU|Equal0~67_combout\,
	combout => \MAIN_ALU|Equal0~68_combout\);

\EXMEM|EXMEM_OUT_ZERO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \MAIN_ALU|Equal0~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_ZERO~q\);

\MUX_JUMP|Mux26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux26~2_combout\ = (\EXMEM|EXMEM_OUT_MEM\(0) & ((\EXMEM|EXMEM_OUT_ZERO~q\ & (\EXMEM|EXMEM_OUT_RESULT_ADDER\(26))) # (!\EXMEM|EXMEM_OUT_ZERO~q\ & ((\PC_INC|X[26]~6_combout\))))) # (!\EXMEM|EXMEM_OUT_MEM\(0) & (((\PC_INC|X[26]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEM|EXMEM_OUT_RESULT_ADDER\(26),
	datab => \PC_INC|X[26]~6_combout\,
	datac => \EXMEM|EXMEM_OUT_MEM\(0),
	datad => \EXMEM|EXMEM_OUT_ZERO~q\,
	combout => \MUX_JUMP|Mux26~2_combout\);

\MUX_JUMP|Mux26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux26~3_combout\ = (\UC|SIGNAL_JUMP\(0) & (((\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a5~portbdataout\)))) # (!\UC|SIGNAL_JUMP\(0) & (!\UC|SIGNAL_JUMP\(1) & ((\MUX_JUMP|Mux26~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UC|SIGNAL_JUMP\(1),
	datab => \UC|SIGNAL_JUMP\(0),
	datac => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a5~portbdataout\,
	datad => \MUX_JUMP|Mux26~2_combout\,
	combout => \MUX_JUMP|Mux26~3_combout\);

\PC|PC[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_JUMP|Mux26~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|PC\(26));

\PC_INC|X[25]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[25]~8_combout\ = (\PC|PC\(25) & (\PC_INC|X[26]~7\ $ (GND))) # (!\PC|PC\(25) & (!\PC_INC|X[26]~7\ & VCC))
-- \PC_INC|X[25]~9\ = CARRY((\PC|PC\(25) & !\PC_INC|X[26]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC\(25),
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
	clk => \ALT_INV_CLOCK~input_o\,
	d => \PC_INC|X[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(25));

\IDEX|IDEX_OUT_PC[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \IFID|OUT_PC_MAIS_4\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_PC\(25));

\EXMEM|EXMEM_OUT_RESULT_ADDER[25]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[25]~38_combout\ = (\IDEX|IDEX_OUT_PC\(25) & (\EXMEM|EXMEM_OUT_RESULT_ADDER[26]~37\ $ (GND))) # (!\IDEX|IDEX_OUT_PC\(25) & (!\EXMEM|EXMEM_OUT_RESULT_ADDER[26]~37\ & VCC))
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[25]~39\ = CARRY((\IDEX|IDEX_OUT_PC\(25) & !\EXMEM|EXMEM_OUT_RESULT_ADDER[26]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_PC\(25),
	datad => VCC,
	cin => \EXMEM|EXMEM_OUT_RESULT_ADDER[26]~37\,
	combout => \EXMEM|EXMEM_OUT_RESULT_ADDER[25]~38_combout\,
	cout => \EXMEM|EXMEM_OUT_RESULT_ADDER[25]~39\);

\EXMEM|EXMEM_OUT_RESULT_ADDER[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ADDER[25]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ADDER\(25));

\MUX_JUMP|Mux25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux25~2_combout\ = (\EXMEM|EXMEM_OUT_MEM\(0) & ((\EXMEM|EXMEM_OUT_ZERO~q\ & (\EXMEM|EXMEM_OUT_RESULT_ADDER\(25))) # (!\EXMEM|EXMEM_OUT_ZERO~q\ & ((\PC_INC|X[25]~8_combout\))))) # (!\EXMEM|EXMEM_OUT_MEM\(0) & (((\PC_INC|X[25]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEM|EXMEM_OUT_RESULT_ADDER\(25),
	datab => \PC_INC|X[25]~8_combout\,
	datac => \EXMEM|EXMEM_OUT_MEM\(0),
	datad => \EXMEM|EXMEM_OUT_ZERO~q\,
	combout => \MUX_JUMP|Mux25~2_combout\);

\MUX_JUMP|Mux25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux25~3_combout\ = (\UC|SIGNAL_JUMP\(0) & (((\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a6~portbdataout\)))) # (!\UC|SIGNAL_JUMP\(0) & (!\UC|SIGNAL_JUMP\(1) & ((\MUX_JUMP|Mux25~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UC|SIGNAL_JUMP\(1),
	datab => \UC|SIGNAL_JUMP\(0),
	datac => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a6~portbdataout\,
	datad => \MUX_JUMP|Mux25~2_combout\,
	combout => \MUX_JUMP|Mux25~3_combout\);

\PC|PC[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_JUMP|Mux25~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|PC\(25));

\PC_INC|X[24]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[24]~10_combout\ = (\PC|PC\(24) & (!\PC_INC|X[25]~9\)) # (!\PC|PC\(24) & ((\PC_INC|X[25]~9\) # (GND)))
-- \PC_INC|X[24]~11\ = CARRY((!\PC_INC|X[25]~9\) # (!\PC|PC\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC\(24),
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
	clk => \ALT_INV_CLOCK~input_o\,
	d => \PC_INC|X[24]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(24));

\IDEX|IDEX_OUT_PC[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \IFID|OUT_PC_MAIS_4\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_PC\(24));

\EXMEM|EXMEM_OUT_RESULT_ADDER[24]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[24]~40_combout\ = (\IDEX|IDEX_OUT_PC\(24) & (!\EXMEM|EXMEM_OUT_RESULT_ADDER[25]~39\)) # (!\IDEX|IDEX_OUT_PC\(24) & ((\EXMEM|EXMEM_OUT_RESULT_ADDER[25]~39\) # (GND)))
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[24]~41\ = CARRY((!\EXMEM|EXMEM_OUT_RESULT_ADDER[25]~39\) # (!\IDEX|IDEX_OUT_PC\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_PC\(24),
	datad => VCC,
	cin => \EXMEM|EXMEM_OUT_RESULT_ADDER[25]~39\,
	combout => \EXMEM|EXMEM_OUT_RESULT_ADDER[24]~40_combout\,
	cout => \EXMEM|EXMEM_OUT_RESULT_ADDER[24]~41\);

\EXMEM|EXMEM_OUT_RESULT_ADDER[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ADDER[24]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ADDER\(24));

\MUX_JUMP|Mux24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux24~2_combout\ = (\EXMEM|EXMEM_OUT_MEM\(0) & ((\EXMEM|EXMEM_OUT_ZERO~q\ & (\EXMEM|EXMEM_OUT_RESULT_ADDER\(24))) # (!\EXMEM|EXMEM_OUT_ZERO~q\ & ((\PC_INC|X[24]~10_combout\))))) # (!\EXMEM|EXMEM_OUT_MEM\(0) & (((\PC_INC|X[24]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEM|EXMEM_OUT_RESULT_ADDER\(24),
	datab => \PC_INC|X[24]~10_combout\,
	datac => \EXMEM|EXMEM_OUT_MEM\(0),
	datad => \EXMEM|EXMEM_OUT_ZERO~q\,
	combout => \MUX_JUMP|Mux24~2_combout\);

\MUX_JUMP|Mux24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux24~3_combout\ = (\UC|SIGNAL_JUMP\(0) & (((\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a7~portbdataout\)))) # (!\UC|SIGNAL_JUMP\(0) & (!\UC|SIGNAL_JUMP\(1) & ((\MUX_JUMP|Mux24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UC|SIGNAL_JUMP\(1),
	datab => \UC|SIGNAL_JUMP\(0),
	datac => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a7~portbdataout\,
	datad => \MUX_JUMP|Mux24~2_combout\,
	combout => \MUX_JUMP|Mux24~3_combout\);

\PC|PC[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_JUMP|Mux24~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|PC\(24));

\PC_INC|X[23]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[23]~12_combout\ = (\PC|PC\(23) & (\PC_INC|X[24]~11\ $ (GND))) # (!\PC|PC\(23) & (!\PC_INC|X[24]~11\ & VCC))
-- \PC_INC|X[23]~13\ = CARRY((\PC|PC\(23) & !\PC_INC|X[24]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC\(23),
	datad => VCC,
	cin => \PC_INC|X[24]~11\,
	combout => \PC_INC|X[23]~12_combout\,
	cout => \PC_INC|X[23]~13\);

\INST_MEM|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \INST_MEM|Mux23~1_combout\ = (\PC|PC\(31) & (\PC|PC\(29) & (\INST_MEM|Mux7~0_combout\ & !\PC|PC\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC\(31),
	datab => \PC|PC\(29),
	datac => \INST_MEM|Mux7~0_combout\,
	datad => \PC|PC\(30),
	combout => \INST_MEM|Mux23~1_combout\);

\IFID|OUT_INSTR_MEM[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \INST_MEM|Mux23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_INSTR_MEM\(23));

\IFID|OUT_PC_MAIS_4[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \PC_INC|X[23]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(23));

\IDEX|IDEX_OUT_PC[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \IFID|OUT_PC_MAIS_4\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_PC\(23));

\IFID|OUT_INSTR_MEM[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \INST_MEM|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_INSTR_MEM\(7));

\IDEX|IDEX_OUT_IMED[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \IFID|OUT_INSTR_MEM\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_IMED\(23));

\EXMEM|EXMEM_OUT_RESULT_ADDER[23]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[23]~42_combout\ = ((\IDEX|IDEX_OUT_PC\(23) $ (\IDEX|IDEX_OUT_IMED\(23) $ (!\EXMEM|EXMEM_OUT_RESULT_ADDER[24]~41\)))) # (GND)
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[23]~43\ = CARRY((\IDEX|IDEX_OUT_PC\(23) & ((\IDEX|IDEX_OUT_IMED\(23)) # (!\EXMEM|EXMEM_OUT_RESULT_ADDER[24]~41\))) # (!\IDEX|IDEX_OUT_PC\(23) & (\IDEX|IDEX_OUT_IMED\(23) & !\EXMEM|EXMEM_OUT_RESULT_ADDER[24]~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_PC\(23),
	datab => \IDEX|IDEX_OUT_IMED\(23),
	datad => VCC,
	cin => \EXMEM|EXMEM_OUT_RESULT_ADDER[24]~41\,
	combout => \EXMEM|EXMEM_OUT_RESULT_ADDER[23]~42_combout\,
	cout => \EXMEM|EXMEM_OUT_RESULT_ADDER[23]~43\);

\EXMEM|EXMEM_OUT_RESULT_ADDER[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ADDER[23]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ADDER\(23));

\MUX_JUMP|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux23~0_combout\ = (\PC|PC[12]~1_combout\ & (((\PC|PC[30]~2_combout\)))) # (!\PC|PC[12]~1_combout\ & ((\PC|PC[30]~2_combout\ & (\IFID|OUT_INSTR_MEM\(23))) # (!\PC|PC[30]~2_combout\ & ((\EXMEM|EXMEM_OUT_RESULT_ADDER\(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC[12]~1_combout\,
	datab => \IFID|OUT_INSTR_MEM\(23),
	datac => \PC|PC[30]~2_combout\,
	datad => \EXMEM|EXMEM_OUT_RESULT_ADDER\(23),
	combout => \MUX_JUMP|Mux23~0_combout\);

\MUX_JUMP|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux23~1_combout\ = (\PC|PC[12]~1_combout\ & ((\MUX_JUMP|Mux23~0_combout\ & ((\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a8~portbdataout\))) # (!\MUX_JUMP|Mux23~0_combout\ & (\PC_INC|X[23]~12_combout\)))) # (!\PC|PC[12]~1_combout\ & 
-- (((\MUX_JUMP|Mux23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_INC|X[23]~12_combout\,
	datab => \PC|PC[12]~1_combout\,
	datac => \MUX_JUMP|Mux23~0_combout\,
	datad => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a8~portbdataout\,
	combout => \MUX_JUMP|Mux23~1_combout\);

\PC|PC[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_JUMP|Mux23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|PC\(23));

\INST_MEM|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \INST_MEM|Mux20~0_combout\ = (\PC|PC\(29) & (\PC|PC\(28) & (\PC|PC\(27) & \PC|PC\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC\(29),
	datab => \PC|PC\(28),
	datac => \PC|PC\(27),
	datad => \PC|PC\(26),
	combout => \INST_MEM|Mux20~0_combout\);

\INST_MEM|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \INST_MEM|Mux20~1_combout\ = (\PC|PC\(25) & (\PC|PC\(24) & (\PC|PC\(23) & \INST_MEM|Mux20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC\(25),
	datab => \PC|PC\(24),
	datac => \PC|PC\(23),
	datad => \INST_MEM|Mux20~0_combout\,
	combout => \INST_MEM|Mux20~1_combout\);

\INST_MEM|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \INST_MEM|Mux30~0_combout\ = (\PC|PC\(30) & ((\INST_MEM|Mux20~1_combout\) # ((\INST_MEM|Mux7~0_combout\ & !\PC|PC\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC\(30),
	datab => \INST_MEM|Mux20~1_combout\,
	datac => \INST_MEM|Mux7~0_combout\,
	datad => \PC|PC\(29),
	combout => \INST_MEM|Mux30~0_combout\);

\INST_MEM|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \INST_MEM|Mux18~0_combout\ = (\PC|PC\(31) & \INST_MEM|Mux30~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC\(31),
	datab => \INST_MEM|Mux30~0_combout\,
	combout => \INST_MEM|Mux18~0_combout\);

\IFID|OUT_INSTR_MEM[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \INST_MEM|Mux18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_INSTR_MEM\(18));

\IDEX|IDEX_OUT_RD[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \IFID|OUT_INSTR_MEM\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_RD\(2));

\MUX_REGDST|X[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_REGDST|X[2]~2_combout\ = (\IDEX|IDEX_OUT_EX\(0) & (\IDEX|IDEX_OUT_RD\(2))) # (!\IDEX|IDEX_OUT_EX\(0) & ((\IDEX|IDEX_OUT_RT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_RD\(2),
	datab => \IDEX|IDEX_OUT_RT\(2),
	datad => \IDEX|IDEX_OUT_EX\(0),
	combout => \MUX_REGDST|X[2]~2_combout\);

\EXMEM|EXMEM_OUT_REGDST[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \MUX_REGDST|X[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_REGDST\(2));

\MEMWB|MEMWB_OUT_REGDST[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_REGDST\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWB|MEMWB_OUT_REGDST\(2));

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a31\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_0|altsyncram_kvc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 31,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 31,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a31_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a31_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a31_PORTBDATAOUT_bus\);

\MUX_JUMP|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux0~0_combout\ = (\UC|SIGNAL_JUMP\(0) & \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a31~portbdataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UC|SIGNAL_JUMP\(0),
	datab => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a31~portbdataout\,
	combout => \MUX_JUMP|Mux0~0_combout\);

\IDEX|IDEX_OUT_PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \IFID|OUT_PC_MAIS_4\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_PC\(0));

\MUX_JUMP|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux1~0_combout\ = (\UC|SIGNAL_JUMP\(0) & \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a30~portbdataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UC|SIGNAL_JUMP\(0),
	datab => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a30~portbdataout\,
	combout => \MUX_JUMP|Mux1~0_combout\);

\EXMEM|EXMEM_OUT_RESULT_ADDER[2]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[2]~84_combout\ = (\IDEX|IDEX_OUT_PC\(2) & (!\EXMEM|EXMEM_OUT_RESULT_ADDER[3]~83\)) # (!\IDEX|IDEX_OUT_PC\(2) & ((\EXMEM|EXMEM_OUT_RESULT_ADDER[3]~83\) # (GND)))
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[2]~85\ = CARRY((!\EXMEM|EXMEM_OUT_RESULT_ADDER[3]~83\) # (!\IDEX|IDEX_OUT_PC\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_PC\(2),
	datad => VCC,
	cin => \EXMEM|EXMEM_OUT_RESULT_ADDER[3]~83\,
	combout => \EXMEM|EXMEM_OUT_RESULT_ADDER[2]~84_combout\,
	cout => \EXMEM|EXMEM_OUT_RESULT_ADDER[2]~85\);

\EXMEM|EXMEM_OUT_RESULT_ADDER[1]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[1]~86_combout\ = (\IDEX|IDEX_OUT_PC\(1) & (\EXMEM|EXMEM_OUT_RESULT_ADDER[2]~85\ $ (GND))) # (!\IDEX|IDEX_OUT_PC\(1) & (!\EXMEM|EXMEM_OUT_RESULT_ADDER[2]~85\ & VCC))
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[1]~87\ = CARRY((\IDEX|IDEX_OUT_PC\(1) & !\EXMEM|EXMEM_OUT_RESULT_ADDER[2]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_PC\(1),
	datad => VCC,
	cin => \EXMEM|EXMEM_OUT_RESULT_ADDER[2]~85\,
	combout => \EXMEM|EXMEM_OUT_RESULT_ADDER[1]~86_combout\,
	cout => \EXMEM|EXMEM_OUT_RESULT_ADDER[1]~87\);

\EXMEM|EXMEM_OUT_RESULT_ADDER[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ADDER[1]~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ADDER\(1));

\MUX_JUMP|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux1~1_combout\ = (\EXMEM|EXMEM_OUT_MEM\(0) & (\EXMEM|EXMEM_OUT_ZERO~q\ & (\EXMEM|EXMEM_OUT_RESULT_ADDER\(1) & !\PC|PC[30]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEM|EXMEM_OUT_MEM\(0),
	datab => \EXMEM|EXMEM_OUT_ZERO~q\,
	datac => \EXMEM|EXMEM_OUT_RESULT_ADDER\(1),
	datad => \PC|PC[30]~2_combout\,
	combout => \MUX_JUMP|Mux1~1_combout\);

\PC|PC[30]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|PC[30]~0_combout\ = (\UC|SIGNAL_JUMP\(1)) # ((\UC|SIGNAL_JUMP\(0)) # ((\EXMEM|EXMEM_OUT_MEM\(0) & \EXMEM|EXMEM_OUT_ZERO~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEM|EXMEM_OUT_MEM\(0),
	datab => \EXMEM|EXMEM_OUT_ZERO~q\,
	datac => \UC|SIGNAL_JUMP\(1),
	datad => \UC|SIGNAL_JUMP\(0),
	combout => \PC|PC[30]~0_combout\);

\MUX_JUMP|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux1~2_combout\ = (\MUX_JUMP|Mux1~0_combout\) # ((\MUX_JUMP|Mux1~1_combout\) # ((\PC_INC|X[1]~56_combout\ & !\PC|PC[30]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_JUMP|Mux1~0_combout\,
	datab => \MUX_JUMP|Mux1~1_combout\,
	datac => \PC_INC|X[1]~56_combout\,
	datad => \PC|PC[30]~0_combout\,
	combout => \MUX_JUMP|Mux1~2_combout\);

\PC|PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_JUMP|Mux1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|PC\(1));

\MUX_JUMP|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux8~0_combout\ = (\UC|SIGNAL_JUMP\(0) & \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a23~portbdataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UC|SIGNAL_JUMP\(0),
	datab => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a23~portbdataout\,
	combout => \MUX_JUMP|Mux8~0_combout\);

\MUX_JUMP|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux9~0_combout\ = (\UC|SIGNAL_JUMP\(0) & \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a22~portbdataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UC|SIGNAL_JUMP\(0),
	datab => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a22~portbdataout\,
	combout => \MUX_JUMP|Mux9~0_combout\);

\MUX_JUMP|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux11~0_combout\ = (\UC|SIGNAL_JUMP\(0) & \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a20~portbdataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UC|SIGNAL_JUMP\(0),
	datab => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a20~portbdataout\,
	combout => \MUX_JUMP|Mux11~0_combout\);

\PC_INC|X[22]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[22]~14_combout\ = (\PC|PC\(22) & (!\PC_INC|X[23]~13\)) # (!\PC|PC\(22) & ((\PC_INC|X[23]~13\) # (GND)))
-- \PC_INC|X[22]~15\ = CARRY((!\PC_INC|X[23]~13\) # (!\PC|PC\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC\(22),
	datad => VCC,
	cin => \PC_INC|X[23]~13\,
	combout => \PC_INC|X[22]~14_combout\,
	cout => \PC_INC|X[22]~15\);

\IFID|OUT_PC_MAIS_4[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \PC_INC|X[22]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(22));

\IDEX|IDEX_OUT_PC[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \IFID|OUT_PC_MAIS_4\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_PC\(22));

\IDEX|IDEX_OUT_IMED[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \IFID|OUT_INSTR_MEM\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_IMED\(18));

\EXMEM|EXMEM_OUT_RESULT_ADDER[22]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[22]~44_combout\ = (\IDEX|IDEX_OUT_PC\(22) & ((\IDEX|IDEX_OUT_IMED\(18) & (\EXMEM|EXMEM_OUT_RESULT_ADDER[23]~43\ & VCC)) # (!\IDEX|IDEX_OUT_IMED\(18) & (!\EXMEM|EXMEM_OUT_RESULT_ADDER[23]~43\)))) # (!\IDEX|IDEX_OUT_PC\(22) & 
-- ((\IDEX|IDEX_OUT_IMED\(18) & (!\EXMEM|EXMEM_OUT_RESULT_ADDER[23]~43\)) # (!\IDEX|IDEX_OUT_IMED\(18) & ((\EXMEM|EXMEM_OUT_RESULT_ADDER[23]~43\) # (GND)))))
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[22]~45\ = CARRY((\IDEX|IDEX_OUT_PC\(22) & (!\IDEX|IDEX_OUT_IMED\(18) & !\EXMEM|EXMEM_OUT_RESULT_ADDER[23]~43\)) # (!\IDEX|IDEX_OUT_PC\(22) & ((!\EXMEM|EXMEM_OUT_RESULT_ADDER[23]~43\) # (!\IDEX|IDEX_OUT_IMED\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_PC\(22),
	datab => \IDEX|IDEX_OUT_IMED\(18),
	datad => VCC,
	cin => \EXMEM|EXMEM_OUT_RESULT_ADDER[23]~43\,
	combout => \EXMEM|EXMEM_OUT_RESULT_ADDER[22]~44_combout\,
	cout => \EXMEM|EXMEM_OUT_RESULT_ADDER[22]~45\);

\EXMEM|EXMEM_OUT_RESULT_ADDER[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ADDER[22]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ADDER\(22));

\MUX_JUMP|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux22~0_combout\ = (\PC|PC[30]~2_combout\ & (((\PC|PC[12]~1_combout\)))) # (!\PC|PC[30]~2_combout\ & ((\PC|PC[12]~1_combout\ & (\PC_INC|X[22]~14_combout\)) # (!\PC|PC[12]~1_combout\ & ((\EXMEM|EXMEM_OUT_RESULT_ADDER\(22))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC[30]~2_combout\,
	datab => \PC_INC|X[22]~14_combout\,
	datac => \PC|PC[12]~1_combout\,
	datad => \EXMEM|EXMEM_OUT_RESULT_ADDER\(22),
	combout => \MUX_JUMP|Mux22~0_combout\);

\MUX_JUMP|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux22~1_combout\ = (\PC|PC[30]~2_combout\ & ((\MUX_JUMP|Mux22~0_combout\ & ((\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a9~portbdataout\))) # (!\MUX_JUMP|Mux22~0_combout\ & (\IFID|OUT_INSTR_MEM\(18))))) # (!\PC|PC[30]~2_combout\ & 
-- (((\MUX_JUMP|Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(18),
	datab => \PC|PC[30]~2_combout\,
	datac => \MUX_JUMP|Mux22~0_combout\,
	datad => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a9~portbdataout\,
	combout => \MUX_JUMP|Mux22~1_combout\);

\PC|PC[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_JUMP|Mux22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|PC\(22));

\PC_INC|X[21]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[21]~16_combout\ = (\PC|PC\(21) & (\PC_INC|X[22]~15\ $ (GND))) # (!\PC|PC\(21) & (!\PC_INC|X[22]~15\ & VCC))
-- \PC_INC|X[21]~17\ = CARRY((\PC|PC\(21) & !\PC_INC|X[22]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC\(21),
	datad => VCC,
	cin => \PC_INC|X[22]~15\,
	combout => \PC_INC|X[21]~16_combout\,
	cout => \PC_INC|X[21]~17\);

\INST_MEM|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \INST_MEM|Mux21~0_combout\ = (\PC|PC\(30) & (\INST_MEM|Mux7~0_combout\ & (!\PC|PC\(31) & !\PC|PC\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC\(30),
	datab => \INST_MEM|Mux7~0_combout\,
	datac => \PC|PC\(31),
	datad => \PC|PC\(29),
	combout => \INST_MEM|Mux21~0_combout\);

\IFID|OUT_INSTR_MEM[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \INST_MEM|Mux21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_INSTR_MEM\(21));

\IFID|OUT_PC_MAIS_4[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \PC_INC|X[21]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(21));

\IDEX|IDEX_OUT_PC[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \IFID|OUT_PC_MAIS_4\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_PC\(21));

\IDEX|IDEX_OUT_IMED[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \IFID|OUT_INSTR_MEM\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_IMED\(21));

\EXMEM|EXMEM_OUT_RESULT_ADDER[21]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[21]~46_combout\ = ((\IDEX|IDEX_OUT_PC\(21) $ (\IDEX|IDEX_OUT_IMED\(21) $ (!\EXMEM|EXMEM_OUT_RESULT_ADDER[22]~45\)))) # (GND)
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[21]~47\ = CARRY((\IDEX|IDEX_OUT_PC\(21) & ((\IDEX|IDEX_OUT_IMED\(21)) # (!\EXMEM|EXMEM_OUT_RESULT_ADDER[22]~45\))) # (!\IDEX|IDEX_OUT_PC\(21) & (\IDEX|IDEX_OUT_IMED\(21) & !\EXMEM|EXMEM_OUT_RESULT_ADDER[22]~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_PC\(21),
	datab => \IDEX|IDEX_OUT_IMED\(21),
	datad => VCC,
	cin => \EXMEM|EXMEM_OUT_RESULT_ADDER[22]~45\,
	combout => \EXMEM|EXMEM_OUT_RESULT_ADDER[21]~46_combout\,
	cout => \EXMEM|EXMEM_OUT_RESULT_ADDER[21]~47\);

\EXMEM|EXMEM_OUT_RESULT_ADDER[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ADDER[21]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ADDER\(21));

\MUX_JUMP|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux21~0_combout\ = (\PC|PC[12]~1_combout\ & (((\PC|PC[30]~2_combout\)))) # (!\PC|PC[12]~1_combout\ & ((\PC|PC[30]~2_combout\ & (\IFID|OUT_INSTR_MEM\(21))) # (!\PC|PC[30]~2_combout\ & ((\EXMEM|EXMEM_OUT_RESULT_ADDER\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC[12]~1_combout\,
	datab => \IFID|OUT_INSTR_MEM\(21),
	datac => \PC|PC[30]~2_combout\,
	datad => \EXMEM|EXMEM_OUT_RESULT_ADDER\(21),
	combout => \MUX_JUMP|Mux21~0_combout\);

\MUX_JUMP|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux21~1_combout\ = (\PC|PC[12]~1_combout\ & ((\MUX_JUMP|Mux21~0_combout\ & ((\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a10~portbdataout\))) # (!\MUX_JUMP|Mux21~0_combout\ & (\PC_INC|X[21]~16_combout\)))) # (!\PC|PC[12]~1_combout\ & 
-- (((\MUX_JUMP|Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_INC|X[21]~16_combout\,
	datab => \PC|PC[12]~1_combout\,
	datac => \MUX_JUMP|Mux21~0_combout\,
	datad => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a10~portbdataout\,
	combout => \MUX_JUMP|Mux21~1_combout\);

\PC|PC[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_JUMP|Mux21~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|PC\(21));

\PC_INC|X[20]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[20]~18_combout\ = (\PC|PC\(20) & (!\PC_INC|X[21]~17\)) # (!\PC|PC\(20) & ((\PC_INC|X[21]~17\) # (GND)))
-- \PC_INC|X[20]~19\ = CARRY((!\PC_INC|X[21]~17\) # (!\PC|PC\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC\(20),
	datad => VCC,
	cin => \PC_INC|X[21]~17\,
	combout => \PC_INC|X[20]~18_combout\,
	cout => \PC_INC|X[20]~19\);

\IFID|OUT_PC_MAIS_4[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \PC_INC|X[20]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(20));

\IDEX|IDEX_OUT_PC[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \IFID|OUT_PC_MAIS_4\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_PC\(20));

\IDEX|IDEX_OUT_IMED[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \IFID|OUT_INSTR_MEM\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_IMED\(20));

\EXMEM|EXMEM_OUT_RESULT_ADDER[20]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[20]~48_combout\ = (\IDEX|IDEX_OUT_PC\(20) & ((\IDEX|IDEX_OUT_IMED\(20) & (\EXMEM|EXMEM_OUT_RESULT_ADDER[21]~47\ & VCC)) # (!\IDEX|IDEX_OUT_IMED\(20) & (!\EXMEM|EXMEM_OUT_RESULT_ADDER[21]~47\)))) # (!\IDEX|IDEX_OUT_PC\(20) & 
-- ((\IDEX|IDEX_OUT_IMED\(20) & (!\EXMEM|EXMEM_OUT_RESULT_ADDER[21]~47\)) # (!\IDEX|IDEX_OUT_IMED\(20) & ((\EXMEM|EXMEM_OUT_RESULT_ADDER[21]~47\) # (GND)))))
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[20]~49\ = CARRY((\IDEX|IDEX_OUT_PC\(20) & (!\IDEX|IDEX_OUT_IMED\(20) & !\EXMEM|EXMEM_OUT_RESULT_ADDER[21]~47\)) # (!\IDEX|IDEX_OUT_PC\(20) & ((!\EXMEM|EXMEM_OUT_RESULT_ADDER[21]~47\) # (!\IDEX|IDEX_OUT_IMED\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_PC\(20),
	datab => \IDEX|IDEX_OUT_IMED\(20),
	datad => VCC,
	cin => \EXMEM|EXMEM_OUT_RESULT_ADDER[21]~47\,
	combout => \EXMEM|EXMEM_OUT_RESULT_ADDER[20]~48_combout\,
	cout => \EXMEM|EXMEM_OUT_RESULT_ADDER[20]~49\);

\EXMEM|EXMEM_OUT_RESULT_ADDER[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ADDER[20]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ADDER\(20));

\MUX_JUMP|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux20~0_combout\ = (\PC|PC[30]~2_combout\ & (((\PC|PC[12]~1_combout\)))) # (!\PC|PC[30]~2_combout\ & ((\PC|PC[12]~1_combout\ & (\PC_INC|X[20]~18_combout\)) # (!\PC|PC[12]~1_combout\ & ((\EXMEM|EXMEM_OUT_RESULT_ADDER\(20))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC[30]~2_combout\,
	datab => \PC_INC|X[20]~18_combout\,
	datac => \PC|PC[12]~1_combout\,
	datad => \EXMEM|EXMEM_OUT_RESULT_ADDER\(20),
	combout => \MUX_JUMP|Mux20~0_combout\);

\MUX_JUMP|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux20~1_combout\ = (\PC|PC[30]~2_combout\ & ((\MUX_JUMP|Mux20~0_combout\ & ((\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a11~portbdataout\))) # (!\MUX_JUMP|Mux20~0_combout\ & (\IFID|OUT_INSTR_MEM\(20))))) # (!\PC|PC[30]~2_combout\ & 
-- (((\MUX_JUMP|Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(20),
	datab => \PC|PC[30]~2_combout\,
	datac => \MUX_JUMP|Mux20~0_combout\,
	datad => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a11~portbdataout\,
	combout => \MUX_JUMP|Mux20~1_combout\);

\PC|PC[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_JUMP|Mux20~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|PC\(20));

\PC_INC|X[19]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[19]~20_combout\ = (\PC|PC\(19) & (\PC_INC|X[20]~19\ $ (GND))) # (!\PC|PC\(19) & (!\PC_INC|X[20]~19\ & VCC))
-- \PC_INC|X[19]~21\ = CARRY((\PC|PC\(19) & !\PC_INC|X[20]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC\(19),
	datad => VCC,
	cin => \PC_INC|X[20]~19\,
	combout => \PC_INC|X[19]~20_combout\,
	cout => \PC_INC|X[19]~21\);

\IFID|OUT_PC_MAIS_4[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \PC_INC|X[19]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(19));

\IDEX|IDEX_OUT_PC[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \IFID|OUT_PC_MAIS_4\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_PC\(19));

\EXMEM|EXMEM_OUT_RESULT_ADDER[19]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[19]~50_combout\ = (\IDEX|IDEX_OUT_PC\(19) & (\EXMEM|EXMEM_OUT_RESULT_ADDER[20]~49\ $ (GND))) # (!\IDEX|IDEX_OUT_PC\(19) & (!\EXMEM|EXMEM_OUT_RESULT_ADDER[20]~49\ & VCC))
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[19]~51\ = CARRY((\IDEX|IDEX_OUT_PC\(19) & !\EXMEM|EXMEM_OUT_RESULT_ADDER[20]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_PC\(19),
	datad => VCC,
	cin => \EXMEM|EXMEM_OUT_RESULT_ADDER[20]~49\,
	combout => \EXMEM|EXMEM_OUT_RESULT_ADDER[19]~50_combout\,
	cout => \EXMEM|EXMEM_OUT_RESULT_ADDER[19]~51\);

\EXMEM|EXMEM_OUT_RESULT_ADDER[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ADDER[19]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ADDER\(19));

\MUX_JUMP|Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux19~2_combout\ = (\EXMEM|EXMEM_OUT_MEM\(0) & ((\EXMEM|EXMEM_OUT_ZERO~q\ & (\EXMEM|EXMEM_OUT_RESULT_ADDER\(19))) # (!\EXMEM|EXMEM_OUT_ZERO~q\ & ((\PC_INC|X[19]~20_combout\))))) # (!\EXMEM|EXMEM_OUT_MEM\(0) & (((\PC_INC|X[19]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEM|EXMEM_OUT_RESULT_ADDER\(19),
	datab => \PC_INC|X[19]~20_combout\,
	datac => \EXMEM|EXMEM_OUT_MEM\(0),
	datad => \EXMEM|EXMEM_OUT_ZERO~q\,
	combout => \MUX_JUMP|Mux19~2_combout\);

\MUX_JUMP|Mux19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux19~3_combout\ = (\UC|SIGNAL_JUMP\(0) & (((\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a12~portbdataout\)))) # (!\UC|SIGNAL_JUMP\(0) & (!\UC|SIGNAL_JUMP\(1) & ((\MUX_JUMP|Mux19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UC|SIGNAL_JUMP\(1),
	datab => \UC|SIGNAL_JUMP\(0),
	datac => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a12~portbdataout\,
	datad => \MUX_JUMP|Mux19~2_combout\,
	combout => \MUX_JUMP|Mux19~3_combout\);

\PC|PC[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_JUMP|Mux19~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|PC\(19));

\PC_INC|X[18]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[18]~22_combout\ = (\PC|PC\(18) & (!\PC_INC|X[19]~21\)) # (!\PC|PC\(18) & ((\PC_INC|X[19]~21\) # (GND)))
-- \PC_INC|X[18]~23\ = CARRY((!\PC_INC|X[19]~21\) # (!\PC|PC\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC\(18),
	datad => VCC,
	cin => \PC_INC|X[19]~21\,
	combout => \PC_INC|X[18]~22_combout\,
	cout => \PC_INC|X[18]~23\);

\IFID|OUT_PC_MAIS_4[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \PC_INC|X[18]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(18));

\IDEX|IDEX_OUT_PC[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \IFID|OUT_PC_MAIS_4\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_PC\(18));

\EXMEM|EXMEM_OUT_RESULT_ADDER[18]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[18]~52_combout\ = (\IDEX|IDEX_OUT_PC\(18) & ((\IDEX|IDEX_OUT_IMED\(18) & (\EXMEM|EXMEM_OUT_RESULT_ADDER[19]~51\ & VCC)) # (!\IDEX|IDEX_OUT_IMED\(18) & (!\EXMEM|EXMEM_OUT_RESULT_ADDER[19]~51\)))) # (!\IDEX|IDEX_OUT_PC\(18) & 
-- ((\IDEX|IDEX_OUT_IMED\(18) & (!\EXMEM|EXMEM_OUT_RESULT_ADDER[19]~51\)) # (!\IDEX|IDEX_OUT_IMED\(18) & ((\EXMEM|EXMEM_OUT_RESULT_ADDER[19]~51\) # (GND)))))
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[18]~53\ = CARRY((\IDEX|IDEX_OUT_PC\(18) & (!\IDEX|IDEX_OUT_IMED\(18) & !\EXMEM|EXMEM_OUT_RESULT_ADDER[19]~51\)) # (!\IDEX|IDEX_OUT_PC\(18) & ((!\EXMEM|EXMEM_OUT_RESULT_ADDER[19]~51\) # (!\IDEX|IDEX_OUT_IMED\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_PC\(18),
	datab => \IDEX|IDEX_OUT_IMED\(18),
	datad => VCC,
	cin => \EXMEM|EXMEM_OUT_RESULT_ADDER[19]~51\,
	combout => \EXMEM|EXMEM_OUT_RESULT_ADDER[18]~52_combout\,
	cout => \EXMEM|EXMEM_OUT_RESULT_ADDER[18]~53\);

\EXMEM|EXMEM_OUT_RESULT_ADDER[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ADDER[18]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ADDER\(18));

\MUX_JUMP|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux18~0_combout\ = (\PC|PC[12]~1_combout\ & (((\PC|PC[30]~2_combout\)))) # (!\PC|PC[12]~1_combout\ & ((\PC|PC[30]~2_combout\ & (\IFID|OUT_INSTR_MEM\(18))) # (!\PC|PC[30]~2_combout\ & ((\EXMEM|EXMEM_OUT_RESULT_ADDER\(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC[12]~1_combout\,
	datab => \IFID|OUT_INSTR_MEM\(18),
	datac => \PC|PC[30]~2_combout\,
	datad => \EXMEM|EXMEM_OUT_RESULT_ADDER\(18),
	combout => \MUX_JUMP|Mux18~0_combout\);

\MUX_JUMP|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux18~1_combout\ = (\PC|PC[12]~1_combout\ & ((\MUX_JUMP|Mux18~0_combout\ & ((\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a13~portbdataout\))) # (!\MUX_JUMP|Mux18~0_combout\ & (\PC_INC|X[18]~22_combout\)))) # (!\PC|PC[12]~1_combout\ & 
-- (((\MUX_JUMP|Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_INC|X[18]~22_combout\,
	datab => \PC|PC[12]~1_combout\,
	datac => \MUX_JUMP|Mux18~0_combout\,
	datad => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a13~portbdataout\,
	combout => \MUX_JUMP|Mux18~1_combout\);

\PC|PC[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_JUMP|Mux18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|PC\(18));

\PC_INC|X[17]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[17]~24_combout\ = (\PC|PC\(17) & (\PC_INC|X[18]~23\ $ (GND))) # (!\PC|PC\(17) & (!\PC_INC|X[18]~23\ & VCC))
-- \PC_INC|X[17]~25\ = CARRY((\PC|PC\(17) & !\PC_INC|X[18]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC\(17),
	datad => VCC,
	cin => \PC_INC|X[18]~23\,
	combout => \PC_INC|X[17]~24_combout\,
	cout => \PC_INC|X[17]~25\);

\IFID|OUT_PC_MAIS_4[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \PC_INC|X[17]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(17));

\IDEX|IDEX_OUT_PC[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \IFID|OUT_PC_MAIS_4\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_PC\(17));

\EXMEM|EXMEM_OUT_RESULT_ADDER[17]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[17]~54_combout\ = (\IDEX|IDEX_OUT_PC\(17) & (\EXMEM|EXMEM_OUT_RESULT_ADDER[18]~53\ $ (GND))) # (!\IDEX|IDEX_OUT_PC\(17) & (!\EXMEM|EXMEM_OUT_RESULT_ADDER[18]~53\ & VCC))
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[17]~55\ = CARRY((\IDEX|IDEX_OUT_PC\(17) & !\EXMEM|EXMEM_OUT_RESULT_ADDER[18]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_PC\(17),
	datad => VCC,
	cin => \EXMEM|EXMEM_OUT_RESULT_ADDER[18]~53\,
	combout => \EXMEM|EXMEM_OUT_RESULT_ADDER[17]~54_combout\,
	cout => \EXMEM|EXMEM_OUT_RESULT_ADDER[17]~55\);

\EXMEM|EXMEM_OUT_RESULT_ADDER[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ADDER[17]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ADDER\(17));

\MUX_JUMP|Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux17~2_combout\ = (\EXMEM|EXMEM_OUT_MEM\(0) & ((\EXMEM|EXMEM_OUT_ZERO~q\ & (\EXMEM|EXMEM_OUT_RESULT_ADDER\(17))) # (!\EXMEM|EXMEM_OUT_ZERO~q\ & ((\PC_INC|X[17]~24_combout\))))) # (!\EXMEM|EXMEM_OUT_MEM\(0) & (((\PC_INC|X[17]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEM|EXMEM_OUT_RESULT_ADDER\(17),
	datab => \PC_INC|X[17]~24_combout\,
	datac => \EXMEM|EXMEM_OUT_MEM\(0),
	datad => \EXMEM|EXMEM_OUT_ZERO~q\,
	combout => \MUX_JUMP|Mux17~2_combout\);

\MUX_JUMP|Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux17~3_combout\ = (\UC|SIGNAL_JUMP\(0) & (((\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a14~portbdataout\)))) # (!\UC|SIGNAL_JUMP\(0) & (!\UC|SIGNAL_JUMP\(1) & ((\MUX_JUMP|Mux17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UC|SIGNAL_JUMP\(1),
	datab => \UC|SIGNAL_JUMP\(0),
	datac => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a14~portbdataout\,
	datad => \MUX_JUMP|Mux17~2_combout\,
	combout => \MUX_JUMP|Mux17~3_combout\);

\PC|PC[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_JUMP|Mux17~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|PC\(17));

\PC_INC|X[16]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[16]~26_combout\ = (\PC|PC\(16) & (!\PC_INC|X[17]~25\)) # (!\PC|PC\(16) & ((\PC_INC|X[17]~25\) # (GND)))
-- \PC_INC|X[16]~27\ = CARRY((!\PC_INC|X[17]~25\) # (!\PC|PC\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC\(16),
	datad => VCC,
	cin => \PC_INC|X[17]~25\,
	combout => \PC_INC|X[16]~26_combout\,
	cout => \PC_INC|X[16]~27\);

\IFID|OUT_PC_MAIS_4[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \PC_INC|X[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(16));

\IDEX|IDEX_OUT_PC[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \IFID|OUT_PC_MAIS_4\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_PC\(16));

\EXMEM|EXMEM_OUT_RESULT_ADDER[16]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[16]~56_combout\ = (\IDEX|IDEX_OUT_PC\(16) & (!\EXMEM|EXMEM_OUT_RESULT_ADDER[17]~55\)) # (!\IDEX|IDEX_OUT_PC\(16) & ((\EXMEM|EXMEM_OUT_RESULT_ADDER[17]~55\) # (GND)))
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[16]~57\ = CARRY((!\EXMEM|EXMEM_OUT_RESULT_ADDER[17]~55\) # (!\IDEX|IDEX_OUT_PC\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_PC\(16),
	datad => VCC,
	cin => \EXMEM|EXMEM_OUT_RESULT_ADDER[17]~55\,
	combout => \EXMEM|EXMEM_OUT_RESULT_ADDER[16]~56_combout\,
	cout => \EXMEM|EXMEM_OUT_RESULT_ADDER[16]~57\);

\EXMEM|EXMEM_OUT_RESULT_ADDER[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ADDER[16]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ADDER\(16));

\MUX_JUMP|Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux16~2_combout\ = (\EXMEM|EXMEM_OUT_MEM\(0) & ((\EXMEM|EXMEM_OUT_ZERO~q\ & (\EXMEM|EXMEM_OUT_RESULT_ADDER\(16))) # (!\EXMEM|EXMEM_OUT_ZERO~q\ & ((\PC_INC|X[16]~26_combout\))))) # (!\EXMEM|EXMEM_OUT_MEM\(0) & (((\PC_INC|X[16]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEM|EXMEM_OUT_RESULT_ADDER\(16),
	datab => \PC_INC|X[16]~26_combout\,
	datac => \EXMEM|EXMEM_OUT_MEM\(0),
	datad => \EXMEM|EXMEM_OUT_ZERO~q\,
	combout => \MUX_JUMP|Mux16~2_combout\);

\MUX_JUMP|Mux16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux16~3_combout\ = (\UC|SIGNAL_JUMP\(0) & (((\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a15~portbdataout\)))) # (!\UC|SIGNAL_JUMP\(0) & (!\UC|SIGNAL_JUMP\(1) & ((\MUX_JUMP|Mux16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UC|SIGNAL_JUMP\(1),
	datab => \UC|SIGNAL_JUMP\(0),
	datac => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a15~portbdataout\,
	datad => \MUX_JUMP|Mux16~2_combout\,
	combout => \MUX_JUMP|Mux16~3_combout\);

\PC|PC[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_JUMP|Mux16~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|PC\(16));

\PC_INC|X[15]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[15]~28_combout\ = (\PC|PC\(15) & (\PC_INC|X[16]~27\ $ (GND))) # (!\PC|PC\(15) & (!\PC_INC|X[16]~27\ & VCC))
-- \PC_INC|X[15]~29\ = CARRY((\PC|PC\(15) & !\PC_INC|X[16]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC\(15),
	datad => VCC,
	cin => \PC_INC|X[16]~27\,
	combout => \PC_INC|X[15]~28_combout\,
	cout => \PC_INC|X[15]~29\);

\IFID|OUT_PC_MAIS_4[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \PC_INC|X[15]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(15));

\IDEX|IDEX_OUT_PC[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \IFID|OUT_PC_MAIS_4\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_PC\(15));

\EXMEM|EXMEM_OUT_RESULT_ADDER[15]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[15]~58_combout\ = (\IDEX|IDEX_OUT_PC\(15) & (\EXMEM|EXMEM_OUT_RESULT_ADDER[16]~57\ $ (GND))) # (!\IDEX|IDEX_OUT_PC\(15) & (!\EXMEM|EXMEM_OUT_RESULT_ADDER[16]~57\ & VCC))
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[15]~59\ = CARRY((\IDEX|IDEX_OUT_PC\(15) & !\EXMEM|EXMEM_OUT_RESULT_ADDER[16]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_PC\(15),
	datad => VCC,
	cin => \EXMEM|EXMEM_OUT_RESULT_ADDER[16]~57\,
	combout => \EXMEM|EXMEM_OUT_RESULT_ADDER[15]~58_combout\,
	cout => \EXMEM|EXMEM_OUT_RESULT_ADDER[15]~59\);

\EXMEM|EXMEM_OUT_RESULT_ADDER[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ADDER[15]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ADDER\(15));

\MUX_JUMP|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux15~0_combout\ = (\PC|PC[30]~2_combout\ & (((\PC|PC[12]~1_combout\)))) # (!\PC|PC[30]~2_combout\ & ((\PC|PC[12]~1_combout\ & (\PC_INC|X[15]~28_combout\)) # (!\PC|PC[12]~1_combout\ & ((\EXMEM|EXMEM_OUT_RESULT_ADDER\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC[30]~2_combout\,
	datab => \PC_INC|X[15]~28_combout\,
	datac => \PC|PC[12]~1_combout\,
	datad => \EXMEM|EXMEM_OUT_RESULT_ADDER\(15),
	combout => \MUX_JUMP|Mux15~0_combout\);

\MUX_JUMP|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux15~1_combout\ = (\PC|PC[30]~2_combout\ & ((\MUX_JUMP|Mux15~0_combout\ & ((\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a16~portbdataout\))) # (!\MUX_JUMP|Mux15~0_combout\ & (\IFID|OUT_INSTR_MEM\(15))))) # (!\PC|PC[30]~2_combout\ & 
-- (((\MUX_JUMP|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(15),
	datab => \PC|PC[30]~2_combout\,
	datac => \MUX_JUMP|Mux15~0_combout\,
	datad => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a16~portbdataout\,
	combout => \MUX_JUMP|Mux15~1_combout\);

\PC|PC[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_JUMP|Mux15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|PC\(15));

\PC_INC|X[14]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[14]~30_combout\ = (\PC|PC\(14) & (!\PC_INC|X[15]~29\)) # (!\PC|PC\(14) & ((\PC_INC|X[15]~29\) # (GND)))
-- \PC_INC|X[14]~31\ = CARRY((!\PC_INC|X[15]~29\) # (!\PC|PC\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC\(14),
	datad => VCC,
	cin => \PC_INC|X[15]~29\,
	combout => \PC_INC|X[14]~30_combout\,
	cout => \PC_INC|X[14]~31\);

\IFID|OUT_PC_MAIS_4[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \PC_INC|X[14]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(14));

\IDEX|IDEX_OUT_PC[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \IFID|OUT_PC_MAIS_4\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_PC\(14));

\EXMEM|EXMEM_OUT_RESULT_ADDER[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[14]~60_combout\ = (\IDEX|IDEX_OUT_PC\(14) & (!\EXMEM|EXMEM_OUT_RESULT_ADDER[15]~59\)) # (!\IDEX|IDEX_OUT_PC\(14) & ((\EXMEM|EXMEM_OUT_RESULT_ADDER[15]~59\) # (GND)))
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[14]~61\ = CARRY((!\EXMEM|EXMEM_OUT_RESULT_ADDER[15]~59\) # (!\IDEX|IDEX_OUT_PC\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_PC\(14),
	datad => VCC,
	cin => \EXMEM|EXMEM_OUT_RESULT_ADDER[15]~59\,
	combout => \EXMEM|EXMEM_OUT_RESULT_ADDER[14]~60_combout\,
	cout => \EXMEM|EXMEM_OUT_RESULT_ADDER[14]~61\);

\EXMEM|EXMEM_OUT_RESULT_ADDER[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ADDER[14]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ADDER\(14));

\MUX_JUMP|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux14~0_combout\ = (\PC|PC[12]~1_combout\ & (((\PC|PC[30]~2_combout\)))) # (!\PC|PC[12]~1_combout\ & ((\PC|PC[30]~2_combout\ & (\IFID|OUT_INSTR_MEM\(10))) # (!\PC|PC[30]~2_combout\ & ((\EXMEM|EXMEM_OUT_RESULT_ADDER\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC[12]~1_combout\,
	datab => \IFID|OUT_INSTR_MEM\(10),
	datac => \PC|PC[30]~2_combout\,
	datad => \EXMEM|EXMEM_OUT_RESULT_ADDER\(14),
	combout => \MUX_JUMP|Mux14~0_combout\);

\MUX_JUMP|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux14~1_combout\ = (\PC|PC[12]~1_combout\ & ((\MUX_JUMP|Mux14~0_combout\ & ((\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a17~portbdataout\))) # (!\MUX_JUMP|Mux14~0_combout\ & (\PC_INC|X[14]~30_combout\)))) # (!\PC|PC[12]~1_combout\ & 
-- (((\MUX_JUMP|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_INC|X[14]~30_combout\,
	datab => \PC|PC[12]~1_combout\,
	datac => \MUX_JUMP|Mux14~0_combout\,
	datad => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a17~portbdataout\,
	combout => \MUX_JUMP|Mux14~1_combout\);

\PC|PC[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_JUMP|Mux14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|PC\(14));

\PC_INC|X[13]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[13]~32_combout\ = (\PC|PC\(13) & (\PC_INC|X[14]~31\ $ (GND))) # (!\PC|PC\(13) & (!\PC_INC|X[14]~31\ & VCC))
-- \PC_INC|X[13]~33\ = CARRY((\PC|PC\(13) & !\PC_INC|X[14]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC\(13),
	datad => VCC,
	cin => \PC_INC|X[14]~31\,
	combout => \PC_INC|X[13]~32_combout\,
	cout => \PC_INC|X[13]~33\);

\IFID|OUT_PC_MAIS_4[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \PC_INC|X[13]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(13));

\IDEX|IDEX_OUT_PC[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \IFID|OUT_PC_MAIS_4\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_PC\(13));

\EXMEM|EXMEM_OUT_RESULT_ADDER[13]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[13]~62_combout\ = (\IDEX|IDEX_OUT_PC\(13) & (\EXMEM|EXMEM_OUT_RESULT_ADDER[14]~61\ $ (GND))) # (!\IDEX|IDEX_OUT_PC\(13) & (!\EXMEM|EXMEM_OUT_RESULT_ADDER[14]~61\ & VCC))
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[13]~63\ = CARRY((\IDEX|IDEX_OUT_PC\(13) & !\EXMEM|EXMEM_OUT_RESULT_ADDER[14]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_PC\(13),
	datad => VCC,
	cin => \EXMEM|EXMEM_OUT_RESULT_ADDER[14]~61\,
	combout => \EXMEM|EXMEM_OUT_RESULT_ADDER[13]~62_combout\,
	cout => \EXMEM|EXMEM_OUT_RESULT_ADDER[13]~63\);

\EXMEM|EXMEM_OUT_RESULT_ADDER[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ADDER[13]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ADDER\(13));

\MUX_JUMP|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux13~0_combout\ = (\PC|PC[30]~2_combout\ & (((\PC|PC[12]~1_combout\)))) # (!\PC|PC[30]~2_combout\ & ((\PC|PC[12]~1_combout\ & (\PC_INC|X[13]~32_combout\)) # (!\PC|PC[12]~1_combout\ & ((\EXMEM|EXMEM_OUT_RESULT_ADDER\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC[30]~2_combout\,
	datab => \PC_INC|X[13]~32_combout\,
	datac => \PC|PC[12]~1_combout\,
	datad => \EXMEM|EXMEM_OUT_RESULT_ADDER\(13),
	combout => \MUX_JUMP|Mux13~0_combout\);

\MUX_JUMP|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux13~1_combout\ = (\PC|PC[30]~2_combout\ & ((\MUX_JUMP|Mux13~0_combout\ & ((\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a18~portbdataout\))) # (!\MUX_JUMP|Mux13~0_combout\ & (\IFID|OUT_INSTR_MEM\(13))))) # (!\PC|PC[30]~2_combout\ & 
-- (((\MUX_JUMP|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(13),
	datab => \PC|PC[30]~2_combout\,
	datac => \MUX_JUMP|Mux13~0_combout\,
	datad => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a18~portbdataout\,
	combout => \MUX_JUMP|Mux13~1_combout\);

\PC|PC[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_JUMP|Mux13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|PC\(13));

\PC_INC|X[12]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[12]~34_combout\ = (\PC|PC\(12) & (!\PC_INC|X[13]~33\)) # (!\PC|PC\(12) & ((\PC_INC|X[13]~33\) # (GND)))
-- \PC_INC|X[12]~35\ = CARRY((!\PC_INC|X[13]~33\) # (!\PC|PC\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC\(12),
	datad => VCC,
	cin => \PC_INC|X[13]~33\,
	combout => \PC_INC|X[12]~34_combout\,
	cout => \PC_INC|X[12]~35\);

\IFID|OUT_PC_MAIS_4[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \PC_INC|X[12]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(12));

\IDEX|IDEX_OUT_PC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \IFID|OUT_PC_MAIS_4\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_PC\(12));

\EXMEM|EXMEM_OUT_RESULT_ADDER[12]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[12]~64_combout\ = (\IDEX|IDEX_OUT_PC\(12) & (!\EXMEM|EXMEM_OUT_RESULT_ADDER[13]~63\)) # (!\IDEX|IDEX_OUT_PC\(12) & ((\EXMEM|EXMEM_OUT_RESULT_ADDER[13]~63\) # (GND)))
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[12]~65\ = CARRY((!\EXMEM|EXMEM_OUT_RESULT_ADDER[13]~63\) # (!\IDEX|IDEX_OUT_PC\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_PC\(12),
	datad => VCC,
	cin => \EXMEM|EXMEM_OUT_RESULT_ADDER[13]~63\,
	combout => \EXMEM|EXMEM_OUT_RESULT_ADDER[12]~64_combout\,
	cout => \EXMEM|EXMEM_OUT_RESULT_ADDER[12]~65\);

\EXMEM|EXMEM_OUT_RESULT_ADDER[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ADDER[12]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ADDER\(12));

\MUX_JUMP|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux12~0_combout\ = (\PC|PC[12]~1_combout\ & (((\PC|PC[30]~2_combout\)))) # (!\PC|PC[12]~1_combout\ & ((\PC|PC[30]~2_combout\ & (\IFID|OUT_INSTR_MEM\(12))) # (!\PC|PC[30]~2_combout\ & ((\EXMEM|EXMEM_OUT_RESULT_ADDER\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC[12]~1_combout\,
	datab => \IFID|OUT_INSTR_MEM\(12),
	datac => \PC|PC[30]~2_combout\,
	datad => \EXMEM|EXMEM_OUT_RESULT_ADDER\(12),
	combout => \MUX_JUMP|Mux12~0_combout\);

\MUX_JUMP|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux12~1_combout\ = (\PC|PC[12]~1_combout\ & ((\MUX_JUMP|Mux12~0_combout\ & ((\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a19~portbdataout\))) # (!\MUX_JUMP|Mux12~0_combout\ & (\PC_INC|X[12]~34_combout\)))) # (!\PC|PC[12]~1_combout\ & 
-- (((\MUX_JUMP|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_INC|X[12]~34_combout\,
	datab => \PC|PC[12]~1_combout\,
	datac => \MUX_JUMP|Mux12~0_combout\,
	datad => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a19~portbdataout\,
	combout => \MUX_JUMP|Mux12~1_combout\);

\PC|PC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_JUMP|Mux12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|PC\(12));

\PC_INC|X[11]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[11]~36_combout\ = (\PC|PC\(11) & (\PC_INC|X[12]~35\ $ (GND))) # (!\PC|PC\(11) & (!\PC_INC|X[12]~35\ & VCC))
-- \PC_INC|X[11]~37\ = CARRY((\PC|PC\(11) & !\PC_INC|X[12]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC\(11),
	datad => VCC,
	cin => \PC_INC|X[12]~35\,
	combout => \PC_INC|X[11]~36_combout\,
	cout => \PC_INC|X[11]~37\);

\IFID|OUT_PC_MAIS_4[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \PC_INC|X[11]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(11));

\IDEX|IDEX_OUT_PC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \IFID|OUT_PC_MAIS_4\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_PC\(11));

\EXMEM|EXMEM_OUT_RESULT_ADDER[11]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[11]~66_combout\ = (\IDEX|IDEX_OUT_PC\(11) & (\EXMEM|EXMEM_OUT_RESULT_ADDER[12]~65\ $ (GND))) # (!\IDEX|IDEX_OUT_PC\(11) & (!\EXMEM|EXMEM_OUT_RESULT_ADDER[12]~65\ & VCC))
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[11]~67\ = CARRY((\IDEX|IDEX_OUT_PC\(11) & !\EXMEM|EXMEM_OUT_RESULT_ADDER[12]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_PC\(11),
	datad => VCC,
	cin => \EXMEM|EXMEM_OUT_RESULT_ADDER[12]~65\,
	combout => \EXMEM|EXMEM_OUT_RESULT_ADDER[11]~66_combout\,
	cout => \EXMEM|EXMEM_OUT_RESULT_ADDER[11]~67\);

\EXMEM|EXMEM_OUT_RESULT_ADDER[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ADDER[11]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ADDER\(11));

\MUX_JUMP|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux11~1_combout\ = (\EXMEM|EXMEM_OUT_MEM\(0) & (\EXMEM|EXMEM_OUT_ZERO~q\ & (\EXMEM|EXMEM_OUT_RESULT_ADDER\(11) & !\PC|PC[30]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEM|EXMEM_OUT_MEM\(0),
	datab => \EXMEM|EXMEM_OUT_ZERO~q\,
	datac => \EXMEM|EXMEM_OUT_RESULT_ADDER\(11),
	datad => \PC|PC[30]~2_combout\,
	combout => \MUX_JUMP|Mux11~1_combout\);

\MUX_JUMP|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux11~2_combout\ = (\MUX_JUMP|Mux11~0_combout\) # ((\MUX_JUMP|Mux11~1_combout\) # ((\PC_INC|X[11]~36_combout\ & !\PC|PC[30]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_JUMP|Mux11~0_combout\,
	datab => \MUX_JUMP|Mux11~1_combout\,
	datac => \PC_INC|X[11]~36_combout\,
	datad => \PC|PC[30]~0_combout\,
	combout => \MUX_JUMP|Mux11~2_combout\);

\PC|PC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_JUMP|Mux11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|PC\(11));

\PC_INC|X[10]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[10]~38_combout\ = (\PC|PC\(10) & (!\PC_INC|X[11]~37\)) # (!\PC|PC\(10) & ((\PC_INC|X[11]~37\) # (GND)))
-- \PC_INC|X[10]~39\ = CARRY((!\PC_INC|X[11]~37\) # (!\PC|PC\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC\(10),
	datad => VCC,
	cin => \PC_INC|X[11]~37\,
	combout => \PC_INC|X[10]~38_combout\,
	cout => \PC_INC|X[10]~39\);

\IFID|OUT_PC_MAIS_4[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \PC_INC|X[10]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(10));

\IDEX|IDEX_OUT_PC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \IFID|OUT_PC_MAIS_4\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_PC\(10));

\EXMEM|EXMEM_OUT_RESULT_ADDER[10]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[10]~68_combout\ = (\IDEX|IDEX_OUT_PC\(10) & (!\EXMEM|EXMEM_OUT_RESULT_ADDER[11]~67\)) # (!\IDEX|IDEX_OUT_PC\(10) & ((\EXMEM|EXMEM_OUT_RESULT_ADDER[11]~67\) # (GND)))
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[10]~69\ = CARRY((!\EXMEM|EXMEM_OUT_RESULT_ADDER[11]~67\) # (!\IDEX|IDEX_OUT_PC\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_PC\(10),
	datad => VCC,
	cin => \EXMEM|EXMEM_OUT_RESULT_ADDER[11]~67\,
	combout => \EXMEM|EXMEM_OUT_RESULT_ADDER[10]~68_combout\,
	cout => \EXMEM|EXMEM_OUT_RESULT_ADDER[10]~69\);

\EXMEM|EXMEM_OUT_RESULT_ADDER[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ADDER[10]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ADDER\(10));

\MUX_JUMP|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux10~0_combout\ = (\PC|PC[30]~2_combout\ & (((\PC|PC[12]~1_combout\)))) # (!\PC|PC[30]~2_combout\ & ((\PC|PC[12]~1_combout\ & (\PC_INC|X[10]~38_combout\)) # (!\PC|PC[12]~1_combout\ & ((\EXMEM|EXMEM_OUT_RESULT_ADDER\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC[30]~2_combout\,
	datab => \PC_INC|X[10]~38_combout\,
	datac => \PC|PC[12]~1_combout\,
	datad => \EXMEM|EXMEM_OUT_RESULT_ADDER\(10),
	combout => \MUX_JUMP|Mux10~0_combout\);

\MUX_JUMP|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux10~1_combout\ = (\PC|PC[30]~2_combout\ & ((\MUX_JUMP|Mux10~0_combout\ & ((\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a21~portbdataout\))) # (!\MUX_JUMP|Mux10~0_combout\ & (\IFID|OUT_INSTR_MEM\(10))))) # (!\PC|PC[30]~2_combout\ & 
-- (((\MUX_JUMP|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(10),
	datab => \PC|PC[30]~2_combout\,
	datac => \MUX_JUMP|Mux10~0_combout\,
	datad => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a21~portbdataout\,
	combout => \MUX_JUMP|Mux10~1_combout\);

\PC|PC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_JUMP|Mux10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|PC\(10));

\PC_INC|X[9]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[9]~40_combout\ = (\PC|PC\(9) & (\PC_INC|X[10]~39\ $ (GND))) # (!\PC|PC\(9) & (!\PC_INC|X[10]~39\ & VCC))
-- \PC_INC|X[9]~41\ = CARRY((\PC|PC\(9) & !\PC_INC|X[10]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC\(9),
	datad => VCC,
	cin => \PC_INC|X[10]~39\,
	combout => \PC_INC|X[9]~40_combout\,
	cout => \PC_INC|X[9]~41\);

\IFID|OUT_PC_MAIS_4[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \PC_INC|X[9]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(9));

\IDEX|IDEX_OUT_PC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \IFID|OUT_PC_MAIS_4\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_PC\(9));

\EXMEM|EXMEM_OUT_RESULT_ADDER[9]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[9]~70_combout\ = (\IDEX|IDEX_OUT_PC\(9) & (\EXMEM|EXMEM_OUT_RESULT_ADDER[10]~69\ $ (GND))) # (!\IDEX|IDEX_OUT_PC\(9) & (!\EXMEM|EXMEM_OUT_RESULT_ADDER[10]~69\ & VCC))
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[9]~71\ = CARRY((\IDEX|IDEX_OUT_PC\(9) & !\EXMEM|EXMEM_OUT_RESULT_ADDER[10]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_PC\(9),
	datad => VCC,
	cin => \EXMEM|EXMEM_OUT_RESULT_ADDER[10]~69\,
	combout => \EXMEM|EXMEM_OUT_RESULT_ADDER[9]~70_combout\,
	cout => \EXMEM|EXMEM_OUT_RESULT_ADDER[9]~71\);

\EXMEM|EXMEM_OUT_RESULT_ADDER[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ADDER[9]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ADDER\(9));

\MUX_JUMP|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux9~1_combout\ = (\EXMEM|EXMEM_OUT_MEM\(0) & (\EXMEM|EXMEM_OUT_ZERO~q\ & (\EXMEM|EXMEM_OUT_RESULT_ADDER\(9) & !\PC|PC[30]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEM|EXMEM_OUT_MEM\(0),
	datab => \EXMEM|EXMEM_OUT_ZERO~q\,
	datac => \EXMEM|EXMEM_OUT_RESULT_ADDER\(9),
	datad => \PC|PC[30]~2_combout\,
	combout => \MUX_JUMP|Mux9~1_combout\);

\MUX_JUMP|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux9~2_combout\ = (\MUX_JUMP|Mux9~0_combout\) # ((\MUX_JUMP|Mux9~1_combout\) # ((\PC_INC|X[9]~40_combout\ & !\PC|PC[30]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_JUMP|Mux9~0_combout\,
	datab => \MUX_JUMP|Mux9~1_combout\,
	datac => \PC_INC|X[9]~40_combout\,
	datad => \PC|PC[30]~0_combout\,
	combout => \MUX_JUMP|Mux9~2_combout\);

\PC|PC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_JUMP|Mux9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|PC\(9));

\PC_INC|X[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[8]~42_combout\ = (\PC|PC\(8) & (!\PC_INC|X[9]~41\)) # (!\PC|PC\(8) & ((\PC_INC|X[9]~41\) # (GND)))
-- \PC_INC|X[8]~43\ = CARRY((!\PC_INC|X[9]~41\) # (!\PC|PC\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC\(8),
	datad => VCC,
	cin => \PC_INC|X[9]~41\,
	combout => \PC_INC|X[8]~42_combout\,
	cout => \PC_INC|X[8]~43\);

\IFID|OUT_PC_MAIS_4[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \PC_INC|X[8]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(8));

\IDEX|IDEX_OUT_PC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \IFID|OUT_PC_MAIS_4\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_PC\(8));

\EXMEM|EXMEM_OUT_RESULT_ADDER[8]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[8]~72_combout\ = (\IDEX|IDEX_OUT_PC\(8) & (!\EXMEM|EXMEM_OUT_RESULT_ADDER[9]~71\)) # (!\IDEX|IDEX_OUT_PC\(8) & ((\EXMEM|EXMEM_OUT_RESULT_ADDER[9]~71\) # (GND)))
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[8]~73\ = CARRY((!\EXMEM|EXMEM_OUT_RESULT_ADDER[9]~71\) # (!\IDEX|IDEX_OUT_PC\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_PC\(8),
	datad => VCC,
	cin => \EXMEM|EXMEM_OUT_RESULT_ADDER[9]~71\,
	combout => \EXMEM|EXMEM_OUT_RESULT_ADDER[8]~72_combout\,
	cout => \EXMEM|EXMEM_OUT_RESULT_ADDER[8]~73\);

\EXMEM|EXMEM_OUT_RESULT_ADDER[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ADDER[8]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ADDER\(8));

\MUX_JUMP|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux8~1_combout\ = (\EXMEM|EXMEM_OUT_MEM\(0) & (\EXMEM|EXMEM_OUT_ZERO~q\ & (\EXMEM|EXMEM_OUT_RESULT_ADDER\(8) & !\PC|PC[30]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEM|EXMEM_OUT_MEM\(0),
	datab => \EXMEM|EXMEM_OUT_ZERO~q\,
	datac => \EXMEM|EXMEM_OUT_RESULT_ADDER\(8),
	datad => \PC|PC[30]~2_combout\,
	combout => \MUX_JUMP|Mux8~1_combout\);

\MUX_JUMP|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux8~2_combout\ = (\MUX_JUMP|Mux8~0_combout\) # ((\MUX_JUMP|Mux8~1_combout\) # ((\PC_INC|X[8]~42_combout\ & !\PC|PC[30]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_JUMP|Mux8~0_combout\,
	datab => \MUX_JUMP|Mux8~1_combout\,
	datac => \PC_INC|X[8]~42_combout\,
	datad => \PC|PC[30]~0_combout\,
	combout => \MUX_JUMP|Mux8~2_combout\);

\PC|PC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_JUMP|Mux8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|PC\(8));

\PC_INC|X[7]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[7]~44_combout\ = (\PC|PC\(7) & (\PC_INC|X[8]~43\ $ (GND))) # (!\PC|PC\(7) & (!\PC_INC|X[8]~43\ & VCC))
-- \PC_INC|X[7]~45\ = CARRY((\PC|PC\(7) & !\PC_INC|X[8]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC\(7),
	datad => VCC,
	cin => \PC_INC|X[8]~43\,
	combout => \PC_INC|X[7]~44_combout\,
	cout => \PC_INC|X[7]~45\);

\IFID|OUT_PC_MAIS_4[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \PC_INC|X[7]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(7));

\IDEX|IDEX_OUT_PC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \IFID|OUT_PC_MAIS_4\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_PC\(7));

\EXMEM|EXMEM_OUT_RESULT_ADDER[7]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[7]~74_combout\ = (\IDEX|IDEX_OUT_PC\(7) & (\EXMEM|EXMEM_OUT_RESULT_ADDER[8]~73\ $ (GND))) # (!\IDEX|IDEX_OUT_PC\(7) & (!\EXMEM|EXMEM_OUT_RESULT_ADDER[8]~73\ & VCC))
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[7]~75\ = CARRY((\IDEX|IDEX_OUT_PC\(7) & !\EXMEM|EXMEM_OUT_RESULT_ADDER[8]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_PC\(7),
	datad => VCC,
	cin => \EXMEM|EXMEM_OUT_RESULT_ADDER[8]~73\,
	combout => \EXMEM|EXMEM_OUT_RESULT_ADDER[7]~74_combout\,
	cout => \EXMEM|EXMEM_OUT_RESULT_ADDER[7]~75\);

\EXMEM|EXMEM_OUT_RESULT_ADDER[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ADDER[7]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ADDER\(7));

\MUX_JUMP|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux7~0_combout\ = (\PC|PC[12]~1_combout\ & (((\PC|PC[30]~2_combout\)))) # (!\PC|PC[12]~1_combout\ & ((\PC|PC[30]~2_combout\ & (\IFID|OUT_INSTR_MEM\(7))) # (!\PC|PC[30]~2_combout\ & ((\EXMEM|EXMEM_OUT_RESULT_ADDER\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC[12]~1_combout\,
	datab => \IFID|OUT_INSTR_MEM\(7),
	datac => \PC|PC[30]~2_combout\,
	datad => \EXMEM|EXMEM_OUT_RESULT_ADDER\(7),
	combout => \MUX_JUMP|Mux7~0_combout\);

\MUX_JUMP|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux7~1_combout\ = (\PC|PC[12]~1_combout\ & ((\MUX_JUMP|Mux7~0_combout\ & ((\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a24~portbdataout\))) # (!\MUX_JUMP|Mux7~0_combout\ & (\PC_INC|X[7]~44_combout\)))) # (!\PC|PC[12]~1_combout\ & 
-- (((\MUX_JUMP|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_INC|X[7]~44_combout\,
	datab => \PC|PC[12]~1_combout\,
	datac => \MUX_JUMP|Mux7~0_combout\,
	datad => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a24~portbdataout\,
	combout => \MUX_JUMP|Mux7~1_combout\);

\PC|PC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_JUMP|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|PC\(7));

\PC_INC|X[6]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[6]~46_combout\ = (\PC|PC\(6) & (!\PC_INC|X[7]~45\)) # (!\PC|PC\(6) & ((\PC_INC|X[7]~45\) # (GND)))
-- \PC_INC|X[6]~47\ = CARRY((!\PC_INC|X[7]~45\) # (!\PC|PC\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC\(6),
	datad => VCC,
	cin => \PC_INC|X[7]~45\,
	combout => \PC_INC|X[6]~46_combout\,
	cout => \PC_INC|X[6]~47\);

\IFID|OUT_PC_MAIS_4[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \PC_INC|X[6]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(6));

\IDEX|IDEX_OUT_PC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \IFID|OUT_PC_MAIS_4\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_PC\(6));

\EXMEM|EXMEM_OUT_RESULT_ADDER[6]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[6]~76_combout\ = (\IDEX|IDEX_OUT_PC\(6) & (!\EXMEM|EXMEM_OUT_RESULT_ADDER[7]~75\)) # (!\IDEX|IDEX_OUT_PC\(6) & ((\EXMEM|EXMEM_OUT_RESULT_ADDER[7]~75\) # (GND)))
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[6]~77\ = CARRY((!\EXMEM|EXMEM_OUT_RESULT_ADDER[7]~75\) # (!\IDEX|IDEX_OUT_PC\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_PC\(6),
	datad => VCC,
	cin => \EXMEM|EXMEM_OUT_RESULT_ADDER[7]~75\,
	combout => \EXMEM|EXMEM_OUT_RESULT_ADDER[6]~76_combout\,
	cout => \EXMEM|EXMEM_OUT_RESULT_ADDER[6]~77\);

\EXMEM|EXMEM_OUT_RESULT_ADDER[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ADDER[6]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ADDER\(6));

\MUX_JUMP|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux6~0_combout\ = (\PC|PC[30]~2_combout\ & (((\PC|PC[12]~1_combout\)))) # (!\PC|PC[30]~2_combout\ & ((\PC|PC[12]~1_combout\ & (\PC_INC|X[6]~46_combout\)) # (!\PC|PC[12]~1_combout\ & ((\EXMEM|EXMEM_OUT_RESULT_ADDER\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC[30]~2_combout\,
	datab => \PC_INC|X[6]~46_combout\,
	datac => \PC|PC[12]~1_combout\,
	datad => \EXMEM|EXMEM_OUT_RESULT_ADDER\(6),
	combout => \MUX_JUMP|Mux6~0_combout\);

\MUX_JUMP|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux6~1_combout\ = (\PC|PC[30]~2_combout\ & ((\MUX_JUMP|Mux6~0_combout\ & ((\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a25~portbdataout\))) # (!\MUX_JUMP|Mux6~0_combout\ & (\IFID|OUT_INSTR_MEM\(2))))) # (!\PC|PC[30]~2_combout\ & 
-- (((\MUX_JUMP|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(2),
	datab => \PC|PC[30]~2_combout\,
	datac => \MUX_JUMP|Mux6~0_combout\,
	datad => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a25~portbdataout\,
	combout => \MUX_JUMP|Mux6~1_combout\);

\PC|PC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_JUMP|Mux6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|PC\(6));

\PC_INC|X[5]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[5]~48_combout\ = (\PC|PC\(5) & (\PC_INC|X[6]~47\ $ (GND))) # (!\PC|PC\(5) & (!\PC_INC|X[6]~47\ & VCC))
-- \PC_INC|X[5]~49\ = CARRY((\PC|PC\(5) & !\PC_INC|X[6]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC\(5),
	datad => VCC,
	cin => \PC_INC|X[6]~47\,
	combout => \PC_INC|X[5]~48_combout\,
	cout => \PC_INC|X[5]~49\);

\IFID|OUT_PC_MAIS_4[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \PC_INC|X[5]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(5));

\IDEX|IDEX_OUT_PC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \IFID|OUT_PC_MAIS_4\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_PC\(5));

\EXMEM|EXMEM_OUT_RESULT_ADDER[5]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[5]~78_combout\ = (\IDEX|IDEX_OUT_PC\(5) & (\EXMEM|EXMEM_OUT_RESULT_ADDER[6]~77\ $ (GND))) # (!\IDEX|IDEX_OUT_PC\(5) & (!\EXMEM|EXMEM_OUT_RESULT_ADDER[6]~77\ & VCC))
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[5]~79\ = CARRY((\IDEX|IDEX_OUT_PC\(5) & !\EXMEM|EXMEM_OUT_RESULT_ADDER[6]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_PC\(5),
	datad => VCC,
	cin => \EXMEM|EXMEM_OUT_RESULT_ADDER[6]~77\,
	combout => \EXMEM|EXMEM_OUT_RESULT_ADDER[5]~78_combout\,
	cout => \EXMEM|EXMEM_OUT_RESULT_ADDER[5]~79\);

\EXMEM|EXMEM_OUT_RESULT_ADDER[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ADDER[5]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ADDER\(5));

\MUX_JUMP|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux5~0_combout\ = (\PC|PC[12]~1_combout\ & (((\PC|PC[30]~2_combout\)))) # (!\PC|PC[12]~1_combout\ & ((\PC|PC[30]~2_combout\ & (\IFID|OUT_INSTR_MEM\(5))) # (!\PC|PC[30]~2_combout\ & ((\EXMEM|EXMEM_OUT_RESULT_ADDER\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC[12]~1_combout\,
	datab => \IFID|OUT_INSTR_MEM\(5),
	datac => \PC|PC[30]~2_combout\,
	datad => \EXMEM|EXMEM_OUT_RESULT_ADDER\(5),
	combout => \MUX_JUMP|Mux5~0_combout\);

\MUX_JUMP|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux5~1_combout\ = (\PC|PC[12]~1_combout\ & ((\MUX_JUMP|Mux5~0_combout\ & ((\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a26~portbdataout\))) # (!\MUX_JUMP|Mux5~0_combout\ & (\PC_INC|X[5]~48_combout\)))) # (!\PC|PC[12]~1_combout\ & 
-- (((\MUX_JUMP|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_INC|X[5]~48_combout\,
	datab => \PC|PC[12]~1_combout\,
	datac => \MUX_JUMP|Mux5~0_combout\,
	datad => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a26~portbdataout\,
	combout => \MUX_JUMP|Mux5~1_combout\);

\PC|PC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_JUMP|Mux5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|PC\(5));

\PC_INC|X[4]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[4]~50_combout\ = (\PC|PC\(4) & (!\PC_INC|X[5]~49\)) # (!\PC|PC\(4) & ((\PC_INC|X[5]~49\) # (GND)))
-- \PC_INC|X[4]~51\ = CARRY((!\PC_INC|X[5]~49\) # (!\PC|PC\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC\(4),
	datad => VCC,
	cin => \PC_INC|X[5]~49\,
	combout => \PC_INC|X[4]~50_combout\,
	cout => \PC_INC|X[4]~51\);

\PC_INC|X[3]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[3]~52_combout\ = (\PC|PC\(3) & (\PC_INC|X[4]~51\ $ (GND))) # (!\PC|PC\(3) & (!\PC_INC|X[4]~51\ & VCC))
-- \PC_INC|X[3]~53\ = CARRY((\PC|PC\(3) & !\PC_INC|X[4]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC\(3),
	datad => VCC,
	cin => \PC_INC|X[4]~51\,
	combout => \PC_INC|X[3]~52_combout\,
	cout => \PC_INC|X[3]~53\);

\PC_INC|X[2]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[2]~54_combout\ = (\PC|PC\(2) & (!\PC_INC|X[3]~53\)) # (!\PC|PC\(2) & ((\PC_INC|X[3]~53\) # (GND)))
-- \PC_INC|X[2]~55\ = CARRY((!\PC_INC|X[3]~53\) # (!\PC|PC\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC\(2),
	datad => VCC,
	cin => \PC_INC|X[3]~53\,
	combout => \PC_INC|X[2]~54_combout\,
	cout => \PC_INC|X[2]~55\);

\PC_INC|X[1]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[1]~56_combout\ = (\PC|PC\(1) & (\PC_INC|X[2]~55\ $ (GND))) # (!\PC|PC\(1) & (!\PC_INC|X[2]~55\ & VCC))
-- \PC_INC|X[1]~57\ = CARRY((\PC|PC\(1) & !\PC_INC|X[2]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC\(1),
	datad => VCC,
	cin => \PC_INC|X[2]~55\,
	combout => \PC_INC|X[1]~56_combout\,
	cout => \PC_INC|X[1]~57\);

\IFID|OUT_PC_MAIS_4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \PC_INC|X[1]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(1));

\IDEX|IDEX_OUT_PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \IFID|OUT_PC_MAIS_4\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_PC\(1));

\EXMEM|EXMEM_OUT_RESULT_ADDER[0]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[0]~88_combout\ = \IDEX|IDEX_OUT_PC\(0) $ (\EXMEM|EXMEM_OUT_RESULT_ADDER[1]~87\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_PC\(0),
	cin => \EXMEM|EXMEM_OUT_RESULT_ADDER[1]~87\,
	combout => \EXMEM|EXMEM_OUT_RESULT_ADDER[0]~88_combout\);

\EXMEM|EXMEM_OUT_RESULT_ADDER[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ADDER[0]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ADDER\(0));

\MUX_JUMP|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux0~1_combout\ = (\EXMEM|EXMEM_OUT_MEM\(0) & (\EXMEM|EXMEM_OUT_ZERO~q\ & (\EXMEM|EXMEM_OUT_RESULT_ADDER\(0) & !\PC|PC[30]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEM|EXMEM_OUT_MEM\(0),
	datab => \EXMEM|EXMEM_OUT_ZERO~q\,
	datac => \EXMEM|EXMEM_OUT_RESULT_ADDER\(0),
	datad => \PC|PC[30]~2_combout\,
	combout => \MUX_JUMP|Mux0~1_combout\);

\MUX_JUMP|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux0~2_combout\ = (\MUX_JUMP|Mux0~0_combout\) # ((\MUX_JUMP|Mux0~1_combout\) # ((\PC_INC|X[0]~58_combout\ & !\PC|PC[30]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_JUMP|Mux0~0_combout\,
	datab => \MUX_JUMP|Mux0~1_combout\,
	datac => \PC_INC|X[0]~58_combout\,
	datad => \PC|PC[30]~0_combout\,
	combout => \MUX_JUMP|Mux0~2_combout\);

\PC|PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_JUMP|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|PC\(0));

\PC_INC|X[0]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|X[0]~58_combout\ = \PC|PC\(0) $ (\PC_INC|X[1]~57\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC\(0),
	cin => \PC_INC|X[1]~57\,
	combout => \PC_INC|X[0]~58_combout\);

\IFID|OUT_PC_MAIS_4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \PC_INC|X[0]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(0));

\EXMEM|EXMEM_OUT_RESULT_ADDER[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ADDER[28]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ADDER\(28));

\MUX_JUMP|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux28~0_combout\ = (\PC|PC[30]~2_combout\ & (((\PC|PC[12]~1_combout\)))) # (!\PC|PC[30]~2_combout\ & ((\PC|PC[12]~1_combout\ & (\PC_INC|X[28]~2_combout\)) # (!\PC|PC[12]~1_combout\ & ((\EXMEM|EXMEM_OUT_RESULT_ADDER\(28))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC[30]~2_combout\,
	datab => \PC_INC|X[28]~2_combout\,
	datac => \PC|PC[12]~1_combout\,
	datad => \EXMEM|EXMEM_OUT_RESULT_ADDER\(28),
	combout => \MUX_JUMP|Mux28~0_combout\);

\MUX_JUMP|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux28~1_combout\ = (\PC|PC[30]~2_combout\ & ((\MUX_JUMP|Mux28~0_combout\ & ((\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a3~portbdataout\))) # (!\MUX_JUMP|Mux28~0_combout\ & (\IFID|OUT_PC_MAIS_4\(0))))) # (!\PC|PC[30]~2_combout\ & 
-- (((\MUX_JUMP|Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_PC_MAIS_4\(0),
	datab => \PC|PC[30]~2_combout\,
	datac => \MUX_JUMP|Mux28~0_combout\,
	datad => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a3~portbdataout\,
	combout => \MUX_JUMP|Mux28~1_combout\);

\PC|PC[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_JUMP|Mux28~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|PC\(28));

\INST_MEM|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \INST_MEM|Mux7~0_combout\ = (\INST_MEM|Mux4~0_combout\ & (!\PC|PC\(28) & !\PC|PC\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_MEM|Mux4~0_combout\,
	datac => \PC|PC\(28),
	datad => \PC|PC\(23),
	combout => \INST_MEM|Mux7~0_combout\);

\INST_MEM|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \INST_MEM|Mux10~0_combout\ = (\INST_MEM|Mux7~0_combout\ & (!\PC|PC\(31) & !\PC|PC\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_MEM|Mux7~0_combout\,
	datac => \PC|PC\(31),
	datad => \PC|PC\(30),
	combout => \INST_MEM|Mux10~0_combout\);

\IFID|OUT_INSTR_MEM[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \INST_MEM|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_INSTR_MEM\(10));

\IDEX|IDEX_OUT_IMED[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \IFID|OUT_INSTR_MEM\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_IMED\(26));

\MUX_REGDST|X[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_REGDST|X[3]~1_combout\ = (\IDEX|IDEX_OUT_IMED\(26) & !\IDEX|IDEX_OUT_EX\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_IMED\(26),
	datad => \IDEX|IDEX_OUT_EX\(0),
	combout => \MUX_REGDST|X[3]~1_combout\);

\EXMEM|EXMEM_OUT_REGDST[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
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
	clk => \ALT_INV_CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_REGDST\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWB|MEMWB_OUT_REGDST\(3));

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a4\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_0|altsyncram_kvc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

\EXMEM|EXMEM_OUT_RESULT_ADDER[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ADDER[27]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ADDER\(27));

\MUX_JUMP|Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux27~2_combout\ = (\EXMEM|EXMEM_OUT_MEM\(0) & ((\EXMEM|EXMEM_OUT_ZERO~q\ & (\EXMEM|EXMEM_OUT_RESULT_ADDER\(27))) # (!\EXMEM|EXMEM_OUT_ZERO~q\ & ((\PC_INC|X[27]~4_combout\))))) # (!\EXMEM|EXMEM_OUT_MEM\(0) & (((\PC_INC|X[27]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEM|EXMEM_OUT_RESULT_ADDER\(27),
	datab => \PC_INC|X[27]~4_combout\,
	datac => \EXMEM|EXMEM_OUT_MEM\(0),
	datad => \EXMEM|EXMEM_OUT_ZERO~q\,
	combout => \MUX_JUMP|Mux27~2_combout\);

\MUX_JUMP|Mux27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux27~3_combout\ = (\UC|SIGNAL_JUMP\(0) & (((\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a4~portbdataout\)))) # (!\UC|SIGNAL_JUMP\(0) & (!\UC|SIGNAL_JUMP\(1) & ((\MUX_JUMP|Mux27~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UC|SIGNAL_JUMP\(1),
	datab => \UC|SIGNAL_JUMP\(0),
	datac => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a4~portbdataout\,
	datad => \MUX_JUMP|Mux27~2_combout\,
	combout => \MUX_JUMP|Mux27~3_combout\);

\PC|PC[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_JUMP|Mux27~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|PC\(27));

\INST_MEM|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \INST_MEM|Mux4~0_combout\ = (!\PC|PC\(27) & (!\PC|PC\(26) & (!\PC|PC\(25) & !\PC|PC\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC\(27),
	datab => \PC|PC\(26),
	datac => \PC|PC\(25),
	datad => \PC|PC\(24),
	combout => \INST_MEM|Mux4~0_combout\);

\INST_MEM|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \INST_MEM|Mux4~1_combout\ = (\PC|PC\(28)) # ((\PC|PC\(31) & ((\PC|PC\(29)) # (!\PC|PC\(30)))) # (!\PC|PC\(31) & (\PC|PC\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC\(31),
	datab => \PC|PC\(30),
	datac => \PC|PC\(29),
	datad => \PC|PC\(28),
	combout => \INST_MEM|Mux4~1_combout\);

\INST_MEM|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \INST_MEM|Mux4~2_combout\ = (\INST_MEM|Mux4~0_combout\ & (!\PC|PC\(23) & !\INST_MEM|Mux4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_MEM|Mux4~0_combout\,
	datac => \PC|PC\(23),
	datad => \INST_MEM|Mux4~1_combout\,
	combout => \INST_MEM|Mux4~2_combout\);

\IFID|OUT_INSTR_MEM[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \INST_MEM|Mux4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_INSTR_MEM\(4));

\EXMEM|EXMEM_OUT_RESULT_ADDER[4]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[4]~80_combout\ = (\IDEX|IDEX_OUT_PC\(4) & (!\EXMEM|EXMEM_OUT_RESULT_ADDER[5]~79\)) # (!\IDEX|IDEX_OUT_PC\(4) & ((\EXMEM|EXMEM_OUT_RESULT_ADDER[5]~79\) # (GND)))
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[4]~81\ = CARRY((!\EXMEM|EXMEM_OUT_RESULT_ADDER[5]~79\) # (!\IDEX|IDEX_OUT_PC\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_PC\(4),
	datad => VCC,
	cin => \EXMEM|EXMEM_OUT_RESULT_ADDER[5]~79\,
	combout => \EXMEM|EXMEM_OUT_RESULT_ADDER[4]~80_combout\,
	cout => \EXMEM|EXMEM_OUT_RESULT_ADDER[4]~81\);

\EXMEM|EXMEM_OUT_RESULT_ADDER[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ADDER[4]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ADDER\(4));

\MUX_JUMP|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux4~0_combout\ = (\PC|PC[30]~2_combout\ & (((\PC|PC[12]~1_combout\)))) # (!\PC|PC[30]~2_combout\ & ((\PC|PC[12]~1_combout\ & (\PC_INC|X[4]~50_combout\)) # (!\PC|PC[12]~1_combout\ & ((\EXMEM|EXMEM_OUT_RESULT_ADDER\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC[30]~2_combout\,
	datab => \PC_INC|X[4]~50_combout\,
	datac => \PC|PC[12]~1_combout\,
	datad => \EXMEM|EXMEM_OUT_RESULT_ADDER\(4),
	combout => \MUX_JUMP|Mux4~0_combout\);

\MUX_JUMP|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux4~1_combout\ = (\PC|PC[30]~2_combout\ & ((\MUX_JUMP|Mux4~0_combout\ & ((\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a27~portbdataout\))) # (!\MUX_JUMP|Mux4~0_combout\ & (\IFID|OUT_INSTR_MEM\(4))))) # (!\PC|PC[30]~2_combout\ & 
-- (((\MUX_JUMP|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(4),
	datab => \PC|PC[30]~2_combout\,
	datac => \MUX_JUMP|Mux4~0_combout\,
	datad => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a27~portbdataout\,
	combout => \MUX_JUMP|Mux4~1_combout\);

\PC|PC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_JUMP|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|PC\(4));

\IFID|OUT_PC_MAIS_4[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \PC_INC|X[4]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(4));

\IDEX|IDEX_OUT_PC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \IFID|OUT_PC_MAIS_4\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_PC\(4));

\EXMEM|EXMEM_OUT_RESULT_ADDER[3]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[3]~82_combout\ = (\IDEX|IDEX_OUT_PC\(3) & (\EXMEM|EXMEM_OUT_RESULT_ADDER[4]~81\ $ (GND))) # (!\IDEX|IDEX_OUT_PC\(3) & (!\EXMEM|EXMEM_OUT_RESULT_ADDER[4]~81\ & VCC))
-- \EXMEM|EXMEM_OUT_RESULT_ADDER[3]~83\ = CARRY((\IDEX|IDEX_OUT_PC\(3) & !\EXMEM|EXMEM_OUT_RESULT_ADDER[4]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_PC\(3),
	datad => VCC,
	cin => \EXMEM|EXMEM_OUT_RESULT_ADDER[4]~81\,
	combout => \EXMEM|EXMEM_OUT_RESULT_ADDER[3]~82_combout\,
	cout => \EXMEM|EXMEM_OUT_RESULT_ADDER[3]~83\);

\EXMEM|EXMEM_OUT_RESULT_ADDER[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ADDER[2]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ADDER\(2));

\MUX_JUMP|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux2~0_combout\ = (\PC|PC[12]~1_combout\ & (((\PC|PC[30]~2_combout\)))) # (!\PC|PC[12]~1_combout\ & ((\PC|PC[30]~2_combout\ & (\IFID|OUT_INSTR_MEM\(2))) # (!\PC|PC[30]~2_combout\ & ((\EXMEM|EXMEM_OUT_RESULT_ADDER\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC[12]~1_combout\,
	datab => \IFID|OUT_INSTR_MEM\(2),
	datac => \PC|PC[30]~2_combout\,
	datad => \EXMEM|EXMEM_OUT_RESULT_ADDER\(2),
	combout => \MUX_JUMP|Mux2~0_combout\);

\MUX_JUMP|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux2~1_combout\ = (\PC|PC[12]~1_combout\ & ((\MUX_JUMP|Mux2~0_combout\ & ((\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a29~portbdataout\))) # (!\MUX_JUMP|Mux2~0_combout\ & (\PC_INC|X[2]~54_combout\)))) # (!\PC|PC[12]~1_combout\ & 
-- (((\MUX_JUMP|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_INC|X[2]~54_combout\,
	datab => \PC|PC[12]~1_combout\,
	datac => \MUX_JUMP|Mux2~0_combout\,
	datad => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a29~portbdataout\,
	combout => \MUX_JUMP|Mux2~1_combout\);

\PC|PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_JUMP|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|PC\(2));

\IFID|OUT_PC_MAIS_4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \PC_INC|X[2]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(2));

\IFID|OUT_PC_MAIS_4[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \PC|PC\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(30));

\IDEX|IDEX_OUT_PC[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \IFID|OUT_PC_MAIS_4\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_PC\(30));

\EXMEM|EXMEM_OUT_RESULT_ADDER[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \IDEX|IDEX_OUT_PC\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ADDER\(30));

\MUX_JUMP|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux30~0_combout\ = (\UC|SIGNAL_JUMP\(1) & (\IFID|OUT_PC_MAIS_4\(2))) # (!\UC|SIGNAL_JUMP\(1) & ((\EXMEM|EXMEM_OUT_RESULT_ADDER\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_PC_MAIS_4\(2),
	datab => \EXMEM|EXMEM_OUT_RESULT_ADDER\(30),
	datad => \UC|SIGNAL_JUMP\(1),
	combout => \MUX_JUMP|Mux30~0_combout\);

\PC|PC[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_JUMP|Mux30~0_combout\,
	asdata => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a1~portbdataout\,
	sload => \UC|SIGNAL_JUMP\(0),
	ena => \PC|PC[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|PC\(30));

\INST_MEM|Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \INST_MEM|Mux20~2_combout\ = (!\PC|PC\(29) & (!\PC|PC\(28) & (\INST_MEM|Mux4~0_combout\ & !\PC|PC\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC\(29),
	datab => \PC|PC\(28),
	datac => \INST_MEM|Mux4~0_combout\,
	datad => \PC|PC\(23),
	combout => \INST_MEM|Mux20~2_combout\);

\INST_MEM|Mux20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \INST_MEM|Mux20~3_combout\ = (\PC|PC\(31) & (!\PC|PC\(30) & ((\INST_MEM|Mux20~2_combout\)))) # (!\PC|PC\(31) & (\PC|PC\(30) & ((\INST_MEM|Mux20~1_combout\) # (\INST_MEM|Mux20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC\(31),
	datab => \PC|PC\(30),
	datac => \INST_MEM|Mux20~1_combout\,
	datad => \INST_MEM|Mux20~2_combout\,
	combout => \INST_MEM|Mux20~3_combout\);

\IFID|OUT_INSTR_MEM[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \INST_MEM|Mux20~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_INSTR_MEM\(20));

\IDEX|IDEX_OUT_RD[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \IFID|OUT_INSTR_MEM\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_RD\(4));

\MUX_REGDST|X[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_REGDST|X[4]~0_combout\ = (\IDEX|IDEX_OUT_EX\(0) & (\IDEX|IDEX_OUT_RD\(4))) # (!\IDEX|IDEX_OUT_EX\(0) & ((\IDEX|IDEX_OUT_RT\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDEX|IDEX_OUT_RD\(4),
	datab => \IDEX|IDEX_OUT_RT\(4),
	datad => \IDEX|IDEX_OUT_EX\(0),
	combout => \MUX_REGDST|X[4]~0_combout\);

\EXMEM|EXMEM_OUT_REGDST[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
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
	clk => \ALT_INV_CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_REGDST\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMWB|MEMWB_OUT_REGDST\(4));

\FILE_REG|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|process_0~0_combout\ = (\MEMWB|MEMWB_OUT_REGDST\(4)) # ((\MEMWB|MEMWB_OUT_REGDST\(3)) # ((\MEMWB|MEMWB_OUT_REGDST\(2)) # (\MEMWB|MEMWB_OUT_REGDST\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMWB|MEMWB_OUT_REGDST\(4),
	datab => \MEMWB|MEMWB_OUT_REGDST\(3),
	datac => \MEMWB|MEMWB_OUT_REGDST\(2),
	datad => \MEMWB|MEMWB_OUT_REGDST\(1),
	combout => \FILE_REG|process_0~0_combout\);

\FILE_REG|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FILE_REG|process_0~1_combout\ = (\MEMWB|MEMWB_OUT_WB\(0) & \FILE_REG|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMWB|MEMWB_OUT_WB\(0),
	datab => \FILE_REG|process_0~0_combout\,
	combout => \FILE_REG|process_0~1_combout\);

\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a28\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FileRegister:FILE_REG|altsyncram:REGISTERS_rtl_0|altsyncram_kvc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 28,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 28,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FILE_REG|process_0~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK~input_o\,
	clk1 => \ALT_INV_CLOCK~input_o\,
	portadatain => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a28_PORTADATAIN_bus\,
	portaaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\,
	portbaddr => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a28_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a28_PORTBDATAOUT_bus\);

\MUX_JUMP|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux3~0_combout\ = (\UC|SIGNAL_JUMP\(0) & \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a28~portbdataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UC|SIGNAL_JUMP\(0),
	datab => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a28~portbdataout\,
	combout => \MUX_JUMP|Mux3~0_combout\);

\EXMEM|EXMEM_OUT_RESULT_ADDER[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ADDER[3]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ADDER\(3));

\MUX_JUMP|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux3~1_combout\ = (\EXMEM|EXMEM_OUT_MEM\(0) & (\EXMEM|EXMEM_OUT_ZERO~q\ & (\EXMEM|EXMEM_OUT_RESULT_ADDER\(3) & !\PC|PC[30]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEM|EXMEM_OUT_MEM\(0),
	datab => \EXMEM|EXMEM_OUT_ZERO~q\,
	datac => \EXMEM|EXMEM_OUT_RESULT_ADDER\(3),
	datad => \PC|PC[30]~2_combout\,
	combout => \MUX_JUMP|Mux3~1_combout\);

\MUX_JUMP|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux3~2_combout\ = (\MUX_JUMP|Mux3~0_combout\) # ((\MUX_JUMP|Mux3~1_combout\) # ((\PC_INC|X[3]~52_combout\ & !\PC|PC[30]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_JUMP|Mux3~0_combout\,
	datab => \MUX_JUMP|Mux3~1_combout\,
	datac => \PC_INC|X[3]~52_combout\,
	datad => \PC|PC[30]~0_combout\,
	combout => \MUX_JUMP|Mux3~2_combout\);

\PC|PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_JUMP|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|PC\(3));

\IFID|OUT_PC_MAIS_4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \PC_INC|X[3]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(3));

\IFID|OUT_PC_MAIS_4[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \PC|PC\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_PC_MAIS_4\(31));

\IDEX|IDEX_OUT_PC[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \IFID|OUT_PC_MAIS_4\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IDEX|IDEX_OUT_PC\(31));

\EXMEM|EXMEM_OUT_RESULT_ADDER[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \IDEX|IDEX_OUT_PC\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ADDER\(31));

\MUX_JUMP|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux31~0_combout\ = (\UC|SIGNAL_JUMP\(1) & (\IFID|OUT_PC_MAIS_4\(3))) # (!\UC|SIGNAL_JUMP\(1) & ((\EXMEM|EXMEM_OUT_RESULT_ADDER\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_PC_MAIS_4\(3),
	datab => \EXMEM|EXMEM_OUT_RESULT_ADDER\(31),
	datad => \UC|SIGNAL_JUMP\(1),
	combout => \MUX_JUMP|Mux31~0_combout\);

\PC|PC[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_JUMP|Mux31~0_combout\,
	asdata => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	sload => \UC|SIGNAL_JUMP\(0),
	ena => \PC|PC[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|PC\(31));

\INST_MEM|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \INST_MEM|Mux23~0_combout\ = (\PC|PC\(31) & (\INST_MEM|Mux7~0_combout\ & !\PC|PC\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC\(31),
	datab => \INST_MEM|Mux7~0_combout\,
	datad => \PC|PC\(30),
	combout => \INST_MEM|Mux23~0_combout\);

\IFID|OUT_INSTR_MEM[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \INST_MEM|Mux23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_INSTR_MEM\(2));

\UC|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|Mux0~0_combout\ = (\IFID|OUT_INSTR_MEM\(2) & (\IFID|OUT_INSTR_MEM\(5) $ (\IFID|OUT_INSTR_MEM\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFID|OUT_INSTR_MEM\(2),
	datac => \IFID|OUT_INSTR_MEM\(5),
	datad => \IFID|OUT_INSTR_MEM\(4),
	combout => \UC|Mux0~0_combout\);

\UC|SIGNAL_JUMP[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|SIGNAL_JUMP\(0) = (\UC|Mux0~0_combout\ & (!\IFID|OUT_INSTR_MEM\(5))) # (!\UC|Mux0~0_combout\ & ((\UC|SIGNAL_JUMP\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IFID|OUT_INSTR_MEM\(5),
	datac => \UC|SIGNAL_JUMP\(0),
	datad => \UC|Mux0~0_combout\,
	combout => \UC|SIGNAL_JUMP\(0));

\PC|PC[12]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|PC[12]~1_combout\ = (\UC|SIGNAL_JUMP\(0)) # ((!\UC|SIGNAL_JUMP\(1) & ((!\EXMEM|EXMEM_OUT_ZERO~q\) # (!\EXMEM|EXMEM_OUT_MEM\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UC|SIGNAL_JUMP\(0),
	datab => \EXMEM|EXMEM_OUT_MEM\(0),
	datac => \EXMEM|EXMEM_OUT_ZERO~q\,
	datad => \UC|SIGNAL_JUMP\(1),
	combout => \PC|PC[12]~1_combout\);

\EXMEM|EXMEM_OUT_RESULT_ADDER[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \EXMEM|EXMEM_OUT_RESULT_ADDER[29]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EXMEM|EXMEM_OUT_RESULT_ADDER\(29));

\MUX_JUMP|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux29~0_combout\ = (\PC|PC[12]~1_combout\ & (((\PC|PC[30]~2_combout\)))) # (!\PC|PC[12]~1_combout\ & ((\PC|PC[30]~2_combout\ & (\IFID|OUT_PC_MAIS_4\(1))) # (!\PC|PC[30]~2_combout\ & ((\EXMEM|EXMEM_OUT_RESULT_ADDER\(29))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC[12]~1_combout\,
	datab => \IFID|OUT_PC_MAIS_4\(1),
	datac => \PC|PC[30]~2_combout\,
	datad => \EXMEM|EXMEM_OUT_RESULT_ADDER\(29),
	combout => \MUX_JUMP|Mux29~0_combout\);

\MUX_JUMP|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_JUMP|Mux29~1_combout\ = (\PC|PC[12]~1_combout\ & ((\MUX_JUMP|Mux29~0_combout\ & ((\FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a2~portbdataout\))) # (!\MUX_JUMP|Mux29~0_combout\ & (\PC_INC|X[29]~0_combout\)))) # (!\PC|PC[12]~1_combout\ & 
-- (((\MUX_JUMP|Mux29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_INC|X[29]~0_combout\,
	datab => \PC|PC[12]~1_combout\,
	datac => \MUX_JUMP|Mux29~0_combout\,
	datad => \FILE_REG|REGISTERS_rtl_0|auto_generated|ram_block1a2~portbdataout\,
	combout => \MUX_JUMP|Mux29~1_combout\);

\PC|PC[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \MUX_JUMP|Mux29~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|PC\(29));

\INST_MEM|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \INST_MEM|Mux5~0_combout\ = (\PC|PC\(29) & (\INST_MEM|Mux7~0_combout\ & (!\PC|PC\(31) & !\PC|PC\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC\(29),
	datab => \INST_MEM|Mux7~0_combout\,
	datac => \PC|PC\(31),
	datad => \PC|PC\(30),
	combout => \INST_MEM|Mux5~0_combout\);

\IFID|OUT_INSTR_MEM[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \INST_MEM|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_INSTR_MEM\(5));

\INST_MEM|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \INST_MEM|Mux30~1_combout\ = (\INST_MEM|Mux30~0_combout\ & !\PC|PC\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_MEM|Mux30~0_combout\,
	datad => \PC|PC\(31),
	combout => \INST_MEM|Mux30~1_combout\);

\IFID|OUT_INSTR_MEM[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \INST_MEM|Mux30~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_INSTR_MEM\(30));

\INST_MEM|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \INST_MEM|Mux29~0_combout\ = (\PC|PC\(31) & (\INST_MEM|Mux7~0_combout\ & (!\PC|PC\(30) & !\PC|PC\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|PC\(31),
	datab => \INST_MEM|Mux7~0_combout\,
	datac => \PC|PC\(30),
	datad => \PC|PC\(29),
	combout => \INST_MEM|Mux29~0_combout\);

\IFID|OUT_INSTR_MEM[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \INST_MEM|Mux29~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_INSTR_MEM\(29));

\INST_MEM|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \INST_MEM|Mux28~0_combout\ = (!\PC|PC\(30) & ((\INST_MEM|Mux20~1_combout\) # ((\INST_MEM|Mux7~0_combout\ & !\PC|PC\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_MEM|Mux20~1_combout\,
	datab => \INST_MEM|Mux7~0_combout\,
	datac => \PC|PC\(29),
	datad => \PC|PC\(30),
	combout => \INST_MEM|Mux28~0_combout\);

\IFID|OUT_INSTR_MEM[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~input_o\,
	d => \INST_MEM|Mux28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IFID|OUT_INSTR_MEM\(28));

\INSTRUCTION_OUT_IFID[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTRUCTION_OUT_IFID(31),
	o => \INSTRUCTION_OUT_IFID[31]~input_o\);

\INSTRUCTION_OUT_IFID[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTRUCTION_OUT_IFID(30),
	o => \INSTRUCTION_OUT_IFID[30]~input_o\);

\INSTRUCTION_OUT_IFID[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTRUCTION_OUT_IFID(29),
	o => \INSTRUCTION_OUT_IFID[29]~input_o\);

\INSTRUCTION_OUT_IFID[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTRUCTION_OUT_IFID(28),
	o => \INSTRUCTION_OUT_IFID[28]~input_o\);

\INSTRUCTION_OUT_IFID[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTRUCTION_OUT_IFID(27),
	o => \INSTRUCTION_OUT_IFID[27]~input_o\);

\INSTRUCTION_OUT_IFID[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTRUCTION_OUT_IFID(26),
	o => \INSTRUCTION_OUT_IFID[26]~input_o\);

\INSTRUCTION_OUT_IFID[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTRUCTION_OUT_IFID(25),
	o => \INSTRUCTION_OUT_IFID[25]~input_o\);

\INSTRUCTION_OUT_IFID[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTRUCTION_OUT_IFID(24),
	o => \INSTRUCTION_OUT_IFID[24]~input_o\);

\INSTRUCTION_OUT_IFID[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTRUCTION_OUT_IFID(23),
	o => \INSTRUCTION_OUT_IFID[23]~input_o\);

\INSTRUCTION_OUT_IFID[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTRUCTION_OUT_IFID(22),
	o => \INSTRUCTION_OUT_IFID[22]~input_o\);

\INSTRUCTION_OUT_IFID[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTRUCTION_OUT_IFID(21),
	o => \INSTRUCTION_OUT_IFID[21]~input_o\);

\INSTRUCTION_OUT_IFID[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTRUCTION_OUT_IFID(20),
	o => \INSTRUCTION_OUT_IFID[20]~input_o\);

\INSTRUCTION_OUT_IFID[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTRUCTION_OUT_IFID(19),
	o => \INSTRUCTION_OUT_IFID[19]~input_o\);

\INSTRUCTION_OUT_IFID[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTRUCTION_OUT_IFID(18),
	o => \INSTRUCTION_OUT_IFID[18]~input_o\);

\INSTRUCTION_OUT_IFID[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTRUCTION_OUT_IFID(17),
	o => \INSTRUCTION_OUT_IFID[17]~input_o\);

\INSTRUCTION_OUT_IFID[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTRUCTION_OUT_IFID(16),
	o => \INSTRUCTION_OUT_IFID[16]~input_o\);

\INSTRUCTION_OUT_IFID[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTRUCTION_OUT_IFID(15),
	o => \INSTRUCTION_OUT_IFID[15]~input_o\);

\INSTRUCTION_OUT_IFID[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTRUCTION_OUT_IFID(14),
	o => \INSTRUCTION_OUT_IFID[14]~input_o\);

\INSTRUCTION_OUT_IFID[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTRUCTION_OUT_IFID(13),
	o => \INSTRUCTION_OUT_IFID[13]~input_o\);

\INSTRUCTION_OUT_IFID[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTRUCTION_OUT_IFID(12),
	o => \INSTRUCTION_OUT_IFID[12]~input_o\);

\INSTRUCTION_OUT_IFID[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTRUCTION_OUT_IFID(11),
	o => \INSTRUCTION_OUT_IFID[11]~input_o\);

\INSTRUCTION_OUT_IFID[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTRUCTION_OUT_IFID(10),
	o => \INSTRUCTION_OUT_IFID[10]~input_o\);

\INSTRUCTION_OUT_IFID[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTRUCTION_OUT_IFID(9),
	o => \INSTRUCTION_OUT_IFID[9]~input_o\);

\INSTRUCTION_OUT_IFID[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTRUCTION_OUT_IFID(8),
	o => \INSTRUCTION_OUT_IFID[8]~input_o\);

\INSTRUCTION_OUT_IFID[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTRUCTION_OUT_IFID(7),
	o => \INSTRUCTION_OUT_IFID[7]~input_o\);

\INSTRUCTION_OUT_IFID[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTRUCTION_OUT_IFID(6),
	o => \INSTRUCTION_OUT_IFID[6]~input_o\);

\INSTRUCTION_OUT_IFID[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTRUCTION_OUT_IFID(5),
	o => \INSTRUCTION_OUT_IFID[5]~input_o\);

\INSTRUCTION_OUT_IFID[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTRUCTION_OUT_IFID(4),
	o => \INSTRUCTION_OUT_IFID[4]~input_o\);

\INSTRUCTION_OUT_IFID[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTRUCTION_OUT_IFID(3),
	o => \INSTRUCTION_OUT_IFID[3]~input_o\);

\INSTRUCTION_OUT_IFID[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTRUCTION_OUT_IFID(2),
	o => \INSTRUCTION_OUT_IFID[2]~input_o\);

\INSTRUCTION_OUT_IFID[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTRUCTION_OUT_IFID(1),
	o => \INSTRUCTION_OUT_IFID[1]~input_o\);

\INSTRUCTION_OUT_IFID[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INSTRUCTION_OUT_IFID(0),
	o => \INSTRUCTION_OUT_IFID[0]~input_o\);
END structure;


