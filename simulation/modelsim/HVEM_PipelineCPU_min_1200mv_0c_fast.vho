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

-- DATE "10/30/2019 12:10:55"

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

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mem IS
    PORT (
	CPU_CLOCK : IN std_logic;
	MEM_WRITE : IN std_logic;
	MEM_ADDRESS : IN std_logic_vector(7 DOWNTO 0);
	WRITE_DATA : IN std_logic_vector(7 DOWNTO 0);
	READ_DATA : OUT std_logic_vector(7 DOWNTO 0)
	);
END mem;

-- Design Ports Information
-- MEM_ADDRESS[2]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[3]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[4]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[5]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[6]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[7]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READ_DATA[0]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READ_DATA[1]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READ_DATA[2]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READ_DATA[3]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READ_DATA[4]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READ_DATA[5]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READ_DATA[6]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READ_DATA[7]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[1]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[0]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITE_DATA[0]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CPU_CLOCK	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_WRITE	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITE_DATA[1]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITE_DATA[2]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITE_DATA[3]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITE_DATA[4]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITE_DATA[5]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITE_DATA[6]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITE_DATA[7]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mem IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CPU_CLOCK : std_logic;
SIGNAL ww_MEM_WRITE : std_logic;
SIGNAL ww_MEM_ADDRESS : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_WRITE_DATA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_READ_DATA : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU_CLOCK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MEM_ADDRESS[2]~input_o\ : std_logic;
SIGNAL \MEM_ADDRESS[3]~input_o\ : std_logic;
SIGNAL \MEM_ADDRESS[4]~input_o\ : std_logic;
SIGNAL \MEM_ADDRESS[5]~input_o\ : std_logic;
SIGNAL \MEM_ADDRESS[6]~input_o\ : std_logic;
SIGNAL \MEM_ADDRESS[7]~input_o\ : std_logic;
SIGNAL \READ_DATA[0]~output_o\ : std_logic;
SIGNAL \READ_DATA[1]~output_o\ : std_logic;
SIGNAL \READ_DATA[2]~output_o\ : std_logic;
SIGNAL \READ_DATA[3]~output_o\ : std_logic;
SIGNAL \READ_DATA[4]~output_o\ : std_logic;
SIGNAL \READ_DATA[5]~output_o\ : std_logic;
SIGNAL \READ_DATA[6]~output_o\ : std_logic;
SIGNAL \READ_DATA[7]~output_o\ : std_logic;
SIGNAL \MEM_ADDRESS[1]~input_o\ : std_logic;
SIGNAL \CPU_CLOCK~input_o\ : std_logic;
SIGNAL \CPU_CLOCK~inputclkctrl_outclk\ : std_logic;
SIGNAL \WRITE_DATA[0]~input_o\ : std_logic;
SIGNAL \MEM_ADDRESS[0]~input_o\ : std_logic;
SIGNAL \MEM_WRITE~input_o\ : std_logic;
SIGNAL \MEM_ARRAY_SIGNAL~59_combout\ : std_logic;
SIGNAL \MEM_ARRAY_SIGNAL~27_q\ : std_logic;
SIGNAL \MEM_ARRAY_SIGNAL~62_combout\ : std_logic;
SIGNAL \MEM_ARRAY_SIGNAL~35_q\ : std_logic;
SIGNAL \MEM_ARRAY_SIGNAL~61_combout\ : std_logic;
SIGNAL \MEM_ARRAY_SIGNAL~11_q\ : std_logic;
SIGNAL \MEM_ARRAY_SIGNAL~19feeder_combout\ : std_logic;
SIGNAL \MEM_ARRAY_SIGNAL~60_combout\ : std_logic;
SIGNAL \MEM_ARRAY_SIGNAL~19_q\ : std_logic;
SIGNAL \MEM_ARRAY_SIGNAL~43_combout\ : std_logic;
SIGNAL \MEM_ARRAY_SIGNAL~44_combout\ : std_logic;
SIGNAL \WRITE_DATA[1]~input_o\ : std_logic;
SIGNAL \MEM_ARRAY_SIGNAL~20_q\ : std_logic;
SIGNAL \MEM_ARRAY_SIGNAL~36_q\ : std_logic;
SIGNAL \MEM_ARRAY_SIGNAL~12_q\ : std_logic;
SIGNAL \MEM_ARRAY_SIGNAL~28_q\ : std_logic;
SIGNAL \MEM_ARRAY_SIGNAL~45_combout\ : std_logic;
SIGNAL \MEM_ARRAY_SIGNAL~46_combout\ : std_logic;
SIGNAL \WRITE_DATA[2]~input_o\ : std_logic;
SIGNAL \MEM_ARRAY_SIGNAL~29_q\ : std_logic;
SIGNAL \MEM_ARRAY_SIGNAL~37_q\ : std_logic;
SIGNAL \MEM_ARRAY_SIGNAL~21feeder_combout\ : std_logic;
SIGNAL \MEM_ARRAY_SIGNAL~21_q\ : std_logic;
SIGNAL \MEM_ARRAY_SIGNAL~13_q\ : std_logic;
SIGNAL \MEM_ARRAY_SIGNAL~47_combout\ : std_logic;
SIGNAL \MEM_ARRAY_SIGNAL~48_combout\ : std_logic;
SIGNAL \WRITE_DATA[3]~input_o\ : std_logic;
SIGNAL \MEM_ARRAY_SIGNAL~14_q\ : std_logic;
SIGNAL \MEM_ARRAY_SIGNAL~30_q\ : std_logic;
SIGNAL \MEM_ARRAY_SIGNAL~49_combout\ : std_logic;
SIGNAL \MEM_ARRAY_SIGNAL~38_q\ : std_logic;
SIGNAL \MEM_ARRAY_SIGNAL~22_q\ : std_logic;
SIGNAL \MEM_ARRAY_SIGNAL~50_combout\ : std_logic;
SIGNAL \WRITE_DATA[4]~input_o\ : std_logic;
SIGNAL \MEM_ARRAY_SIGNAL~15_q\ : std_logic;
SIGNAL \MEM_ARRAY_SIGNAL~23_q\ : std_logic;
SIGNAL \MEM_ARRAY_SIGNAL~51_combout\ : std_logic;
SIGNAL \MEM_ARRAY_SIGNAL~39_q\ : std_logic;
SIGNAL \MEM_ARRAY_SIGNAL~31_q\ : std_logic;
SIGNAL \MEM_ARRAY_SIGNAL~52_combout\ : std_logic;
SIGNAL \WRITE_DATA[5]~input_o\ : std_logic;
SIGNAL \MEM_ARRAY_SIGNAL~16_q\ : std_logic;
SIGNAL \MEM_ARRAY_SIGNAL~32_q\ : std_logic;
SIGNAL \MEM_ARRAY_SIGNAL~53_combout\ : std_logic;
SIGNAL \MEM_ARRAY_SIGNAL~24_q\ : std_logic;
SIGNAL \MEM_ARRAY_SIGNAL~40_q\ : std_logic;
SIGNAL \MEM_ARRAY_SIGNAL~54_combout\ : std_logic;
SIGNAL \WRITE_DATA[6]~input_o\ : std_logic;
SIGNAL \MEM_ARRAY_SIGNAL~33_q\ : std_logic;
SIGNAL \MEM_ARRAY_SIGNAL~41_q\ : std_logic;
SIGNAL \MEM_ARRAY_SIGNAL~17_q\ : std_logic;
SIGNAL \MEM_ARRAY_SIGNAL~25feeder_combout\ : std_logic;
SIGNAL \MEM_ARRAY_SIGNAL~25_q\ : std_logic;
SIGNAL \MEM_ARRAY_SIGNAL~55_combout\ : std_logic;
SIGNAL \MEM_ARRAY_SIGNAL~56_combout\ : std_logic;
SIGNAL \WRITE_DATA[7]~input_o\ : std_logic;
SIGNAL \MEM_ARRAY_SIGNAL~34_q\ : std_logic;
SIGNAL \MEM_ARRAY_SIGNAL~18_q\ : std_logic;
SIGNAL \MEM_ARRAY_SIGNAL~57_combout\ : std_logic;
SIGNAL \MEM_ARRAY_SIGNAL~42_q\ : std_logic;
SIGNAL \MEM_ARRAY_SIGNAL~26feeder_combout\ : std_logic;
SIGNAL \MEM_ARRAY_SIGNAL~26_q\ : std_logic;
SIGNAL \MEM_ARRAY_SIGNAL~58_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CPU_CLOCK <= CPU_CLOCK;
ww_MEM_WRITE <= MEM_WRITE;
ww_MEM_ADDRESS <= MEM_ADDRESS;
ww_WRITE_DATA <= WRITE_DATA;
READ_DATA <= ww_READ_DATA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CPU_CLOCK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CPU_CLOCK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y59_N16
\READ_DATA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ARRAY_SIGNAL~44_combout\,
	devoe => ww_devoe,
	o => \READ_DATA[0]~output_o\);

-- Location: IOOBUF_X0_Y53_N2
\READ_DATA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ARRAY_SIGNAL~46_combout\,
	devoe => ww_devoe,
	o => \READ_DATA[1]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\READ_DATA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ARRAY_SIGNAL~48_combout\,
	devoe => ww_devoe,
	o => \READ_DATA[2]~output_o\);

-- Location: IOOBUF_X0_Y66_N23
\READ_DATA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ARRAY_SIGNAL~50_combout\,
	devoe => ww_devoe,
	o => \READ_DATA[3]~output_o\);

-- Location: IOOBUF_X0_Y66_N16
\READ_DATA[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ARRAY_SIGNAL~52_combout\,
	devoe => ww_devoe,
	o => \READ_DATA[4]~output_o\);

-- Location: IOOBUF_X0_Y59_N23
\READ_DATA[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ARRAY_SIGNAL~54_combout\,
	devoe => ww_devoe,
	o => \READ_DATA[5]~output_o\);

-- Location: IOOBUF_X0_Y58_N16
\READ_DATA[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ARRAY_SIGNAL~56_combout\,
	devoe => ww_devoe,
	o => \READ_DATA[6]~output_o\);

-- Location: IOOBUF_X0_Y53_N9
\READ_DATA[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ARRAY_SIGNAL~58_combout\,
	devoe => ww_devoe,
	o => \READ_DATA[7]~output_o\);

-- Location: IOIBUF_X0_Y62_N22
\MEM_ADDRESS[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MEM_ADDRESS(1),
	o => \MEM_ADDRESS[1]~input_o\);

-- Location: IOIBUF_X0_Y36_N8
\CPU_CLOCK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CPU_CLOCK,
	o => \CPU_CLOCK~input_o\);

-- Location: CLKCTRL_G2
\CPU_CLOCK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CPU_CLOCK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CPU_CLOCK~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y67_N15
\WRITE_DATA[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITE_DATA(0),
	o => \WRITE_DATA[0]~input_o\);

-- Location: IOIBUF_X0_Y68_N1
\MEM_ADDRESS[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MEM_ADDRESS(0),
	o => \MEM_ADDRESS[0]~input_o\);

-- Location: IOIBUF_X0_Y69_N1
\MEM_WRITE~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MEM_WRITE,
	o => \MEM_WRITE~input_o\);

-- Location: LCCOMB_X3_Y62_N0
\MEM_ARRAY_SIGNAL~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_ARRAY_SIGNAL~59_combout\ = (\MEM_ADDRESS[1]~input_o\ & (!\MEM_ADDRESS[0]~input_o\ & \MEM_WRITE~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_ADDRESS[1]~input_o\,
	datab => \MEM_ADDRESS[0]~input_o\,
	datad => \MEM_WRITE~input_o\,
	combout => \MEM_ARRAY_SIGNAL~59_combout\);

-- Location: FF_X3_Y62_N9
\MEM_ARRAY_SIGNAL~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU_CLOCK~inputclkctrl_outclk\,
	asdata => \WRITE_DATA[0]~input_o\,
	sload => VCC,
	ena => \MEM_ARRAY_SIGNAL~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_ARRAY_SIGNAL~27_q\);

-- Location: LCCOMB_X3_Y62_N22
\MEM_ARRAY_SIGNAL~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_ARRAY_SIGNAL~62_combout\ = (\MEM_ADDRESS[1]~input_o\ & (\MEM_ADDRESS[0]~input_o\ & \MEM_WRITE~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_ADDRESS[1]~input_o\,
	datac => \MEM_ADDRESS[0]~input_o\,
	datad => \MEM_WRITE~input_o\,
	combout => \MEM_ARRAY_SIGNAL~62_combout\);

-- Location: FF_X3_Y62_N3
\MEM_ARRAY_SIGNAL~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU_CLOCK~inputclkctrl_outclk\,
	asdata => \WRITE_DATA[0]~input_o\,
	sload => VCC,
	ena => \MEM_ARRAY_SIGNAL~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_ARRAY_SIGNAL~35_q\);

-- Location: LCCOMB_X3_Y62_N24
\MEM_ARRAY_SIGNAL~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_ARRAY_SIGNAL~61_combout\ = (!\MEM_ADDRESS[1]~input_o\ & (!\MEM_ADDRESS[0]~input_o\ & \MEM_WRITE~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_ADDRESS[1]~input_o\,
	datab => \MEM_ADDRESS[0]~input_o\,
	datad => \MEM_WRITE~input_o\,
	combout => \MEM_ARRAY_SIGNAL~61_combout\);

-- Location: FF_X4_Y62_N3
\MEM_ARRAY_SIGNAL~11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU_CLOCK~inputclkctrl_outclk\,
	asdata => \WRITE_DATA[0]~input_o\,
	sload => VCC,
	ena => \MEM_ARRAY_SIGNAL~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_ARRAY_SIGNAL~11_q\);

-- Location: LCCOMB_X4_Y62_N24
\MEM_ARRAY_SIGNAL~19feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_ARRAY_SIGNAL~19feeder_combout\ = \WRITE_DATA[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WRITE_DATA[0]~input_o\,
	combout => \MEM_ARRAY_SIGNAL~19feeder_combout\);

-- Location: LCCOMB_X3_Y62_N4
\MEM_ARRAY_SIGNAL~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_ARRAY_SIGNAL~60_combout\ = (!\MEM_ADDRESS[1]~input_o\ & (\MEM_ADDRESS[0]~input_o\ & \MEM_WRITE~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_ADDRESS[1]~input_o\,
	datac => \MEM_ADDRESS[0]~input_o\,
	datad => \MEM_WRITE~input_o\,
	combout => \MEM_ARRAY_SIGNAL~60_combout\);

-- Location: FF_X4_Y62_N25
\MEM_ARRAY_SIGNAL~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU_CLOCK~inputclkctrl_outclk\,
	d => \MEM_ARRAY_SIGNAL~19feeder_combout\,
	ena => \MEM_ARRAY_SIGNAL~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_ARRAY_SIGNAL~19_q\);

-- Location: LCCOMB_X4_Y62_N2
\MEM_ARRAY_SIGNAL~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_ARRAY_SIGNAL~43_combout\ = (\MEM_ADDRESS[0]~input_o\ & ((\MEM_ADDRESS[1]~input_o\) # ((\MEM_ARRAY_SIGNAL~19_q\)))) # (!\MEM_ADDRESS[0]~input_o\ & (!\MEM_ADDRESS[1]~input_o\ & (\MEM_ARRAY_SIGNAL~11_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_ADDRESS[0]~input_o\,
	datab => \MEM_ADDRESS[1]~input_o\,
	datac => \MEM_ARRAY_SIGNAL~11_q\,
	datad => \MEM_ARRAY_SIGNAL~19_q\,
	combout => \MEM_ARRAY_SIGNAL~43_combout\);

-- Location: LCCOMB_X3_Y62_N2
\MEM_ARRAY_SIGNAL~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_ARRAY_SIGNAL~44_combout\ = (\MEM_ADDRESS[1]~input_o\ & ((\MEM_ARRAY_SIGNAL~43_combout\ & ((\MEM_ARRAY_SIGNAL~35_q\))) # (!\MEM_ARRAY_SIGNAL~43_combout\ & (\MEM_ARRAY_SIGNAL~27_q\)))) # (!\MEM_ADDRESS[1]~input_o\ & (((\MEM_ARRAY_SIGNAL~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_ADDRESS[1]~input_o\,
	datab => \MEM_ARRAY_SIGNAL~27_q\,
	datac => \MEM_ARRAY_SIGNAL~35_q\,
	datad => \MEM_ARRAY_SIGNAL~43_combout\,
	combout => \MEM_ARRAY_SIGNAL~44_combout\);

-- Location: IOIBUF_X0_Y63_N15
\WRITE_DATA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITE_DATA(1),
	o => \WRITE_DATA[1]~input_o\);

-- Location: FF_X4_Y62_N5
\MEM_ARRAY_SIGNAL~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU_CLOCK~inputclkctrl_outclk\,
	asdata => \WRITE_DATA[1]~input_o\,
	sload => VCC,
	ena => \MEM_ARRAY_SIGNAL~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_ARRAY_SIGNAL~20_q\);

-- Location: FF_X3_Y62_N31
\MEM_ARRAY_SIGNAL~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU_CLOCK~inputclkctrl_outclk\,
	asdata => \WRITE_DATA[1]~input_o\,
	sload => VCC,
	ena => \MEM_ARRAY_SIGNAL~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_ARRAY_SIGNAL~36_q\);

-- Location: FF_X4_Y62_N23
\MEM_ARRAY_SIGNAL~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU_CLOCK~inputclkctrl_outclk\,
	asdata => \WRITE_DATA[1]~input_o\,
	sload => VCC,
	ena => \MEM_ARRAY_SIGNAL~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_ARRAY_SIGNAL~12_q\);

-- Location: FF_X3_Y62_N13
\MEM_ARRAY_SIGNAL~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU_CLOCK~inputclkctrl_outclk\,
	asdata => \WRITE_DATA[1]~input_o\,
	sload => VCC,
	ena => \MEM_ARRAY_SIGNAL~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_ARRAY_SIGNAL~28_q\);

-- Location: LCCOMB_X4_Y62_N22
\MEM_ARRAY_SIGNAL~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_ARRAY_SIGNAL~45_combout\ = (\MEM_ADDRESS[0]~input_o\ & (\MEM_ADDRESS[1]~input_o\)) # (!\MEM_ADDRESS[0]~input_o\ & ((\MEM_ADDRESS[1]~input_o\ & ((\MEM_ARRAY_SIGNAL~28_q\))) # (!\MEM_ADDRESS[1]~input_o\ & (\MEM_ARRAY_SIGNAL~12_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_ADDRESS[0]~input_o\,
	datab => \MEM_ADDRESS[1]~input_o\,
	datac => \MEM_ARRAY_SIGNAL~12_q\,
	datad => \MEM_ARRAY_SIGNAL~28_q\,
	combout => \MEM_ARRAY_SIGNAL~45_combout\);

-- Location: LCCOMB_X3_Y62_N30
\MEM_ARRAY_SIGNAL~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_ARRAY_SIGNAL~46_combout\ = (\MEM_ADDRESS[0]~input_o\ & ((\MEM_ARRAY_SIGNAL~45_combout\ & ((\MEM_ARRAY_SIGNAL~36_q\))) # (!\MEM_ARRAY_SIGNAL~45_combout\ & (\MEM_ARRAY_SIGNAL~20_q\)))) # (!\MEM_ADDRESS[0]~input_o\ & (((\MEM_ARRAY_SIGNAL~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_ARRAY_SIGNAL~20_q\,
	datab => \MEM_ADDRESS[0]~input_o\,
	datac => \MEM_ARRAY_SIGNAL~36_q\,
	datad => \MEM_ARRAY_SIGNAL~45_combout\,
	combout => \MEM_ARRAY_SIGNAL~46_combout\);

-- Location: IOIBUF_X0_Y65_N15
\WRITE_DATA[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITE_DATA(2),
	o => \WRITE_DATA[2]~input_o\);

-- Location: FF_X3_Y62_N25
\MEM_ARRAY_SIGNAL~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU_CLOCK~inputclkctrl_outclk\,
	asdata => \WRITE_DATA[2]~input_o\,
	sload => VCC,
	ena => \MEM_ARRAY_SIGNAL~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_ARRAY_SIGNAL~29_q\);

-- Location: FF_X3_Y62_N19
\MEM_ARRAY_SIGNAL~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU_CLOCK~inputclkctrl_outclk\,
	asdata => \WRITE_DATA[2]~input_o\,
	sload => VCC,
	ena => \MEM_ARRAY_SIGNAL~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_ARRAY_SIGNAL~37_q\);

-- Location: LCCOMB_X4_Y62_N8
\MEM_ARRAY_SIGNAL~21feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_ARRAY_SIGNAL~21feeder_combout\ = \WRITE_DATA[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WRITE_DATA[2]~input_o\,
	combout => \MEM_ARRAY_SIGNAL~21feeder_combout\);

-- Location: FF_X4_Y62_N9
\MEM_ARRAY_SIGNAL~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU_CLOCK~inputclkctrl_outclk\,
	d => \MEM_ARRAY_SIGNAL~21feeder_combout\,
	ena => \MEM_ARRAY_SIGNAL~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_ARRAY_SIGNAL~21_q\);

-- Location: FF_X4_Y62_N19
\MEM_ARRAY_SIGNAL~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU_CLOCK~inputclkctrl_outclk\,
	asdata => \WRITE_DATA[2]~input_o\,
	sload => VCC,
	ena => \MEM_ARRAY_SIGNAL~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_ARRAY_SIGNAL~13_q\);

-- Location: LCCOMB_X4_Y62_N18
\MEM_ARRAY_SIGNAL~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_ARRAY_SIGNAL~47_combout\ = (\MEM_ADDRESS[0]~input_o\ & ((\MEM_ARRAY_SIGNAL~21_q\) # ((\MEM_ADDRESS[1]~input_o\)))) # (!\MEM_ADDRESS[0]~input_o\ & (((\MEM_ARRAY_SIGNAL~13_q\ & !\MEM_ADDRESS[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_ADDRESS[0]~input_o\,
	datab => \MEM_ARRAY_SIGNAL~21_q\,
	datac => \MEM_ARRAY_SIGNAL~13_q\,
	datad => \MEM_ADDRESS[1]~input_o\,
	combout => \MEM_ARRAY_SIGNAL~47_combout\);

-- Location: LCCOMB_X3_Y62_N18
\MEM_ARRAY_SIGNAL~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_ARRAY_SIGNAL~48_combout\ = (\MEM_ADDRESS[1]~input_o\ & ((\MEM_ARRAY_SIGNAL~47_combout\ & ((\MEM_ARRAY_SIGNAL~37_q\))) # (!\MEM_ARRAY_SIGNAL~47_combout\ & (\MEM_ARRAY_SIGNAL~29_q\)))) # (!\MEM_ADDRESS[1]~input_o\ & (((\MEM_ARRAY_SIGNAL~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_ADDRESS[1]~input_o\,
	datab => \MEM_ARRAY_SIGNAL~29_q\,
	datac => \MEM_ARRAY_SIGNAL~37_q\,
	datad => \MEM_ARRAY_SIGNAL~47_combout\,
	combout => \MEM_ARRAY_SIGNAL~48_combout\);

-- Location: IOIBUF_X0_Y68_N8
\WRITE_DATA[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITE_DATA(3),
	o => \WRITE_DATA[3]~input_o\);

-- Location: FF_X4_Y62_N15
\MEM_ARRAY_SIGNAL~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU_CLOCK~inputclkctrl_outclk\,
	asdata => \WRITE_DATA[3]~input_o\,
	sload => VCC,
	ena => \MEM_ARRAY_SIGNAL~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_ARRAY_SIGNAL~14_q\);

-- Location: FF_X3_Y62_N29
\MEM_ARRAY_SIGNAL~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU_CLOCK~inputclkctrl_outclk\,
	asdata => \WRITE_DATA[3]~input_o\,
	sload => VCC,
	ena => \MEM_ARRAY_SIGNAL~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_ARRAY_SIGNAL~30_q\);

-- Location: LCCOMB_X4_Y62_N14
\MEM_ARRAY_SIGNAL~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_ARRAY_SIGNAL~49_combout\ = (\MEM_ADDRESS[0]~input_o\ & (\MEM_ADDRESS[1]~input_o\)) # (!\MEM_ADDRESS[0]~input_o\ & ((\MEM_ADDRESS[1]~input_o\ & ((\MEM_ARRAY_SIGNAL~30_q\))) # (!\MEM_ADDRESS[1]~input_o\ & (\MEM_ARRAY_SIGNAL~14_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_ADDRESS[0]~input_o\,
	datab => \MEM_ADDRESS[1]~input_o\,
	datac => \MEM_ARRAY_SIGNAL~14_q\,
	datad => \MEM_ARRAY_SIGNAL~30_q\,
	combout => \MEM_ARRAY_SIGNAL~49_combout\);

-- Location: FF_X3_Y62_N15
\MEM_ARRAY_SIGNAL~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU_CLOCK~inputclkctrl_outclk\,
	asdata => \WRITE_DATA[3]~input_o\,
	sload => VCC,
	ena => \MEM_ARRAY_SIGNAL~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_ARRAY_SIGNAL~38_q\);

-- Location: FF_X4_Y62_N21
\MEM_ARRAY_SIGNAL~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU_CLOCK~inputclkctrl_outclk\,
	asdata => \WRITE_DATA[3]~input_o\,
	sload => VCC,
	ena => \MEM_ARRAY_SIGNAL~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_ARRAY_SIGNAL~22_q\);

-- Location: LCCOMB_X3_Y62_N14
\MEM_ARRAY_SIGNAL~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_ARRAY_SIGNAL~50_combout\ = (\MEM_ARRAY_SIGNAL~49_combout\ & (((\MEM_ARRAY_SIGNAL~38_q\)) # (!\MEM_ADDRESS[0]~input_o\))) # (!\MEM_ARRAY_SIGNAL~49_combout\ & (\MEM_ADDRESS[0]~input_o\ & ((\MEM_ARRAY_SIGNAL~22_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_ARRAY_SIGNAL~49_combout\,
	datab => \MEM_ADDRESS[0]~input_o\,
	datac => \MEM_ARRAY_SIGNAL~38_q\,
	datad => \MEM_ARRAY_SIGNAL~22_q\,
	combout => \MEM_ARRAY_SIGNAL~50_combout\);

-- Location: IOIBUF_X0_Y63_N22
\WRITE_DATA[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITE_DATA(4),
	o => \WRITE_DATA[4]~input_o\);

-- Location: FF_X4_Y62_N11
\MEM_ARRAY_SIGNAL~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU_CLOCK~inputclkctrl_outclk\,
	asdata => \WRITE_DATA[4]~input_o\,
	sload => VCC,
	ena => \MEM_ARRAY_SIGNAL~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_ARRAY_SIGNAL~15_q\);

-- Location: FF_X4_Y62_N17
\MEM_ARRAY_SIGNAL~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU_CLOCK~inputclkctrl_outclk\,
	asdata => \WRITE_DATA[4]~input_o\,
	sload => VCC,
	ena => \MEM_ARRAY_SIGNAL~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_ARRAY_SIGNAL~23_q\);

-- Location: LCCOMB_X4_Y62_N10
\MEM_ARRAY_SIGNAL~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_ARRAY_SIGNAL~51_combout\ = (\MEM_ADDRESS[0]~input_o\ & ((\MEM_ADDRESS[1]~input_o\) # ((\MEM_ARRAY_SIGNAL~23_q\)))) # (!\MEM_ADDRESS[0]~input_o\ & (!\MEM_ADDRESS[1]~input_o\ & (\MEM_ARRAY_SIGNAL~15_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_ADDRESS[0]~input_o\,
	datab => \MEM_ADDRESS[1]~input_o\,
	datac => \MEM_ARRAY_SIGNAL~15_q\,
	datad => \MEM_ARRAY_SIGNAL~23_q\,
	combout => \MEM_ARRAY_SIGNAL~51_combout\);

-- Location: FF_X3_Y62_N27
\MEM_ARRAY_SIGNAL~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU_CLOCK~inputclkctrl_outclk\,
	asdata => \WRITE_DATA[4]~input_o\,
	sload => VCC,
	ena => \MEM_ARRAY_SIGNAL~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_ARRAY_SIGNAL~39_q\);

-- Location: FF_X3_Y62_N17
\MEM_ARRAY_SIGNAL~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU_CLOCK~inputclkctrl_outclk\,
	asdata => \WRITE_DATA[4]~input_o\,
	sload => VCC,
	ena => \MEM_ARRAY_SIGNAL~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_ARRAY_SIGNAL~31_q\);

-- Location: LCCOMB_X3_Y62_N26
\MEM_ARRAY_SIGNAL~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_ARRAY_SIGNAL~52_combout\ = (\MEM_ADDRESS[1]~input_o\ & ((\MEM_ARRAY_SIGNAL~51_combout\ & (\MEM_ARRAY_SIGNAL~39_q\)) # (!\MEM_ARRAY_SIGNAL~51_combout\ & ((\MEM_ARRAY_SIGNAL~31_q\))))) # (!\MEM_ADDRESS[1]~input_o\ & (\MEM_ARRAY_SIGNAL~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_ADDRESS[1]~input_o\,
	datab => \MEM_ARRAY_SIGNAL~51_combout\,
	datac => \MEM_ARRAY_SIGNAL~39_q\,
	datad => \MEM_ARRAY_SIGNAL~31_q\,
	combout => \MEM_ARRAY_SIGNAL~52_combout\);

-- Location: IOIBUF_X0_Y61_N22
\WRITE_DATA[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITE_DATA(5),
	o => \WRITE_DATA[5]~input_o\);

-- Location: FF_X4_Y62_N31
\MEM_ARRAY_SIGNAL~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU_CLOCK~inputclkctrl_outclk\,
	asdata => \WRITE_DATA[5]~input_o\,
	sload => VCC,
	ena => \MEM_ARRAY_SIGNAL~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_ARRAY_SIGNAL~16_q\);

-- Location: FF_X3_Y62_N21
\MEM_ARRAY_SIGNAL~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU_CLOCK~inputclkctrl_outclk\,
	asdata => \WRITE_DATA[5]~input_o\,
	sload => VCC,
	ena => \MEM_ARRAY_SIGNAL~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_ARRAY_SIGNAL~32_q\);

-- Location: LCCOMB_X4_Y62_N30
\MEM_ARRAY_SIGNAL~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_ARRAY_SIGNAL~53_combout\ = (\MEM_ADDRESS[0]~input_o\ & (\MEM_ADDRESS[1]~input_o\)) # (!\MEM_ADDRESS[0]~input_o\ & ((\MEM_ADDRESS[1]~input_o\ & ((\MEM_ARRAY_SIGNAL~32_q\))) # (!\MEM_ADDRESS[1]~input_o\ & (\MEM_ARRAY_SIGNAL~16_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_ADDRESS[0]~input_o\,
	datab => \MEM_ADDRESS[1]~input_o\,
	datac => \MEM_ARRAY_SIGNAL~16_q\,
	datad => \MEM_ARRAY_SIGNAL~32_q\,
	combout => \MEM_ARRAY_SIGNAL~53_combout\);

-- Location: FF_X4_Y62_N13
\MEM_ARRAY_SIGNAL~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU_CLOCK~inputclkctrl_outclk\,
	asdata => \WRITE_DATA[5]~input_o\,
	sload => VCC,
	ena => \MEM_ARRAY_SIGNAL~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_ARRAY_SIGNAL~24_q\);

-- Location: FF_X3_Y62_N7
\MEM_ARRAY_SIGNAL~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU_CLOCK~inputclkctrl_outclk\,
	asdata => \WRITE_DATA[5]~input_o\,
	sload => VCC,
	ena => \MEM_ARRAY_SIGNAL~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_ARRAY_SIGNAL~40_q\);

-- Location: LCCOMB_X3_Y62_N6
\MEM_ARRAY_SIGNAL~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_ARRAY_SIGNAL~54_combout\ = (\MEM_ARRAY_SIGNAL~53_combout\ & (((\MEM_ARRAY_SIGNAL~40_q\) # (!\MEM_ADDRESS[0]~input_o\)))) # (!\MEM_ARRAY_SIGNAL~53_combout\ & (\MEM_ARRAY_SIGNAL~24_q\ & ((\MEM_ADDRESS[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_ARRAY_SIGNAL~53_combout\,
	datab => \MEM_ARRAY_SIGNAL~24_q\,
	datac => \MEM_ARRAY_SIGNAL~40_q\,
	datad => \MEM_ADDRESS[0]~input_o\,
	combout => \MEM_ARRAY_SIGNAL~54_combout\);

-- Location: IOIBUF_X0_Y67_N22
\WRITE_DATA[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITE_DATA(6),
	o => \WRITE_DATA[6]~input_o\);

-- Location: FF_X2_Y62_N25
\MEM_ARRAY_SIGNAL~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU_CLOCK~inputclkctrl_outclk\,
	asdata => \WRITE_DATA[6]~input_o\,
	sload => VCC,
	ena => \MEM_ARRAY_SIGNAL~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_ARRAY_SIGNAL~33_q\);

-- Location: FF_X2_Y62_N27
\MEM_ARRAY_SIGNAL~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU_CLOCK~inputclkctrl_outclk\,
	asdata => \WRITE_DATA[6]~input_o\,
	sload => VCC,
	ena => \MEM_ARRAY_SIGNAL~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_ARRAY_SIGNAL~41_q\);

-- Location: FF_X4_Y62_N27
\MEM_ARRAY_SIGNAL~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU_CLOCK~inputclkctrl_outclk\,
	asdata => \WRITE_DATA[6]~input_o\,
	sload => VCC,
	ena => \MEM_ARRAY_SIGNAL~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_ARRAY_SIGNAL~17_q\);

-- Location: LCCOMB_X4_Y62_N0
\MEM_ARRAY_SIGNAL~25feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_ARRAY_SIGNAL~25feeder_combout\ = \WRITE_DATA[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WRITE_DATA[6]~input_o\,
	combout => \MEM_ARRAY_SIGNAL~25feeder_combout\);

-- Location: FF_X4_Y62_N1
\MEM_ARRAY_SIGNAL~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU_CLOCK~inputclkctrl_outclk\,
	d => \MEM_ARRAY_SIGNAL~25feeder_combout\,
	ena => \MEM_ARRAY_SIGNAL~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_ARRAY_SIGNAL~25_q\);

-- Location: LCCOMB_X4_Y62_N26
\MEM_ARRAY_SIGNAL~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_ARRAY_SIGNAL~55_combout\ = (\MEM_ADDRESS[0]~input_o\ & ((\MEM_ADDRESS[1]~input_o\) # ((\MEM_ARRAY_SIGNAL~25_q\)))) # (!\MEM_ADDRESS[0]~input_o\ & (!\MEM_ADDRESS[1]~input_o\ & (\MEM_ARRAY_SIGNAL~17_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_ADDRESS[0]~input_o\,
	datab => \MEM_ADDRESS[1]~input_o\,
	datac => \MEM_ARRAY_SIGNAL~17_q\,
	datad => \MEM_ARRAY_SIGNAL~25_q\,
	combout => \MEM_ARRAY_SIGNAL~55_combout\);

-- Location: LCCOMB_X2_Y62_N26
\MEM_ARRAY_SIGNAL~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_ARRAY_SIGNAL~56_combout\ = (\MEM_ADDRESS[1]~input_o\ & ((\MEM_ARRAY_SIGNAL~55_combout\ & ((\MEM_ARRAY_SIGNAL~41_q\))) # (!\MEM_ARRAY_SIGNAL~55_combout\ & (\MEM_ARRAY_SIGNAL~33_q\)))) # (!\MEM_ADDRESS[1]~input_o\ & (((\MEM_ARRAY_SIGNAL~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_ADDRESS[1]~input_o\,
	datab => \MEM_ARRAY_SIGNAL~33_q\,
	datac => \MEM_ARRAY_SIGNAL~41_q\,
	datad => \MEM_ARRAY_SIGNAL~55_combout\,
	combout => \MEM_ARRAY_SIGNAL~56_combout\);

-- Location: IOIBUF_X0_Y60_N15
\WRITE_DATA[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITE_DATA(7),
	o => \WRITE_DATA[7]~input_o\);

-- Location: FF_X3_Y62_N1
\MEM_ARRAY_SIGNAL~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU_CLOCK~inputclkctrl_outclk\,
	asdata => \WRITE_DATA[7]~input_o\,
	sload => VCC,
	ena => \MEM_ARRAY_SIGNAL~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_ARRAY_SIGNAL~34_q\);

-- Location: FF_X4_Y62_N7
\MEM_ARRAY_SIGNAL~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU_CLOCK~inputclkctrl_outclk\,
	asdata => \WRITE_DATA[7]~input_o\,
	sload => VCC,
	ena => \MEM_ARRAY_SIGNAL~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_ARRAY_SIGNAL~18_q\);

-- Location: LCCOMB_X4_Y62_N6
\MEM_ARRAY_SIGNAL~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_ARRAY_SIGNAL~57_combout\ = (\MEM_ADDRESS[1]~input_o\ & ((\MEM_ARRAY_SIGNAL~34_q\) # ((\MEM_ADDRESS[0]~input_o\)))) # (!\MEM_ADDRESS[1]~input_o\ & (((\MEM_ARRAY_SIGNAL~18_q\ & !\MEM_ADDRESS[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_ARRAY_SIGNAL~34_q\,
	datab => \MEM_ADDRESS[1]~input_o\,
	datac => \MEM_ARRAY_SIGNAL~18_q\,
	datad => \MEM_ADDRESS[0]~input_o\,
	combout => \MEM_ARRAY_SIGNAL~57_combout\);

-- Location: FF_X3_Y62_N11
\MEM_ARRAY_SIGNAL~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU_CLOCK~inputclkctrl_outclk\,
	asdata => \WRITE_DATA[7]~input_o\,
	sload => VCC,
	ena => \MEM_ARRAY_SIGNAL~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_ARRAY_SIGNAL~42_q\);

-- Location: LCCOMB_X4_Y62_N28
\MEM_ARRAY_SIGNAL~26feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_ARRAY_SIGNAL~26feeder_combout\ = \WRITE_DATA[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WRITE_DATA[7]~input_o\,
	combout => \MEM_ARRAY_SIGNAL~26feeder_combout\);

-- Location: FF_X4_Y62_N29
\MEM_ARRAY_SIGNAL~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CPU_CLOCK~inputclkctrl_outclk\,
	d => \MEM_ARRAY_SIGNAL~26feeder_combout\,
	ena => \MEM_ARRAY_SIGNAL~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_ARRAY_SIGNAL~26_q\);

-- Location: LCCOMB_X3_Y62_N10
\MEM_ARRAY_SIGNAL~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_ARRAY_SIGNAL~58_combout\ = (\MEM_ARRAY_SIGNAL~57_combout\ & (((\MEM_ARRAY_SIGNAL~42_q\)) # (!\MEM_ADDRESS[0]~input_o\))) # (!\MEM_ARRAY_SIGNAL~57_combout\ & (\MEM_ADDRESS[0]~input_o\ & ((\MEM_ARRAY_SIGNAL~26_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_ARRAY_SIGNAL~57_combout\,
	datab => \MEM_ADDRESS[0]~input_o\,
	datac => \MEM_ARRAY_SIGNAL~42_q\,
	datad => \MEM_ARRAY_SIGNAL~26_q\,
	combout => \MEM_ARRAY_SIGNAL~58_combout\);

-- Location: IOIBUF_X102_Y73_N8
\MEM_ADDRESS[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MEM_ADDRESS(2),
	o => \MEM_ADDRESS[2]~input_o\);

-- Location: IOIBUF_X107_Y73_N8
\MEM_ADDRESS[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MEM_ADDRESS(3),
	o => \MEM_ADDRESS[3]~input_o\);

-- Location: IOIBUF_X65_Y73_N8
\MEM_ADDRESS[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MEM_ADDRESS(4),
	o => \MEM_ADDRESS[4]~input_o\);

-- Location: IOIBUF_X47_Y0_N1
\MEM_ADDRESS[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MEM_ADDRESS(5),
	o => \MEM_ADDRESS[5]~input_o\);

-- Location: IOIBUF_X27_Y0_N22
\MEM_ADDRESS[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MEM_ADDRESS(6),
	o => \MEM_ADDRESS[6]~input_o\);

-- Location: IOIBUF_X67_Y0_N22
\MEM_ADDRESS[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MEM_ADDRESS(7),
	o => \MEM_ADDRESS[7]~input_o\);

ww_READ_DATA(0) <= \READ_DATA[0]~output_o\;

ww_READ_DATA(1) <= \READ_DATA[1]~output_o\;

ww_READ_DATA(2) <= \READ_DATA[2]~output_o\;

ww_READ_DATA(3) <= \READ_DATA[3]~output_o\;

ww_READ_DATA(4) <= \READ_DATA[4]~output_o\;

ww_READ_DATA(5) <= \READ_DATA[5]~output_o\;

ww_READ_DATA(6) <= \READ_DATA[6]~output_o\;

ww_READ_DATA(7) <= \READ_DATA[7]~output_o\;
END structure;


