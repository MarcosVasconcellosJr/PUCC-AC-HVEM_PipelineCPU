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

-- DATE "11/16/2019 08:25:41"

-- 
-- Device: Altera EP4CE115F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ControlUnit IS
    PORT (
	WB : OUT std_logic_vector(0 TO 1);
	MEM : OUT std_logic_vector(0 TO 2);
	EX : OUT std_logic_vector(0 TO 4);
	OP_CODE : IN std_logic_vector(5 DOWNTO 0)
	);
END ControlUnit;

ARCHITECTURE structure OF ControlUnit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_WB : std_logic_vector(0 TO 1);
SIGNAL ww_MEM : std_logic_vector(0 TO 2);
SIGNAL ww_EX : std_logic_vector(0 TO 4);
SIGNAL ww_OP_CODE : std_logic_vector(5 DOWNTO 0);
SIGNAL \WB[1]~output_o\ : std_logic;
SIGNAL \WB[0]~output_o\ : std_logic;
SIGNAL \MEM[2]~output_o\ : std_logic;
SIGNAL \MEM[1]~output_o\ : std_logic;
SIGNAL \MEM[0]~output_o\ : std_logic;
SIGNAL \EX[4]~output_o\ : std_logic;
SIGNAL \EX[3]~output_o\ : std_logic;
SIGNAL \EX[2]~output_o\ : std_logic;
SIGNAL \EX[1]~output_o\ : std_logic;
SIGNAL \EX[0]~output_o\ : std_logic;
SIGNAL \OP_CODE[2]~input_o\ : std_logic;
SIGNAL \OP_CODE[4]~input_o\ : std_logic;
SIGNAL \OP_CODE[5]~input_o\ : std_logic;
SIGNAL \OP_CODE[3]~input_o\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \OP_CODE[0]~input_o\ : std_logic;
SIGNAL \OP_CODE[1]~input_o\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_OP_CODE[1]~input_o\ : std_logic;

BEGIN

WB <= ww_WB;
MEM <= ww_MEM;
EX <= ww_EX;
ww_OP_CODE <= OP_CODE;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_OP_CODE[1]~input_o\ <= NOT \OP_CODE[1]~input_o\;

\WB[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~0_combout\,
	devoe => ww_devoe,
	o => \WB[1]~output_o\);

\WB[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~1_combout\,
	devoe => ww_devoe,
	o => \WB[0]~output_o\);

\MEM[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~1_combout\,
	devoe => ww_devoe,
	o => \MEM[2]~output_o\);

\MEM[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_OP_CODE[1]~input_o\,
	devoe => ww_devoe,
	o => \MEM[1]~output_o\);

\MEM[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~1_combout\,
	devoe => ww_devoe,
	o => \MEM[0]~output_o\);

\EX[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \EX[4]~output_o\);

\EX[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \EX[3]~output_o\);

\EX[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \EX[2]~output_o\);

\EX[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \EX[1]~output_o\);

\EX[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \EX[0]~output_o\);

\OP_CODE[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP_CODE(2),
	o => \OP_CODE[2]~input_o\);

\OP_CODE[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP_CODE(4),
	o => \OP_CODE[4]~input_o\);

\OP_CODE[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP_CODE(5),
	o => \OP_CODE[5]~input_o\);

\OP_CODE[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP_CODE(3),
	o => \OP_CODE[3]~input_o\);

\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\OP_CODE[2]~input_o\ & (!\OP_CODE[4]~input_o\ & (!\OP_CODE[5]~input_o\ & !\OP_CODE[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP_CODE[2]~input_o\,
	datab => \OP_CODE[4]~input_o\,
	datac => \OP_CODE[5]~input_o\,
	datad => \OP_CODE[3]~input_o\,
	combout => \Mux5~0_combout\);

\OP_CODE[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP_CODE(0),
	o => \OP_CODE[0]~input_o\);

\OP_CODE[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP_CODE(1),
	o => \OP_CODE[1]~input_o\);

\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\Mux5~0_combout\ & (\OP_CODE[0]~input_o\ & !\OP_CODE[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => \OP_CODE[0]~input_o\,
	datad => \OP_CODE[1]~input_o\,
	combout => \Mux7~0_combout\);

\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\OP_CODE[0]~input_o\ & (((!\OP_CODE[1]~input_o\ & !\OP_CODE[2]~input_o\)) # (!\OP_CODE[3]~input_o\))) # (!\OP_CODE[0]~input_o\ & (\OP_CODE[2]~input_o\ $ (((\OP_CODE[1]~input_o\) # (\OP_CODE[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP_CODE[0]~input_o\,
	datab => \OP_CODE[1]~input_o\,
	datac => \OP_CODE[2]~input_o\,
	datad => \OP_CODE[3]~input_o\,
	combout => \Mux6~0_combout\);

\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux6~0_combout\ & (!\OP_CODE[4]~input_o\ & !\OP_CODE[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datac => \OP_CODE[4]~input_o\,
	datad => \OP_CODE[5]~input_o\,
	combout => \Mux6~1_combout\);

\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux5~0_combout\ & (\OP_CODE[1]~input_o\ & !\OP_CODE[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => \OP_CODE[1]~input_o\,
	datad => \OP_CODE[0]~input_o\,
	combout => \Mux5~1_combout\);

\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\OP_CODE[0]~input_o\ & (\OP_CODE[1]~input_o\ & (!\OP_CODE[4]~input_o\ & !\OP_CODE[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP_CODE[0]~input_o\,
	datab => \OP_CODE[1]~input_o\,
	datac => \OP_CODE[4]~input_o\,
	datad => \OP_CODE[5]~input_o\,
	combout => \Mux4~0_combout\);

\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\OP_CODE[3]~input_o\ & (\Mux4~0_combout\ & !\OP_CODE[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP_CODE[3]~input_o\,
	datab => \Mux4~0_combout\,
	datad => \OP_CODE[2]~input_o\,
	combout => \Mux4~1_combout\);

\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\OP_CODE[0]~input_o\ & (!\OP_CODE[3]~input_o\ & (\OP_CODE[1]~input_o\ $ (\OP_CODE[2]~input_o\)))) # (!\OP_CODE[0]~input_o\ & ((\OP_CODE[2]~input_o\ $ (\OP_CODE[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP_CODE[0]~input_o\,
	datab => \OP_CODE[1]~input_o\,
	datac => \OP_CODE[2]~input_o\,
	datad => \OP_CODE[3]~input_o\,
	combout => \Mux3~0_combout\);

\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\OP_CODE[0]~input_o\ & (((!\OP_CODE[2]~input_o\ & \OP_CODE[3]~input_o\)))) # (!\OP_CODE[0]~input_o\ & ((\OP_CODE[1]~input_o\ & (!\OP_CODE[2]~input_o\)) # (!\OP_CODE[1]~input_o\ & (\OP_CODE[2]~input_o\ & !\OP_CODE[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP_CODE[0]~input_o\,
	datab => \OP_CODE[1]~input_o\,
	datac => \OP_CODE[2]~input_o\,
	datad => \OP_CODE[3]~input_o\,
	combout => \Mux2~0_combout\);

\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\OP_CODE[2]~input_o\ & (\OP_CODE[0]~input_o\ & (\OP_CODE[1]~input_o\ & !\OP_CODE[3]~input_o\))) # (!\OP_CODE[2]~input_o\ & (\OP_CODE[3]~input_o\ & ((!\OP_CODE[1]~input_o\) # (!\OP_CODE[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP_CODE[0]~input_o\,
	datab => \OP_CODE[1]~input_o\,
	datac => \OP_CODE[2]~input_o\,
	datad => \OP_CODE[3]~input_o\,
	combout => \Mux1~0_combout\);

\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\OP_CODE[0]~input_o\ $ (!\OP_CODE[1]~input_o\)) # (!\OP_CODE[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP_CODE[0]~input_o\,
	datab => \OP_CODE[1]~input_o\,
	datad => \OP_CODE[2]~input_o\,
	combout => \Mux0~0_combout\);

ww_WB(1) <= \WB[1]~output_o\;

ww_WB(0) <= \WB[0]~output_o\;

ww_MEM(2) <= \MEM[2]~output_o\;

ww_MEM(1) <= \MEM[1]~output_o\;

ww_MEM(0) <= \MEM[0]~output_o\;

ww_EX(4) <= \EX[4]~output_o\;

ww_EX(3) <= \EX[3]~output_o\;

ww_EX(2) <= \EX[2]~output_o\;

ww_EX(1) <= \EX[1]~output_o\;

ww_EX(0) <= \EX[0]~output_o\;
END structure;


