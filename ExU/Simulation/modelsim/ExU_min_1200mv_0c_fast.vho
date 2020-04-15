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

-- DATE "04/14/2020 17:30:55"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SLL64 IS
    PORT (
	X : IN std_logic_vector(63 DOWNTO 0);
	Y : OUT std_logic_vector(63 DOWNTO 0);
	ShiftCount : IN IEEE.NUMERIC_STD.unsigned(5 DOWNTO 0)
	);
END SLL64;

-- Design Ports Information
-- Y[0]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[16]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[17]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[18]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[19]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[20]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[21]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[22]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[23]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[24]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[25]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[26]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[27]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[28]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[29]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[30]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[31]	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[32]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[33]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[34]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[35]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[36]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[37]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[38]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[39]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[40]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[41]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[42]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[43]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[44]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[45]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[46]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[47]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[48]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[49]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[50]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[51]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[52]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[53]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[54]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[55]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[56]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[57]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[58]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[59]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[60]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[61]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[62]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[63]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftCount[2]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftCount[3]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftCount[1]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftCount[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftCount[5]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[0]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftCount[0]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[3]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[4]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[5]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[6]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[7]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[8]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[9]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[10]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[11]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[12]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[13]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[14]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[15]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[16]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[17]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[18]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[19]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[20]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[21]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[22]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[23]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[24]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[25]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[26]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[27]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[28]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[29]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[30]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[31]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[32]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[33]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[34]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[35]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[36]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[37]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[38]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[39]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[40]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[41]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[42]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[43]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[44]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[45]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[46]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[47]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[48]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[49]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[50]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[51]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[52]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[53]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[54]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[55]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[56]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[57]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[58]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[59]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[60]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[61]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[62]	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[63]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SLL64 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_X : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_ShiftCount : std_logic_vector(5 DOWNTO 0);
SIGNAL \Y[0]~output_o\ : std_logic;
SIGNAL \Y[1]~output_o\ : std_logic;
SIGNAL \Y[2]~output_o\ : std_logic;
SIGNAL \Y[3]~output_o\ : std_logic;
SIGNAL \Y[4]~output_o\ : std_logic;
SIGNAL \Y[5]~output_o\ : std_logic;
SIGNAL \Y[6]~output_o\ : std_logic;
SIGNAL \Y[7]~output_o\ : std_logic;
SIGNAL \Y[8]~output_o\ : std_logic;
SIGNAL \Y[9]~output_o\ : std_logic;
SIGNAL \Y[10]~output_o\ : std_logic;
SIGNAL \Y[11]~output_o\ : std_logic;
SIGNAL \Y[12]~output_o\ : std_logic;
SIGNAL \Y[13]~output_o\ : std_logic;
SIGNAL \Y[14]~output_o\ : std_logic;
SIGNAL \Y[15]~output_o\ : std_logic;
SIGNAL \Y[16]~output_o\ : std_logic;
SIGNAL \Y[17]~output_o\ : std_logic;
SIGNAL \Y[18]~output_o\ : std_logic;
SIGNAL \Y[19]~output_o\ : std_logic;
SIGNAL \Y[20]~output_o\ : std_logic;
SIGNAL \Y[21]~output_o\ : std_logic;
SIGNAL \Y[22]~output_o\ : std_logic;
SIGNAL \Y[23]~output_o\ : std_logic;
SIGNAL \Y[24]~output_o\ : std_logic;
SIGNAL \Y[25]~output_o\ : std_logic;
SIGNAL \Y[26]~output_o\ : std_logic;
SIGNAL \Y[27]~output_o\ : std_logic;
SIGNAL \Y[28]~output_o\ : std_logic;
SIGNAL \Y[29]~output_o\ : std_logic;
SIGNAL \Y[30]~output_o\ : std_logic;
SIGNAL \Y[31]~output_o\ : std_logic;
SIGNAL \Y[32]~output_o\ : std_logic;
SIGNAL \Y[33]~output_o\ : std_logic;
SIGNAL \Y[34]~output_o\ : std_logic;
SIGNAL \Y[35]~output_o\ : std_logic;
SIGNAL \Y[36]~output_o\ : std_logic;
SIGNAL \Y[37]~output_o\ : std_logic;
SIGNAL \Y[38]~output_o\ : std_logic;
SIGNAL \Y[39]~output_o\ : std_logic;
SIGNAL \Y[40]~output_o\ : std_logic;
SIGNAL \Y[41]~output_o\ : std_logic;
SIGNAL \Y[42]~output_o\ : std_logic;
SIGNAL \Y[43]~output_o\ : std_logic;
SIGNAL \Y[44]~output_o\ : std_logic;
SIGNAL \Y[45]~output_o\ : std_logic;
SIGNAL \Y[46]~output_o\ : std_logic;
SIGNAL \Y[47]~output_o\ : std_logic;
SIGNAL \Y[48]~output_o\ : std_logic;
SIGNAL \Y[49]~output_o\ : std_logic;
SIGNAL \Y[50]~output_o\ : std_logic;
SIGNAL \Y[51]~output_o\ : std_logic;
SIGNAL \Y[52]~output_o\ : std_logic;
SIGNAL \Y[53]~output_o\ : std_logic;
SIGNAL \Y[54]~output_o\ : std_logic;
SIGNAL \Y[55]~output_o\ : std_logic;
SIGNAL \Y[56]~output_o\ : std_logic;
SIGNAL \Y[57]~output_o\ : std_logic;
SIGNAL \Y[58]~output_o\ : std_logic;
SIGNAL \Y[59]~output_o\ : std_logic;
SIGNAL \Y[60]~output_o\ : std_logic;
SIGNAL \Y[61]~output_o\ : std_logic;
SIGNAL \Y[62]~output_o\ : std_logic;
SIGNAL \Y[63]~output_o\ : std_logic;
SIGNAL \X[0]~input_o\ : std_logic;
SIGNAL \ShiftCount[2]~input_o\ : std_logic;
SIGNAL \ShiftCount[5]~input_o\ : std_logic;
SIGNAL \ShiftCount[4]~input_o\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \ShiftCount[1]~input_o\ : std_logic;
SIGNAL \ShiftCount[3]~input_o\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \ShiftCount[0]~input_o\ : std_logic;
SIGNAL \Equal7~1_combout\ : std_logic;
SIGNAL \X[1]~input_o\ : std_logic;
SIGNAL \Y3~44_combout\ : std_logic;
SIGNAL \Y3~45_combout\ : std_logic;
SIGNAL \X[2]~input_o\ : std_logic;
SIGNAL \Y3~47_combout\ : std_logic;
SIGNAL \Y3~46_combout\ : std_logic;
SIGNAL \Y3~48_combout\ : std_logic;
SIGNAL \X[3]~input_o\ : std_logic;
SIGNAL \Y3~49_combout\ : std_logic;
SIGNAL \Y3~50_combout\ : std_logic;
SIGNAL \Y3~52_combout\ : std_logic;
SIGNAL \Y3~53_combout\ : std_logic;
SIGNAL \X[4]~input_o\ : std_logic;
SIGNAL \Y2[4]~4_combout\ : std_logic;
SIGNAL \Y3~54_combout\ : std_logic;
SIGNAL \Y3~51_combout\ : std_logic;
SIGNAL \Y3~55_combout\ : std_logic;
SIGNAL \Y3~56_combout\ : std_logic;
SIGNAL \X[5]~input_o\ : std_logic;
SIGNAL \Y2[5]~5_combout\ : std_logic;
SIGNAL \Y3~57_combout\ : std_logic;
SIGNAL \Y3~58_combout\ : std_logic;
SIGNAL \X[6]~input_o\ : std_logic;
SIGNAL \Y2[6]~6_combout\ : std_logic;
SIGNAL \Y3~59_combout\ : std_logic;
SIGNAL \Y3~60_combout\ : std_logic;
SIGNAL \Y3~61_combout\ : std_logic;
SIGNAL \X[7]~input_o\ : std_logic;
SIGNAL \Y2[7]~7_combout\ : std_logic;
SIGNAL \Y3~62_combout\ : std_logic;
SIGNAL \Y3~63_combout\ : std_logic;
SIGNAL \Y3~65_combout\ : std_logic;
SIGNAL \X[8]~input_o\ : std_logic;
SIGNAL \Y2[8]~8_combout\ : std_logic;
SIGNAL \Y2[8]~112_combout\ : std_logic;
SIGNAL \Y3~66_combout\ : std_logic;
SIGNAL \Y3~64_combout\ : std_logic;
SIGNAL \Y3~67_combout\ : std_logic;
SIGNAL \Y3~68_combout\ : std_logic;
SIGNAL \X[9]~input_o\ : std_logic;
SIGNAL \Y2[9]~9_combout\ : std_logic;
SIGNAL \Y2[9]~113_combout\ : std_logic;
SIGNAL \Y3~69_combout\ : std_logic;
SIGNAL \Y3~70_combout\ : std_logic;
SIGNAL \Y2[10]~10_combout\ : std_logic;
SIGNAL \X[10]~input_o\ : std_logic;
SIGNAL \Y2[10]~11_combout\ : std_logic;
SIGNAL \Y2[10]~12_combout\ : std_logic;
SIGNAL \Y3~71_combout\ : std_logic;
SIGNAL \Y3~72_combout\ : std_logic;
SIGNAL \X[11]~input_o\ : std_logic;
SIGNAL \Y2[11]~14_combout\ : std_logic;
SIGNAL \Y2[11]~13_combout\ : std_logic;
SIGNAL \Y2[11]~15_combout\ : std_logic;
SIGNAL \Y3~73_combout\ : std_logic;
SIGNAL \Y3~74_combout\ : std_logic;
SIGNAL \X[12]~input_o\ : std_logic;
SIGNAL \Y2[12]~16_combout\ : std_logic;
SIGNAL \Y2[12]~17_combout\ : std_logic;
SIGNAL \Y3~75_combout\ : std_logic;
SIGNAL \Y3~76_combout\ : std_logic;
SIGNAL \Y3~77_combout\ : std_logic;
SIGNAL \X[13]~input_o\ : std_logic;
SIGNAL \Y2[13]~18_combout\ : std_logic;
SIGNAL \Y2[13]~19_combout\ : std_logic;
SIGNAL \Y3~78_combout\ : std_logic;
SIGNAL \Y3~79_combout\ : std_logic;
SIGNAL \X[14]~input_o\ : std_logic;
SIGNAL \Y2[14]~20_combout\ : std_logic;
SIGNAL \Y2[14]~21_combout\ : std_logic;
SIGNAL \Y3~81_combout\ : std_logic;
SIGNAL \Y3~80_combout\ : std_logic;
SIGNAL \Y3~82_combout\ : std_logic;
SIGNAL \Y3~83_combout\ : std_logic;
SIGNAL \X[15]~input_o\ : std_logic;
SIGNAL \Y2[15]~22_combout\ : std_logic;
SIGNAL \Y2[15]~23_combout\ : std_logic;
SIGNAL \Y3~84_combout\ : std_logic;
SIGNAL \Y3~244_combout\ : std_logic;
SIGNAL \Y3~86_combout\ : std_logic;
SIGNAL \X[16]~input_o\ : std_logic;
SIGNAL \Y2[4]~24_combout\ : std_logic;
SIGNAL \Y2[4]~25_combout\ : std_logic;
SIGNAL \Y2[7]~26_combout\ : std_logic;
SIGNAL \Y2[4]~27_combout\ : std_logic;
SIGNAL \Y2[16]~28_combout\ : std_logic;
SIGNAL \Y3~87_combout\ : std_logic;
SIGNAL \Y3~85_combout\ : std_logic;
SIGNAL \Y3~88_combout\ : std_logic;
SIGNAL \Y3~90_combout\ : std_logic;
SIGNAL \X[17]~input_o\ : std_logic;
SIGNAL \Y2[5]~29_combout\ : std_logic;
SIGNAL \Y2[5]~30_combout\ : std_logic;
SIGNAL \Y2[17]~31_combout\ : std_logic;
SIGNAL \Y3~89_combout\ : std_logic;
SIGNAL \Y3~91_combout\ : std_logic;
SIGNAL \Y3~92_combout\ : std_logic;
SIGNAL \X[18]~input_o\ : std_logic;
SIGNAL \Y2[6]~32_combout\ : std_logic;
SIGNAL \Y2[6]~33_combout\ : std_logic;
SIGNAL \Y2[18]~34_combout\ : std_logic;
SIGNAL \Y3~93_combout\ : std_logic;
SIGNAL \Y3~94_combout\ : std_logic;
SIGNAL \X[19]~input_o\ : std_logic;
SIGNAL \Y2[7]~35_combout\ : std_logic;
SIGNAL \Y2[7]~36_combout\ : std_logic;
SIGNAL \Y2[19]~37_combout\ : std_logic;
SIGNAL \Y3~95_combout\ : std_logic;
SIGNAL \Y3~96_combout\ : std_logic;
SIGNAL \X[20]~input_o\ : std_logic;
SIGNAL \Y2[4]~38_combout\ : std_logic;
SIGNAL \Y2[4]~39_combout\ : std_logic;
SIGNAL \Y3~98_combout\ : std_logic;
SIGNAL \Y3~99_combout\ : std_logic;
SIGNAL \Y3~97_combout\ : std_logic;
SIGNAL \Y3~100_combout\ : std_logic;
SIGNAL \X[21]~input_o\ : std_logic;
SIGNAL \Y2[5]~40_combout\ : std_logic;
SIGNAL \Y2[5]~41_combout\ : std_logic;
SIGNAL \Y3~101_combout\ : std_logic;
SIGNAL \Y3~102_combout\ : std_logic;
SIGNAL \Y3~103_combout\ : std_logic;
SIGNAL \Y3~107_combout\ : std_logic;
SIGNAL \Y3~108_combout\ : std_logic;
SIGNAL \X[22]~input_o\ : std_logic;
SIGNAL \Y2[6]~42_combout\ : std_logic;
SIGNAL \Y2[6]~43_combout\ : std_logic;
SIGNAL \Y3~109_combout\ : std_logic;
SIGNAL \Y3~104_combout\ : std_logic;
SIGNAL \Y3~105_combout\ : std_logic;
SIGNAL \Y3~106_combout\ : std_logic;
SIGNAL \Y3~245_combout\ : std_logic;
SIGNAL \X[23]~input_o\ : std_logic;
SIGNAL \Y2[7]~44_combout\ : std_logic;
SIGNAL \Y2[7]~45_combout\ : std_logic;
SIGNAL \Y3~111_combout\ : std_logic;
SIGNAL \Y3~110_combout\ : std_logic;
SIGNAL \Y3~112_combout\ : std_logic;
SIGNAL \Y3~246_combout\ : std_logic;
SIGNAL \Y3~113_combout\ : std_logic;
SIGNAL \Y3~114_combout\ : std_logic;
SIGNAL \X[24]~input_o\ : std_logic;
SIGNAL \Y2[4]~46_combout\ : std_logic;
SIGNAL \Y3~115_combout\ : std_logic;
SIGNAL \Y3~116_combout\ : std_logic;
SIGNAL \Y3~247_combout\ : std_logic;
SIGNAL \Y3~117_combout\ : std_logic;
SIGNAL \X[25]~input_o\ : std_logic;
SIGNAL \Y2[5]~47_combout\ : std_logic;
SIGNAL \Y3~118_combout\ : std_logic;
SIGNAL \Y3~119_combout\ : std_logic;
SIGNAL \Y3~120_combout\ : std_logic;
SIGNAL \Y3~121_combout\ : std_logic;
SIGNAL \Y3~122_combout\ : std_logic;
SIGNAL \Y3~123_combout\ : std_logic;
SIGNAL \X[26]~input_o\ : std_logic;
SIGNAL \Y2[6]~48_combout\ : std_logic;
SIGNAL \Y2[6]~49_combout\ : std_logic;
SIGNAL \Y3~124_combout\ : std_logic;
SIGNAL \Y3~125_combout\ : std_logic;
SIGNAL \Y3~126_combout\ : std_logic;
SIGNAL \Y3~127_combout\ : std_logic;
SIGNAL \X[27]~input_o\ : std_logic;
SIGNAL \Y2[7]~50_combout\ : std_logic;
SIGNAL \Y2[7]~51_combout\ : std_logic;
SIGNAL \Y3~128_combout\ : std_logic;
SIGNAL \Y3~129_combout\ : std_logic;
SIGNAL \Y3~130_combout\ : std_logic;
SIGNAL \Y3~131_combout\ : std_logic;
SIGNAL \Y3~132_combout\ : std_logic;
SIGNAL \X[28]~input_o\ : std_logic;
SIGNAL \Y2[4]~52_combout\ : std_logic;
SIGNAL \Y2[4]~53_combout\ : std_logic;
SIGNAL \Y3~133_combout\ : std_logic;
SIGNAL \Y3~134_combout\ : std_logic;
SIGNAL \Y3~136_combout\ : std_logic;
SIGNAL \X[29]~input_o\ : std_logic;
SIGNAL \Y2[5]~54_combout\ : std_logic;
SIGNAL \Y2[5]~55_combout\ : std_logic;
SIGNAL \Y3~135_combout\ : std_logic;
SIGNAL \Y3~137_combout\ : std_logic;
SIGNAL \Y3~138_combout\ : std_logic;
SIGNAL \Y3~139_combout\ : std_logic;
SIGNAL \X[30]~input_o\ : std_logic;
SIGNAL \Y2[6]~56_combout\ : std_logic;
SIGNAL \Y2[6]~57_combout\ : std_logic;
SIGNAL \Y3~140_combout\ : std_logic;
SIGNAL \Y3~141_combout\ : std_logic;
SIGNAL \Y3~142_combout\ : std_logic;
SIGNAL \X[31]~input_o\ : std_logic;
SIGNAL \Y2[7]~58_combout\ : std_logic;
SIGNAL \Y2[7]~59_combout\ : std_logic;
SIGNAL \Y3~144_combout\ : std_logic;
SIGNAL \Y3~143_combout\ : std_logic;
SIGNAL \Y3~145_combout\ : std_logic;
SIGNAL \Y3~146_combout\ : std_logic;
SIGNAL \X[32]~input_o\ : std_logic;
SIGNAL \Y1[32]~0_combout\ : std_logic;
SIGNAL \Y1[32]~1_combout\ : std_logic;
SIGNAL \Y2[4]~60_combout\ : std_logic;
SIGNAL \Y3~147_combout\ : std_logic;
SIGNAL \Y3~248_combout\ : std_logic;
SIGNAL \Y3~148_combout\ : std_logic;
SIGNAL \Y3~149_combout\ : std_logic;
SIGNAL \Y3~249_combout\ : std_logic;
SIGNAL \Y3~150_combout\ : std_logic;
SIGNAL \X[33]~input_o\ : std_logic;
SIGNAL \Y1[33]~2_combout\ : std_logic;
SIGNAL \Y1[33]~3_combout\ : std_logic;
SIGNAL \Y2[5]~61_combout\ : std_logic;
SIGNAL \Y3~151_combout\ : std_logic;
SIGNAL \Y3~152_combout\ : std_logic;
SIGNAL \X[34]~input_o\ : std_logic;
SIGNAL \Y1[34]~4_combout\ : std_logic;
SIGNAL \Y1[34]~5_combout\ : std_logic;
SIGNAL \Y2[6]~62_combout\ : std_logic;
SIGNAL \Y3~153_combout\ : std_logic;
SIGNAL \Y3~154_combout\ : std_logic;
SIGNAL \Y3~250_combout\ : std_logic;
SIGNAL \Y3~155_combout\ : std_logic;
SIGNAL \Y3~156_combout\ : std_logic;
SIGNAL \Y3~251_combout\ : std_logic;
SIGNAL \X[35]~input_o\ : std_logic;
SIGNAL \Y1[35]~6_combout\ : std_logic;
SIGNAL \Y1[35]~7_combout\ : std_logic;
SIGNAL \Y2[7]~63_combout\ : std_logic;
SIGNAL \Y3~157_combout\ : std_logic;
SIGNAL \Y3~158_combout\ : std_logic;
SIGNAL \Y3~159_combout\ : std_logic;
SIGNAL \X[36]~input_o\ : std_logic;
SIGNAL \Y1[36]~8_combout\ : std_logic;
SIGNAL \Y1[36]~9_combout\ : std_logic;
SIGNAL \Y2[4]~64_combout\ : std_logic;
SIGNAL \Y3~160_combout\ : std_logic;
SIGNAL \Y3~252_combout\ : std_logic;
SIGNAL \Y3~161_combout\ : std_logic;
SIGNAL \Y3~162_combout\ : std_logic;
SIGNAL \Y3~253_combout\ : std_logic;
SIGNAL \X[37]~input_o\ : std_logic;
SIGNAL \Y1[37]~10_combout\ : std_logic;
SIGNAL \Y1[37]~11_combout\ : std_logic;
SIGNAL \Y2[5]~65_combout\ : std_logic;
SIGNAL \Y3~163_combout\ : std_logic;
SIGNAL \Y3~164_combout\ : std_logic;
SIGNAL \Y3~165_combout\ : std_logic;
SIGNAL \X[38]~input_o\ : std_logic;
SIGNAL \Y1[38]~12_combout\ : std_logic;
SIGNAL \Y1[38]~13_combout\ : std_logic;
SIGNAL \Y2[6]~66_combout\ : std_logic;
SIGNAL \Y3~167_combout\ : std_logic;
SIGNAL \Y3~166_combout\ : std_logic;
SIGNAL \Y3~254_combout\ : std_logic;
SIGNAL \Y3~168_combout\ : std_logic;
SIGNAL \X[39]~input_o\ : std_logic;
SIGNAL \Y1[39]~14_combout\ : std_logic;
SIGNAL \Y1[39]~15_combout\ : std_logic;
SIGNAL \Y2[7]~67_combout\ : std_logic;
SIGNAL \Y3~169_combout\ : std_logic;
SIGNAL \Y3~170_combout\ : std_logic;
SIGNAL \Y3~255_combout\ : std_logic;
SIGNAL \Y3~171_combout\ : std_logic;
SIGNAL \X[40]~input_o\ : std_logic;
SIGNAL \Y1[24]~16_combout\ : std_logic;
SIGNAL \Y2[4]~68_combout\ : std_logic;
SIGNAL \Y3~172_combout\ : std_logic;
SIGNAL \Y3~173_combout\ : std_logic;
SIGNAL \Y3~256_combout\ : std_logic;
SIGNAL \X[41]~input_o\ : std_logic;
SIGNAL \Y1[25]~17_combout\ : std_logic;
SIGNAL \Y2[5]~69_combout\ : std_logic;
SIGNAL \Y2[5]~70_combout\ : std_logic;
SIGNAL \Y3~175_combout\ : std_logic;
SIGNAL \Y3~174_combout\ : std_logic;
SIGNAL \Y3~257_combout\ : std_logic;
SIGNAL \Y2[4]~71_combout\ : std_logic;
SIGNAL \Y3~176_combout\ : std_logic;
SIGNAL \X[42]~input_o\ : std_logic;
SIGNAL \Y1[26]~18_combout\ : std_logic;
SIGNAL \Y2[6]~72_combout\ : std_logic;
SIGNAL \Y3~177_combout\ : std_logic;
SIGNAL \Y3~178_combout\ : std_logic;
SIGNAL \Y3~258_combout\ : std_logic;
SIGNAL \X[43]~input_o\ : std_logic;
SIGNAL \Y1[27]~19_combout\ : std_logic;
SIGNAL \Y2[7]~73_combout\ : std_logic;
SIGNAL \Y2[7]~74_combout\ : std_logic;
SIGNAL \Y3~180_combout\ : std_logic;
SIGNAL \Y3~179_combout\ : std_logic;
SIGNAL \Y3~259_combout\ : std_logic;
SIGNAL \Y2[6]~75_combout\ : std_logic;
SIGNAL \Y3~181_combout\ : std_logic;
SIGNAL \X[44]~input_o\ : std_logic;
SIGNAL \Y1[28]~20_combout\ : std_logic;
SIGNAL \Y2[4]~76_combout\ : std_logic;
SIGNAL \Y2[4]~77_combout\ : std_logic;
SIGNAL \Y3~182_combout\ : std_logic;
SIGNAL \Y3~183_combout\ : std_logic;
SIGNAL \Y3~260_combout\ : std_logic;
SIGNAL \X[45]~input_o\ : std_logic;
SIGNAL \Y1[29]~21_combout\ : std_logic;
SIGNAL \Y2[5]~78_combout\ : std_logic;
SIGNAL \Y2[5]~79_combout\ : std_logic;
SIGNAL \Y3~184_combout\ : std_logic;
SIGNAL \Y3~185_combout\ : std_logic;
SIGNAL \Y3~186_combout\ : std_logic;
SIGNAL \Y3~261_combout\ : std_logic;
SIGNAL \Y3~187_combout\ : std_logic;
SIGNAL \X[46]~input_o\ : std_logic;
SIGNAL \Y1[46]~22_combout\ : std_logic;
SIGNAL \Y1[46]~23_combout\ : std_logic;
SIGNAL \Y2[50]~80_combout\ : std_logic;
SIGNAL \Y2[46]~81_combout\ : std_logic;
SIGNAL \Y3~188_combout\ : std_logic;
SIGNAL \Y3~189_combout\ : std_logic;
SIGNAL \X[47]~input_o\ : std_logic;
SIGNAL \Y1[47]~24_combout\ : std_logic;
SIGNAL \Y1[47]~25_combout\ : std_logic;
SIGNAL \Y2[51]~82_combout\ : std_logic;
SIGNAL \Y2[47]~83_combout\ : std_logic;
SIGNAL \Y3~190_combout\ : std_logic;
SIGNAL \Y3~191_combout\ : std_logic;
SIGNAL \Y3~192_combout\ : std_logic;
SIGNAL \X[48]~input_o\ : std_logic;
SIGNAL \Y1[48]~26_combout\ : std_logic;
SIGNAL \Y1[48]~27_combout\ : std_logic;
SIGNAL \Y2[4]~84_combout\ : std_logic;
SIGNAL \Y3~193_combout\ : std_logic;
SIGNAL \Y3~194_combout\ : std_logic;
SIGNAL \Y3~195_combout\ : std_logic;
SIGNAL \X[49]~input_o\ : std_logic;
SIGNAL \Y1[49]~28_combout\ : std_logic;
SIGNAL \Y1[49]~29_combout\ : std_logic;
SIGNAL \Y2[5]~85_combout\ : std_logic;
SIGNAL \Y3~196_combout\ : std_logic;
SIGNAL \Y3~197_combout\ : std_logic;
SIGNAL \Y3~198_combout\ : std_logic;
SIGNAL \X[50]~input_o\ : std_logic;
SIGNAL \Y1[50]~30_combout\ : std_logic;
SIGNAL \Y1[50]~31_combout\ : std_logic;
SIGNAL \Y2[6]~86_combout\ : std_logic;
SIGNAL \Y2[50]~87_combout\ : std_logic;
SIGNAL \Y3~199_combout\ : std_logic;
SIGNAL \Y3~200_combout\ : std_logic;
SIGNAL \X[51]~input_o\ : std_logic;
SIGNAL \Y1[51]~32_combout\ : std_logic;
SIGNAL \Y1[51]~33_combout\ : std_logic;
SIGNAL \Y2[7]~88_combout\ : std_logic;
SIGNAL \Y2[51]~89_combout\ : std_logic;
SIGNAL \Y3~201_combout\ : std_logic;
SIGNAL \Y3~202_combout\ : std_logic;
SIGNAL \X[52]~input_o\ : std_logic;
SIGNAL \Y1[52]~34_combout\ : std_logic;
SIGNAL \Y1[52]~35_combout\ : std_logic;
SIGNAL \Y2[4]~90_combout\ : std_logic;
SIGNAL \Y3~203_combout\ : std_logic;
SIGNAL \Y3~204_combout\ : std_logic;
SIGNAL \Y3~205_combout\ : std_logic;
SIGNAL \X[53]~input_o\ : std_logic;
SIGNAL \Y1[53]~36_combout\ : std_logic;
SIGNAL \Y1[53]~37_combout\ : std_logic;
SIGNAL \Y2[5]~91_combout\ : std_logic;
SIGNAL \Y3~206_combout\ : std_logic;
SIGNAL \Y3~207_combout\ : std_logic;
SIGNAL \Y3~208_combout\ : std_logic;
SIGNAL \Y1[54]~38_combout\ : std_logic;
SIGNAL \X[54]~input_o\ : std_logic;
SIGNAL \Y1[54]~39_combout\ : std_logic;
SIGNAL \Y2[58]~92_combout\ : std_logic;
SIGNAL \Y2[54]~93_combout\ : std_logic;
SIGNAL \Y3~209_combout\ : std_logic;
SIGNAL \Y3~210_combout\ : std_logic;
SIGNAL \X[55]~input_o\ : std_logic;
SIGNAL \Y1[55]~41_combout\ : std_logic;
SIGNAL \Y1[55]~40_combout\ : std_logic;
SIGNAL \Y2[59]~94_combout\ : std_logic;
SIGNAL \Y2[55]~95_combout\ : std_logic;
SIGNAL \Y3~211_combout\ : std_logic;
SIGNAL \Y3~212_combout\ : std_logic;
SIGNAL \X[56]~input_o\ : std_logic;
SIGNAL \Y2[4]~96_combout\ : std_logic;
SIGNAL \Y2[4]~97_combout\ : std_logic;
SIGNAL \Y2[4]~98_combout\ : std_logic;
SIGNAL \Y2[4]~99_combout\ : std_logic;
SIGNAL \Y3~213_combout\ : std_logic;
SIGNAL \Y3~214_combout\ : std_logic;
SIGNAL \Y3~215_combout\ : std_logic;
SIGNAL \X[57]~input_o\ : std_logic;
SIGNAL \Y2[5]~100_combout\ : std_logic;
SIGNAL \Y2[5]~101_combout\ : std_logic;
SIGNAL \Y3~216_combout\ : std_logic;
SIGNAL \Y3~217_combout\ : std_logic;
SIGNAL \Y3~218_combout\ : std_logic;
SIGNAL \X[58]~input_o\ : std_logic;
SIGNAL \Y2[6]~102_combout\ : std_logic;
SIGNAL \Y2[6]~103_combout\ : std_logic;
SIGNAL \Y2[58]~104_combout\ : std_logic;
SIGNAL \Y3~219_combout\ : std_logic;
SIGNAL \Y3~220_combout\ : std_logic;
SIGNAL \Y3~221_combout\ : std_logic;
SIGNAL \Y3~222_combout\ : std_logic;
SIGNAL \X[59]~input_o\ : std_logic;
SIGNAL \Y2[7]~105_combout\ : std_logic;
SIGNAL \Y2[7]~106_combout\ : std_logic;
SIGNAL \Y2[59]~107_combout\ : std_logic;
SIGNAL \Y3~223_combout\ : std_logic;
SIGNAL \Y3~224_combout\ : std_logic;
SIGNAL \X[60]~input_o\ : std_logic;
SIGNAL \Y2[60]~108_combout\ : std_logic;
SIGNAL \Y2[60]~109_combout\ : std_logic;
SIGNAL \Y3~225_combout\ : std_logic;
SIGNAL \Y3~226_combout\ : std_logic;
SIGNAL \Y3~227_combout\ : std_logic;
SIGNAL \X[61]~input_o\ : std_logic;
SIGNAL \Y2[61]~110_combout\ : std_logic;
SIGNAL \Y2[61]~111_combout\ : std_logic;
SIGNAL \Y3~228_combout\ : std_logic;
SIGNAL \Y3~229_combout\ : std_logic;
SIGNAL \Y3~230_combout\ : std_logic;
SIGNAL \Y3~231_combout\ : std_logic;
SIGNAL \X[62]~input_o\ : std_logic;
SIGNAL \Y3~232_combout\ : std_logic;
SIGNAL \Y3~233_combout\ : std_logic;
SIGNAL \Y3~234_combout\ : std_logic;
SIGNAL \Y3~262_combout\ : std_logic;
SIGNAL \Y3~235_combout\ : std_logic;
SIGNAL \Y3~236_combout\ : std_logic;
SIGNAL \Y3~237_combout\ : std_logic;
SIGNAL \Y3~238_combout\ : std_logic;
SIGNAL \X[63]~input_o\ : std_logic;
SIGNAL \Y3~239_combout\ : std_logic;
SIGNAL \Y3~240_combout\ : std_logic;
SIGNAL \Y3~241_combout\ : std_logic;
SIGNAL \Y3~242_combout\ : std_logic;
SIGNAL \Y3~243_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_X <= X;
Y <= ww_Y;
ww_ShiftCount <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(ShiftCount);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X72_Y73_N9
\Y[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal7~1_combout\,
	devoe => ww_devoe,
	o => \Y[0]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\Y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~44_combout\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\Y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~48_combout\,
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\Y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~50_combout\,
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\Y[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~55_combout\,
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\Y[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~58_combout\,
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\Y[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~61_combout\,
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\Y[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~63_combout\,
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\Y[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~67_combout\,
	devoe => ww_devoe,
	o => \Y[8]~output_o\);

-- Location: IOOBUF_X115_Y55_N16
\Y[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~70_combout\,
	devoe => ww_devoe,
	o => \Y[9]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\Y[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~72_combout\,
	devoe => ww_devoe,
	o => \Y[10]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\Y[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~74_combout\,
	devoe => ww_devoe,
	o => \Y[11]~output_o\);

-- Location: IOOBUF_X102_Y73_N2
\Y[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~76_combout\,
	devoe => ww_devoe,
	o => \Y[12]~output_o\);

-- Location: IOOBUF_X81_Y73_N9
\Y[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~79_combout\,
	devoe => ww_devoe,
	o => \Y[13]~output_o\);

-- Location: IOOBUF_X98_Y73_N23
\Y[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~82_combout\,
	devoe => ww_devoe,
	o => \Y[14]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\Y[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~244_combout\,
	devoe => ww_devoe,
	o => \Y[15]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\Y[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~88_combout\,
	devoe => ww_devoe,
	o => \Y[16]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\Y[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~91_combout\,
	devoe => ww_devoe,
	o => \Y[17]~output_o\);

-- Location: IOOBUF_X115_Y45_N23
\Y[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~94_combout\,
	devoe => ww_devoe,
	o => \Y[18]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\Y[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~96_combout\,
	devoe => ww_devoe,
	o => \Y[19]~output_o\);

-- Location: IOOBUF_X87_Y73_N2
\Y[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~100_combout\,
	devoe => ww_devoe,
	o => \Y[20]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\Y[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~103_combout\,
	devoe => ww_devoe,
	o => \Y[21]~output_o\);

-- Location: IOOBUF_X85_Y73_N9
\Y[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~245_combout\,
	devoe => ww_devoe,
	o => \Y[22]~output_o\);

-- Location: IOOBUF_X115_Y58_N16
\Y[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~246_combout\,
	devoe => ww_devoe,
	o => \Y[23]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\Y[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~247_combout\,
	devoe => ww_devoe,
	o => \Y[24]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\Y[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~120_combout\,
	devoe => ww_devoe,
	o => \Y[25]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\Y[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~125_combout\,
	devoe => ww_devoe,
	o => \Y[26]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\Y[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~129_combout\,
	devoe => ww_devoe,
	o => \Y[27]~output_o\);

-- Location: IOOBUF_X89_Y73_N16
\Y[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~134_combout\,
	devoe => ww_devoe,
	o => \Y[28]~output_o\);

-- Location: IOOBUF_X87_Y73_N23
\Y[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~138_combout\,
	devoe => ww_devoe,
	o => \Y[29]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\Y[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~142_combout\,
	devoe => ww_devoe,
	o => \Y[30]~output_o\);

-- Location: IOOBUF_X115_Y60_N16
\Y[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~146_combout\,
	devoe => ww_devoe,
	o => \Y[31]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\Y[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~149_combout\,
	devoe => ww_devoe,
	o => \Y[32]~output_o\);

-- Location: IOOBUF_X115_Y58_N23
\Y[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~152_combout\,
	devoe => ww_devoe,
	o => \Y[33]~output_o\);

-- Location: IOOBUF_X115_Y56_N23
\Y[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~156_combout\,
	devoe => ww_devoe,
	o => \Y[34]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\Y[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~159_combout\,
	devoe => ww_devoe,
	o => \Y[35]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\Y[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~162_combout\,
	devoe => ww_devoe,
	o => \Y[36]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\Y[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~165_combout\,
	devoe => ww_devoe,
	o => \Y[37]~output_o\);

-- Location: IOOBUF_X79_Y0_N9
\Y[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~254_combout\,
	devoe => ww_devoe,
	o => \Y[38]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\Y[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~255_combout\,
	devoe => ww_devoe,
	o => \Y[39]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\Y[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~256_combout\,
	devoe => ww_devoe,
	o => \Y[40]~output_o\);

-- Location: IOOBUF_X91_Y73_N16
\Y[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~257_combout\,
	devoe => ww_devoe,
	o => \Y[41]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\Y[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~258_combout\,
	devoe => ww_devoe,
	o => \Y[42]~output_o\);

-- Location: IOOBUF_X115_Y51_N2
\Y[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~259_combout\,
	devoe => ww_devoe,
	o => \Y[43]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\Y[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~260_combout\,
	devoe => ww_devoe,
	o => \Y[44]~output_o\);

-- Location: IOOBUF_X115_Y51_N9
\Y[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~261_combout\,
	devoe => ww_devoe,
	o => \Y[45]~output_o\);

-- Location: IOOBUF_X115_Y47_N23
\Y[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~189_combout\,
	devoe => ww_devoe,
	o => \Y[46]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\Y[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~192_combout\,
	devoe => ww_devoe,
	o => \Y[47]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\Y[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~195_combout\,
	devoe => ww_devoe,
	o => \Y[48]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\Y[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~198_combout\,
	devoe => ww_devoe,
	o => \Y[49]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\Y[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~200_combout\,
	devoe => ww_devoe,
	o => \Y[50]~output_o\);

-- Location: IOOBUF_X115_Y41_N9
\Y[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~202_combout\,
	devoe => ww_devoe,
	o => \Y[51]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\Y[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~205_combout\,
	devoe => ww_devoe,
	o => \Y[52]~output_o\);

-- Location: IOOBUF_X115_Y48_N2
\Y[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~208_combout\,
	devoe => ww_devoe,
	o => \Y[53]~output_o\);

-- Location: IOOBUF_X96_Y73_N23
\Y[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~210_combout\,
	devoe => ww_devoe,
	o => \Y[54]~output_o\);

-- Location: IOOBUF_X115_Y46_N2
\Y[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~212_combout\,
	devoe => ww_devoe,
	o => \Y[55]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\Y[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~215_combout\,
	devoe => ww_devoe,
	o => \Y[56]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\Y[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~218_combout\,
	devoe => ww_devoe,
	o => \Y[57]~output_o\);

-- Location: IOOBUF_X115_Y36_N2
\Y[58]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~221_combout\,
	devoe => ww_devoe,
	o => \Y[58]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\Y[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~224_combout\,
	devoe => ww_devoe,
	o => \Y[59]~output_o\);

-- Location: IOOBUF_X115_Y42_N16
\Y[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~227_combout\,
	devoe => ww_devoe,
	o => \Y[60]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\Y[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~230_combout\,
	devoe => ww_devoe,
	o => \Y[61]~output_o\);

-- Location: IOOBUF_X89_Y73_N23
\Y[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~236_combout\,
	devoe => ww_devoe,
	o => \Y[62]~output_o\);

-- Location: IOOBUF_X115_Y53_N16
\Y[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y3~243_combout\,
	devoe => ww_devoe,
	o => \Y[63]~output_o\);

-- Location: IOIBUF_X67_Y73_N22
\X[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(0),
	o => \X[0]~input_o\);

-- Location: IOIBUF_X83_Y73_N15
\ShiftCount[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftCount(2),
	o => \ShiftCount[2]~input_o\);

-- Location: IOIBUF_X81_Y73_N1
\ShiftCount[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftCount(5),
	o => \ShiftCount[5]~input_o\);

-- Location: IOIBUF_X83_Y73_N8
\ShiftCount[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftCount(4),
	o => \ShiftCount[4]~input_o\);

-- Location: LCCOMB_X75_Y61_N16
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\ShiftCount[5]~input_o\) # (\ShiftCount[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ShiftCount[5]~input_o\,
	datad => \ShiftCount[4]~input_o\,
	combout => \Equal1~0_combout\);

-- Location: IOIBUF_X79_Y73_N8
\ShiftCount[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftCount(1),
	o => \ShiftCount[1]~input_o\);

-- Location: IOIBUF_X81_Y73_N15
\ShiftCount[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftCount(3),
	o => \ShiftCount[3]~input_o\);

-- Location: LCCOMB_X74_Y52_N16
\Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (!\ShiftCount[2]~input_o\ & (!\Equal1~0_combout\ & (!\ShiftCount[1]~input_o\ & !\ShiftCount[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[2]~input_o\,
	datab => \Equal1~0_combout\,
	datac => \ShiftCount[1]~input_o\,
	datad => \ShiftCount[3]~input_o\,
	combout => \Equal7~0_combout\);

-- Location: IOIBUF_X79_Y73_N1
\ShiftCount[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftCount(0),
	o => \ShiftCount[0]~input_o\);

-- Location: LCCOMB_X75_Y69_N0
\Equal7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~1_combout\ = (\X[0]~input_o\ & (\Equal7~0_combout\ & !\ShiftCount[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X[0]~input_o\,
	datac => \Equal7~0_combout\,
	datad => \ShiftCount[0]~input_o\,
	combout => \Equal7~1_combout\);

-- Location: IOIBUF_X58_Y73_N8
\X[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(1),
	o => \X[1]~input_o\);

-- Location: LCCOMB_X75_Y69_N10
\Y3~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~44_combout\ = (\Equal7~0_combout\ & ((\ShiftCount[0]~input_o\ & ((\X[0]~input_o\))) # (!\ShiftCount[0]~input_o\ & (\X[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \X[1]~input_o\,
	datac => \X[0]~input_o\,
	datad => \ShiftCount[0]~input_o\,
	combout => \Y3~44_combout\);

-- Location: LCCOMB_X75_Y69_N12
\Y3~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~45_combout\ = (!\ShiftCount[5]~input_o\ & (!\ShiftCount[3]~input_o\ & (!\ShiftCount[2]~input_o\ & !\ShiftCount[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~input_o\,
	datab => \ShiftCount[3]~input_o\,
	datac => \ShiftCount[2]~input_o\,
	datad => \ShiftCount[4]~input_o\,
	combout => \Y3~45_combout\);

-- Location: IOIBUF_X94_Y73_N8
\X[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(2),
	o => \X[2]~input_o\);

-- Location: LCCOMB_X75_Y69_N24
\Y3~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~47_combout\ = (\ShiftCount[1]~input_o\ & (\X[0]~input_o\)) # (!\ShiftCount[1]~input_o\ & ((\X[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X[0]~input_o\,
	datac => \X[2]~input_o\,
	datad => \ShiftCount[1]~input_o\,
	combout => \Y3~47_combout\);

-- Location: LCCOMB_X75_Y69_N30
\Y3~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~46_combout\ = (!\ShiftCount[1]~input_o\ & (\X[1]~input_o\ & \ShiftCount[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[1]~input_o\,
	datab => \X[1]~input_o\,
	datad => \ShiftCount[0]~input_o\,
	combout => \Y3~46_combout\);

-- Location: LCCOMB_X75_Y69_N2
\Y3~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~48_combout\ = (\Y3~45_combout\ & ((\Y3~46_combout\) # ((\Y3~47_combout\ & !\ShiftCount[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~45_combout\,
	datab => \Y3~47_combout\,
	datac => \Y3~46_combout\,
	datad => \ShiftCount[0]~input_o\,
	combout => \Y3~48_combout\);

-- Location: IOIBUF_X100_Y73_N15
\X[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(3),
	o => \X[3]~input_o\);

-- Location: LCCOMB_X75_Y62_N8
\Y3~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~49_combout\ = (\ShiftCount[1]~input_o\ & (\X[1]~input_o\)) # (!\ShiftCount[1]~input_o\ & ((\X[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X[1]~input_o\,
	datac => \ShiftCount[1]~input_o\,
	datad => \X[3]~input_o\,
	combout => \Y3~49_combout\);

-- Location: LCCOMB_X75_Y69_N20
\Y3~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~50_combout\ = (\Y3~45_combout\ & ((\ShiftCount[0]~input_o\ & (\Y3~47_combout\)) # (!\ShiftCount[0]~input_o\ & ((\Y3~49_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~45_combout\,
	datab => \Y3~47_combout\,
	datac => \Y3~49_combout\,
	datad => \ShiftCount[0]~input_o\,
	combout => \Y3~50_combout\);

-- Location: LCCOMB_X75_Y62_N12
\Y3~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~52_combout\ = (!\ShiftCount[3]~input_o\ & (!\ShiftCount[2]~input_o\ & (\ShiftCount[1]~input_o\ & \X[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[3]~input_o\,
	datab => \ShiftCount[2]~input_o\,
	datac => \ShiftCount[1]~input_o\,
	datad => \X[2]~input_o\,
	combout => \Y3~52_combout\);

-- Location: LCCOMB_X75_Y62_N24
\Y3~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~53_combout\ = (!\ShiftCount[3]~input_o\ & !\ShiftCount[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[3]~input_o\,
	datac => \ShiftCount[1]~input_o\,
	combout => \Y3~53_combout\);

-- Location: IOIBUF_X52_Y73_N22
\X[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(4),
	o => \X[4]~input_o\);

-- Location: LCCOMB_X75_Y62_N6
\Y2[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[4]~4_combout\ = (\ShiftCount[2]~input_o\ & ((\X[0]~input_o\))) # (!\ShiftCount[2]~input_o\ & (\X[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[4]~input_o\,
	datab => \X[0]~input_o\,
	datad => \ShiftCount[2]~input_o\,
	combout => \Y2[4]~4_combout\);

-- Location: LCCOMB_X75_Y62_N10
\Y3~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~54_combout\ = (!\Equal1~0_combout\ & ((\Y3~52_combout\) # ((\Y3~53_combout\ & \Y2[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~52_combout\,
	datab => \Y3~53_combout\,
	datac => \Equal1~0_combout\,
	datad => \Y2[4]~4_combout\,
	combout => \Y3~54_combout\);

-- Location: LCCOMB_X75_Y62_N2
\Y3~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~51_combout\ = (!\ShiftCount[3]~input_o\ & (\ShiftCount[0]~input_o\ & (!\Equal1~0_combout\ & !\ShiftCount[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[3]~input_o\,
	datab => \ShiftCount[0]~input_o\,
	datac => \Equal1~0_combout\,
	datad => \ShiftCount[2]~input_o\,
	combout => \Y3~51_combout\);

-- Location: LCCOMB_X75_Y62_N20
\Y3~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~55_combout\ = (\Y3~54_combout\ & (((\Y3~51_combout\ & \Y3~49_combout\)) # (!\ShiftCount[0]~input_o\))) # (!\Y3~54_combout\ & (\Y3~51_combout\ & (\Y3~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~54_combout\,
	datab => \Y3~51_combout\,
	datac => \Y3~49_combout\,
	datad => \ShiftCount[0]~input_o\,
	combout => \Y3~55_combout\);

-- Location: LCCOMB_X75_Y62_N22
\Y3~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~56_combout\ = (!\ShiftCount[3]~input_o\ & (!\ShiftCount[2]~input_o\ & (\ShiftCount[1]~input_o\ & \X[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[3]~input_o\,
	datab => \ShiftCount[2]~input_o\,
	datac => \ShiftCount[1]~input_o\,
	datad => \X[3]~input_o\,
	combout => \Y3~56_combout\);

-- Location: IOIBUF_X58_Y73_N15
\X[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(5),
	o => \X[5]~input_o\);

-- Location: LCCOMB_X75_Y62_N16
\Y2[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[5]~5_combout\ = (\ShiftCount[2]~input_o\ & (\X[1]~input_o\)) # (!\ShiftCount[2]~input_o\ & ((\X[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X[1]~input_o\,
	datac => \X[5]~input_o\,
	datad => \ShiftCount[2]~input_o\,
	combout => \Y2[5]~5_combout\);

-- Location: LCCOMB_X75_Y62_N26
\Y3~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~57_combout\ = (!\Equal1~0_combout\ & ((\Y3~56_combout\) # ((\Y2[5]~5_combout\ & \Y3~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~56_combout\,
	datab => \Y2[5]~5_combout\,
	datac => \Equal1~0_combout\,
	datad => \Y3~53_combout\,
	combout => \Y3~57_combout\);

-- Location: LCCOMB_X75_Y62_N28
\Y3~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~58_combout\ = (\ShiftCount[0]~input_o\ & (\Y3~54_combout\)) # (!\ShiftCount[0]~input_o\ & ((\Y3~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~54_combout\,
	datac => \Y3~57_combout\,
	datad => \ShiftCount[0]~input_o\,
	combout => \Y3~58_combout\);

-- Location: IOIBUF_X115_Y50_N1
\X[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(6),
	o => \X[6]~input_o\);

-- Location: LCCOMB_X75_Y55_N8
\Y2[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[6]~6_combout\ = (\ShiftCount[2]~input_o\ & (\X[2]~input_o\)) # (!\ShiftCount[2]~input_o\ & ((\X[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X[2]~input_o\,
	datac => \ShiftCount[2]~input_o\,
	datad => \X[6]~input_o\,
	combout => \Y2[6]~6_combout\);

-- Location: LCCOMB_X75_Y62_N30
\Y3~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~59_combout\ = (\ShiftCount[1]~input_o\ & (\Y2[4]~4_combout\)) # (!\ShiftCount[1]~input_o\ & ((\Y2[6]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[4]~4_combout\,
	datab => \Y2[6]~6_combout\,
	datac => \ShiftCount[1]~input_o\,
	combout => \Y3~59_combout\);

-- Location: LCCOMB_X76_Y54_N0
\Y3~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~60_combout\ = (!\ShiftCount[5]~input_o\ & (!\ShiftCount[4]~input_o\ & !\ShiftCount[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~input_o\,
	datab => \ShiftCount[4]~input_o\,
	datac => \ShiftCount[3]~input_o\,
	combout => \Y3~60_combout\);

-- Location: LCCOMB_X75_Y62_N0
\Y3~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~61_combout\ = (\ShiftCount[0]~input_o\ & (((\Y3~57_combout\)))) # (!\ShiftCount[0]~input_o\ & (\Y3~59_combout\ & ((\Y3~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~59_combout\,
	datab => \ShiftCount[0]~input_o\,
	datac => \Y3~57_combout\,
	datad => \Y3~60_combout\,
	combout => \Y3~61_combout\);

-- Location: IOIBUF_X115_Y35_N22
\X[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(7),
	o => \X[7]~input_o\);

-- Location: LCCOMB_X76_Y51_N8
\Y2[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[7]~7_combout\ = (\ShiftCount[2]~input_o\ & (\X[3]~input_o\)) # (!\ShiftCount[2]~input_o\ & ((\X[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X[3]~input_o\,
	datac => \ShiftCount[2]~input_o\,
	datad => \X[7]~input_o\,
	combout => \Y2[7]~7_combout\);

-- Location: LCCOMB_X75_Y62_N18
\Y3~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~62_combout\ = (\ShiftCount[1]~input_o\ & (\Y2[5]~5_combout\)) # (!\ShiftCount[1]~input_o\ & ((\Y2[7]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[1]~input_o\,
	datab => \Y2[5]~5_combout\,
	datac => \Y2[7]~7_combout\,
	combout => \Y3~62_combout\);

-- Location: LCCOMB_X75_Y62_N4
\Y3~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~63_combout\ = (\Y3~60_combout\ & ((\ShiftCount[0]~input_o\ & ((\Y3~59_combout\))) # (!\ShiftCount[0]~input_o\ & (\Y3~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~60_combout\,
	datab => \Y3~62_combout\,
	datac => \Y3~59_combout\,
	datad => \ShiftCount[0]~input_o\,
	combout => \Y3~63_combout\);

-- Location: LCCOMB_X75_Y55_N4
\Y3~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~65_combout\ = (\ShiftCount[1]~input_o\ & (\Y3~60_combout\ & \Y2[6]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[1]~input_o\,
	datab => \Y3~60_combout\,
	datac => \Y2[6]~6_combout\,
	combout => \Y3~65_combout\);

-- Location: IOIBUF_X105_Y73_N1
\X[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(8),
	o => \X[8]~input_o\);

-- Location: LCCOMB_X75_Y69_N6
\Y2[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[8]~8_combout\ = (\ShiftCount[3]~input_o\ & (\X[0]~input_o\)) # (!\ShiftCount[3]~input_o\ & ((\X[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X[0]~input_o\,
	datac => \X[8]~input_o\,
	datad => \ShiftCount[3]~input_o\,
	combout => \Y2[8]~8_combout\);

-- Location: LCCOMB_X75_Y55_N28
\Y2[8]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[8]~112_combout\ = (\ShiftCount[2]~input_o\ & (((!\ShiftCount[3]~input_o\ & \X[4]~input_o\)))) # (!\ShiftCount[2]~input_o\ & (\Y2[8]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[2]~input_o\,
	datab => \Y2[8]~8_combout\,
	datac => \ShiftCount[3]~input_o\,
	datad => \X[4]~input_o\,
	combout => \Y2[8]~112_combout\);

-- Location: LCCOMB_X75_Y55_N6
\Y3~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~66_combout\ = (\Y3~65_combout\) # ((!\Equal1~0_combout\ & (!\ShiftCount[1]~input_o\ & \Y2[8]~112_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Y3~65_combout\,
	datac => \ShiftCount[1]~input_o\,
	datad => \Y2[8]~112_combout\,
	combout => \Y3~66_combout\);

-- Location: LCCOMB_X75_Y55_N2
\Y3~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~64_combout\ = (\ShiftCount[0]~input_o\ & (!\ShiftCount[5]~input_o\ & (!\ShiftCount[3]~input_o\ & !\ShiftCount[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[0]~input_o\,
	datab => \ShiftCount[5]~input_o\,
	datac => \ShiftCount[3]~input_o\,
	datad => \ShiftCount[4]~input_o\,
	combout => \Y3~64_combout\);

-- Location: LCCOMB_X75_Y55_N16
\Y3~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~67_combout\ = (\Y3~66_combout\ & (((\Y3~64_combout\ & \Y3~62_combout\)) # (!\ShiftCount[0]~input_o\))) # (!\Y3~66_combout\ & (\Y3~64_combout\ & (\Y3~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~66_combout\,
	datab => \Y3~64_combout\,
	datac => \Y3~62_combout\,
	datad => \ShiftCount[0]~input_o\,
	combout => \Y3~67_combout\);

-- Location: LCCOMB_X75_Y55_N18
\Y3~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~68_combout\ = (\ShiftCount[1]~input_o\ & (\Y3~60_combout\ & \Y2[7]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[1]~input_o\,
	datab => \Y3~60_combout\,
	datac => \Y2[7]~7_combout\,
	combout => \Y3~68_combout\);

-- Location: IOIBUF_X115_Y49_N8
\X[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(9),
	o => \X[9]~input_o\);

-- Location: LCCOMB_X79_Y51_N8
\Y2[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[9]~9_combout\ = (\ShiftCount[3]~input_o\ & (\X[1]~input_o\)) # (!\ShiftCount[3]~input_o\ & ((\X[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[1]~input_o\,
	datab => \X[9]~input_o\,
	datac => \ShiftCount[3]~input_o\,
	combout => \Y2[9]~9_combout\);

-- Location: LCCOMB_X75_Y55_N30
\Y2[9]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[9]~113_combout\ = (\ShiftCount[2]~input_o\ & (((!\ShiftCount[3]~input_o\ & \X[5]~input_o\)))) # (!\ShiftCount[2]~input_o\ & (\Y2[9]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[9]~9_combout\,
	datab => \ShiftCount[3]~input_o\,
	datac => \ShiftCount[2]~input_o\,
	datad => \X[5]~input_o\,
	combout => \Y2[9]~113_combout\);

-- Location: LCCOMB_X75_Y55_N12
\Y3~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~69_combout\ = (\Y3~68_combout\) # ((!\Equal1~0_combout\ & (!\ShiftCount[1]~input_o\ & \Y2[9]~113_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Y3~68_combout\,
	datac => \ShiftCount[1]~input_o\,
	datad => \Y2[9]~113_combout\,
	combout => \Y3~69_combout\);

-- Location: LCCOMB_X75_Y55_N22
\Y3~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~70_combout\ = (\ShiftCount[0]~input_o\ & (\Y3~66_combout\)) # (!\ShiftCount[0]~input_o\ & ((\Y3~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~66_combout\,
	datac => \ShiftCount[0]~input_o\,
	datad => \Y3~69_combout\,
	combout => \Y3~70_combout\);

-- Location: LCCOMB_X74_Y52_N10
\Y2[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[10]~10_combout\ = (\X[6]~input_o\ & (!\ShiftCount[3]~input_o\ & \ShiftCount[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[6]~input_o\,
	datab => \ShiftCount[3]~input_o\,
	datac => \ShiftCount[2]~input_o\,
	combout => \Y2[10]~10_combout\);

-- Location: IOIBUF_X96_Y73_N15
\X[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(10),
	o => \X[10]~input_o\);

-- Location: LCCOMB_X81_Y52_N8
\Y2[10]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[10]~11_combout\ = (\ShiftCount[3]~input_o\ & (\X[2]~input_o\)) # (!\ShiftCount[3]~input_o\ & ((\X[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[2]~input_o\,
	datac => \ShiftCount[3]~input_o\,
	datad => \X[10]~input_o\,
	combout => \Y2[10]~11_combout\);

-- Location: LCCOMB_X74_Y52_N4
\Y2[10]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[10]~12_combout\ = (!\Equal1~0_combout\ & ((\Y2[10]~10_combout\) # ((!\ShiftCount[2]~input_o\ & \Y2[10]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[10]~10_combout\,
	datab => \Equal1~0_combout\,
	datac => \ShiftCount[2]~input_o\,
	datad => \Y2[10]~11_combout\,
	combout => \Y2[10]~12_combout\);

-- Location: LCCOMB_X75_Y55_N0
\Y3~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~71_combout\ = (\ShiftCount[1]~input_o\ & (!\Equal1~0_combout\ & (\Y2[8]~112_combout\))) # (!\ShiftCount[1]~input_o\ & (((\Y2[10]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Y2[8]~112_combout\,
	datac => \ShiftCount[1]~input_o\,
	datad => \Y2[10]~12_combout\,
	combout => \Y3~71_combout\);

-- Location: LCCOMB_X75_Y55_N26
\Y3~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~72_combout\ = (\ShiftCount[0]~input_o\ & (\Y3~69_combout\)) # (!\ShiftCount[0]~input_o\ & ((\Y3~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~69_combout\,
	datac => \Y3~71_combout\,
	datad => \ShiftCount[0]~input_o\,
	combout => \Y3~72_combout\);

-- Location: IOIBUF_X115_Y57_N22
\X[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(11),
	o => \X[11]~input_o\);

-- Location: LCCOMB_X80_Y55_N24
\Y2[11]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[11]~14_combout\ = (\ShiftCount[3]~input_o\ & ((\X[3]~input_o\))) # (!\ShiftCount[3]~input_o\ & (\X[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftCount[3]~input_o\,
	datac => \X[11]~input_o\,
	datad => \X[3]~input_o\,
	combout => \Y2[11]~14_combout\);

-- Location: LCCOMB_X76_Y51_N26
\Y2[11]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[11]~13_combout\ = (!\ShiftCount[3]~input_o\ & (\ShiftCount[2]~input_o\ & \X[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftCount[3]~input_o\,
	datac => \ShiftCount[2]~input_o\,
	datad => \X[7]~input_o\,
	combout => \Y2[11]~13_combout\);

-- Location: LCCOMB_X75_Y52_N16
\Y2[11]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[11]~15_combout\ = (!\Equal1~0_combout\ & ((\Y2[11]~13_combout\) # ((\Y2[11]~14_combout\ & !\ShiftCount[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Y2[11]~14_combout\,
	datac => \Y2[11]~13_combout\,
	datad => \ShiftCount[2]~input_o\,
	combout => \Y2[11]~15_combout\);

-- Location: LCCOMB_X75_Y58_N16
\Y3~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~73_combout\ = (\ShiftCount[1]~input_o\ & (!\Equal1~0_combout\ & ((\Y2[9]~113_combout\)))) # (!\ShiftCount[1]~input_o\ & (((\Y2[11]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Y2[11]~15_combout\,
	datac => \ShiftCount[1]~input_o\,
	datad => \Y2[9]~113_combout\,
	combout => \Y3~73_combout\);

-- Location: LCCOMB_X75_Y58_N26
\Y3~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~74_combout\ = (\ShiftCount[0]~input_o\ & ((\Y3~71_combout\))) # (!\ShiftCount[0]~input_o\ & (\Y3~73_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y3~73_combout\,
	datac => \Y3~71_combout\,
	datad => \ShiftCount[0]~input_o\,
	combout => \Y3~74_combout\);

-- Location: IOIBUF_X105_Y73_N8
\X[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(12),
	o => \X[12]~input_o\);

-- Location: LCCOMB_X77_Y53_N24
\Y2[12]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[12]~16_combout\ = (\ShiftCount[3]~input_o\ & (\X[4]~input_o\)) # (!\ShiftCount[3]~input_o\ & ((\X[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[4]~input_o\,
	datab => \ShiftCount[3]~input_o\,
	datad => \X[12]~input_o\,
	combout => \Y2[12]~16_combout\);

-- Location: LCCOMB_X75_Y55_N20
\Y2[12]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[12]~17_combout\ = (\ShiftCount[2]~input_o\ & ((\Y2[8]~8_combout\))) # (!\ShiftCount[2]~input_o\ & (\Y2[12]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[2]~input_o\,
	datab => \Y2[12]~16_combout\,
	datac => \Y2[8]~8_combout\,
	combout => \Y2[12]~17_combout\);

-- Location: LCCOMB_X75_Y58_N4
\Y3~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~75_combout\ = (\ShiftCount[1]~input_o\ & (((\Y2[10]~12_combout\)))) # (!\ShiftCount[1]~input_o\ & (!\Equal1~0_combout\ & ((\Y2[12]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Y2[10]~12_combout\,
	datac => \ShiftCount[1]~input_o\,
	datad => \Y2[12]~17_combout\,
	combout => \Y3~75_combout\);

-- Location: LCCOMB_X75_Y58_N22
\Y3~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~76_combout\ = (\ShiftCount[0]~input_o\ & (\Y3~73_combout\)) # (!\ShiftCount[0]~input_o\ & ((\Y3~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y3~73_combout\,
	datac => \Y3~75_combout\,
	datad => \ShiftCount[0]~input_o\,
	combout => \Y3~76_combout\);

-- Location: LCCOMB_X75_Y58_N24
\Y3~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~77_combout\ = (\ShiftCount[1]~input_o\ & ((\ShiftCount[0]~input_o\ & (\Y2[10]~12_combout\)) # (!\ShiftCount[0]~input_o\ & ((\Y2[11]~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[1]~input_o\,
	datab => \Y2[10]~12_combout\,
	datac => \Y2[11]~15_combout\,
	datad => \ShiftCount[0]~input_o\,
	combout => \Y3~77_combout\);

-- Location: IOIBUF_X49_Y73_N15
\X[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(13),
	o => \X[13]~input_o\);

-- Location: LCCOMB_X76_Y56_N16
\Y2[13]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[13]~18_combout\ = (\ShiftCount[3]~input_o\ & ((\X[5]~input_o\))) # (!\ShiftCount[3]~input_o\ & (\X[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X[13]~input_o\,
	datac => \X[5]~input_o\,
	datad => \ShiftCount[3]~input_o\,
	combout => \Y2[13]~18_combout\);

-- Location: LCCOMB_X75_Y55_N14
\Y2[13]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[13]~19_combout\ = (\ShiftCount[2]~input_o\ & ((\Y2[9]~9_combout\))) # (!\ShiftCount[2]~input_o\ & (\Y2[13]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[13]~18_combout\,
	datac => \ShiftCount[2]~input_o\,
	datad => \Y2[9]~9_combout\,
	combout => \Y2[13]~19_combout\);

-- Location: LCCOMB_X75_Y58_N2
\Y3~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~78_combout\ = (\ShiftCount[0]~input_o\ & ((\Y2[12]~17_combout\))) # (!\ShiftCount[0]~input_o\ & (\Y2[13]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[13]~19_combout\,
	datab => \Y2[12]~17_combout\,
	datad => \ShiftCount[0]~input_o\,
	combout => \Y3~78_combout\);

-- Location: LCCOMB_X75_Y58_N20
\Y3~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~79_combout\ = (\Y3~77_combout\) # ((!\ShiftCount[1]~input_o\ & (!\Equal1~0_combout\ & \Y3~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[1]~input_o\,
	datab => \Y3~77_combout\,
	datac => \Equal1~0_combout\,
	datad => \Y3~78_combout\,
	combout => \Y3~79_combout\);

-- Location: IOIBUF_X52_Y73_N15
\X[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(14),
	o => \X[14]~input_o\);

-- Location: LCCOMB_X74_Y52_N14
\Y2[14]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[14]~20_combout\ = (\ShiftCount[3]~input_o\ & (\X[6]~input_o\)) # (!\ShiftCount[3]~input_o\ & ((\X[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[6]~input_o\,
	datab => \ShiftCount[3]~input_o\,
	datac => \X[14]~input_o\,
	combout => \Y2[14]~20_combout\);

-- Location: LCCOMB_X74_Y52_N24
\Y2[14]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[14]~21_combout\ = (\ShiftCount[2]~input_o\ & ((\Y2[10]~11_combout\))) # (!\ShiftCount[2]~input_o\ & (\Y2[14]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y2[14]~20_combout\,
	datac => \ShiftCount[2]~input_o\,
	datad => \Y2[10]~11_combout\,
	combout => \Y2[14]~21_combout\);

-- Location: LCCOMB_X75_Y58_N0
\Y3~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~81_combout\ = (\ShiftCount[0]~input_o\ & (\Y2[13]~19_combout\)) # (!\ShiftCount[0]~input_o\ & ((\Y2[14]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[13]~19_combout\,
	datac => \Y2[14]~21_combout\,
	datad => \ShiftCount[0]~input_o\,
	combout => \Y3~81_combout\);

-- Location: LCCOMB_X75_Y58_N6
\Y3~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~80_combout\ = (\ShiftCount[0]~input_o\ & (((\Y2[11]~15_combout\)))) # (!\ShiftCount[0]~input_o\ & (!\Equal1~0_combout\ & (\Y2[12]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Y2[12]~17_combout\,
	datac => \Y2[11]~15_combout\,
	datad => \ShiftCount[0]~input_o\,
	combout => \Y3~80_combout\);

-- Location: LCCOMB_X75_Y58_N10
\Y3~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~82_combout\ = (\ShiftCount[1]~input_o\ & (((\Y3~80_combout\)))) # (!\ShiftCount[1]~input_o\ & (!\Equal1~0_combout\ & (\Y3~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Y3~81_combout\,
	datac => \ShiftCount[1]~input_o\,
	datad => \Y3~80_combout\,
	combout => \Y3~82_combout\);

-- Location: LCCOMB_X75_Y58_N12
\Y3~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~83_combout\ = (\ShiftCount[0]~input_o\ & ((\ShiftCount[1]~input_o\ & (\Y2[12]~17_combout\)) # (!\ShiftCount[1]~input_o\ & ((\Y2[14]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[1]~input_o\,
	datab => \Y2[12]~17_combout\,
	datac => \Y2[14]~21_combout\,
	datad => \ShiftCount[0]~input_o\,
	combout => \Y3~83_combout\);

-- Location: IOIBUF_X102_Y73_N8
\X[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(15),
	o => \X[15]~input_o\);

-- Location: LCCOMB_X77_Y55_N8
\Y2[15]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[15]~22_combout\ = (\ShiftCount[3]~input_o\ & ((\X[7]~input_o\))) # (!\ShiftCount[3]~input_o\ & (\X[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[15]~input_o\,
	datac => \ShiftCount[3]~input_o\,
	datad => \X[7]~input_o\,
	combout => \Y2[15]~22_combout\);

-- Location: LCCOMB_X75_Y52_N10
\Y2[15]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[15]~23_combout\ = (\ShiftCount[2]~input_o\ & (\Y2[11]~14_combout\)) # (!\ShiftCount[2]~input_o\ & ((\Y2[15]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y2[11]~14_combout\,
	datac => \Y2[15]~22_combout\,
	datad => \ShiftCount[2]~input_o\,
	combout => \Y2[15]~23_combout\);

-- Location: LCCOMB_X75_Y58_N14
\Y3~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~84_combout\ = (!\ShiftCount[0]~input_o\ & ((\ShiftCount[1]~input_o\ & (\Y2[13]~19_combout\)) # (!\ShiftCount[1]~input_o\ & ((\Y2[15]~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[13]~19_combout\,
	datab => \Y2[15]~23_combout\,
	datac => \ShiftCount[1]~input_o\,
	datad => \ShiftCount[0]~input_o\,
	combout => \Y3~84_combout\);

-- Location: LCCOMB_X75_Y61_N26
\Y3~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~244_combout\ = (!\ShiftCount[5]~input_o\ & (!\ShiftCount[4]~input_o\ & ((\Y3~83_combout\) # (\Y3~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~83_combout\,
	datab => \Y3~84_combout\,
	datac => \ShiftCount[5]~input_o\,
	datad => \ShiftCount[4]~input_o\,
	combout => \Y3~244_combout\);

-- Location: LCCOMB_X75_Y58_N8
\Y3~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~86_combout\ = (!\Equal1~0_combout\ & ((\ShiftCount[1]~input_o\ & ((\Y2[14]~21_combout\))) # (!\ShiftCount[1]~input_o\ & (\Y2[15]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[1]~input_o\,
	datab => \Y2[15]~23_combout\,
	datac => \Y2[14]~21_combout\,
	datad => \Equal1~0_combout\,
	combout => \Y3~86_combout\);

-- Location: IOIBUF_X60_Y73_N1
\X[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(16),
	o => \X[16]~input_o\);

-- Location: LCCOMB_X75_Y69_N8
\Y2[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[4]~24_combout\ = (\ShiftCount[4]~input_o\ & ((\X[0]~input_o\))) # (!\ShiftCount[4]~input_o\ & (\X[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[16]~input_o\,
	datab => \X[0]~input_o\,
	datad => \ShiftCount[4]~input_o\,
	combout => \Y2[4]~24_combout\);

-- Location: LCCOMB_X77_Y53_N18
\Y2[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[4]~25_combout\ = (!\ShiftCount[5]~input_o\ & !\ShiftCount[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftCount[5]~input_o\,
	datad => \ShiftCount[3]~input_o\,
	combout => \Y2[4]~25_combout\);

-- Location: LCCOMB_X77_Y53_N12
\Y2[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[7]~26_combout\ = (!\ShiftCount[5]~input_o\ & (!\ShiftCount[4]~input_o\ & \ShiftCount[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftCount[5]~input_o\,
	datac => \ShiftCount[4]~input_o\,
	datad => \ShiftCount[3]~input_o\,
	combout => \Y2[7]~26_combout\);

-- Location: LCCOMB_X77_Y53_N22
\Y2[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[4]~27_combout\ = (\Y2[4]~24_combout\ & ((\Y2[4]~25_combout\) # ((\Y2[7]~26_combout\ & \X[8]~input_o\)))) # (!\Y2[4]~24_combout\ & (((\Y2[7]~26_combout\ & \X[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[4]~24_combout\,
	datab => \Y2[4]~25_combout\,
	datac => \Y2[7]~26_combout\,
	datad => \X[8]~input_o\,
	combout => \Y2[4]~27_combout\);

-- Location: LCCOMB_X75_Y52_N4
\Y2[16]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[16]~28_combout\ = (\ShiftCount[2]~input_o\ & (!\Equal1~0_combout\ & (\Y2[12]~16_combout\))) # (!\ShiftCount[2]~input_o\ & (((\Y2[4]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \ShiftCount[2]~input_o\,
	datac => \Y2[12]~16_combout\,
	datad => \Y2[4]~27_combout\,
	combout => \Y2[16]~28_combout\);

-- Location: LCCOMB_X75_Y58_N18
\Y3~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~87_combout\ = (\ShiftCount[1]~input_o\ & (\Y3~86_combout\ & ((!\ShiftCount[0]~input_o\)))) # (!\ShiftCount[1]~input_o\ & ((\ShiftCount[0]~input_o\ & (\Y3~86_combout\)) # (!\ShiftCount[0]~input_o\ & ((\Y2[16]~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[1]~input_o\,
	datab => \Y3~86_combout\,
	datac => \Y2[16]~28_combout\,
	datad => \ShiftCount[0]~input_o\,
	combout => \Y3~87_combout\);

-- Location: LCCOMB_X75_Y55_N24
\Y3~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~85_combout\ = (\ShiftCount[0]~input_o\ & (!\ShiftCount[5]~input_o\ & (\ShiftCount[1]~input_o\ & !\ShiftCount[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[0]~input_o\,
	datab => \ShiftCount[5]~input_o\,
	datac => \ShiftCount[1]~input_o\,
	datad => \ShiftCount[4]~input_o\,
	combout => \Y3~85_combout\);

-- Location: LCCOMB_X75_Y55_N10
\Y3~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~88_combout\ = (\Y3~87_combout\) # ((\Y3~85_combout\ & \Y2[13]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~87_combout\,
	datab => \Y3~85_combout\,
	datac => \Y2[13]~19_combout\,
	combout => \Y3~88_combout\);

-- Location: LCCOMB_X75_Y58_N28
\Y3~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~90_combout\ = (\ShiftCount[0]~input_o\ & ((\Y2[14]~21_combout\))) # (!\ShiftCount[0]~input_o\ & (\Y2[15]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y2[15]~23_combout\,
	datac => \Y2[14]~21_combout\,
	datad => \ShiftCount[0]~input_o\,
	combout => \Y3~90_combout\);

-- Location: IOIBUF_X115_Y46_N8
\X[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(17),
	o => \X[17]~input_o\);

-- Location: LCCOMB_X79_Y51_N10
\Y2[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[5]~29_combout\ = (\ShiftCount[4]~input_o\ & (\X[1]~input_o\)) # (!\ShiftCount[4]~input_o\ & ((\X[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[1]~input_o\,
	datac => \ShiftCount[4]~input_o\,
	datad => \X[17]~input_o\,
	combout => \Y2[5]~29_combout\);

-- Location: LCCOMB_X79_Y51_N12
\Y2[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[5]~30_combout\ = (\Y2[4]~25_combout\ & ((\Y2[5]~29_combout\) # ((\Y2[7]~26_combout\ & \X[9]~input_o\)))) # (!\Y2[4]~25_combout\ & (\Y2[7]~26_combout\ & (\X[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[4]~25_combout\,
	datab => \Y2[7]~26_combout\,
	datac => \X[9]~input_o\,
	datad => \Y2[5]~29_combout\,
	combout => \Y2[5]~30_combout\);

-- Location: LCCOMB_X75_Y52_N6
\Y2[17]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[17]~31_combout\ = (\ShiftCount[2]~input_o\ & (!\Equal1~0_combout\ & (\Y2[13]~18_combout\))) # (!\ShiftCount[2]~input_o\ & (((\Y2[5]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Y2[13]~18_combout\,
	datac => \Y2[5]~30_combout\,
	datad => \ShiftCount[2]~input_o\,
	combout => \Y2[17]~31_combout\);

-- Location: LCCOMB_X75_Y52_N24
\Y3~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~89_combout\ = (!\ShiftCount[1]~input_o\ & ((\ShiftCount[0]~input_o\ & (\Y2[16]~28_combout\)) # (!\ShiftCount[0]~input_o\ & ((\Y2[17]~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[16]~28_combout\,
	datab => \ShiftCount[1]~input_o\,
	datac => \ShiftCount[0]~input_o\,
	datad => \Y2[17]~31_combout\,
	combout => \Y3~89_combout\);

-- Location: LCCOMB_X75_Y58_N30
\Y3~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~91_combout\ = (\Y3~89_combout\) # ((!\Equal1~0_combout\ & (\Y3~90_combout\ & \ShiftCount[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Y3~90_combout\,
	datac => \ShiftCount[1]~input_o\,
	datad => \Y3~89_combout\,
	combout => \Y3~91_combout\);

-- Location: LCCOMB_X75_Y52_N18
\Y3~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~92_combout\ = (\Y2[17]~31_combout\ & (\ShiftCount[0]~input_o\ & !\ShiftCount[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[17]~31_combout\,
	datac => \ShiftCount[0]~input_o\,
	datad => \ShiftCount[1]~input_o\,
	combout => \Y3~92_combout\);

-- Location: IOIBUF_X115_Y41_N1
\X[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(18),
	o => \X[18]~input_o\);

-- Location: LCCOMB_X81_Y52_N2
\Y2[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[6]~32_combout\ = (\ShiftCount[4]~input_o\ & ((\X[2]~input_o\))) # (!\ShiftCount[4]~input_o\ & (\X[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[18]~input_o\,
	datab => \ShiftCount[4]~input_o\,
	datac => \X[2]~input_o\,
	combout => \Y2[6]~32_combout\);

-- Location: LCCOMB_X81_Y52_N12
\Y2[6]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[6]~33_combout\ = (\X[10]~input_o\ & ((\Y2[7]~26_combout\) # ((\Y2[4]~25_combout\ & \Y2[6]~32_combout\)))) # (!\X[10]~input_o\ & (((\Y2[4]~25_combout\ & \Y2[6]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[10]~input_o\,
	datab => \Y2[7]~26_combout\,
	datac => \Y2[4]~25_combout\,
	datad => \Y2[6]~32_combout\,
	combout => \Y2[6]~33_combout\);

-- Location: LCCOMB_X75_Y52_N28
\Y2[18]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[18]~34_combout\ = (\ShiftCount[2]~input_o\ & (\Y2[14]~20_combout\ & (!\Equal1~0_combout\))) # (!\ShiftCount[2]~input_o\ & (((\Y2[6]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[14]~20_combout\,
	datab => \ShiftCount[2]~input_o\,
	datac => \Equal1~0_combout\,
	datad => \Y2[6]~33_combout\,
	combout => \Y2[18]~34_combout\);

-- Location: LCCOMB_X75_Y52_N30
\Y3~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~93_combout\ = (!\ShiftCount[0]~input_o\ & ((\ShiftCount[1]~input_o\ & (\Y2[16]~28_combout\)) # (!\ShiftCount[1]~input_o\ & ((\Y2[18]~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[16]~28_combout\,
	datab => \ShiftCount[0]~input_o\,
	datac => \Y2[18]~34_combout\,
	datad => \ShiftCount[1]~input_o\,
	combout => \Y3~93_combout\);

-- Location: LCCOMB_X75_Y52_N0
\Y3~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~94_combout\ = (\Y3~92_combout\) # ((\Y3~93_combout\) # ((\Y2[15]~23_combout\ & \Y3~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[15]~23_combout\,
	datab => \Y3~92_combout\,
	datac => \Y3~93_combout\,
	datad => \Y3~85_combout\,
	combout => \Y3~94_combout\);

-- Location: IOIBUF_X89_Y73_N8
\X[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(19),
	o => \X[19]~input_o\);

-- Location: LCCOMB_X80_Y55_N26
\Y2[7]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[7]~35_combout\ = (\ShiftCount[4]~input_o\ & ((\X[3]~input_o\))) # (!\ShiftCount[4]~input_o\ & (\X[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftCount[4]~input_o\,
	datac => \X[19]~input_o\,
	datad => \X[3]~input_o\,
	combout => \Y2[7]~35_combout\);

-- Location: LCCOMB_X77_Y53_N8
\Y2[7]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[7]~36_combout\ = (\Y2[7]~26_combout\ & ((\X[11]~input_o\) # ((\Y2[7]~35_combout\ & \Y2[4]~25_combout\)))) # (!\Y2[7]~26_combout\ & (\Y2[7]~35_combout\ & ((\Y2[4]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[7]~26_combout\,
	datab => \Y2[7]~35_combout\,
	datac => \X[11]~input_o\,
	datad => \Y2[4]~25_combout\,
	combout => \Y2[7]~36_combout\);

-- Location: LCCOMB_X75_Y52_N26
\Y2[19]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[19]~37_combout\ = (\ShiftCount[2]~input_o\ & (!\Equal1~0_combout\ & (\Y2[15]~22_combout\))) # (!\ShiftCount[2]~input_o\ & (((\Y2[7]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Y2[15]~22_combout\,
	datac => \Y2[7]~36_combout\,
	datad => \ShiftCount[2]~input_o\,
	combout => \Y2[19]~37_combout\);

-- Location: LCCOMB_X75_Y52_N12
\Y3~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~95_combout\ = (\ShiftCount[0]~input_o\ & (((\ShiftCount[1]~input_o\)))) # (!\ShiftCount[0]~input_o\ & ((\ShiftCount[1]~input_o\ & (\Y2[17]~31_combout\)) # (!\ShiftCount[1]~input_o\ & ((\Y2[19]~37_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[17]~31_combout\,
	datab => \ShiftCount[0]~input_o\,
	datac => \Y2[19]~37_combout\,
	datad => \ShiftCount[1]~input_o\,
	combout => \Y3~95_combout\);

-- Location: LCCOMB_X75_Y52_N22
\Y3~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~96_combout\ = (\Y3~95_combout\ & ((\Y2[16]~28_combout\) # ((!\ShiftCount[0]~input_o\)))) # (!\Y3~95_combout\ & (((\ShiftCount[0]~input_o\ & \Y2[18]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[16]~28_combout\,
	datab => \Y3~95_combout\,
	datac => \ShiftCount[0]~input_o\,
	datad => \Y2[18]~34_combout\,
	combout => \Y3~96_combout\);

-- Location: IOIBUF_X115_Y49_N1
\X[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(20),
	o => \X[20]~input_o\);

-- Location: LCCOMB_X77_Y53_N26
\Y2[4]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[4]~38_combout\ = (\ShiftCount[4]~input_o\ & (\X[4]~input_o\)) # (!\ShiftCount[4]~input_o\ & ((\X[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[4]~input_o\,
	datac => \ShiftCount[4]~input_o\,
	datad => \X[20]~input_o\,
	combout => \Y2[4]~38_combout\);

-- Location: LCCOMB_X77_Y53_N28
\Y2[4]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[4]~39_combout\ = (\Y2[7]~26_combout\ & ((\X[12]~input_o\) # ((\Y2[4]~25_combout\ & \Y2[4]~38_combout\)))) # (!\Y2[7]~26_combout\ & (\Y2[4]~25_combout\ & (\Y2[4]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[7]~26_combout\,
	datab => \Y2[4]~25_combout\,
	datac => \Y2[4]~38_combout\,
	datad => \X[12]~input_o\,
	combout => \Y2[4]~39_combout\);

-- Location: LCCOMB_X75_Y52_N2
\Y3~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~98_combout\ = (!\ShiftCount[1]~input_o\ & ((\ShiftCount[2]~input_o\ & (\Y2[4]~27_combout\)) # (!\ShiftCount[2]~input_o\ & ((\Y2[4]~39_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[4]~27_combout\,
	datab => \ShiftCount[1]~input_o\,
	datac => \Y2[4]~39_combout\,
	datad => \ShiftCount[2]~input_o\,
	combout => \Y3~98_combout\);

-- Location: LCCOMB_X75_Y52_N20
\Y3~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~99_combout\ = (\Y3~98_combout\) # ((\ShiftCount[1]~input_o\ & \Y2[18]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[1]~input_o\,
	datab => \Y3~98_combout\,
	datad => \Y2[18]~34_combout\,
	combout => \Y3~99_combout\);

-- Location: LCCOMB_X75_Y52_N8
\Y3~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~97_combout\ = (\ShiftCount[0]~input_o\ & ((\ShiftCount[1]~input_o\ & (\Y2[17]~31_combout\)) # (!\ShiftCount[1]~input_o\ & ((\Y2[19]~37_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[17]~31_combout\,
	datab => \ShiftCount[0]~input_o\,
	datac => \Y2[19]~37_combout\,
	datad => \ShiftCount[1]~input_o\,
	combout => \Y3~97_combout\);

-- Location: LCCOMB_X77_Y56_N0
\Y3~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~100_combout\ = (\Y3~97_combout\) # ((\Y3~99_combout\ & !\ShiftCount[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~99_combout\,
	datac => \Y3~97_combout\,
	datad => \ShiftCount[0]~input_o\,
	combout => \Y3~100_combout\);

-- Location: IOIBUF_X47_Y73_N15
\X[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(21),
	o => \X[21]~input_o\);

-- Location: LCCOMB_X76_Y56_N26
\Y2[5]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[5]~40_combout\ = (\ShiftCount[4]~input_o\ & ((\X[5]~input_o\))) # (!\ShiftCount[4]~input_o\ & (\X[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[21]~input_o\,
	datab => \ShiftCount[4]~input_o\,
	datac => \X[5]~input_o\,
	combout => \Y2[5]~40_combout\);

-- Location: LCCOMB_X77_Y53_N30
\Y2[5]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[5]~41_combout\ = (\X[13]~input_o\ & ((\Y2[7]~26_combout\) # ((\Y2[5]~40_combout\ & \Y2[4]~25_combout\)))) # (!\X[13]~input_o\ & (\Y2[5]~40_combout\ & ((\Y2[4]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[13]~input_o\,
	datab => \Y2[5]~40_combout\,
	datac => \Y2[7]~26_combout\,
	datad => \Y2[4]~25_combout\,
	combout => \Y2[5]~41_combout\);

-- Location: LCCOMB_X79_Y52_N0
\Y3~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~101_combout\ = (!\ShiftCount[1]~input_o\ & ((\ShiftCount[2]~input_o\ & (\Y2[5]~30_combout\)) # (!\ShiftCount[2]~input_o\ & ((\Y2[5]~41_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[5]~30_combout\,
	datab => \ShiftCount[1]~input_o\,
	datac => \Y2[5]~41_combout\,
	datad => \ShiftCount[2]~input_o\,
	combout => \Y3~101_combout\);

-- Location: LCCOMB_X75_Y52_N14
\Y3~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~102_combout\ = (\Y3~101_combout\) # ((\Y2[19]~37_combout\ & \ShiftCount[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~101_combout\,
	datac => \Y2[19]~37_combout\,
	datad => \ShiftCount[1]~input_o\,
	combout => \Y3~102_combout\);

-- Location: LCCOMB_X77_Y56_N10
\Y3~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~103_combout\ = (\ShiftCount[0]~input_o\ & (\Y3~99_combout\)) # (!\ShiftCount[0]~input_o\ & ((\Y3~102_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~99_combout\,
	datac => \Y3~102_combout\,
	datad => \ShiftCount[0]~input_o\,
	combout => \Y3~103_combout\);

-- Location: LCCOMB_X77_Y52_N18
\Y3~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~107_combout\ = (!\ShiftCount[1]~input_o\ & !\ShiftCount[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[1]~input_o\,
	datad => \ShiftCount[2]~input_o\,
	combout => \Y3~107_combout\);

-- Location: LCCOMB_X76_Y51_N20
\Y3~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~108_combout\ = (!\ShiftCount[1]~input_o\ & \ShiftCount[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[1]~input_o\,
	datac => \ShiftCount[2]~input_o\,
	combout => \Y3~108_combout\);

-- Location: IOIBUF_X115_Y62_N15
\X[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(22),
	o => \X[22]~input_o\);

-- Location: LCCOMB_X77_Y53_N0
\Y2[6]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[6]~42_combout\ = (\ShiftCount[4]~input_o\ & ((\X[6]~input_o\))) # (!\ShiftCount[4]~input_o\ & (\X[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[4]~input_o\,
	datab => \X[22]~input_o\,
	datad => \X[6]~input_o\,
	combout => \Y2[6]~42_combout\);

-- Location: LCCOMB_X77_Y53_N2
\Y2[6]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[6]~43_combout\ = (\Y2[7]~26_combout\ & ((\X[14]~input_o\) # ((\Y2[6]~42_combout\ & \Y2[4]~25_combout\)))) # (!\Y2[7]~26_combout\ & (\Y2[6]~42_combout\ & ((\Y2[4]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[7]~26_combout\,
	datab => \Y2[6]~42_combout\,
	datac => \X[14]~input_o\,
	datad => \Y2[4]~25_combout\,
	combout => \Y2[6]~43_combout\);

-- Location: LCCOMB_X79_Y52_N4
\Y3~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~109_combout\ = (\Y2[6]~33_combout\ & ((\Y3~108_combout\) # ((\Y3~107_combout\ & \Y2[6]~43_combout\)))) # (!\Y2[6]~33_combout\ & (\Y3~107_combout\ & ((\Y2[6]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[6]~33_combout\,
	datab => \Y3~107_combout\,
	datac => \Y3~108_combout\,
	datad => \Y2[6]~43_combout\,
	combout => \Y3~109_combout\);

-- Location: LCCOMB_X77_Y52_N24
\Y3~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~104_combout\ = (\ShiftCount[1]~input_o\ & !\ShiftCount[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[1]~input_o\,
	datad => \ShiftCount[2]~input_o\,
	combout => \Y3~104_combout\);

-- Location: LCCOMB_X74_Y52_N18
\Y3~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~105_combout\ = (\ShiftCount[1]~input_o\ & \ShiftCount[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftCount[1]~input_o\,
	datac => \ShiftCount[2]~input_o\,
	combout => \Y3~105_combout\);

-- Location: LCCOMB_X79_Y52_N26
\Y3~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~106_combout\ = (\Y3~104_combout\ & ((\Y2[4]~39_combout\) # ((\Y3~105_combout\ & \Y2[4]~27_combout\)))) # (!\Y3~104_combout\ & (((\Y3~105_combout\ & \Y2[4]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~104_combout\,
	datab => \Y2[4]~39_combout\,
	datac => \Y3~105_combout\,
	datad => \Y2[4]~27_combout\,
	combout => \Y3~106_combout\);

-- Location: LCCOMB_X79_Y52_N2
\Y3~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~245_combout\ = (\ShiftCount[0]~input_o\ & (\Y3~102_combout\)) # (!\ShiftCount[0]~input_o\ & (((\Y3~109_combout\) # (\Y3~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~102_combout\,
	datab => \Y3~109_combout\,
	datac => \Y3~106_combout\,
	datad => \ShiftCount[0]~input_o\,
	combout => \Y3~245_combout\);

-- Location: IOIBUF_X98_Y73_N15
\X[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(23),
	o => \X[23]~input_o\);

-- Location: LCCOMB_X77_Y55_N10
\Y2[7]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[7]~44_combout\ = (\ShiftCount[4]~input_o\ & ((\X[7]~input_o\))) # (!\ShiftCount[4]~input_o\ & (\X[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftCount[4]~input_o\,
	datac => \X[23]~input_o\,
	datad => \X[7]~input_o\,
	combout => \Y2[7]~44_combout\);

-- Location: LCCOMB_X77_Y53_N4
\Y2[7]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[7]~45_combout\ = (\Y2[7]~26_combout\ & ((\X[15]~input_o\) # ((\Y2[4]~25_combout\ & \Y2[7]~44_combout\)))) # (!\Y2[7]~26_combout\ & (\Y2[4]~25_combout\ & ((\Y2[7]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[7]~26_combout\,
	datab => \Y2[4]~25_combout\,
	datac => \X[15]~input_o\,
	datad => \Y2[7]~44_combout\,
	combout => \Y2[7]~45_combout\);

-- Location: LCCOMB_X79_Y52_N16
\Y3~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~111_combout\ = (\Y2[7]~45_combout\ & ((\Y3~107_combout\) # ((\Y3~108_combout\ & \Y2[7]~36_combout\)))) # (!\Y2[7]~45_combout\ & (((\Y3~108_combout\ & \Y2[7]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[7]~45_combout\,
	datab => \Y3~107_combout\,
	datac => \Y3~108_combout\,
	datad => \Y2[7]~36_combout\,
	combout => \Y3~111_combout\);

-- Location: LCCOMB_X79_Y52_N6
\Y3~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~110_combout\ = (\Y3~104_combout\ & ((\Y2[5]~41_combout\) # ((\Y3~105_combout\ & \Y2[5]~30_combout\)))) # (!\Y3~104_combout\ & (((\Y3~105_combout\ & \Y2[5]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~104_combout\,
	datab => \Y2[5]~41_combout\,
	datac => \Y3~105_combout\,
	datad => \Y2[5]~30_combout\,
	combout => \Y3~110_combout\);

-- Location: LCCOMB_X79_Y52_N18
\Y3~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~112_combout\ = (\Y3~111_combout\) # (\Y3~110_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y3~111_combout\,
	datad => \Y3~110_combout\,
	combout => \Y3~112_combout\);

-- Location: LCCOMB_X79_Y52_N28
\Y3~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~246_combout\ = (\ShiftCount[0]~input_o\ & ((\Y3~106_combout\) # ((\Y3~109_combout\)))) # (!\ShiftCount[0]~input_o\ & (((\Y3~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~106_combout\,
	datab => \Y3~112_combout\,
	datac => \Y3~109_combout\,
	datad => \ShiftCount[0]~input_o\,
	combout => \Y3~246_combout\);

-- Location: LCCOMB_X79_Y52_N12
\Y3~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~113_combout\ = (\Y3~104_combout\ & ((\Y2[6]~43_combout\) # ((\Y3~105_combout\ & \Y2[6]~33_combout\)))) # (!\Y3~104_combout\ & (((\Y3~105_combout\ & \Y2[6]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~104_combout\,
	datab => \Y2[6]~43_combout\,
	datac => \Y3~105_combout\,
	datad => \Y2[6]~33_combout\,
	combout => \Y3~113_combout\);

-- Location: LCCOMB_X80_Y52_N0
\Y3~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~114_combout\ = (!\ShiftCount[1]~input_o\ & (!\ShiftCount[5]~input_o\ & !\ShiftCount[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[1]~input_o\,
	datac => \ShiftCount[5]~input_o\,
	datad => \ShiftCount[2]~input_o\,
	combout => \Y3~114_combout\);

-- Location: IOIBUF_X38_Y73_N15
\X[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(24),
	o => \X[24]~input_o\);

-- Location: LCCOMB_X75_Y69_N26
\Y2[4]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[4]~46_combout\ = (\ShiftCount[4]~input_o\ & ((\X[8]~input_o\))) # (!\ShiftCount[4]~input_o\ & (\X[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[24]~input_o\,
	datac => \X[8]~input_o\,
	datad => \ShiftCount[4]~input_o\,
	combout => \Y2[4]~46_combout\);

-- Location: LCCOMB_X80_Y52_N18
\Y3~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~115_combout\ = (\Y3~114_combout\ & ((\ShiftCount[3]~input_o\ & (\Y2[4]~24_combout\)) # (!\ShiftCount[3]~input_o\ & ((\Y2[4]~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[4]~24_combout\,
	datab => \Y3~114_combout\,
	datac => \Y2[4]~46_combout\,
	datad => \ShiftCount[3]~input_o\,
	combout => \Y3~115_combout\);

-- Location: LCCOMB_X79_Y52_N30
\Y3~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~116_combout\ = (\Y3~113_combout\) # ((\Y3~115_combout\) # ((\Y2[4]~39_combout\ & \Y3~108_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~113_combout\,
	datab => \Y2[4]~39_combout\,
	datac => \Y3~108_combout\,
	datad => \Y3~115_combout\,
	combout => \Y3~116_combout\);

-- Location: LCCOMB_X79_Y52_N14
\Y3~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~247_combout\ = (\ShiftCount[0]~input_o\ & ((\Y3~110_combout\) # ((\Y3~111_combout\)))) # (!\ShiftCount[0]~input_o\ & (((\Y3~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~110_combout\,
	datab => \Y3~111_combout\,
	datac => \Y3~116_combout\,
	datad => \ShiftCount[0]~input_o\,
	combout => \Y3~247_combout\);

-- Location: LCCOMB_X79_Y52_N8
\Y3~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~117_combout\ = (\Y3~104_combout\ & ((\Y2[7]~45_combout\) # ((\Y3~105_combout\ & \Y2[7]~36_combout\)))) # (!\Y3~104_combout\ & (\Y3~105_combout\ & ((\Y2[7]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~104_combout\,
	datab => \Y3~105_combout\,
	datac => \Y2[7]~45_combout\,
	datad => \Y2[7]~36_combout\,
	combout => \Y3~117_combout\);

-- Location: IOIBUF_X115_Y44_N8
\X[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(25),
	o => \X[25]~input_o\);

-- Location: LCCOMB_X79_Y51_N22
\Y2[5]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[5]~47_combout\ = (\ShiftCount[4]~input_o\ & (\X[9]~input_o\)) # (!\ShiftCount[4]~input_o\ & ((\X[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftCount[4]~input_o\,
	datac => \X[9]~input_o\,
	datad => \X[25]~input_o\,
	combout => \Y2[5]~47_combout\);

-- Location: LCCOMB_X76_Y52_N0
\Y3~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~118_combout\ = (\Y3~114_combout\ & ((\ShiftCount[3]~input_o\ & ((\Y2[5]~29_combout\))) # (!\ShiftCount[3]~input_o\ & (\Y2[5]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~114_combout\,
	datab => \Y2[5]~47_combout\,
	datac => \Y2[5]~29_combout\,
	datad => \ShiftCount[3]~input_o\,
	combout => \Y3~118_combout\);

-- Location: LCCOMB_X79_Y52_N10
\Y3~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~119_combout\ = (\Y3~117_combout\) # ((\Y3~118_combout\) # ((\Y2[5]~41_combout\ & \Y3~108_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[5]~41_combout\,
	datab => \Y3~117_combout\,
	datac => \Y3~108_combout\,
	datad => \Y3~118_combout\,
	combout => \Y3~119_combout\);

-- Location: LCCOMB_X79_Y52_N20
\Y3~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~120_combout\ = (\ShiftCount[0]~input_o\ & ((\Y3~116_combout\))) # (!\ShiftCount[0]~input_o\ & (\Y3~119_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~119_combout\,
	datac => \Y3~116_combout\,
	datad => \ShiftCount[0]~input_o\,
	combout => \Y3~120_combout\);

-- Location: LCCOMB_X80_Y52_N20
\Y3~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~121_combout\ = (\Y3~108_combout\ & ((\Y2[6]~43_combout\) # ((\Y2[4]~39_combout\ & \Y3~105_combout\)))) # (!\Y3~108_combout\ & (((\Y2[4]~39_combout\ & \Y3~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~108_combout\,
	datab => \Y2[6]~43_combout\,
	datac => \Y2[4]~39_combout\,
	datad => \Y3~105_combout\,
	combout => \Y3~121_combout\);

-- Location: LCCOMB_X80_Y52_N14
\Y3~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~122_combout\ = (\ShiftCount[1]~input_o\ & (!\ShiftCount[5]~input_o\ & !\ShiftCount[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[1]~input_o\,
	datac => \ShiftCount[5]~input_o\,
	datad => \ShiftCount[2]~input_o\,
	combout => \Y3~122_combout\);

-- Location: LCCOMB_X80_Y52_N8
\Y3~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~123_combout\ = (\Y3~122_combout\ & ((\ShiftCount[3]~input_o\ & (\Y2[4]~24_combout\)) # (!\ShiftCount[3]~input_o\ & ((\Y2[4]~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[4]~24_combout\,
	datab => \Y3~122_combout\,
	datac => \Y2[4]~46_combout\,
	datad => \ShiftCount[3]~input_o\,
	combout => \Y3~123_combout\);

-- Location: IOIBUF_X115_Y57_N15
\X[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(26),
	o => \X[26]~input_o\);

-- Location: LCCOMB_X81_Y52_N6
\Y2[6]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[6]~48_combout\ = (\ShiftCount[4]~input_o\ & (\X[10]~input_o\)) # (!\ShiftCount[4]~input_o\ & ((\X[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[10]~input_o\,
	datab => \ShiftCount[4]~input_o\,
	datad => \X[26]~input_o\,
	combout => \Y2[6]~48_combout\);

-- Location: LCCOMB_X81_Y52_N16
\Y2[6]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[6]~49_combout\ = (\ShiftCount[3]~input_o\ & ((\Y2[6]~32_combout\))) # (!\ShiftCount[3]~input_o\ & (\Y2[6]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[6]~48_combout\,
	datab => \Y2[6]~32_combout\,
	datac => \ShiftCount[3]~input_o\,
	combout => \Y2[6]~49_combout\);

-- Location: LCCOMB_X80_Y52_N26
\Y3~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~124_combout\ = (\Y3~121_combout\) # ((\Y3~123_combout\) # ((\Y3~114_combout\ & \Y2[6]~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~114_combout\,
	datab => \Y3~121_combout\,
	datac => \Y3~123_combout\,
	datad => \Y2[6]~49_combout\,
	combout => \Y3~124_combout\);

-- Location: LCCOMB_X77_Y56_N12
\Y3~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~125_combout\ = (\ShiftCount[0]~input_o\ & (\Y3~119_combout\)) # (!\ShiftCount[0]~input_o\ & ((\Y3~124_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~119_combout\,
	datab => \Y3~124_combout\,
	datad => \ShiftCount[0]~input_o\,
	combout => \Y3~125_combout\);

-- Location: LCCOMB_X79_Y52_N22
\Y3~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~126_combout\ = (\Y2[7]~45_combout\ & ((\Y3~108_combout\) # ((\Y3~105_combout\ & \Y2[5]~41_combout\)))) # (!\Y2[7]~45_combout\ & (((\Y3~105_combout\ & \Y2[5]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[7]~45_combout\,
	datab => \Y3~108_combout\,
	datac => \Y3~105_combout\,
	datad => \Y2[5]~41_combout\,
	combout => \Y3~126_combout\);

-- Location: LCCOMB_X76_Y52_N26
\Y3~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~127_combout\ = (\Y3~122_combout\ & ((\ShiftCount[3]~input_o\ & ((\Y2[5]~29_combout\))) # (!\ShiftCount[3]~input_o\ & (\Y2[5]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~122_combout\,
	datab => \Y2[5]~47_combout\,
	datac => \Y2[5]~29_combout\,
	datad => \ShiftCount[3]~input_o\,
	combout => \Y3~127_combout\);

-- Location: IOIBUF_X115_Y55_N22
\X[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(27),
	o => \X[27]~input_o\);

-- Location: LCCOMB_X80_Y55_N12
\Y2[7]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[7]~50_combout\ = (\ShiftCount[4]~input_o\ & (\X[11]~input_o\)) # (!\ShiftCount[4]~input_o\ & ((\X[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftCount[4]~input_o\,
	datac => \X[11]~input_o\,
	datad => \X[27]~input_o\,
	combout => \Y2[7]~50_combout\);

-- Location: LCCOMB_X80_Y55_N6
\Y2[7]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[7]~51_combout\ = (\ShiftCount[3]~input_o\ & ((\Y2[7]~35_combout\))) # (!\ShiftCount[3]~input_o\ & (\Y2[7]~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[7]~50_combout\,
	datab => \ShiftCount[3]~input_o\,
	datac => \Y2[7]~35_combout\,
	combout => \Y2[7]~51_combout\);

-- Location: LCCOMB_X76_Y52_N28
\Y3~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~128_combout\ = (\Y3~126_combout\) # ((\Y3~127_combout\) # ((\Y3~114_combout\ & \Y2[7]~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~126_combout\,
	datab => \Y3~127_combout\,
	datac => \Y3~114_combout\,
	datad => \Y2[7]~51_combout\,
	combout => \Y3~128_combout\);

-- Location: LCCOMB_X80_Y52_N12
\Y3~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~129_combout\ = (\ShiftCount[0]~input_o\ & (\Y3~124_combout\)) # (!\ShiftCount[0]~input_o\ & ((\Y3~128_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~124_combout\,
	datab => \Y3~128_combout\,
	datac => \ShiftCount[0]~input_o\,
	combout => \Y3~129_combout\);

-- Location: LCCOMB_X80_Y52_N30
\Y3~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~130_combout\ = (\Y3~105_combout\ & ((\Y2[6]~43_combout\) # ((\Y3~122_combout\ & \Y2[6]~49_combout\)))) # (!\Y3~105_combout\ & (((\Y3~122_combout\ & \Y2[6]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~105_combout\,
	datab => \Y2[6]~43_combout\,
	datac => \Y3~122_combout\,
	datad => \Y2[6]~49_combout\,
	combout => \Y3~130_combout\);

-- Location: LCCOMB_X77_Y52_N20
\Y3~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~131_combout\ = (!\ShiftCount[1]~input_o\ & (\ShiftCount[2]~input_o\ & !\ShiftCount[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[1]~input_o\,
	datab => \ShiftCount[2]~input_o\,
	datad => \ShiftCount[5]~input_o\,
	combout => \Y3~131_combout\);

-- Location: LCCOMB_X80_Y52_N16
\Y3~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~132_combout\ = (\Y3~131_combout\ & ((\ShiftCount[3]~input_o\ & (\Y2[4]~24_combout\)) # (!\ShiftCount[3]~input_o\ & ((\Y2[4]~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[4]~24_combout\,
	datab => \Y3~131_combout\,
	datac => \Y2[4]~46_combout\,
	datad => \ShiftCount[3]~input_o\,
	combout => \Y3~132_combout\);

-- Location: IOIBUF_X29_Y73_N1
\X[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(28),
	o => \X[28]~input_o\);

-- Location: LCCOMB_X76_Y54_N10
\Y2[4]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[4]~52_combout\ = (\ShiftCount[4]~input_o\ & (\X[12]~input_o\)) # (!\ShiftCount[4]~input_o\ & ((\X[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftCount[4]~input_o\,
	datac => \X[12]~input_o\,
	datad => \X[28]~input_o\,
	combout => \Y2[4]~52_combout\);

-- Location: LCCOMB_X75_Y51_N0
\Y2[4]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[4]~53_combout\ = (\ShiftCount[3]~input_o\ & (\Y2[4]~38_combout\)) # (!\ShiftCount[3]~input_o\ & ((\Y2[4]~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y2[4]~38_combout\,
	datac => \Y2[4]~52_combout\,
	datad => \ShiftCount[3]~input_o\,
	combout => \Y2[4]~53_combout\);

-- Location: LCCOMB_X80_Y52_N10
\Y3~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~133_combout\ = (\Y3~130_combout\) # ((\Y3~132_combout\) # ((\Y3~114_combout\ & \Y2[4]~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~130_combout\,
	datab => \Y3~132_combout\,
	datac => \Y3~114_combout\,
	datad => \Y2[4]~53_combout\,
	combout => \Y3~133_combout\);

-- Location: LCCOMB_X80_Y52_N28
\Y3~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~134_combout\ = (\ShiftCount[0]~input_o\ & (\Y3~128_combout\)) # (!\ShiftCount[0]~input_o\ & ((\Y3~133_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y3~128_combout\,
	datac => \ShiftCount[0]~input_o\,
	datad => \Y3~133_combout\,
	combout => \Y3~134_combout\);

-- Location: LCCOMB_X76_Y52_N22
\Y3~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~136_combout\ = (\Y3~131_combout\ & ((\ShiftCount[3]~input_o\ & (\Y2[5]~29_combout\)) # (!\ShiftCount[3]~input_o\ & ((\Y2[5]~47_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[5]~29_combout\,
	datab => \Y2[5]~47_combout\,
	datac => \Y3~131_combout\,
	datad => \ShiftCount[3]~input_o\,
	combout => \Y3~136_combout\);

-- Location: IOIBUF_X49_Y73_N22
\X[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(29),
	o => \X[29]~input_o\);

-- Location: LCCOMB_X76_Y56_N28
\Y2[5]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[5]~54_combout\ = (\ShiftCount[4]~input_o\ & ((\X[13]~input_o\))) # (!\ShiftCount[4]~input_o\ & (\X[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[29]~input_o\,
	datab => \ShiftCount[4]~input_o\,
	datac => \X[13]~input_o\,
	combout => \Y2[5]~54_combout\);

-- Location: LCCOMB_X76_Y52_N16
\Y2[5]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[5]~55_combout\ = (\ShiftCount[3]~input_o\ & (\Y2[5]~40_combout\)) # (!\ShiftCount[3]~input_o\ & ((\Y2[5]~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[5]~40_combout\,
	datac => \Y2[5]~54_combout\,
	datad => \ShiftCount[3]~input_o\,
	combout => \Y2[5]~55_combout\);

-- Location: LCCOMB_X79_Y52_N24
\Y3~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~135_combout\ = (\Y2[7]~45_combout\ & ((\Y3~105_combout\) # ((\Y3~122_combout\ & \Y2[7]~51_combout\)))) # (!\Y2[7]~45_combout\ & (\Y3~122_combout\ & ((\Y2[7]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[7]~45_combout\,
	datab => \Y3~122_combout\,
	datac => \Y3~105_combout\,
	datad => \Y2[7]~51_combout\,
	combout => \Y3~135_combout\);

-- Location: LCCOMB_X76_Y52_N10
\Y3~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~137_combout\ = (\Y3~136_combout\) # ((\Y3~135_combout\) # ((\Y2[5]~55_combout\ & \Y3~114_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~136_combout\,
	datab => \Y2[5]~55_combout\,
	datac => \Y3~114_combout\,
	datad => \Y3~135_combout\,
	combout => \Y3~137_combout\);

-- Location: LCCOMB_X80_Y52_N22
\Y3~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~138_combout\ = (\ShiftCount[0]~input_o\ & ((\Y3~133_combout\))) # (!\ShiftCount[0]~input_o\ & (\Y3~137_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~137_combout\,
	datac => \ShiftCount[0]~input_o\,
	datad => \Y3~133_combout\,
	combout => \Y3~138_combout\);

-- Location: LCCOMB_X80_Y52_N24
\Y3~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~139_combout\ = (\Y3~105_combout\ & ((\ShiftCount[3]~input_o\ & ((\Y2[4]~24_combout\))) # (!\ShiftCount[3]~input_o\ & (\Y2[4]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[4]~46_combout\,
	datab => \Y3~105_combout\,
	datac => \Y2[4]~24_combout\,
	datad => \ShiftCount[3]~input_o\,
	combout => \Y3~139_combout\);

-- Location: IOIBUF_X115_Y50_N8
\X[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(30),
	o => \X[30]~input_o\);

-- Location: LCCOMB_X74_Y52_N12
\Y2[6]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[6]~56_combout\ = (\ShiftCount[4]~input_o\ & (\X[14]~input_o\)) # (!\ShiftCount[4]~input_o\ & ((\X[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftCount[4]~input_o\,
	datac => \X[14]~input_o\,
	datad => \X[30]~input_o\,
	combout => \Y2[6]~56_combout\);

-- Location: LCCOMB_X77_Y53_N14
\Y2[6]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[6]~57_combout\ = (\ShiftCount[3]~input_o\ & ((\Y2[6]~42_combout\))) # (!\ShiftCount[3]~input_o\ & (\Y2[6]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[6]~56_combout\,
	datab => \Y2[6]~42_combout\,
	datad => \ShiftCount[3]~input_o\,
	combout => \Y2[6]~57_combout\);

-- Location: LCCOMB_X77_Y52_N14
\Y3~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~140_combout\ = (\Y2[6]~49_combout\ & ((\Y3~108_combout\) # ((\Y2[6]~57_combout\ & \Y3~107_combout\)))) # (!\Y2[6]~49_combout\ & (\Y2[6]~57_combout\ & ((\Y3~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[6]~49_combout\,
	datab => \Y2[6]~57_combout\,
	datac => \Y3~108_combout\,
	datad => \Y3~107_combout\,
	combout => \Y3~140_combout\);

-- Location: LCCOMB_X80_Y52_N2
\Y3~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~141_combout\ = (\Y3~139_combout\) # ((\Y3~140_combout\) # ((\Y3~104_combout\ & \Y2[4]~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~104_combout\,
	datab => \Y3~139_combout\,
	datac => \Y3~140_combout\,
	datad => \Y2[4]~53_combout\,
	combout => \Y3~141_combout\);

-- Location: LCCOMB_X80_Y52_N4
\Y3~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~142_combout\ = (\ShiftCount[0]~input_o\ & (\Y3~137_combout\)) # (!\ShiftCount[0]~input_o\ & (((!\ShiftCount[5]~input_o\ & \Y3~141_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~137_combout\,
	datab => \ShiftCount[5]~input_o\,
	datac => \ShiftCount[0]~input_o\,
	datad => \Y3~141_combout\,
	combout => \Y3~142_combout\);

-- Location: IOIBUF_X85_Y73_N22
\X[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(31),
	o => \X[31]~input_o\);

-- Location: LCCOMB_X77_Y55_N28
\Y2[7]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[7]~58_combout\ = (\ShiftCount[4]~input_o\ & ((\X[15]~input_o\))) # (!\ShiftCount[4]~input_o\ & (\X[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftCount[4]~input_o\,
	datac => \X[31]~input_o\,
	datad => \X[15]~input_o\,
	combout => \Y2[7]~58_combout\);

-- Location: LCCOMB_X77_Y55_N14
\Y2[7]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[7]~59_combout\ = (\ShiftCount[3]~input_o\ & (\Y2[7]~44_combout\)) # (!\ShiftCount[3]~input_o\ & ((\Y2[7]~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[7]~44_combout\,
	datab => \Y2[7]~58_combout\,
	datac => \ShiftCount[3]~input_o\,
	combout => \Y2[7]~59_combout\);

-- Location: LCCOMB_X76_Y52_N30
\Y3~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~144_combout\ = (\Y3~107_combout\ & ((\Y2[7]~59_combout\) # ((\Y3~108_combout\ & \Y2[7]~51_combout\)))) # (!\Y3~107_combout\ & (((\Y3~108_combout\ & \Y2[7]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~107_combout\,
	datab => \Y2[7]~59_combout\,
	datac => \Y3~108_combout\,
	datad => \Y2[7]~51_combout\,
	combout => \Y3~144_combout\);

-- Location: LCCOMB_X76_Y52_N20
\Y3~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~143_combout\ = (\Y3~105_combout\ & ((\ShiftCount[3]~input_o\ & (\Y2[5]~29_combout\)) # (!\ShiftCount[3]~input_o\ & ((\Y2[5]~47_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[5]~29_combout\,
	datab => \Y2[5]~47_combout\,
	datac => \Y3~105_combout\,
	datad => \ShiftCount[3]~input_o\,
	combout => \Y3~143_combout\);

-- Location: LCCOMB_X76_Y52_N24
\Y3~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~145_combout\ = (\Y3~144_combout\) # ((\Y3~143_combout\) # ((\Y2[5]~55_combout\ & \Y3~104_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~144_combout\,
	datab => \Y2[5]~55_combout\,
	datac => \Y3~104_combout\,
	datad => \Y3~143_combout\,
	combout => \Y3~145_combout\);

-- Location: LCCOMB_X77_Y56_N14
\Y3~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~146_combout\ = (!\ShiftCount[5]~input_o\ & ((\ShiftCount[0]~input_o\ & ((\Y3~141_combout\))) # (!\ShiftCount[0]~input_o\ & (\Y3~145_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[0]~input_o\,
	datab => \Y3~145_combout\,
	datac => \ShiftCount[5]~input_o\,
	datad => \Y3~141_combout\,
	combout => \Y3~146_combout\);

-- Location: IOIBUF_X72_Y73_N22
\X[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(32),
	o => \X[32]~input_o\);

-- Location: LCCOMB_X75_Y69_N4
\Y1[32]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y1[32]~0_combout\ = (!\ShiftCount[5]~input_o\ & ((\ShiftCount[4]~input_o\ & ((\X[16]~input_o\))) # (!\ShiftCount[4]~input_o\ & (\X[32]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~input_o\,
	datab => \ShiftCount[4]~input_o\,
	datac => \X[32]~input_o\,
	datad => \X[16]~input_o\,
	combout => \Y1[32]~0_combout\);

-- Location: LCCOMB_X75_Y69_N22
\Y1[32]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y1[32]~1_combout\ = (\Y1[32]~0_combout\) # ((\ShiftCount[5]~input_o\ & (\X[0]~input_o\ & !\ShiftCount[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~input_o\,
	datab => \Y1[32]~0_combout\,
	datac => \X[0]~input_o\,
	datad => \ShiftCount[4]~input_o\,
	combout => \Y1[32]~1_combout\);

-- Location: LCCOMB_X75_Y51_N10
\Y2[4]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[4]~60_combout\ = (\ShiftCount[3]~input_o\ & (((\Y2[4]~46_combout\ & !\ShiftCount[5]~input_o\)))) # (!\ShiftCount[3]~input_o\ & (\Y1[32]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y1[32]~1_combout\,
	datab => \Y2[4]~46_combout\,
	datac => \ShiftCount[5]~input_o\,
	datad => \ShiftCount[3]~input_o\,
	combout => \Y2[4]~60_combout\);

-- Location: LCCOMB_X77_Y52_N8
\Y3~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~147_combout\ = (\Y3~131_combout\ & ((\Y2[4]~53_combout\) # ((\Y3~122_combout\ & \Y2[6]~57_combout\)))) # (!\Y3~131_combout\ & (((\Y3~122_combout\ & \Y2[6]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~131_combout\,
	datab => \Y2[4]~53_combout\,
	datac => \Y3~122_combout\,
	datad => \Y2[6]~57_combout\,
	combout => \Y3~147_combout\);

-- Location: LCCOMB_X80_Y52_N6
\Y3~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~248_combout\ = (\ShiftCount[1]~input_o\ & (\Y2[6]~49_combout\ & (!\ShiftCount[5]~input_o\ & \ShiftCount[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[1]~input_o\,
	datab => \Y2[6]~49_combout\,
	datac => \ShiftCount[5]~input_o\,
	datad => \ShiftCount[2]~input_o\,
	combout => \Y3~248_combout\);

-- Location: LCCOMB_X77_Y56_N24
\Y3~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~148_combout\ = (\Y3~147_combout\) # ((\Y3~248_combout\) # ((\Y2[4]~60_combout\ & \Y3~107_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[4]~60_combout\,
	datab => \Y3~107_combout\,
	datac => \Y3~147_combout\,
	datad => \Y3~248_combout\,
	combout => \Y3~148_combout\);

-- Location: LCCOMB_X77_Y56_N26
\Y3~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~149_combout\ = (\ShiftCount[0]~input_o\ & (\Y3~145_combout\ & (!\ShiftCount[5]~input_o\))) # (!\ShiftCount[0]~input_o\ & (((\Y3~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[0]~input_o\,
	datab => \Y3~145_combout\,
	datac => \ShiftCount[5]~input_o\,
	datad => \Y3~148_combout\,
	combout => \Y3~149_combout\);

-- Location: LCCOMB_X76_Y52_N12
\Y3~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~249_combout\ = (\Y2[7]~51_combout\ & (\ShiftCount[1]~input_o\ & (\ShiftCount[2]~input_o\ & !\ShiftCount[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[7]~51_combout\,
	datab => \ShiftCount[1]~input_o\,
	datac => \ShiftCount[2]~input_o\,
	datad => \ShiftCount[5]~input_o\,
	combout => \Y3~249_combout\);

-- Location: LCCOMB_X76_Y52_N2
\Y3~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~150_combout\ = (\Y3~131_combout\ & ((\Y2[5]~55_combout\) # ((\Y2[7]~59_combout\ & \Y3~122_combout\)))) # (!\Y3~131_combout\ & (((\Y2[7]~59_combout\ & \Y3~122_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~131_combout\,
	datab => \Y2[5]~55_combout\,
	datac => \Y2[7]~59_combout\,
	datad => \Y3~122_combout\,
	combout => \Y3~150_combout\);

-- Location: IOIBUF_X115_Y47_N15
\X[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(33),
	o => \X[33]~input_o\);

-- Location: LCCOMB_X79_Y51_N24
\Y1[33]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y1[33]~2_combout\ = (!\ShiftCount[5]~input_o\ & ((\ShiftCount[4]~input_o\ & ((\X[17]~input_o\))) # (!\ShiftCount[4]~input_o\ & (\X[33]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~input_o\,
	datab => \X[33]~input_o\,
	datac => \ShiftCount[4]~input_o\,
	datad => \X[17]~input_o\,
	combout => \Y1[33]~2_combout\);

-- Location: LCCOMB_X79_Y51_N18
\Y1[33]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y1[33]~3_combout\ = (\Y1[33]~2_combout\) # ((\X[1]~input_o\ & (!\ShiftCount[4]~input_o\ & \ShiftCount[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[1]~input_o\,
	datab => \Y1[33]~2_combout\,
	datac => \ShiftCount[4]~input_o\,
	datad => \ShiftCount[5]~input_o\,
	combout => \Y1[33]~3_combout\);

-- Location: LCCOMB_X79_Y51_N4
\Y2[5]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[5]~61_combout\ = (\ShiftCount[3]~input_o\ & (\Y2[5]~47_combout\ & ((!\ShiftCount[5]~input_o\)))) # (!\ShiftCount[3]~input_o\ & (((\Y1[33]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[5]~47_combout\,
	datab => \Y1[33]~3_combout\,
	datac => \ShiftCount[3]~input_o\,
	datad => \ShiftCount[5]~input_o\,
	combout => \Y2[5]~61_combout\);

-- Location: LCCOMB_X76_Y52_N4
\Y3~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~151_combout\ = (\Y3~249_combout\) # ((\Y3~150_combout\) # ((\Y3~107_combout\ & \Y2[5]~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~249_combout\,
	datab => \Y3~150_combout\,
	datac => \Y3~107_combout\,
	datad => \Y2[5]~61_combout\,
	combout => \Y3~151_combout\);

-- Location: LCCOMB_X77_Y56_N4
\Y3~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~152_combout\ = (\ShiftCount[0]~input_o\ & ((\Y3~148_combout\))) # (!\ShiftCount[0]~input_o\ & (\Y3~151_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~151_combout\,
	datab => \Y3~148_combout\,
	datad => \ShiftCount[0]~input_o\,
	combout => \Y3~152_combout\);

-- Location: IOIBUF_X115_Y52_N1
\X[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(34),
	o => \X[34]~input_o\);

-- Location: LCCOMB_X81_Y52_N18
\Y1[34]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y1[34]~4_combout\ = (!\ShiftCount[5]~input_o\ & ((\ShiftCount[4]~input_o\ & (\X[18]~input_o\)) # (!\ShiftCount[4]~input_o\ & ((\X[34]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[18]~input_o\,
	datab => \ShiftCount[4]~input_o\,
	datac => \ShiftCount[5]~input_o\,
	datad => \X[34]~input_o\,
	combout => \Y1[34]~4_combout\);

-- Location: LCCOMB_X81_Y52_N20
\Y1[34]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y1[34]~5_combout\ = (\Y1[34]~4_combout\) # ((\X[2]~input_o\ & (\ShiftCount[5]~input_o\ & !\ShiftCount[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[2]~input_o\,
	datab => \Y1[34]~4_combout\,
	datac => \ShiftCount[5]~input_o\,
	datad => \ShiftCount[4]~input_o\,
	combout => \Y1[34]~5_combout\);

-- Location: LCCOMB_X81_Y52_N14
\Y2[6]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[6]~62_combout\ = (\ShiftCount[3]~input_o\ & (\Y2[6]~48_combout\ & (!\ShiftCount[5]~input_o\))) # (!\ShiftCount[3]~input_o\ & (((\Y1[34]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[6]~48_combout\,
	datab => \ShiftCount[5]~input_o\,
	datac => \ShiftCount[3]~input_o\,
	datad => \Y1[34]~5_combout\,
	combout => \Y2[6]~62_combout\);

-- Location: LCCOMB_X77_Y52_N2
\Y3~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~153_combout\ = (\ShiftCount[2]~input_o\ & !\ShiftCount[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftCount[2]~input_o\,
	datad => \ShiftCount[5]~input_o\,
	combout => \Y3~153_combout\);

-- Location: LCCOMB_X77_Y52_N4
\Y3~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~154_combout\ = (\Y3~153_combout\ & ((\ShiftCount[1]~input_o\ & (\Y2[4]~53_combout\)) # (!\ShiftCount[1]~input_o\ & ((\Y2[6]~57_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~153_combout\,
	datab => \Y2[4]~53_combout\,
	datac => \ShiftCount[1]~input_o\,
	datad => \Y2[6]~57_combout\,
	combout => \Y3~154_combout\);

-- Location: LCCOMB_X77_Y52_N26
\Y3~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~250_combout\ = (\ShiftCount[1]~input_o\ & (\Y2[4]~60_combout\ & !\ShiftCount[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[1]~input_o\,
	datab => \Y2[4]~60_combout\,
	datad => \ShiftCount[2]~input_o\,
	combout => \Y3~250_combout\);

-- Location: LCCOMB_X77_Y52_N6
\Y3~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~155_combout\ = (\Y3~154_combout\) # ((\Y3~250_combout\) # ((\Y2[6]~62_combout\ & \Y3~107_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[6]~62_combout\,
	datab => \Y3~154_combout\,
	datac => \Y3~250_combout\,
	datad => \Y3~107_combout\,
	combout => \Y3~155_combout\);

-- Location: LCCOMB_X77_Y56_N22
\Y3~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~156_combout\ = (\ShiftCount[0]~input_o\ & (\Y3~151_combout\)) # (!\ShiftCount[0]~input_o\ & ((\Y3~155_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~151_combout\,
	datac => \Y3~155_combout\,
	datad => \ShiftCount[0]~input_o\,
	combout => \Y3~156_combout\);

-- Location: LCCOMB_X77_Y52_N12
\Y3~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~251_combout\ = (\ShiftCount[1]~input_o\ & (!\ShiftCount[2]~input_o\ & \Y2[5]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[1]~input_o\,
	datab => \ShiftCount[2]~input_o\,
	datad => \Y2[5]~61_combout\,
	combout => \Y3~251_combout\);

-- Location: IOIBUF_X115_Y59_N22
\X[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(35),
	o => \X[35]~input_o\);

-- Location: LCCOMB_X80_Y55_N16
\Y1[35]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y1[35]~6_combout\ = (!\ShiftCount[5]~input_o\ & ((\ShiftCount[4]~input_o\ & (\X[19]~input_o\)) # (!\ShiftCount[4]~input_o\ & ((\X[35]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[19]~input_o\,
	datab => \ShiftCount[5]~input_o\,
	datac => \X[35]~input_o\,
	datad => \ShiftCount[4]~input_o\,
	combout => \Y1[35]~6_combout\);

-- Location: LCCOMB_X80_Y55_N2
\Y1[35]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y1[35]~7_combout\ = (\Y1[35]~6_combout\) # ((\X[3]~input_o\ & (\ShiftCount[5]~input_o\ & !\ShiftCount[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[3]~input_o\,
	datab => \ShiftCount[5]~input_o\,
	datac => \Y1[35]~6_combout\,
	datad => \ShiftCount[4]~input_o\,
	combout => \Y1[35]~7_combout\);

-- Location: LCCOMB_X80_Y55_N28
\Y2[7]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[7]~63_combout\ = (\ShiftCount[3]~input_o\ & (\Y2[7]~50_combout\ & ((!\ShiftCount[5]~input_o\)))) # (!\ShiftCount[3]~input_o\ & (((\Y1[35]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[7]~50_combout\,
	datab => \Y1[35]~7_combout\,
	datac => \ShiftCount[3]~input_o\,
	datad => \ShiftCount[5]~input_o\,
	combout => \Y2[7]~63_combout\);

-- Location: LCCOMB_X76_Y52_N14
\Y3~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~157_combout\ = (\Y3~153_combout\ & ((\ShiftCount[1]~input_o\ & (\Y2[5]~55_combout\)) # (!\ShiftCount[1]~input_o\ & ((\Y2[7]~59_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~153_combout\,
	datab => \Y2[5]~55_combout\,
	datac => \Y2[7]~59_combout\,
	datad => \ShiftCount[1]~input_o\,
	combout => \Y3~157_combout\);

-- Location: LCCOMB_X77_Y52_N16
\Y3~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~158_combout\ = (\Y3~251_combout\) # ((\Y3~157_combout\) # ((\Y3~107_combout\ & \Y2[7]~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~251_combout\,
	datab => \Y3~107_combout\,
	datac => \Y2[7]~63_combout\,
	datad => \Y3~157_combout\,
	combout => \Y3~158_combout\);

-- Location: LCCOMB_X77_Y52_N10
\Y3~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~159_combout\ = (\ShiftCount[0]~input_o\ & ((\Y3~155_combout\))) # (!\ShiftCount[0]~input_o\ & (\Y3~158_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[0]~input_o\,
	datab => \Y3~158_combout\,
	datad => \Y3~155_combout\,
	combout => \Y3~159_combout\);

-- Location: IOIBUF_X0_Y52_N22
\X[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(36),
	o => \X[36]~input_o\);

-- Location: LCCOMB_X77_Y53_N16
\Y1[36]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y1[36]~8_combout\ = (!\ShiftCount[5]~input_o\ & ((\ShiftCount[4]~input_o\ & ((\X[20]~input_o\))) # (!\ShiftCount[4]~input_o\ & (\X[36]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[4]~input_o\,
	datab => \ShiftCount[5]~input_o\,
	datac => \X[36]~input_o\,
	datad => \X[20]~input_o\,
	combout => \Y1[36]~8_combout\);

-- Location: LCCOMB_X77_Y53_N10
\Y1[36]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y1[36]~9_combout\ = (\Y1[36]~8_combout\) # ((\X[4]~input_o\ & (!\ShiftCount[4]~input_o\ & \ShiftCount[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[4]~input_o\,
	datab => \Y1[36]~8_combout\,
	datac => \ShiftCount[4]~input_o\,
	datad => \ShiftCount[5]~input_o\,
	combout => \Y1[36]~9_combout\);

-- Location: LCCOMB_X75_Y51_N20
\Y2[4]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[4]~64_combout\ = (\ShiftCount[3]~input_o\ & (!\ShiftCount[5]~input_o\ & ((\Y2[4]~52_combout\)))) # (!\ShiftCount[3]~input_o\ & (((\Y1[36]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~input_o\,
	datab => \Y1[36]~9_combout\,
	datac => \Y2[4]~52_combout\,
	datad => \ShiftCount[3]~input_o\,
	combout => \Y2[4]~64_combout\);

-- Location: LCCOMB_X77_Y52_N28
\Y3~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~160_combout\ = (\Y2[4]~64_combout\ & ((\Y3~107_combout\) # ((\Y2[4]~60_combout\ & \Y3~108_combout\)))) # (!\Y2[4]~64_combout\ & (\Y2[4]~60_combout\ & (\Y3~108_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[4]~64_combout\,
	datab => \Y2[4]~60_combout\,
	datac => \Y3~108_combout\,
	datad => \Y3~107_combout\,
	combout => \Y3~160_combout\);

-- Location: LCCOMB_X77_Y52_N22
\Y3~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~252_combout\ = (\ShiftCount[1]~input_o\ & (!\ShiftCount[5]~input_o\ & (\ShiftCount[2]~input_o\ & \Y2[6]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[1]~input_o\,
	datab => \ShiftCount[5]~input_o\,
	datac => \ShiftCount[2]~input_o\,
	datad => \Y2[6]~57_combout\,
	combout => \Y3~252_combout\);

-- Location: LCCOMB_X77_Y52_N30
\Y3~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~161_combout\ = (\Y3~160_combout\) # ((\Y3~252_combout\) # ((\Y3~104_combout\ & \Y2[6]~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~104_combout\,
	datab => \Y3~160_combout\,
	datac => \Y3~252_combout\,
	datad => \Y2[6]~62_combout\,
	combout => \Y3~161_combout\);

-- Location: LCCOMB_X77_Y52_N0
\Y3~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~162_combout\ = (\ShiftCount[0]~input_o\ & ((\Y3~158_combout\))) # (!\ShiftCount[0]~input_o\ & (\Y3~161_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~161_combout\,
	datab => \Y3~158_combout\,
	datad => \ShiftCount[0]~input_o\,
	combout => \Y3~162_combout\);

-- Location: LCCOMB_X76_Y52_N6
\Y3~253\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~253_combout\ = (\ShiftCount[2]~input_o\ & (\ShiftCount[1]~input_o\ & (\Y2[7]~59_combout\ & !\ShiftCount[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[2]~input_o\,
	datab => \ShiftCount[1]~input_o\,
	datac => \Y2[7]~59_combout\,
	datad => \ShiftCount[5]~input_o\,
	combout => \Y3~253_combout\);

-- Location: IOIBUF_X115_Y59_N15
\X[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(37),
	o => \X[37]~input_o\);

-- Location: LCCOMB_X76_Y56_N22
\Y1[37]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y1[37]~10_combout\ = (!\ShiftCount[5]~input_o\ & ((\ShiftCount[4]~input_o\ & (\X[21]~input_o\)) # (!\ShiftCount[4]~input_o\ & ((\X[37]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[21]~input_o\,
	datab => \ShiftCount[5]~input_o\,
	datac => \ShiftCount[4]~input_o\,
	datad => \X[37]~input_o\,
	combout => \Y1[37]~10_combout\);

-- Location: LCCOMB_X76_Y56_N24
\Y1[37]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y1[37]~11_combout\ = (\Y1[37]~10_combout\) # ((\X[5]~input_o\ & (!\ShiftCount[4]~input_o\ & \ShiftCount[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y1[37]~10_combout\,
	datab => \X[5]~input_o\,
	datac => \ShiftCount[4]~input_o\,
	datad => \ShiftCount[5]~input_o\,
	combout => \Y1[37]~11_combout\);

-- Location: LCCOMB_X76_Y56_N2
\Y2[5]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[5]~65_combout\ = (\ShiftCount[3]~input_o\ & (\Y2[5]~54_combout\ & (!\ShiftCount[5]~input_o\))) # (!\ShiftCount[3]~input_o\ & (((\Y1[37]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[5]~54_combout\,
	datab => \ShiftCount[5]~input_o\,
	datac => \Y1[37]~11_combout\,
	datad => \ShiftCount[3]~input_o\,
	combout => \Y2[5]~65_combout\);

-- Location: LCCOMB_X76_Y52_N8
\Y3~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~163_combout\ = (\Y3~107_combout\ & ((\Y2[5]~65_combout\) # ((\Y3~108_combout\ & \Y2[5]~61_combout\)))) # (!\Y3~107_combout\ & (((\Y3~108_combout\ & \Y2[5]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~107_combout\,
	datab => \Y2[5]~65_combout\,
	datac => \Y3~108_combout\,
	datad => \Y2[5]~61_combout\,
	combout => \Y3~163_combout\);

-- Location: LCCOMB_X76_Y52_N18
\Y3~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~164_combout\ = (\Y3~253_combout\) # ((\Y3~163_combout\) # ((\Y3~104_combout\ & \Y2[7]~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~253_combout\,
	datab => \Y3~163_combout\,
	datac => \Y3~104_combout\,
	datad => \Y2[7]~63_combout\,
	combout => \Y3~164_combout\);

-- Location: LCCOMB_X77_Y51_N0
\Y3~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~165_combout\ = (\ShiftCount[0]~input_o\ & (\Y3~161_combout\)) # (!\ShiftCount[0]~input_o\ & ((\Y3~164_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~161_combout\,
	datac => \ShiftCount[0]~input_o\,
	datad => \Y3~164_combout\,
	combout => \Y3~165_combout\);

-- Location: IOIBUF_X115_Y62_N8
\X[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(38),
	o => \X[38]~input_o\);

-- Location: LCCOMB_X76_Y54_N12
\Y1[38]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y1[38]~12_combout\ = (!\ShiftCount[5]~input_o\ & ((\ShiftCount[4]~input_o\ & ((\X[22]~input_o\))) # (!\ShiftCount[4]~input_o\ & (\X[38]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~input_o\,
	datab => \X[38]~input_o\,
	datac => \ShiftCount[4]~input_o\,
	datad => \X[22]~input_o\,
	combout => \Y1[38]~12_combout\);

-- Location: LCCOMB_X76_Y54_N6
\Y1[38]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y1[38]~13_combout\ = (\Y1[38]~12_combout\) # ((!\ShiftCount[4]~input_o\ & (\ShiftCount[5]~input_o\ & \X[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y1[38]~12_combout\,
	datab => \ShiftCount[4]~input_o\,
	datac => \ShiftCount[5]~input_o\,
	datad => \X[6]~input_o\,
	combout => \Y1[38]~13_combout\);

-- Location: LCCOMB_X74_Y52_N22
\Y2[6]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[6]~66_combout\ = (\ShiftCount[3]~input_o\ & (\Y2[6]~56_combout\ & ((!\ShiftCount[5]~input_o\)))) # (!\ShiftCount[3]~input_o\ & (((\Y1[38]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[6]~56_combout\,
	datab => \Y1[38]~13_combout\,
	datac => \ShiftCount[5]~input_o\,
	datad => \ShiftCount[3]~input_o\,
	combout => \Y2[6]~66_combout\);

-- Location: LCCOMB_X75_Y51_N16
\Y3~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~167_combout\ = (\Y2[6]~66_combout\ & ((\Y3~107_combout\) # ((\Y3~108_combout\ & \Y2[6]~62_combout\)))) # (!\Y2[6]~66_combout\ & (((\Y3~108_combout\ & \Y2[6]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[6]~66_combout\,
	datab => \Y3~107_combout\,
	datac => \Y3~108_combout\,
	datad => \Y2[6]~62_combout\,
	combout => \Y3~167_combout\);

-- Location: LCCOMB_X75_Y51_N30
\Y3~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~166_combout\ = (\Y3~105_combout\ & ((\Y2[4]~60_combout\) # ((\Y2[4]~64_combout\ & \Y3~104_combout\)))) # (!\Y3~105_combout\ & (\Y2[4]~64_combout\ & (\Y3~104_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~105_combout\,
	datab => \Y2[4]~64_combout\,
	datac => \Y3~104_combout\,
	datad => \Y2[4]~60_combout\,
	combout => \Y3~166_combout\);

-- Location: LCCOMB_X77_Y51_N18
\Y3~254\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~254_combout\ = (\ShiftCount[0]~input_o\ & (((\Y3~164_combout\)))) # (!\ShiftCount[0]~input_o\ & ((\Y3~167_combout\) # ((\Y3~166_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~167_combout\,
	datab => \ShiftCount[0]~input_o\,
	datac => \Y3~166_combout\,
	datad => \Y3~164_combout\,
	combout => \Y3~254_combout\);

-- Location: LCCOMB_X77_Y51_N2
\Y3~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~168_combout\ = (\Y2[5]~65_combout\ & ((\Y3~104_combout\) # ((\Y2[5]~61_combout\ & \Y3~105_combout\)))) # (!\Y2[5]~65_combout\ & (((\Y2[5]~61_combout\ & \Y3~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[5]~65_combout\,
	datab => \Y3~104_combout\,
	datac => \Y2[5]~61_combout\,
	datad => \Y3~105_combout\,
	combout => \Y3~168_combout\);

-- Location: IOIBUF_X85_Y73_N1
\X[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(39),
	o => \X[39]~input_o\);

-- Location: LCCOMB_X77_Y55_N24
\Y1[39]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y1[39]~14_combout\ = (!\ShiftCount[5]~input_o\ & ((\ShiftCount[4]~input_o\ & (\X[23]~input_o\)) # (!\ShiftCount[4]~input_o\ & ((\X[39]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~input_o\,
	datab => \ShiftCount[4]~input_o\,
	datac => \X[23]~input_o\,
	datad => \X[39]~input_o\,
	combout => \Y1[39]~14_combout\);

-- Location: LCCOMB_X77_Y55_N26
\Y1[39]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y1[39]~15_combout\ = (\Y1[39]~14_combout\) # ((!\ShiftCount[4]~input_o\ & (\ShiftCount[5]~input_o\ & \X[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[4]~input_o\,
	datab => \Y1[39]~14_combout\,
	datac => \ShiftCount[5]~input_o\,
	datad => \X[7]~input_o\,
	combout => \Y1[39]~15_combout\);

-- Location: LCCOMB_X77_Y55_N4
\Y2[7]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[7]~67_combout\ = (\ShiftCount[3]~input_o\ & (!\ShiftCount[5]~input_o\ & (\Y2[7]~58_combout\))) # (!\ShiftCount[3]~input_o\ & (((\Y1[39]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~input_o\,
	datab => \Y2[7]~58_combout\,
	datac => \ShiftCount[3]~input_o\,
	datad => \Y1[39]~15_combout\,
	combout => \Y2[7]~67_combout\);

-- Location: LCCOMB_X77_Y51_N28
\Y3~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~169_combout\ = (\Y2[7]~67_combout\ & ((\Y3~107_combout\) # ((\Y3~108_combout\ & \Y2[7]~63_combout\)))) # (!\Y2[7]~67_combout\ & (\Y3~108_combout\ & ((\Y2[7]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[7]~67_combout\,
	datab => \Y3~108_combout\,
	datac => \Y3~107_combout\,
	datad => \Y2[7]~63_combout\,
	combout => \Y3~169_combout\);

-- Location: LCCOMB_X77_Y51_N6
\Y3~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~170_combout\ = (\Y3~168_combout\) # (\Y3~169_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y3~168_combout\,
	datad => \Y3~169_combout\,
	combout => \Y3~170_combout\);

-- Location: LCCOMB_X77_Y51_N4
\Y3~255\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~255_combout\ = (\ShiftCount[0]~input_o\ & ((\Y3~166_combout\) # ((\Y3~167_combout\)))) # (!\ShiftCount[0]~input_o\ & (((\Y3~170_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~166_combout\,
	datab => \Y3~167_combout\,
	datac => \ShiftCount[0]~input_o\,
	datad => \Y3~170_combout\,
	combout => \Y3~255_combout\);

-- Location: LCCOMB_X75_Y51_N18
\Y3~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~171_combout\ = (\Y2[6]~66_combout\ & ((\Y3~104_combout\) # ((\Y3~105_combout\ & \Y2[6]~62_combout\)))) # (!\Y2[6]~66_combout\ & (((\Y3~105_combout\ & \Y2[6]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[6]~66_combout\,
	datab => \Y3~104_combout\,
	datac => \Y3~105_combout\,
	datad => \Y2[6]~62_combout\,
	combout => \Y3~171_combout\);

-- Location: IOIBUF_X72_Y73_N1
\X[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(40),
	o => \X[40]~input_o\);

-- Location: LCCOMB_X75_Y69_N16
\Y1[24]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y1[24]~16_combout\ = (\ShiftCount[5]~input_o\ & ((\X[8]~input_o\))) # (!\ShiftCount[5]~input_o\ & (\X[40]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[40]~input_o\,
	datac => \X[8]~input_o\,
	datad => \ShiftCount[5]~input_o\,
	combout => \Y1[24]~16_combout\);

-- Location: LCCOMB_X75_Y69_N18
\Y2[4]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[4]~68_combout\ = (\ShiftCount[4]~input_o\ & (!\ShiftCount[5]~input_o\ & ((\X[24]~input_o\)))) # (!\ShiftCount[4]~input_o\ & (((\Y1[24]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~input_o\,
	datab => \Y1[24]~16_combout\,
	datac => \X[24]~input_o\,
	datad => \ShiftCount[4]~input_o\,
	combout => \Y2[4]~68_combout\);

-- Location: LCCOMB_X75_Y51_N4
\Y3~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~172_combout\ = (\Y3~107_combout\ & ((\ShiftCount[3]~input_o\ & ((\Y1[32]~1_combout\))) # (!\ShiftCount[3]~input_o\ & (\Y2[4]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[3]~input_o\,
	datab => \Y2[4]~68_combout\,
	datac => \Y1[32]~1_combout\,
	datad => \Y3~107_combout\,
	combout => \Y3~172_combout\);

-- Location: LCCOMB_X75_Y51_N14
\Y3~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~173_combout\ = (\Y3~171_combout\) # ((\Y3~172_combout\) # ((\Y3~108_combout\ & \Y2[4]~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~108_combout\,
	datab => \Y3~171_combout\,
	datac => \Y3~172_combout\,
	datad => \Y2[4]~64_combout\,
	combout => \Y3~173_combout\);

-- Location: LCCOMB_X77_Y51_N22
\Y3~256\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~256_combout\ = (\ShiftCount[0]~input_o\ & (((\Y3~168_combout\) # (\Y3~169_combout\)))) # (!\ShiftCount[0]~input_o\ & (\Y3~173_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~173_combout\,
	datab => \Y3~168_combout\,
	datac => \ShiftCount[0]~input_o\,
	datad => \Y3~169_combout\,
	combout => \Y3~256_combout\);

-- Location: IOIBUF_X109_Y73_N8
\X[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(41),
	o => \X[41]~input_o\);

-- Location: LCCOMB_X79_Y51_N14
\Y1[25]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y1[25]~17_combout\ = (\ShiftCount[5]~input_o\ & (\X[9]~input_o\)) # (!\ShiftCount[5]~input_o\ & ((\X[41]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~input_o\,
	datac => \X[9]~input_o\,
	datad => \X[41]~input_o\,
	combout => \Y1[25]~17_combout\);

-- Location: LCCOMB_X79_Y51_N0
\Y2[5]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[5]~69_combout\ = (\ShiftCount[4]~input_o\ & (!\ShiftCount[5]~input_o\ & ((\X[25]~input_o\)))) # (!\ShiftCount[4]~input_o\ & (((\Y1[25]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~input_o\,
	datab => \ShiftCount[4]~input_o\,
	datac => \Y1[25]~17_combout\,
	datad => \X[25]~input_o\,
	combout => \Y2[5]~69_combout\);

-- Location: LCCOMB_X79_Y51_N26
\Y2[5]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[5]~70_combout\ = (\ShiftCount[3]~input_o\ & ((\Y1[33]~3_combout\))) # (!\ShiftCount[3]~input_o\ & (\Y2[5]~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y2[5]~69_combout\,
	datac => \ShiftCount[3]~input_o\,
	datad => \Y1[33]~3_combout\,
	combout => \Y2[5]~70_combout\);

-- Location: LCCOMB_X77_Y51_N26
\Y3~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~175_combout\ = (\Y2[5]~65_combout\ & ((\Y3~108_combout\) # ((\Y3~107_combout\ & \Y2[5]~70_combout\)))) # (!\Y2[5]~65_combout\ & (((\Y3~107_combout\ & \Y2[5]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[5]~65_combout\,
	datab => \Y3~108_combout\,
	datac => \Y3~107_combout\,
	datad => \Y2[5]~70_combout\,
	combout => \Y3~175_combout\);

-- Location: LCCOMB_X77_Y51_N24
\Y3~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~174_combout\ = (\Y2[7]~67_combout\ & ((\Y3~104_combout\) # ((\Y3~105_combout\ & \Y2[7]~63_combout\)))) # (!\Y2[7]~67_combout\ & (((\Y3~105_combout\ & \Y2[7]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[7]~67_combout\,
	datab => \Y3~104_combout\,
	datac => \Y3~105_combout\,
	datad => \Y2[7]~63_combout\,
	combout => \Y3~174_combout\);

-- Location: LCCOMB_X77_Y51_N16
\Y3~257\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~257_combout\ = (\ShiftCount[0]~input_o\ & (\Y3~173_combout\)) # (!\ShiftCount[0]~input_o\ & (((\Y3~175_combout\) # (\Y3~174_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~173_combout\,
	datab => \ShiftCount[0]~input_o\,
	datac => \Y3~175_combout\,
	datad => \Y3~174_combout\,
	combout => \Y3~257_combout\);

-- Location: LCCOMB_X75_Y51_N8
\Y2[4]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[4]~71_combout\ = (\ShiftCount[3]~input_o\ & ((\Y1[32]~1_combout\))) # (!\ShiftCount[3]~input_o\ & (\Y2[4]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y2[4]~68_combout\,
	datac => \Y1[32]~1_combout\,
	datad => \ShiftCount[3]~input_o\,
	combout => \Y2[4]~71_combout\);

-- Location: LCCOMB_X75_Y51_N26
\Y3~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~176_combout\ = (\Y3~105_combout\ & ((\Y2[4]~64_combout\) # ((\Y2[4]~71_combout\ & \Y3~104_combout\)))) # (!\Y3~105_combout\ & (\Y2[4]~71_combout\ & (\Y3~104_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~105_combout\,
	datab => \Y2[4]~71_combout\,
	datac => \Y3~104_combout\,
	datad => \Y2[4]~64_combout\,
	combout => \Y3~176_combout\);

-- Location: IOIBUF_X115_Y48_N8
\X[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(42),
	o => \X[42]~input_o\);

-- Location: LCCOMB_X81_Y52_N24
\Y1[26]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y1[26]~18_combout\ = (\ShiftCount[5]~input_o\ & ((\X[10]~input_o\))) # (!\ShiftCount[5]~input_o\ & (\X[42]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftCount[5]~input_o\,
	datac => \X[42]~input_o\,
	datad => \X[10]~input_o\,
	combout => \Y1[26]~18_combout\);

-- Location: LCCOMB_X81_Y52_N10
\Y2[6]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[6]~72_combout\ = (\ShiftCount[4]~input_o\ & (((!\ShiftCount[5]~input_o\ & \X[26]~input_o\)))) # (!\ShiftCount[4]~input_o\ & (\Y1[26]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y1[26]~18_combout\,
	datab => \ShiftCount[4]~input_o\,
	datac => \ShiftCount[5]~input_o\,
	datad => \X[26]~input_o\,
	combout => \Y2[6]~72_combout\);

-- Location: LCCOMB_X81_Y52_N28
\Y3~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~177_combout\ = (\Y3~107_combout\ & ((\ShiftCount[3]~input_o\ & ((\Y1[34]~5_combout\))) # (!\ShiftCount[3]~input_o\ & (\Y2[6]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[6]~72_combout\,
	datab => \Y1[34]~5_combout\,
	datac => \ShiftCount[3]~input_o\,
	datad => \Y3~107_combout\,
	combout => \Y3~177_combout\);

-- Location: LCCOMB_X76_Y51_N14
\Y3~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~178_combout\ = (\Y3~176_combout\) # ((\Y3~177_combout\) # ((\Y2[6]~66_combout\ & \Y3~108_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[6]~66_combout\,
	datab => \Y3~108_combout\,
	datac => \Y3~176_combout\,
	datad => \Y3~177_combout\,
	combout => \Y3~178_combout\);

-- Location: LCCOMB_X77_Y51_N10
\Y3~258\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~258_combout\ = (\ShiftCount[0]~input_o\ & (((\Y3~175_combout\) # (\Y3~174_combout\)))) # (!\ShiftCount[0]~input_o\ & (\Y3~178_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~178_combout\,
	datab => \ShiftCount[0]~input_o\,
	datac => \Y3~175_combout\,
	datad => \Y3~174_combout\,
	combout => \Y3~258_combout\);

-- Location: IOIBUF_X94_Y73_N1
\X[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(43),
	o => \X[43]~input_o\);

-- Location: LCCOMB_X80_Y55_N22
\Y1[27]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y1[27]~19_combout\ = (\ShiftCount[5]~input_o\ & (\X[11]~input_o\)) # (!\ShiftCount[5]~input_o\ & ((\X[43]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftCount[5]~input_o\,
	datac => \X[11]~input_o\,
	datad => \X[43]~input_o\,
	combout => \Y1[27]~19_combout\);

-- Location: LCCOMB_X80_Y55_N0
\Y2[7]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[7]~73_combout\ = (\ShiftCount[4]~input_o\ & (\X[27]~input_o\ & (!\ShiftCount[5]~input_o\))) # (!\ShiftCount[4]~input_o\ & (((\Y1[27]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[27]~input_o\,
	datab => \ShiftCount[5]~input_o\,
	datac => \Y1[27]~19_combout\,
	datad => \ShiftCount[4]~input_o\,
	combout => \Y2[7]~73_combout\);

-- Location: LCCOMB_X80_Y55_N10
\Y2[7]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[7]~74_combout\ = (\ShiftCount[3]~input_o\ & ((\Y1[35]~7_combout\))) # (!\ShiftCount[3]~input_o\ & (\Y2[7]~73_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y2[7]~73_combout\,
	datac => \ShiftCount[3]~input_o\,
	datad => \Y1[35]~7_combout\,
	combout => \Y2[7]~74_combout\);

-- Location: LCCOMB_X77_Y51_N14
\Y3~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~180_combout\ = (\Y2[7]~67_combout\ & ((\Y3~108_combout\) # ((\Y3~107_combout\ & \Y2[7]~74_combout\)))) # (!\Y2[7]~67_combout\ & (\Y3~107_combout\ & (\Y2[7]~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[7]~67_combout\,
	datab => \Y3~107_combout\,
	datac => \Y2[7]~74_combout\,
	datad => \Y3~108_combout\,
	combout => \Y3~180_combout\);

-- Location: LCCOMB_X77_Y51_N20
\Y3~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~179_combout\ = (\Y2[5]~65_combout\ & ((\Y3~105_combout\) # ((\Y3~104_combout\ & \Y2[5]~70_combout\)))) # (!\Y2[5]~65_combout\ & (\Y3~104_combout\ & ((\Y2[5]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[5]~65_combout\,
	datab => \Y3~104_combout\,
	datac => \Y3~105_combout\,
	datad => \Y2[5]~70_combout\,
	combout => \Y3~179_combout\);

-- Location: LCCOMB_X77_Y51_N12
\Y3~259\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~259_combout\ = (\ShiftCount[0]~input_o\ & (\Y3~178_combout\)) # (!\ShiftCount[0]~input_o\ & (((\Y3~180_combout\) # (\Y3~179_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~178_combout\,
	datab => \Y3~180_combout\,
	datac => \ShiftCount[0]~input_o\,
	datad => \Y3~179_combout\,
	combout => \Y3~259_combout\);

-- Location: LCCOMB_X74_Y52_N8
\Y2[6]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[6]~75_combout\ = (\ShiftCount[3]~input_o\ & (\Y1[34]~5_combout\)) # (!\ShiftCount[3]~input_o\ & ((\Y2[6]~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y1[34]~5_combout\,
	datac => \Y2[6]~72_combout\,
	datad => \ShiftCount[3]~input_o\,
	combout => \Y2[6]~75_combout\);

-- Location: LCCOMB_X74_Y52_N2
\Y3~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~181_combout\ = (\Y2[6]~66_combout\ & ((\Y3~105_combout\) # ((\Y2[6]~75_combout\ & \Y3~104_combout\)))) # (!\Y2[6]~66_combout\ & (\Y2[6]~75_combout\ & ((\Y3~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[6]~66_combout\,
	datab => \Y2[6]~75_combout\,
	datac => \Y3~105_combout\,
	datad => \Y3~104_combout\,
	combout => \Y3~181_combout\);

-- Location: IOIBUF_X107_Y73_N22
\X[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(44),
	o => \X[44]~input_o\);

-- Location: LCCOMB_X76_Y54_N24
\Y1[28]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y1[28]~20_combout\ = (\ShiftCount[5]~input_o\ & (\X[12]~input_o\)) # (!\ShiftCount[5]~input_o\ & ((\X[44]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X[12]~input_o\,
	datac => \ShiftCount[5]~input_o\,
	datad => \X[44]~input_o\,
	combout => \Y1[28]~20_combout\);

-- Location: LCCOMB_X76_Y54_N18
\Y2[4]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[4]~76_combout\ = (\ShiftCount[4]~input_o\ & (!\ShiftCount[5]~input_o\ & (\X[28]~input_o\))) # (!\ShiftCount[4]~input_o\ & (((\Y1[28]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~input_o\,
	datab => \X[28]~input_o\,
	datac => \ShiftCount[4]~input_o\,
	datad => \Y1[28]~20_combout\,
	combout => \Y2[4]~76_combout\);

-- Location: LCCOMB_X75_Y51_N28
\Y2[4]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[4]~77_combout\ = (\ShiftCount[3]~input_o\ & ((\Y1[36]~9_combout\))) # (!\ShiftCount[3]~input_o\ & (\Y2[4]~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y2[4]~76_combout\,
	datac => \Y1[36]~9_combout\,
	datad => \ShiftCount[3]~input_o\,
	combout => \Y2[4]~77_combout\);

-- Location: LCCOMB_X75_Y51_N22
\Y3~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~182_combout\ = (\Y3~108_combout\ & ((\Y2[4]~71_combout\) # ((\Y2[4]~77_combout\ & \Y3~107_combout\)))) # (!\Y3~108_combout\ & (\Y2[4]~77_combout\ & ((\Y3~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~108_combout\,
	datab => \Y2[4]~77_combout\,
	datac => \Y2[4]~71_combout\,
	datad => \Y3~107_combout\,
	combout => \Y3~182_combout\);

-- Location: LCCOMB_X73_Y51_N16
\Y3~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~183_combout\ = (\Y3~181_combout\) # (\Y3~182_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Y3~181_combout\,
	datad => \Y3~182_combout\,
	combout => \Y3~183_combout\);

-- Location: LCCOMB_X73_Y51_N28
\Y3~260\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~260_combout\ = (\ShiftCount[0]~input_o\ & (((\Y3~180_combout\) # (\Y3~179_combout\)))) # (!\ShiftCount[0]~input_o\ & (\Y3~183_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[0]~input_o\,
	datab => \Y3~183_combout\,
	datac => \Y3~180_combout\,
	datad => \Y3~179_combout\,
	combout => \Y3~260_combout\);

-- Location: IOIBUF_X115_Y56_N15
\X[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(45),
	o => \X[45]~input_o\);

-- Location: LCCOMB_X76_Y56_N12
\Y1[29]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y1[29]~21_combout\ = (\ShiftCount[5]~input_o\ & (\X[13]~input_o\)) # (!\ShiftCount[5]~input_o\ & ((\X[45]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X[13]~input_o\,
	datac => \X[45]~input_o\,
	datad => \ShiftCount[5]~input_o\,
	combout => \Y1[29]~21_combout\);

-- Location: LCCOMB_X76_Y56_N30
\Y2[5]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[5]~78_combout\ = (\ShiftCount[4]~input_o\ & (\X[29]~input_o\ & (!\ShiftCount[5]~input_o\))) # (!\ShiftCount[4]~input_o\ & (((\Y1[29]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[29]~input_o\,
	datab => \ShiftCount[5]~input_o\,
	datac => \ShiftCount[4]~input_o\,
	datad => \Y1[29]~21_combout\,
	combout => \Y2[5]~78_combout\);

-- Location: LCCOMB_X76_Y56_N0
\Y2[5]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[5]~79_combout\ = (\ShiftCount[3]~input_o\ & (\Y1[37]~11_combout\)) # (!\ShiftCount[3]~input_o\ & ((\Y2[5]~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y1[37]~11_combout\,
	datac => \Y2[5]~78_combout\,
	datad => \ShiftCount[3]~input_o\,
	combout => \Y2[5]~79_combout\);

-- Location: LCCOMB_X77_Y51_N8
\Y3~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~184_combout\ = (\Y3~105_combout\ & ((\Y2[7]~67_combout\) # ((\Y3~104_combout\ & \Y2[7]~74_combout\)))) # (!\Y3~105_combout\ & (\Y3~104_combout\ & (\Y2[7]~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~105_combout\,
	datab => \Y3~104_combout\,
	datac => \Y2[7]~74_combout\,
	datad => \Y2[7]~67_combout\,
	combout => \Y3~184_combout\);

-- Location: LCCOMB_X79_Y51_N28
\Y3~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~185_combout\ = (\Y3~108_combout\ & ((\ShiftCount[3]~input_o\ & ((\Y1[33]~3_combout\))) # (!\ShiftCount[3]~input_o\ & (\Y2[5]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[3]~input_o\,
	datab => \Y2[5]~69_combout\,
	datac => \Y3~108_combout\,
	datad => \Y1[33]~3_combout\,
	combout => \Y3~185_combout\);

-- Location: LCCOMB_X74_Y51_N0
\Y3~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~186_combout\ = (\Y3~184_combout\) # ((\Y3~185_combout\) # ((\Y2[5]~79_combout\ & \Y3~107_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[5]~79_combout\,
	datab => \Y3~184_combout\,
	datac => \Y3~107_combout\,
	datad => \Y3~185_combout\,
	combout => \Y3~186_combout\);

-- Location: LCCOMB_X73_Y51_N6
\Y3~261\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~261_combout\ = (\ShiftCount[0]~input_o\ & ((\Y3~181_combout\) # ((\Y3~182_combout\)))) # (!\ShiftCount[0]~input_o\ & (((\Y3~186_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~181_combout\,
	datab => \Y3~186_combout\,
	datac => \ShiftCount[0]~input_o\,
	datad => \Y3~182_combout\,
	combout => \Y3~261_combout\);

-- Location: LCCOMB_X75_Y51_N24
\Y3~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~187_combout\ = (\ShiftCount[1]~input_o\ & ((\ShiftCount[2]~input_o\ & ((\Y2[4]~71_combout\))) # (!\ShiftCount[2]~input_o\ & (\Y2[4]~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[1]~input_o\,
	datab => \Y2[4]~77_combout\,
	datac => \Y2[4]~71_combout\,
	datad => \ShiftCount[2]~input_o\,
	combout => \Y3~187_combout\);

-- Location: IOIBUF_X100_Y73_N22
\X[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(46),
	o => \X[46]~input_o\);

-- Location: LCCOMB_X76_Y54_N20
\Y1[46]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y1[46]~22_combout\ = (!\ShiftCount[5]~input_o\ & ((\ShiftCount[4]~input_o\ & ((\X[30]~input_o\))) # (!\ShiftCount[4]~input_o\ & (\X[46]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~input_o\,
	datab => \X[46]~input_o\,
	datac => \ShiftCount[4]~input_o\,
	datad => \X[30]~input_o\,
	combout => \Y1[46]~22_combout\);

-- Location: LCCOMB_X76_Y54_N30
\Y1[46]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y1[46]~23_combout\ = (\Y1[46]~22_combout\) # ((\ShiftCount[5]~input_o\ & (\X[14]~input_o\ & !\ShiftCount[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~input_o\,
	datab => \X[14]~input_o\,
	datac => \ShiftCount[4]~input_o\,
	datad => \Y1[46]~22_combout\,
	combout => \Y1[46]~23_combout\);

-- Location: LCCOMB_X74_Y52_N28
\Y2[50]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[50]~80_combout\ = (\ShiftCount[3]~input_o\ & (\Y1[38]~13_combout\)) # (!\ShiftCount[3]~input_o\ & ((\Y1[46]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y1[38]~13_combout\,
	datac => \Y1[46]~23_combout\,
	datad => \ShiftCount[3]~input_o\,
	combout => \Y2[50]~80_combout\);

-- Location: LCCOMB_X74_Y52_N30
\Y2[46]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[46]~81_combout\ = (\ShiftCount[2]~input_o\ & ((\Y2[6]~75_combout\))) # (!\ShiftCount[2]~input_o\ & (\Y2[50]~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[2]~input_o\,
	datab => \Y2[50]~80_combout\,
	datac => \Y2[6]~75_combout\,
	combout => \Y2[46]~81_combout\);

-- Location: LCCOMB_X74_Y51_N26
\Y3~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~188_combout\ = (\Y3~187_combout\) # ((!\ShiftCount[1]~input_o\ & \Y2[46]~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[1]~input_o\,
	datab => \Y3~187_combout\,
	datac => \Y2[46]~81_combout\,
	combout => \Y3~188_combout\);

-- Location: LCCOMB_X73_Y51_N18
\Y3~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~189_combout\ = (\ShiftCount[0]~input_o\ & (\Y3~186_combout\)) # (!\ShiftCount[0]~input_o\ & ((\Y3~188_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[0]~input_o\,
	datac => \Y3~186_combout\,
	datad => \Y3~188_combout\,
	combout => \Y3~189_combout\);

-- Location: IOIBUF_X113_Y73_N8
\X[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(47),
	o => \X[47]~input_o\);

-- Location: LCCOMB_X77_Y55_N6
\Y1[47]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y1[47]~24_combout\ = (!\ShiftCount[5]~input_o\ & ((\ShiftCount[4]~input_o\ & (\X[31]~input_o\)) # (!\ShiftCount[4]~input_o\ & ((\X[47]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[31]~input_o\,
	datab => \ShiftCount[4]~input_o\,
	datac => \X[47]~input_o\,
	datad => \ShiftCount[5]~input_o\,
	combout => \Y1[47]~24_combout\);

-- Location: LCCOMB_X77_Y55_N16
\Y1[47]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y1[47]~25_combout\ = (\Y1[47]~24_combout\) # ((!\ShiftCount[4]~input_o\ & (\ShiftCount[5]~input_o\ & \X[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y1[47]~24_combout\,
	datab => \ShiftCount[4]~input_o\,
	datac => \ShiftCount[5]~input_o\,
	datad => \X[15]~input_o\,
	combout => \Y1[47]~25_combout\);

-- Location: LCCOMB_X77_Y55_N2
\Y2[51]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[51]~82_combout\ = (\ShiftCount[3]~input_o\ & (\Y1[39]~15_combout\)) # (!\ShiftCount[3]~input_o\ & ((\Y1[47]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y1[39]~15_combout\,
	datab => \Y1[47]~25_combout\,
	datac => \ShiftCount[3]~input_o\,
	combout => \Y2[51]~82_combout\);

-- Location: LCCOMB_X74_Y51_N14
\Y2[47]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[47]~83_combout\ = (\ShiftCount[2]~input_o\ & (\Y2[7]~74_combout\)) # (!\ShiftCount[2]~input_o\ & ((\Y2[51]~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[7]~74_combout\,
	datac => \Y2[51]~82_combout\,
	datad => \ShiftCount[2]~input_o\,
	combout => \Y2[47]~83_combout\);

-- Location: LCCOMB_X74_Y51_N28
\Y3~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~190_combout\ = (\ShiftCount[1]~input_o\ & ((\ShiftCount[2]~input_o\ & ((\Y2[5]~70_combout\))) # (!\ShiftCount[2]~input_o\ & (\Y2[5]~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[5]~79_combout\,
	datab => \Y2[5]~70_combout\,
	datac => \ShiftCount[1]~input_o\,
	datad => \ShiftCount[2]~input_o\,
	combout => \Y3~190_combout\);

-- Location: LCCOMB_X74_Y51_N24
\Y3~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~191_combout\ = (\Y3~190_combout\) # ((\Y2[47]~83_combout\ & !\ShiftCount[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[47]~83_combout\,
	datac => \ShiftCount[1]~input_o\,
	datad => \Y3~190_combout\,
	combout => \Y3~191_combout\);

-- Location: LCCOMB_X73_Y51_N20
\Y3~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~192_combout\ = (\ShiftCount[0]~input_o\ & (\Y3~188_combout\)) # (!\ShiftCount[0]~input_o\ & ((\Y3~191_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y3~188_combout\,
	datac => \ShiftCount[0]~input_o\,
	datad => \Y3~191_combout\,
	combout => \Y3~192_combout\);

-- Location: IOIBUF_X74_Y73_N22
\X[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(48),
	o => \X[48]~input_o\);

-- Location: LCCOMB_X75_Y69_N28
\Y1[48]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y1[48]~26_combout\ = (\ShiftCount[5]~input_o\ & ((\ShiftCount[4]~input_o\) # ((\X[16]~input_o\)))) # (!\ShiftCount[5]~input_o\ & (!\ShiftCount[4]~input_o\ & (\X[48]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~input_o\,
	datab => \ShiftCount[4]~input_o\,
	datac => \X[48]~input_o\,
	datad => \X[16]~input_o\,
	combout => \Y1[48]~26_combout\);

-- Location: LCCOMB_X75_Y69_N14
\Y1[48]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y1[48]~27_combout\ = (\Y1[48]~26_combout\ & ((\X[0]~input_o\) # ((!\ShiftCount[4]~input_o\)))) # (!\Y1[48]~26_combout\ & (((\X[32]~input_o\ & \ShiftCount[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[0]~input_o\,
	datab => \Y1[48]~26_combout\,
	datac => \X[32]~input_o\,
	datad => \ShiftCount[4]~input_o\,
	combout => \Y1[48]~27_combout\);

-- Location: LCCOMB_X75_Y51_N2
\Y2[4]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[4]~84_combout\ = (\ShiftCount[3]~input_o\ & (\Y2[4]~68_combout\)) # (!\ShiftCount[3]~input_o\ & ((\Y1[48]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y2[4]~68_combout\,
	datac => \Y1[48]~27_combout\,
	datad => \ShiftCount[3]~input_o\,
	combout => \Y2[4]~84_combout\);

-- Location: LCCOMB_X75_Y51_N12
\Y3~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~193_combout\ = (\ShiftCount[2]~input_o\ & (\Y2[4]~77_combout\)) # (!\ShiftCount[2]~input_o\ & ((\Y2[4]~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y2[4]~77_combout\,
	datac => \Y2[4]~84_combout\,
	datad => \ShiftCount[2]~input_o\,
	combout => \Y3~193_combout\);

-- Location: LCCOMB_X74_Y52_N0
\Y3~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~194_combout\ = (\ShiftCount[1]~input_o\ & (\Y2[46]~81_combout\)) # (!\ShiftCount[1]~input_o\ & ((\Y3~193_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[46]~81_combout\,
	datac => \ShiftCount[1]~input_o\,
	datad => \Y3~193_combout\,
	combout => \Y3~194_combout\);

-- Location: LCCOMB_X73_Y51_N14
\Y3~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~195_combout\ = (\ShiftCount[0]~input_o\ & (\Y3~191_combout\)) # (!\ShiftCount[0]~input_o\ & ((\Y3~194_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y3~191_combout\,
	datac => \ShiftCount[0]~input_o\,
	datad => \Y3~194_combout\,
	combout => \Y3~195_combout\);

-- Location: IOIBUF_X115_Y44_N1
\X[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(49),
	o => \X[49]~input_o\);

-- Location: LCCOMB_X79_Y51_N30
\Y1[49]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y1[49]~28_combout\ = (\ShiftCount[5]~input_o\ & (((\ShiftCount[4]~input_o\) # (\X[17]~input_o\)))) # (!\ShiftCount[5]~input_o\ & (\X[49]~input_o\ & (!\ShiftCount[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~input_o\,
	datab => \X[49]~input_o\,
	datac => \ShiftCount[4]~input_o\,
	datad => \X[17]~input_o\,
	combout => \Y1[49]~28_combout\);

-- Location: LCCOMB_X79_Y51_N16
\Y1[49]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y1[49]~29_combout\ = (\ShiftCount[4]~input_o\ & ((\Y1[49]~28_combout\ & (\X[1]~input_o\)) # (!\Y1[49]~28_combout\ & ((\X[33]~input_o\))))) # (!\ShiftCount[4]~input_o\ & (((\Y1[49]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[1]~input_o\,
	datab => \ShiftCount[4]~input_o\,
	datac => \Y1[49]~28_combout\,
	datad => \X[33]~input_o\,
	combout => \Y1[49]~29_combout\);

-- Location: LCCOMB_X79_Y51_N2
\Y2[5]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[5]~85_combout\ = (\ShiftCount[3]~input_o\ & ((\Y2[5]~69_combout\))) # (!\ShiftCount[3]~input_o\ & (\Y1[49]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y1[49]~29_combout\,
	datac => \ShiftCount[3]~input_o\,
	datad => \Y2[5]~69_combout\,
	combout => \Y2[5]~85_combout\);

-- Location: LCCOMB_X74_Y51_N10
\Y3~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~196_combout\ = (\ShiftCount[2]~input_o\ & (\Y2[5]~79_combout\)) # (!\ShiftCount[2]~input_o\ & ((\Y2[5]~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[5]~79_combout\,
	datac => \Y2[5]~85_combout\,
	datad => \ShiftCount[2]~input_o\,
	combout => \Y3~196_combout\);

-- Location: LCCOMB_X74_Y51_N12
\Y3~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~197_combout\ = (\ShiftCount[1]~input_o\ & (\Y2[47]~83_combout\)) # (!\ShiftCount[1]~input_o\ & ((\Y3~196_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[1]~input_o\,
	datab => \Y2[47]~83_combout\,
	datad => \Y3~196_combout\,
	combout => \Y3~197_combout\);

-- Location: LCCOMB_X73_Y51_N8
\Y3~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~198_combout\ = (\ShiftCount[0]~input_o\ & ((\Y3~194_combout\))) # (!\ShiftCount[0]~input_o\ & (\Y3~197_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y3~197_combout\,
	datac => \ShiftCount[0]~input_o\,
	datad => \Y3~194_combout\,
	combout => \Y3~198_combout\);

-- Location: IOIBUF_X115_Y52_N8
\X[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(50),
	o => \X[50]~input_o\);

-- Location: LCCOMB_X81_Y52_N22
\Y1[50]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y1[50]~30_combout\ = (\ShiftCount[4]~input_o\ & (((\ShiftCount[5]~input_o\)))) # (!\ShiftCount[4]~input_o\ & ((\ShiftCount[5]~input_o\ & ((\X[18]~input_o\))) # (!\ShiftCount[5]~input_o\ & (\X[50]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[50]~input_o\,
	datab => \ShiftCount[4]~input_o\,
	datac => \X[18]~input_o\,
	datad => \ShiftCount[5]~input_o\,
	combout => \Y1[50]~30_combout\);

-- Location: LCCOMB_X81_Y52_N0
\Y1[50]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y1[50]~31_combout\ = (\Y1[50]~30_combout\ & (((\X[2]~input_o\)) # (!\ShiftCount[4]~input_o\))) # (!\Y1[50]~30_combout\ & (\ShiftCount[4]~input_o\ & ((\X[34]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y1[50]~30_combout\,
	datab => \ShiftCount[4]~input_o\,
	datac => \X[2]~input_o\,
	datad => \X[34]~input_o\,
	combout => \Y1[50]~31_combout\);

-- Location: LCCOMB_X81_Y52_N26
\Y2[6]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[6]~86_combout\ = (\ShiftCount[3]~input_o\ & (\Y2[6]~72_combout\)) # (!\ShiftCount[3]~input_o\ & ((\Y1[50]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[6]~72_combout\,
	datab => \Y1[50]~31_combout\,
	datac => \ShiftCount[3]~input_o\,
	combout => \Y2[6]~86_combout\);

-- Location: LCCOMB_X74_Y52_N26
\Y2[50]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[50]~87_combout\ = (\ShiftCount[2]~input_o\ & (\Y2[50]~80_combout\)) # (!\ShiftCount[2]~input_o\ & ((\Y2[6]~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y2[50]~80_combout\,
	datac => \ShiftCount[2]~input_o\,
	datad => \Y2[6]~86_combout\,
	combout => \Y2[50]~87_combout\);

-- Location: LCCOMB_X74_Y52_N20
\Y3~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~199_combout\ = (\ShiftCount[1]~input_o\ & ((\Y3~193_combout\))) # (!\ShiftCount[1]~input_o\ & (\Y2[50]~87_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[50]~87_combout\,
	datac => \ShiftCount[1]~input_o\,
	datad => \Y3~193_combout\,
	combout => \Y3~199_combout\);

-- Location: LCCOMB_X73_Y51_N26
\Y3~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~200_combout\ = (\ShiftCount[0]~input_o\ & (\Y3~197_combout\)) # (!\ShiftCount[0]~input_o\ & ((\Y3~199_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y3~197_combout\,
	datac => \ShiftCount[0]~input_o\,
	datad => \Y3~199_combout\,
	combout => \Y3~200_combout\);

-- Location: IOIBUF_X107_Y73_N8
\X[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(51),
	o => \X[51]~input_o\);

-- Location: LCCOMB_X80_Y55_N4
\Y1[51]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y1[51]~32_combout\ = (\ShiftCount[5]~input_o\ & (((\X[19]~input_o\) # (\ShiftCount[4]~input_o\)))) # (!\ShiftCount[5]~input_o\ & (\X[51]~input_o\ & ((!\ShiftCount[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[51]~input_o\,
	datab => \ShiftCount[5]~input_o\,
	datac => \X[19]~input_o\,
	datad => \ShiftCount[4]~input_o\,
	combout => \Y1[51]~32_combout\);

-- Location: LCCOMB_X80_Y55_N30
\Y1[51]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y1[51]~33_combout\ = (\Y1[51]~32_combout\ & ((\X[3]~input_o\) # ((!\ShiftCount[4]~input_o\)))) # (!\Y1[51]~32_combout\ & (((\X[35]~input_o\ & \ShiftCount[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[3]~input_o\,
	datab => \Y1[51]~32_combout\,
	datac => \X[35]~input_o\,
	datad => \ShiftCount[4]~input_o\,
	combout => \Y1[51]~33_combout\);

-- Location: LCCOMB_X80_Y55_N8
\Y2[7]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[7]~88_combout\ = (\ShiftCount[3]~input_o\ & ((\Y2[7]~73_combout\))) # (!\ShiftCount[3]~input_o\ & (\Y1[51]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y1[51]~33_combout\,
	datab => \Y2[7]~73_combout\,
	datac => \ShiftCount[3]~input_o\,
	combout => \Y2[7]~88_combout\);

-- Location: LCCOMB_X74_Y51_N30
\Y2[51]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[51]~89_combout\ = (\ShiftCount[2]~input_o\ & ((\Y2[51]~82_combout\))) # (!\ShiftCount[2]~input_o\ & (\Y2[7]~88_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y2[7]~88_combout\,
	datac => \Y2[51]~82_combout\,
	datad => \ShiftCount[2]~input_o\,
	combout => \Y2[51]~89_combout\);

-- Location: LCCOMB_X74_Y51_N8
\Y3~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~201_combout\ = (\ShiftCount[1]~input_o\ & ((\Y3~196_combout\))) # (!\ShiftCount[1]~input_o\ & (\Y2[51]~89_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y2[51]~89_combout\,
	datac => \ShiftCount[1]~input_o\,
	datad => \Y3~196_combout\,
	combout => \Y3~201_combout\);

-- Location: LCCOMB_X73_Y51_N12
\Y3~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~202_combout\ = (\ShiftCount[0]~input_o\ & ((\Y3~199_combout\))) # (!\ShiftCount[0]~input_o\ & (\Y3~201_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y3~201_combout\,
	datac => \ShiftCount[0]~input_o\,
	datad => \Y3~199_combout\,
	combout => \Y3~202_combout\);

-- Location: IOIBUF_X115_Y45_N15
\X[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(52),
	o => \X[52]~input_o\);

-- Location: LCCOMB_X77_Y53_N20
\Y1[52]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y1[52]~34_combout\ = (\ShiftCount[5]~input_o\ & (((\ShiftCount[4]~input_o\) # (\X[20]~input_o\)))) # (!\ShiftCount[5]~input_o\ & (\X[52]~input_o\ & (!\ShiftCount[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[52]~input_o\,
	datab => \ShiftCount[5]~input_o\,
	datac => \ShiftCount[4]~input_o\,
	datad => \X[20]~input_o\,
	combout => \Y1[52]~34_combout\);

-- Location: LCCOMB_X77_Y53_N6
\Y1[52]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y1[52]~35_combout\ = (\ShiftCount[4]~input_o\ & ((\Y1[52]~34_combout\ & (\X[4]~input_o\)) # (!\Y1[52]~34_combout\ & ((\X[36]~input_o\))))) # (!\ShiftCount[4]~input_o\ & (((\Y1[52]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[4]~input_o\,
	datab => \X[36]~input_o\,
	datac => \ShiftCount[4]~input_o\,
	datad => \Y1[52]~34_combout\,
	combout => \Y1[52]~35_combout\);

-- Location: LCCOMB_X76_Y54_N8
\Y2[4]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[4]~90_combout\ = (\ShiftCount[3]~input_o\ & (\Y2[4]~76_combout\)) # (!\ShiftCount[3]~input_o\ & ((\Y1[52]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y2[4]~76_combout\,
	datac => \ShiftCount[3]~input_o\,
	datad => \Y1[52]~35_combout\,
	combout => \Y2[4]~90_combout\);

-- Location: LCCOMB_X76_Y51_N16
\Y3~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~203_combout\ = (\ShiftCount[2]~input_o\ & (\Y2[4]~84_combout\)) # (!\ShiftCount[2]~input_o\ & ((\Y2[4]~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[4]~84_combout\,
	datab => \Y2[4]~90_combout\,
	datac => \ShiftCount[2]~input_o\,
	combout => \Y3~203_combout\);

-- Location: LCCOMB_X75_Y51_N6
\Y3~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~204_combout\ = (\ShiftCount[1]~input_o\ & (\Y2[50]~87_combout\)) # (!\ShiftCount[1]~input_o\ & ((\Y3~203_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y2[50]~87_combout\,
	datac => \ShiftCount[1]~input_o\,
	datad => \Y3~203_combout\,
	combout => \Y3~204_combout\);

-- Location: LCCOMB_X73_Y51_N22
\Y3~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~205_combout\ = (\ShiftCount[0]~input_o\ & (\Y3~201_combout\)) # (!\ShiftCount[0]~input_o\ & ((\Y3~204_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y3~201_combout\,
	datac => \ShiftCount[0]~input_o\,
	datad => \Y3~204_combout\,
	combout => \Y3~205_combout\);

-- Location: IOIBUF_X40_Y73_N8
\X[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(53),
	o => \X[53]~input_o\);

-- Location: LCCOMB_X76_Y56_N10
\Y1[53]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y1[53]~36_combout\ = (\ShiftCount[4]~input_o\ & (((\ShiftCount[5]~input_o\)))) # (!\ShiftCount[4]~input_o\ & ((\ShiftCount[5]~input_o\ & (\X[21]~input_o\)) # (!\ShiftCount[5]~input_o\ & ((\X[53]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[21]~input_o\,
	datab => \ShiftCount[4]~input_o\,
	datac => \X[53]~input_o\,
	datad => \ShiftCount[5]~input_o\,
	combout => \Y1[53]~36_combout\);

-- Location: LCCOMB_X76_Y56_N4
\Y1[53]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y1[53]~37_combout\ = (\Y1[53]~36_combout\ & (((\X[5]~input_o\)) # (!\ShiftCount[4]~input_o\))) # (!\Y1[53]~36_combout\ & (\ShiftCount[4]~input_o\ & ((\X[37]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y1[53]~36_combout\,
	datab => \ShiftCount[4]~input_o\,
	datac => \X[5]~input_o\,
	datad => \X[37]~input_o\,
	combout => \Y1[53]~37_combout\);

-- Location: LCCOMB_X76_Y56_N6
\Y2[5]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[5]~91_combout\ = (\ShiftCount[3]~input_o\ & (\Y2[5]~78_combout\)) # (!\ShiftCount[3]~input_o\ & ((\Y1[53]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[5]~78_combout\,
	datac => \Y1[53]~37_combout\,
	datad => \ShiftCount[3]~input_o\,
	combout => \Y2[5]~91_combout\);

-- Location: LCCOMB_X74_Y51_N2
\Y3~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~206_combout\ = (\ShiftCount[2]~input_o\ & (\Y2[5]~85_combout\)) # (!\ShiftCount[2]~input_o\ & ((\Y2[5]~91_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y2[5]~85_combout\,
	datac => \Y2[5]~91_combout\,
	datad => \ShiftCount[2]~input_o\,
	combout => \Y3~206_combout\);

-- Location: LCCOMB_X74_Y51_N4
\Y3~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~207_combout\ = (\ShiftCount[1]~input_o\ & ((\Y2[51]~89_combout\))) # (!\ShiftCount[1]~input_o\ & (\Y3~206_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y3~206_combout\,
	datac => \ShiftCount[1]~input_o\,
	datad => \Y2[51]~89_combout\,
	combout => \Y3~207_combout\);

-- Location: LCCOMB_X73_Y51_N0
\Y3~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~208_combout\ = (\ShiftCount[0]~input_o\ & ((\Y3~204_combout\))) # (!\ShiftCount[0]~input_o\ & (\Y3~207_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y3~207_combout\,
	datac => \ShiftCount[0]~input_o\,
	datad => \Y3~204_combout\,
	combout => \Y3~208_combout\);

-- Location: LCCOMB_X76_Y54_N2
\Y1[54]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y1[54]~38_combout\ = (\ShiftCount[4]~input_o\ & ((\ShiftCount[5]~input_o\ & ((\X[6]~input_o\))) # (!\ShiftCount[5]~input_o\ & (\X[38]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~input_o\,
	datab => \X[38]~input_o\,
	datac => \ShiftCount[4]~input_o\,
	datad => \X[6]~input_o\,
	combout => \Y1[54]~38_combout\);

-- Location: IOIBUF_X45_Y73_N8
\X[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(54),
	o => \X[54]~input_o\);

-- Location: LCCOMB_X76_Y54_N28
\Y1[54]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y1[54]~39_combout\ = (!\ShiftCount[4]~input_o\ & ((\ShiftCount[5]~input_o\ & ((\X[22]~input_o\))) # (!\ShiftCount[5]~input_o\ & (\X[54]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~input_o\,
	datab => \X[54]~input_o\,
	datac => \ShiftCount[4]~input_o\,
	datad => \X[22]~input_o\,
	combout => \Y1[54]~39_combout\);

-- Location: LCCOMB_X77_Y50_N0
\Y2[58]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[58]~92_combout\ = (\ShiftCount[3]~input_o\ & (((\Y1[46]~23_combout\)))) # (!\ShiftCount[3]~input_o\ & ((\Y1[54]~38_combout\) # ((\Y1[54]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y1[54]~38_combout\,
	datab => \Y1[46]~23_combout\,
	datac => \Y1[54]~39_combout\,
	datad => \ShiftCount[3]~input_o\,
	combout => \Y2[58]~92_combout\);

-- Location: LCCOMB_X76_Y51_N18
\Y2[54]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[54]~93_combout\ = (\ShiftCount[2]~input_o\ & ((\Y2[6]~86_combout\))) # (!\ShiftCount[2]~input_o\ & (\Y2[58]~92_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[58]~92_combout\,
	datac => \ShiftCount[2]~input_o\,
	datad => \Y2[6]~86_combout\,
	combout => \Y2[54]~93_combout\);

-- Location: LCCOMB_X76_Y51_N28
\Y3~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~209_combout\ = (\ShiftCount[1]~input_o\ & ((\Y3~203_combout\))) # (!\ShiftCount[1]~input_o\ & (\Y2[54]~93_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[1]~input_o\,
	datab => \Y2[54]~93_combout\,
	datac => \Y3~203_combout\,
	combout => \Y3~209_combout\);

-- Location: LCCOMB_X73_Y51_N10
\Y3~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~210_combout\ = (\ShiftCount[0]~input_o\ & (\Y3~207_combout\)) # (!\ShiftCount[0]~input_o\ & ((\Y3~209_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y3~207_combout\,
	datac => \ShiftCount[0]~input_o\,
	datad => \Y3~209_combout\,
	combout => \Y3~210_combout\);

-- Location: IOIBUF_X52_Y73_N8
\X[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(55),
	o => \X[55]~input_o\);

-- Location: LCCOMB_X77_Y55_N22
\Y1[55]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y1[55]~41_combout\ = (!\ShiftCount[4]~input_o\ & ((\ShiftCount[5]~input_o\ & (\X[23]~input_o\)) # (!\ShiftCount[5]~input_o\ & ((\X[55]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~input_o\,
	datab => \ShiftCount[4]~input_o\,
	datac => \X[23]~input_o\,
	datad => \X[55]~input_o\,
	combout => \Y1[55]~41_combout\);

-- Location: LCCOMB_X77_Y55_N12
\Y1[55]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y1[55]~40_combout\ = (\ShiftCount[4]~input_o\ & ((\ShiftCount[5]~input_o\ & ((\X[7]~input_o\))) # (!\ShiftCount[5]~input_o\ & (\X[39]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[39]~input_o\,
	datab => \ShiftCount[4]~input_o\,
	datac => \ShiftCount[5]~input_o\,
	datad => \X[7]~input_o\,
	combout => \Y1[55]~40_combout\);

-- Location: LCCOMB_X77_Y55_N0
\Y2[59]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[59]~94_combout\ = (\ShiftCount[3]~input_o\ & (((\Y1[47]~25_combout\)))) # (!\ShiftCount[3]~input_o\ & ((\Y1[55]~41_combout\) # ((\Y1[55]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y1[55]~41_combout\,
	datab => \Y1[47]~25_combout\,
	datac => \ShiftCount[3]~input_o\,
	datad => \Y1[55]~40_combout\,
	combout => \Y2[59]~94_combout\);

-- Location: LCCOMB_X74_Y51_N22
\Y2[55]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[55]~95_combout\ = (\ShiftCount[2]~input_o\ & ((\Y2[7]~88_combout\))) # (!\ShiftCount[2]~input_o\ & (\Y2[59]~94_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[59]~94_combout\,
	datac => \Y2[7]~88_combout\,
	datad => \ShiftCount[2]~input_o\,
	combout => \Y2[55]~95_combout\);

-- Location: LCCOMB_X74_Y51_N16
\Y3~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~211_combout\ = (\ShiftCount[1]~input_o\ & ((\Y3~206_combout\))) # (!\ShiftCount[1]~input_o\ & (\Y2[55]~95_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[55]~95_combout\,
	datac => \ShiftCount[1]~input_o\,
	datad => \Y3~206_combout\,
	combout => \Y3~211_combout\);

-- Location: LCCOMB_X73_Y51_N4
\Y3~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~212_combout\ = (\ShiftCount[0]~input_o\ & ((\Y3~209_combout\))) # (!\ShiftCount[0]~input_o\ & (\Y3~211_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y3~211_combout\,
	datac => \ShiftCount[0]~input_o\,
	datad => \Y3~209_combout\,
	combout => \Y3~212_combout\);

-- Location: IOIBUF_X65_Y73_N8
\X[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(56),
	o => \X[56]~input_o\);

-- Location: LCCOMB_X76_Y54_N14
\Y2[4]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[4]~96_combout\ = (\ShiftCount[3]~input_o\) # (\ShiftCount[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[3]~input_o\,
	datac => \ShiftCount[4]~input_o\,
	combout => \Y2[4]~96_combout\);

-- Location: LCCOMB_X80_Y55_N18
\Y2[4]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[4]~97_combout\ = (\ShiftCount[3]~input_o\) # ((\ShiftCount[5]~input_o\ & !\ShiftCount[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftCount[5]~input_o\,
	datac => \ShiftCount[3]~input_o\,
	datad => \ShiftCount[4]~input_o\,
	combout => \Y2[4]~97_combout\);

-- Location: LCCOMB_X76_Y56_N8
\Y2[4]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[4]~98_combout\ = (\Y2[4]~96_combout\ & (((\Y2[4]~97_combout\)))) # (!\Y2[4]~96_combout\ & ((\Y2[4]~97_combout\ & ((\X[24]~input_o\))) # (!\Y2[4]~97_combout\ & (\X[56]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[56]~input_o\,
	datab => \Y2[4]~96_combout\,
	datac => \X[24]~input_o\,
	datad => \Y2[4]~97_combout\,
	combout => \Y2[4]~98_combout\);

-- Location: LCCOMB_X76_Y56_N18
\Y2[4]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[4]~99_combout\ = (\Y2[4]~98_combout\ & ((\Y1[48]~27_combout\) # ((!\Y2[4]~96_combout\)))) # (!\Y2[4]~98_combout\ & (((\Y2[4]~96_combout\ & \Y1[24]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y1[48]~27_combout\,
	datab => \Y2[4]~98_combout\,
	datac => \Y2[4]~96_combout\,
	datad => \Y1[24]~16_combout\,
	combout => \Y2[4]~99_combout\);

-- Location: LCCOMB_X76_Y51_N6
\Y3~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~213_combout\ = (\Y3~108_combout\ & ((\Y2[4]~90_combout\) # ((\Y2[4]~99_combout\ & \Y3~107_combout\)))) # (!\Y3~108_combout\ & (((\Y2[4]~99_combout\ & \Y3~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~108_combout\,
	datab => \Y2[4]~90_combout\,
	datac => \Y2[4]~99_combout\,
	datad => \Y3~107_combout\,
	combout => \Y3~213_combout\);

-- Location: LCCOMB_X76_Y51_N24
\Y3~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~214_combout\ = (\Y3~213_combout\) # ((\Y2[54]~93_combout\ & \ShiftCount[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~213_combout\,
	datab => \Y2[54]~93_combout\,
	datac => \ShiftCount[1]~input_o\,
	combout => \Y3~214_combout\);

-- Location: LCCOMB_X73_Y51_N30
\Y3~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~215_combout\ = (\ShiftCount[0]~input_o\ & (\Y3~211_combout\)) # (!\ShiftCount[0]~input_o\ & ((\Y3~214_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y3~211_combout\,
	datac => \ShiftCount[0]~input_o\,
	datad => \Y3~214_combout\,
	combout => \Y3~215_combout\);

-- Location: IOIBUF_X115_Y54_N15
\X[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(57),
	o => \X[57]~input_o\);

-- Location: LCCOMB_X79_Y51_N20
\Y2[5]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[5]~100_combout\ = (\Y2[4]~96_combout\ & ((\Y1[25]~17_combout\) # ((\Y2[4]~97_combout\)))) # (!\Y2[4]~96_combout\ & (((!\Y2[4]~97_combout\ & \X[57]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[4]~96_combout\,
	datab => \Y1[25]~17_combout\,
	datac => \Y2[4]~97_combout\,
	datad => \X[57]~input_o\,
	combout => \Y2[5]~100_combout\);

-- Location: LCCOMB_X79_Y51_N6
\Y2[5]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[5]~101_combout\ = (\Y2[5]~100_combout\ & ((\Y1[49]~29_combout\) # ((!\Y2[4]~97_combout\)))) # (!\Y2[5]~100_combout\ & (((\Y2[4]~97_combout\ & \X[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[5]~100_combout\,
	datab => \Y1[49]~29_combout\,
	datac => \Y2[4]~97_combout\,
	datad => \X[25]~input_o\,
	combout => \Y2[5]~101_combout\);

-- Location: LCCOMB_X76_Y51_N2
\Y3~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~216_combout\ = (\Y2[5]~101_combout\ & ((\Y3~107_combout\) # ((\Y3~108_combout\ & \Y2[5]~91_combout\)))) # (!\Y2[5]~101_combout\ & (\Y3~108_combout\ & (\Y2[5]~91_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[5]~101_combout\,
	datab => \Y3~108_combout\,
	datac => \Y2[5]~91_combout\,
	datad => \Y3~107_combout\,
	combout => \Y3~216_combout\);

-- Location: LCCOMB_X74_Y51_N18
\Y3~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~217_combout\ = (\Y3~216_combout\) # ((\ShiftCount[1]~input_o\ & \Y2[55]~95_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[1]~input_o\,
	datab => \Y3~216_combout\,
	datac => \Y2[55]~95_combout\,
	combout => \Y3~217_combout\);

-- Location: LCCOMB_X73_Y51_N24
\Y3~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~218_combout\ = (\ShiftCount[0]~input_o\ & ((\Y3~214_combout\))) # (!\ShiftCount[0]~input_o\ & (\Y3~217_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y3~217_combout\,
	datac => \ShiftCount[0]~input_o\,
	datad => \Y3~214_combout\,
	combout => \Y3~218_combout\);

-- Location: IOIBUF_X115_Y40_N1
\X[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(58),
	o => \X[58]~input_o\);

-- Location: LCCOMB_X81_Y52_N4
\Y2[6]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[6]~102_combout\ = (\Y2[4]~96_combout\ & (((\Y2[4]~97_combout\)))) # (!\Y2[4]~96_combout\ & ((\Y2[4]~97_combout\ & ((\X[26]~input_o\))) # (!\Y2[4]~97_combout\ & (\X[58]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[4]~96_combout\,
	datab => \X[58]~input_o\,
	datac => \Y2[4]~97_combout\,
	datad => \X[26]~input_o\,
	combout => \Y2[6]~102_combout\);

-- Location: LCCOMB_X81_Y52_N30
\Y2[6]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[6]~103_combout\ = (\Y2[4]~96_combout\ & ((\Y2[6]~102_combout\ & (\Y1[50]~31_combout\)) # (!\Y2[6]~102_combout\ & ((\Y1[26]~18_combout\))))) # (!\Y2[4]~96_combout\ & (((\Y2[6]~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[4]~96_combout\,
	datab => \Y1[50]~31_combout\,
	datac => \Y2[6]~102_combout\,
	datad => \Y1[26]~18_combout\,
	combout => \Y2[6]~103_combout\);

-- Location: LCCOMB_X77_Y50_N18
\Y2[58]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[58]~104_combout\ = (\ShiftCount[2]~input_o\ & (\Y2[58]~92_combout\)) # (!\ShiftCount[2]~input_o\ & ((\Y2[6]~103_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y2[58]~92_combout\,
	datac => \ShiftCount[2]~input_o\,
	datad => \Y2[6]~103_combout\,
	combout => \Y2[58]~104_combout\);

-- Location: LCCOMB_X76_Y51_N12
\Y3~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~219_combout\ = (\ShiftCount[1]~input_o\ & ((\ShiftCount[2]~input_o\ & (\Y2[4]~90_combout\)) # (!\ShiftCount[2]~input_o\ & ((\Y2[4]~99_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[2]~input_o\,
	datab => \Y2[4]~90_combout\,
	datac => \ShiftCount[1]~input_o\,
	datad => \Y2[4]~99_combout\,
	combout => \Y3~219_combout\);

-- Location: LCCOMB_X77_Y50_N12
\Y3~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~220_combout\ = (\Y3~219_combout\) # ((\Y2[58]~104_combout\ & !\ShiftCount[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y2[58]~104_combout\,
	datac => \Y3~219_combout\,
	datad => \ShiftCount[1]~input_o\,
	combout => \Y3~220_combout\);

-- Location: LCCOMB_X73_Y51_N2
\Y3~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~221_combout\ = (\ShiftCount[0]~input_o\ & ((\Y3~217_combout\))) # (!\ShiftCount[0]~input_o\ & (\Y3~220_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y3~220_combout\,
	datac => \ShiftCount[0]~input_o\,
	datad => \Y3~217_combout\,
	combout => \Y3~221_combout\);

-- Location: LCCOMB_X76_Y51_N30
\Y3~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~222_combout\ = (\ShiftCount[1]~input_o\ & ((\ShiftCount[2]~input_o\ & (\Y2[5]~91_combout\)) # (!\ShiftCount[2]~input_o\ & ((\Y2[5]~101_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[1]~input_o\,
	datab => \Y2[5]~91_combout\,
	datac => \ShiftCount[2]~input_o\,
	datad => \Y2[5]~101_combout\,
	combout => \Y3~222_combout\);

-- Location: IOIBUF_X85_Y73_N15
\X[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(59),
	o => \X[59]~input_o\);

-- Location: LCCOMB_X80_Y55_N20
\Y2[7]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[7]~105_combout\ = (\Y2[4]~96_combout\ & ((\Y1[27]~19_combout\) # ((\Y2[4]~97_combout\)))) # (!\Y2[4]~96_combout\ & (((!\Y2[4]~97_combout\ & \X[59]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y1[27]~19_combout\,
	datab => \Y2[4]~96_combout\,
	datac => \Y2[4]~97_combout\,
	datad => \X[59]~input_o\,
	combout => \Y2[7]~105_combout\);

-- Location: LCCOMB_X80_Y55_N14
\Y2[7]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[7]~106_combout\ = (\Y2[4]~97_combout\ & ((\Y2[7]~105_combout\ & (\Y1[51]~33_combout\)) # (!\Y2[7]~105_combout\ & ((\X[27]~input_o\))))) # (!\Y2[4]~97_combout\ & (\Y2[7]~105_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[4]~97_combout\,
	datab => \Y2[7]~105_combout\,
	datac => \Y1[51]~33_combout\,
	datad => \X[27]~input_o\,
	combout => \Y2[7]~106_combout\);

-- Location: LCCOMB_X74_Y51_N20
\Y2[59]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[59]~107_combout\ = (\ShiftCount[2]~input_o\ & (\Y2[59]~94_combout\)) # (!\ShiftCount[2]~input_o\ & ((\Y2[7]~106_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[59]~94_combout\,
	datac => \Y2[7]~106_combout\,
	datad => \ShiftCount[2]~input_o\,
	combout => \Y2[59]~107_combout\);

-- Location: LCCOMB_X77_Y50_N22
\Y3~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~223_combout\ = (\Y3~222_combout\) # ((\Y2[59]~107_combout\ & !\ShiftCount[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y3~222_combout\,
	datac => \Y2[59]~107_combout\,
	datad => \ShiftCount[1]~input_o\,
	combout => \Y3~223_combout\);

-- Location: LCCOMB_X77_Y50_N24
\Y3~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~224_combout\ = (\ShiftCount[0]~input_o\ & (\Y3~220_combout\)) # (!\ShiftCount[0]~input_o\ & ((\Y3~223_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~220_combout\,
	datab => \ShiftCount[0]~input_o\,
	datac => \Y3~223_combout\,
	combout => \Y3~224_combout\);

-- Location: IOIBUF_X35_Y73_N22
\X[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(60),
	o => \X[60]~input_o\);

-- Location: LCCOMB_X76_Y54_N16
\Y2[60]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[60]~108_combout\ = (\Y2[4]~96_combout\ & (((\Y2[4]~97_combout\)))) # (!\Y2[4]~96_combout\ & ((\Y2[4]~97_combout\ & ((\X[28]~input_o\))) # (!\Y2[4]~97_combout\ & (\X[60]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[60]~input_o\,
	datab => \Y2[4]~96_combout\,
	datac => \Y2[4]~97_combout\,
	datad => \X[28]~input_o\,
	combout => \Y2[60]~108_combout\);

-- Location: LCCOMB_X76_Y54_N26
\Y2[60]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[60]~109_combout\ = (\Y2[60]~108_combout\ & (((\Y1[52]~35_combout\) # (!\Y2[4]~96_combout\)))) # (!\Y2[60]~108_combout\ & (\Y1[28]~20_combout\ & (\Y2[4]~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[60]~108_combout\,
	datab => \Y1[28]~20_combout\,
	datac => \Y2[4]~96_combout\,
	datad => \Y1[52]~35_combout\,
	combout => \Y2[60]~109_combout\);

-- Location: LCCOMB_X77_Y50_N10
\Y3~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~225_combout\ = (!\ShiftCount[1]~input_o\ & ((\ShiftCount[2]~input_o\ & ((\Y2[4]~99_combout\))) # (!\ShiftCount[2]~input_o\ & (\Y2[60]~109_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2[60]~109_combout\,
	datab => \Y2[4]~99_combout\,
	datac => \ShiftCount[2]~input_o\,
	datad => \ShiftCount[1]~input_o\,
	combout => \Y3~225_combout\);

-- Location: LCCOMB_X77_Y50_N4
\Y3~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~226_combout\ = (\Y3~225_combout\) # ((\Y2[58]~104_combout\ & \ShiftCount[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~225_combout\,
	datab => \Y2[58]~104_combout\,
	datad => \ShiftCount[1]~input_o\,
	combout => \Y3~226_combout\);

-- Location: LCCOMB_X77_Y50_N30
\Y3~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~227_combout\ = (\ShiftCount[0]~input_o\ & (\Y3~223_combout\)) # (!\ShiftCount[0]~input_o\ & ((\Y3~226_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~223_combout\,
	datab => \ShiftCount[0]~input_o\,
	datac => \Y3~226_combout\,
	combout => \Y3~227_combout\);

-- Location: IOIBUF_X60_Y73_N22
\X[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(61),
	o => \X[61]~input_o\);

-- Location: LCCOMB_X76_Y56_N20
\Y2[61]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[61]~110_combout\ = (\Y2[4]~96_combout\ & ((\Y1[29]~21_combout\) # ((\Y2[4]~97_combout\)))) # (!\Y2[4]~96_combout\ & (((\X[61]~input_o\ & !\Y2[4]~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y1[29]~21_combout\,
	datab => \X[61]~input_o\,
	datac => \Y2[4]~96_combout\,
	datad => \Y2[4]~97_combout\,
	combout => \Y2[61]~110_combout\);

-- Location: LCCOMB_X76_Y56_N14
\Y2[61]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y2[61]~111_combout\ = (\Y2[61]~110_combout\ & (((\Y1[53]~37_combout\) # (!\Y2[4]~97_combout\)))) # (!\Y2[61]~110_combout\ & (\X[29]~input_o\ & ((\Y2[4]~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[29]~input_o\,
	datab => \Y2[61]~110_combout\,
	datac => \Y1[53]~37_combout\,
	datad => \Y2[4]~97_combout\,
	combout => \Y2[61]~111_combout\);

-- Location: LCCOMB_X76_Y51_N0
\Y3~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~228_combout\ = (!\ShiftCount[1]~input_o\ & ((\ShiftCount[2]~input_o\ & ((\Y2[5]~101_combout\))) # (!\ShiftCount[2]~input_o\ & (\Y2[61]~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[1]~input_o\,
	datab => \Y2[61]~111_combout\,
	datac => \ShiftCount[2]~input_o\,
	datad => \Y2[5]~101_combout\,
	combout => \Y3~228_combout\);

-- Location: LCCOMB_X77_Y50_N8
\Y3~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~229_combout\ = (\Y3~228_combout\) # ((\Y2[59]~107_combout\ & \ShiftCount[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y3~228_combout\,
	datac => \Y2[59]~107_combout\,
	datad => \ShiftCount[1]~input_o\,
	combout => \Y3~229_combout\);

-- Location: LCCOMB_X77_Y50_N26
\Y3~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~230_combout\ = (\ShiftCount[0]~input_o\ & (\Y3~226_combout\)) # (!\ShiftCount[0]~input_o\ & ((\Y3~229_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y3~226_combout\,
	datac => \ShiftCount[0]~input_o\,
	datad => \Y3~229_combout\,
	combout => \Y3~230_combout\);

-- Location: LCCOMB_X77_Y50_N28
\Y3~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~231_combout\ = (\Y3~104_combout\ & ((\Y2[60]~109_combout\) # ((\Y3~105_combout\ & \Y2[4]~99_combout\)))) # (!\Y3~104_combout\ & (\Y3~105_combout\ & ((\Y2[4]~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~104_combout\,
	datab => \Y3~105_combout\,
	datac => \Y2[60]~109_combout\,
	datad => \Y2[4]~99_combout\,
	combout => \Y3~231_combout\);

-- Location: IOIBUF_X58_Y0_N22
\X[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(62),
	o => \X[62]~input_o\);

-- Location: LCCOMB_X76_Y54_N4
\Y3~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~232_combout\ = (\ShiftCount[4]~input_o\ & (((\ShiftCount[5]~input_o\) # (\X[46]~input_o\)))) # (!\ShiftCount[4]~input_o\ & (\X[62]~input_o\ & (!\ShiftCount[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[62]~input_o\,
	datab => \ShiftCount[4]~input_o\,
	datac => \ShiftCount[5]~input_o\,
	datad => \X[46]~input_o\,
	combout => \Y3~232_combout\);

-- Location: LCCOMB_X76_Y54_N22
\Y3~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~233_combout\ = (\ShiftCount[5]~input_o\ & ((\Y3~232_combout\ & (\X[14]~input_o\)) # (!\Y3~232_combout\ & ((\X[30]~input_o\))))) # (!\ShiftCount[5]~input_o\ & (((\Y3~232_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~input_o\,
	datab => \X[14]~input_o\,
	datac => \Y3~232_combout\,
	datad => \X[30]~input_o\,
	combout => \Y3~233_combout\);

-- Location: LCCOMB_X77_Y50_N14
\Y3~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~234_combout\ = (\ShiftCount[3]~input_o\ & ((\Y1[54]~39_combout\) # ((\Y1[54]~38_combout\)))) # (!\ShiftCount[3]~input_o\ & (((\Y3~233_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y1[54]~39_combout\,
	datab => \ShiftCount[3]~input_o\,
	datac => \Y3~233_combout\,
	datad => \Y1[54]~38_combout\,
	combout => \Y3~234_combout\);

-- Location: LCCOMB_X77_Y50_N6
\Y3~262\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~262_combout\ = (!\ShiftCount[1]~input_o\ & (\ShiftCount[2]~input_o\ & \Y2[6]~103_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[1]~input_o\,
	datac => \ShiftCount[2]~input_o\,
	datad => \Y2[6]~103_combout\,
	combout => \Y3~262_combout\);

-- Location: LCCOMB_X77_Y50_N16
\Y3~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~235_combout\ = (\Y3~231_combout\) # ((\Y3~262_combout\) # ((\Y3~107_combout\ & \Y3~234_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~107_combout\,
	datab => \Y3~231_combout\,
	datac => \Y3~234_combout\,
	datad => \Y3~262_combout\,
	combout => \Y3~235_combout\);

-- Location: LCCOMB_X77_Y50_N2
\Y3~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~236_combout\ = (\ShiftCount[0]~input_o\ & ((\Y3~229_combout\))) # (!\ShiftCount[0]~input_o\ & (\Y3~235_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y3~235_combout\,
	datac => \ShiftCount[0]~input_o\,
	datad => \Y3~229_combout\,
	combout => \Y3~236_combout\);

-- Location: LCCOMB_X76_Y51_N10
\Y3~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~237_combout\ = (!\ShiftCount[1]~input_o\ & (\Y2[7]~106_combout\ & \ShiftCount[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[1]~input_o\,
	datab => \Y2[7]~106_combout\,
	datac => \ShiftCount[2]~input_o\,
	combout => \Y3~237_combout\);

-- Location: LCCOMB_X76_Y51_N4
\Y3~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~238_combout\ = (\Y3~104_combout\ & ((\Y2[61]~111_combout\) # ((\Y3~105_combout\ & \Y2[5]~101_combout\)))) # (!\Y3~104_combout\ & (((\Y3~105_combout\ & \Y2[5]~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~104_combout\,
	datab => \Y2[61]~111_combout\,
	datac => \Y3~105_combout\,
	datad => \Y2[5]~101_combout\,
	combout => \Y3~238_combout\);

-- Location: IOIBUF_X58_Y0_N15
\X[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(63),
	o => \X[63]~input_o\);

-- Location: LCCOMB_X77_Y55_N18
\Y3~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~239_combout\ = (\ShiftCount[5]~input_o\ & (\ShiftCount[4]~input_o\)) # (!\ShiftCount[5]~input_o\ & ((\ShiftCount[4]~input_o\ & (\X[47]~input_o\)) # (!\ShiftCount[4]~input_o\ & ((\X[63]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~input_o\,
	datab => \ShiftCount[4]~input_o\,
	datac => \X[47]~input_o\,
	datad => \X[63]~input_o\,
	combout => \Y3~239_combout\);

-- Location: LCCOMB_X77_Y55_N20
\Y3~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~240_combout\ = (\ShiftCount[5]~input_o\ & ((\Y3~239_combout\ & ((\X[15]~input_o\))) # (!\Y3~239_combout\ & (\X[31]~input_o\)))) # (!\ShiftCount[5]~input_o\ & (\Y3~239_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftCount[5]~input_o\,
	datab => \Y3~239_combout\,
	datac => \X[31]~input_o\,
	datad => \X[15]~input_o\,
	combout => \Y3~240_combout\);

-- Location: LCCOMB_X77_Y55_N30
\Y3~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~241_combout\ = (\ShiftCount[3]~input_o\ & ((\Y1[55]~41_combout\) # ((\Y1[55]~40_combout\)))) # (!\ShiftCount[3]~input_o\ & (((\Y3~240_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y1[55]~41_combout\,
	datab => \Y3~240_combout\,
	datac => \ShiftCount[3]~input_o\,
	datad => \Y1[55]~40_combout\,
	combout => \Y3~241_combout\);

-- Location: LCCOMB_X76_Y51_N22
\Y3~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~242_combout\ = (\Y3~237_combout\) # ((\Y3~238_combout\) # ((\Y3~107_combout\ & \Y3~241_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y3~237_combout\,
	datab => \Y3~107_combout\,
	datac => \Y3~238_combout\,
	datad => \Y3~241_combout\,
	combout => \Y3~242_combout\);

-- Location: LCCOMB_X77_Y50_N20
\Y3~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y3~243_combout\ = (\ShiftCount[0]~input_o\ & ((\Y3~235_combout\))) # (!\ShiftCount[0]~input_o\ & (\Y3~242_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y3~242_combout\,
	datac => \ShiftCount[0]~input_o\,
	datad => \Y3~235_combout\,
	combout => \Y3~243_combout\);

ww_Y(0) <= \Y[0]~output_o\;

ww_Y(1) <= \Y[1]~output_o\;

ww_Y(2) <= \Y[2]~output_o\;

ww_Y(3) <= \Y[3]~output_o\;

ww_Y(4) <= \Y[4]~output_o\;

ww_Y(5) <= \Y[5]~output_o\;

ww_Y(6) <= \Y[6]~output_o\;

ww_Y(7) <= \Y[7]~output_o\;

ww_Y(8) <= \Y[8]~output_o\;

ww_Y(9) <= \Y[9]~output_o\;

ww_Y(10) <= \Y[10]~output_o\;

ww_Y(11) <= \Y[11]~output_o\;

ww_Y(12) <= \Y[12]~output_o\;

ww_Y(13) <= \Y[13]~output_o\;

ww_Y(14) <= \Y[14]~output_o\;

ww_Y(15) <= \Y[15]~output_o\;

ww_Y(16) <= \Y[16]~output_o\;

ww_Y(17) <= \Y[17]~output_o\;

ww_Y(18) <= \Y[18]~output_o\;

ww_Y(19) <= \Y[19]~output_o\;

ww_Y(20) <= \Y[20]~output_o\;

ww_Y(21) <= \Y[21]~output_o\;

ww_Y(22) <= \Y[22]~output_o\;

ww_Y(23) <= \Y[23]~output_o\;

ww_Y(24) <= \Y[24]~output_o\;

ww_Y(25) <= \Y[25]~output_o\;

ww_Y(26) <= \Y[26]~output_o\;

ww_Y(27) <= \Y[27]~output_o\;

ww_Y(28) <= \Y[28]~output_o\;

ww_Y(29) <= \Y[29]~output_o\;

ww_Y(30) <= \Y[30]~output_o\;

ww_Y(31) <= \Y[31]~output_o\;

ww_Y(32) <= \Y[32]~output_o\;

ww_Y(33) <= \Y[33]~output_o\;

ww_Y(34) <= \Y[34]~output_o\;

ww_Y(35) <= \Y[35]~output_o\;

ww_Y(36) <= \Y[36]~output_o\;

ww_Y(37) <= \Y[37]~output_o\;

ww_Y(38) <= \Y[38]~output_o\;

ww_Y(39) <= \Y[39]~output_o\;

ww_Y(40) <= \Y[40]~output_o\;

ww_Y(41) <= \Y[41]~output_o\;

ww_Y(42) <= \Y[42]~output_o\;

ww_Y(43) <= \Y[43]~output_o\;

ww_Y(44) <= \Y[44]~output_o\;

ww_Y(45) <= \Y[45]~output_o\;

ww_Y(46) <= \Y[46]~output_o\;

ww_Y(47) <= \Y[47]~output_o\;

ww_Y(48) <= \Y[48]~output_o\;

ww_Y(49) <= \Y[49]~output_o\;

ww_Y(50) <= \Y[50]~output_o\;

ww_Y(51) <= \Y[51]~output_o\;

ww_Y(52) <= \Y[52]~output_o\;

ww_Y(53) <= \Y[53]~output_o\;

ww_Y(54) <= \Y[54]~output_o\;

ww_Y(55) <= \Y[55]~output_o\;

ww_Y(56) <= \Y[56]~output_o\;

ww_Y(57) <= \Y[57]~output_o\;

ww_Y(58) <= \Y[58]~output_o\;

ww_Y(59) <= \Y[59]~output_o\;

ww_Y(60) <= \Y[60]~output_o\;

ww_Y(61) <= \Y[61]~output_o\;

ww_Y(62) <= \Y[62]~output_o\;

ww_Y(63) <= \Y[63]~output_o\;
END structure;


