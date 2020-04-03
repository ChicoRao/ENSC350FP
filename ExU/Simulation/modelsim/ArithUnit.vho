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

-- DATE "04/02/2020 21:24:11"

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

ENTITY 	ArithUnit IS
    PORT (
	A : IN std_logic_vector(63 DOWNTO 0);
	B : IN std_logic_vector(63 DOWNTO 0);
	Y : OUT std_logic_vector(63 DOWNTO 0);
	NotA : IN std_logic;
	AddnSub : IN std_logic;
	ExtWord : IN std_logic;
	Cout : OUT std_logic;
	Ovfl : OUT std_logic;
	Zero : OUT std_logic;
	AltB : OUT std_logic;
	AltBu : OUT std_logic
	);
END ArithUnit;

-- Design Ports Information
-- Y[0]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[16]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[17]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[18]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[19]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[20]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[21]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[22]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[23]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[24]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[25]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[26]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[27]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[28]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[29]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[30]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[31]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[32]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[33]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[34]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[35]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[36]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[37]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[38]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[39]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[40]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[41]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[42]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[43]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[44]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[45]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[46]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[47]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[48]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[49]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[50]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[51]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[52]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[53]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[54]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[55]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[56]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[57]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[58]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[59]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[60]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[61]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[62]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[63]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Zero	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltB	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltBu	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NotA	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddnSub	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[32]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[32]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExtWord	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[33]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[33]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[34]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[34]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[35]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[35]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[36]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[36]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[37]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[37]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[38]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[38]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[39]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[39]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[40]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[40]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[41]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[41]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[42]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[42]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[43]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[43]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[44]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[44]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[45]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[45]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[46]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[46]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[47]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[47]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[48]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[48]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[49]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[49]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[50]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[50]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[51]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[51]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[52]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[52]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[53]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[53]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[54]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[54]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[55]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[55]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[56]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[56]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[57]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[57]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[58]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[58]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[59]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[59]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[60]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[60]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[61]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[61]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[62]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[62]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[63]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[63]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ArithUnit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_NotA : std_logic;
SIGNAL ww_AddnSub : std_logic;
SIGNAL ww_ExtWord : std_logic;
SIGNAL ww_Cout : std_logic;
SIGNAL ww_Ovfl : std_logic;
SIGNAL ww_Zero : std_logic;
SIGNAL ww_AltB : std_logic;
SIGNAL ww_AltBu : std_logic;
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
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \Ovfl~output_o\ : std_logic;
SIGNAL \Zero~output_o\ : std_logic;
SIGNAL \AltB~output_o\ : std_logic;
SIGNAL \AltBu~output_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \NotA~input_o\ : std_logic;
SIGNAL \add|rippleAdder:0:RippleAdder|S~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \AddnSub~input_o\ : std_logic;
SIGNAL \b1[1]~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:0:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \add|rippleAdder:1:RippleAdder|S~combout\ : std_logic;
SIGNAL \add|rippleAdder:1:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \b1[2]~1_combout\ : std_logic;
SIGNAL \add|rippleAdder:2:RippleAdder|S~combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \b1[3]~2_combout\ : std_logic;
SIGNAL \add|rippleAdder:2:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:3:RippleAdder|S~combout\ : std_logic;
SIGNAL \add|rippleAdder:3:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \b1[4]~3_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:4:RippleAdder|S~combout\ : std_logic;
SIGNAL \add|rippleAdder:4:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \b1[5]~4_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:5:RippleAdder|S~combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \b1[6]~5_combout\ : std_logic;
SIGNAL \add|rippleAdder:5:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:6:RippleAdder|S~combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \b1[7]~6_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:6:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \add|rippleAdder:7:RippleAdder|S~combout\ : std_logic;
SIGNAL \add|rippleAdder:7:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \b1[8]~7_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:8:RippleAdder|S~combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:8:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \b1[9]~8_combout\ : std_logic;
SIGNAL \add|rippleAdder:9:RippleAdder|S~combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:9:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \b1[10]~9_combout\ : std_logic;
SIGNAL \add|rippleAdder:10:RippleAdder|S~combout\ : std_logic;
SIGNAL \add|rippleAdder:10:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \b1[11]~10_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:11:RippleAdder|S~combout\ : std_logic;
SIGNAL \add|rippleAdder:11:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \b1[12]~11_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:12:RippleAdder|S~combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \b1[13]~12_combout\ : std_logic;
SIGNAL \add|rippleAdder:12:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:13:RippleAdder|S~combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:13:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \b1[14]~13_combout\ : std_logic;
SIGNAL \add|rippleAdder:14:RippleAdder|S~combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:14:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \b1[15]~14_combout\ : std_logic;
SIGNAL \add|rippleAdder:15:RippleAdder|S~combout\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \b1[16]~15_combout\ : std_logic;
SIGNAL \add|rippleAdder:15:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:16:RippleAdder|S~combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:16:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \b1[17]~16_combout\ : std_logic;
SIGNAL \add|rippleAdder:17:RippleAdder|S~combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:17:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \b1[18]~17_combout\ : std_logic;
SIGNAL \add|rippleAdder:18:RippleAdder|S~combout\ : std_logic;
SIGNAL \add|rippleAdder:18:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \b1[19]~18_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:19:RippleAdder|S~combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:19:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \b1[20]~19_combout\ : std_logic;
SIGNAL \add|rippleAdder:20:RippleAdder|S~combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \b1[21]~20_combout\ : std_logic;
SIGNAL \add|rippleAdder:20:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \add|rippleAdder:21:RippleAdder|S~combout\ : std_logic;
SIGNAL \add|rippleAdder:21:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \b1[22]~21_combout\ : std_logic;
SIGNAL \add|rippleAdder:22:RippleAdder|S~combout\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \b1[23]~22_combout\ : std_logic;
SIGNAL \add|rippleAdder:22:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:23:RippleAdder|S~combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:23:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \b1[24]~23_combout\ : std_logic;
SIGNAL \add|rippleAdder:24:RippleAdder|S~combout\ : std_logic;
SIGNAL \add|rippleAdder:24:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \b1[25]~24_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:25:RippleAdder|S~combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \b1[26]~25_combout\ : std_logic;
SIGNAL \add|rippleAdder:25:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \add|rippleAdder:26:RippleAdder|S~combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \b1[27]~26_combout\ : std_logic;
SIGNAL \add|rippleAdder:26:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \add|rippleAdder:27:RippleAdder|S~combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \b1[28]~27_combout\ : std_logic;
SIGNAL \add|rippleAdder:27:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \add|rippleAdder:28:RippleAdder|S~combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \b1[29]~28_combout\ : std_logic;
SIGNAL \add|rippleAdder:28:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \add|rippleAdder:29:RippleAdder|S~combout\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \b1[30]~29_combout\ : std_logic;
SIGNAL \add|rippleAdder:29:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:30:RippleAdder|S~combout\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \b1[31]~30_combout\ : std_logic;
SIGNAL \add|rippleAdder:30:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:31:RippleAdder|S~combout\ : std_logic;
SIGNAL \B[32]~input_o\ : std_logic;
SIGNAL \b1[32]~31_combout\ : std_logic;
SIGNAL \A[32]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:31:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \add|rippleAdder:32:RippleAdder|S~combout\ : std_logic;
SIGNAL \ExtWord~input_o\ : std_logic;
SIGNAL \output~0_combout\ : std_logic;
SIGNAL \B[33]~input_o\ : std_logic;
SIGNAL \b1[33]~32_combout\ : std_logic;
SIGNAL \add|rippleAdder:32:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \A[33]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:33:RippleAdder|S~combout\ : std_logic;
SIGNAL \output~1_combout\ : std_logic;
SIGNAL \add|rippleAdder:33:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \B[34]~input_o\ : std_logic;
SIGNAL \b1[34]~33_combout\ : std_logic;
SIGNAL \A[34]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:34:RippleAdder|S~combout\ : std_logic;
SIGNAL \output~2_combout\ : std_logic;
SIGNAL \add|rippleAdder:34:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \B[35]~input_o\ : std_logic;
SIGNAL \b1[35]~34_combout\ : std_logic;
SIGNAL \A[35]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:35:RippleAdder|S~combout\ : std_logic;
SIGNAL \output~3_combout\ : std_logic;
SIGNAL \add|rippleAdder:35:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \B[36]~input_o\ : std_logic;
SIGNAL \b1[36]~35_combout\ : std_logic;
SIGNAL \A[36]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:36:RippleAdder|S~combout\ : std_logic;
SIGNAL \output~4_combout\ : std_logic;
SIGNAL \A[37]~input_o\ : std_logic;
SIGNAL \B[37]~input_o\ : std_logic;
SIGNAL \b1[37]~36_combout\ : std_logic;
SIGNAL \add|rippleAdder:36:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \add|rippleAdder:37:RippleAdder|S~combout\ : std_logic;
SIGNAL \output~5_combout\ : std_logic;
SIGNAL \add|rippleAdder:37:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \B[38]~input_o\ : std_logic;
SIGNAL \b1[38]~37_combout\ : std_logic;
SIGNAL \A[38]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:38:RippleAdder|S~combout\ : std_logic;
SIGNAL \output~6_combout\ : std_logic;
SIGNAL \B[39]~input_o\ : std_logic;
SIGNAL \b1[39]~38_combout\ : std_logic;
SIGNAL \A[39]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:38:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \add|rippleAdder:39:RippleAdder|S~combout\ : std_logic;
SIGNAL \output~7_combout\ : std_logic;
SIGNAL \B[40]~input_o\ : std_logic;
SIGNAL \b1[40]~39_combout\ : std_logic;
SIGNAL \add|rippleAdder:39:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \A[40]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:40:RippleAdder|S~combout\ : std_logic;
SIGNAL \output~8_combout\ : std_logic;
SIGNAL \A[41]~input_o\ : std_logic;
SIGNAL \B[41]~input_o\ : std_logic;
SIGNAL \b1[41]~40_combout\ : std_logic;
SIGNAL \add|rippleAdder:40:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \add|rippleAdder:41:RippleAdder|S~combout\ : std_logic;
SIGNAL \output~9_combout\ : std_logic;
SIGNAL \B[42]~input_o\ : std_logic;
SIGNAL \b1[42]~41_combout\ : std_logic;
SIGNAL \add|rippleAdder:41:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \A[42]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:42:RippleAdder|S~combout\ : std_logic;
SIGNAL \output~10_combout\ : std_logic;
SIGNAL \add|rippleAdder:42:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \B[43]~input_o\ : std_logic;
SIGNAL \b1[43]~42_combout\ : std_logic;
SIGNAL \A[43]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:43:RippleAdder|S~combout\ : std_logic;
SIGNAL \output~11_combout\ : std_logic;
SIGNAL \B[44]~input_o\ : std_logic;
SIGNAL \b1[44]~43_combout\ : std_logic;
SIGNAL \add|rippleAdder:43:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \A[44]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:44:RippleAdder|S~combout\ : std_logic;
SIGNAL \output~12_combout\ : std_logic;
SIGNAL \A[45]~input_o\ : std_logic;
SIGNAL \B[45]~input_o\ : std_logic;
SIGNAL \b1[45]~44_combout\ : std_logic;
SIGNAL \add|rippleAdder:44:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \add|rippleAdder:45:RippleAdder|S~combout\ : std_logic;
SIGNAL \output~13_combout\ : std_logic;
SIGNAL \B[46]~input_o\ : std_logic;
SIGNAL \b1[46]~45_combout\ : std_logic;
SIGNAL \add|rippleAdder:45:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \A[46]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:46:RippleAdder|S~combout\ : std_logic;
SIGNAL \output~14_combout\ : std_logic;
SIGNAL \add|rippleAdder:46:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \B[47]~input_o\ : std_logic;
SIGNAL \b1[47]~46_combout\ : std_logic;
SIGNAL \A[47]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:47:RippleAdder|S~combout\ : std_logic;
SIGNAL \output~15_combout\ : std_logic;
SIGNAL \add|rippleAdder:47:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \B[48]~input_o\ : std_logic;
SIGNAL \b1[48]~47_combout\ : std_logic;
SIGNAL \A[48]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:48:RippleAdder|S~combout\ : std_logic;
SIGNAL \output~16_combout\ : std_logic;
SIGNAL \A[49]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:48:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \B[49]~input_o\ : std_logic;
SIGNAL \b1[49]~48_combout\ : std_logic;
SIGNAL \add|rippleAdder:49:RippleAdder|S~combout\ : std_logic;
SIGNAL \output~17_combout\ : std_logic;
SIGNAL \B[50]~input_o\ : std_logic;
SIGNAL \b1[50]~49_combout\ : std_logic;
SIGNAL \A[50]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:49:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \add|rippleAdder:50:RippleAdder|S~combout\ : std_logic;
SIGNAL \output~18_combout\ : std_logic;
SIGNAL \B[51]~input_o\ : std_logic;
SIGNAL \b1[51]~50_combout\ : std_logic;
SIGNAL \add|rippleAdder:50:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \A[51]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:51:RippleAdder|S~combout\ : std_logic;
SIGNAL \output~19_combout\ : std_logic;
SIGNAL \A[52]~input_o\ : std_logic;
SIGNAL \B[52]~input_o\ : std_logic;
SIGNAL \b1[52]~51_combout\ : std_logic;
SIGNAL \add|rippleAdder:51:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \add|rippleAdder:52:RippleAdder|S~combout\ : std_logic;
SIGNAL \output~20_combout\ : std_logic;
SIGNAL \A[53]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:52:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \B[53]~input_o\ : std_logic;
SIGNAL \b1[53]~52_combout\ : std_logic;
SIGNAL \add|rippleAdder:53:RippleAdder|S~combout\ : std_logic;
SIGNAL \output~21_combout\ : std_logic;
SIGNAL \add|rippleAdder:53:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \A[54]~input_o\ : std_logic;
SIGNAL \B[54]~input_o\ : std_logic;
SIGNAL \b1[54]~53_combout\ : std_logic;
SIGNAL \add|rippleAdder:54:RippleAdder|S~combout\ : std_logic;
SIGNAL \output~22_combout\ : std_logic;
SIGNAL \add|rippleAdder:54:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \B[55]~input_o\ : std_logic;
SIGNAL \b1[55]~54_combout\ : std_logic;
SIGNAL \A[55]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:55:RippleAdder|S~combout\ : std_logic;
SIGNAL \output~23_combout\ : std_logic;
SIGNAL \B[56]~input_o\ : std_logic;
SIGNAL \b1[56]~55_combout\ : std_logic;
SIGNAL \A[56]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:55:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \add|rippleAdder:56:RippleAdder|S~combout\ : std_logic;
SIGNAL \output~24_combout\ : std_logic;
SIGNAL \A[57]~input_o\ : std_logic;
SIGNAL \B[57]~input_o\ : std_logic;
SIGNAL \b1[57]~56_combout\ : std_logic;
SIGNAL \add|rippleAdder:56:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \add|rippleAdder:57:RippleAdder|S~combout\ : std_logic;
SIGNAL \output~25_combout\ : std_logic;
SIGNAL \A[58]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:57:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \B[58]~input_o\ : std_logic;
SIGNAL \b1[58]~57_combout\ : std_logic;
SIGNAL \add|rippleAdder:58:RippleAdder|S~combout\ : std_logic;
SIGNAL \output~26_combout\ : std_logic;
SIGNAL \B[59]~input_o\ : std_logic;
SIGNAL \b1[59]~58_combout\ : std_logic;
SIGNAL \A[59]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:58:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \add|rippleAdder:59:RippleAdder|S~combout\ : std_logic;
SIGNAL \output~27_combout\ : std_logic;
SIGNAL \B[60]~input_o\ : std_logic;
SIGNAL \b1[60]~59_combout\ : std_logic;
SIGNAL \add|rippleAdder:59:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \A[60]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:60:RippleAdder|S~combout\ : std_logic;
SIGNAL \output~28_combout\ : std_logic;
SIGNAL \add|rippleAdder:60:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \B[61]~input_o\ : std_logic;
SIGNAL \A[61]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:61:RippleAdder|S~0_combout\ : std_logic;
SIGNAL \output~29_combout\ : std_logic;
SIGNAL \B[62]~input_o\ : std_logic;
SIGNAL \A[62]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:62:RippleAdder|S~0_combout\ : std_logic;
SIGNAL \b1[61]~60_combout\ : std_logic;
SIGNAL \add|rippleAdder:61:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \output~30_combout\ : std_logic;
SIGNAL \b1[62]~61_combout\ : std_logic;
SIGNAL \add|rippleAdder:62:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \A[63]~input_o\ : std_logic;
SIGNAL \B[63]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:63:RippleAdder|S~0_combout\ : std_logic;
SIGNAL \output~31_combout\ : std_logic;
SIGNAL \b1[63]~62_combout\ : std_logic;
SIGNAL \add|rippleAdder:63:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \internalOvfl~2_combout\ : std_logic;
SIGNAL \Equal0~11_combout\ : std_logic;
SIGNAL \Equal0~12_combout\ : std_logic;
SIGNAL \Equal0~13_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Equal0~14_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~18_combout\ : std_logic;
SIGNAL \Equal0~19_combout\ : std_logic;
SIGNAL \Equal0~17_combout\ : std_logic;
SIGNAL \Equal0~16_combout\ : std_logic;
SIGNAL \Equal0~15_combout\ : std_logic;
SIGNAL \Equal0~20_combout\ : std_logic;
SIGNAL \Equal0~21_combout\ : std_logic;
SIGNAL \AltB~0_combout\ : std_logic;
SIGNAL \add|rippleAdder:63:RippleAdder|ALT_INV_Cout~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
Y <= ww_Y;
ww_NotA <= NotA;
ww_AddnSub <= AddnSub;
ww_ExtWord <= ExtWord;
Cout <= ww_Cout;
Ovfl <= ww_Ovfl;
Zero <= ww_Zero;
AltB <= ww_AltB;
AltBu <= ww_AltBu;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\add|rippleAdder:63:RippleAdder|ALT_INV_Cout~0_combout\ <= NOT \add|rippleAdder:63:RippleAdder|Cout~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y4_N9
\Y[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:0:RippleAdder|S~0_combout\,
	devoe => ww_devoe,
	o => \Y[0]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\Y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:1:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X0_Y17_N16
\Y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:2:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\Y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:3:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X0_Y14_N2
\Y[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:4:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\Y[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:5:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\Y[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:6:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X0_Y33_N23
\Y[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:7:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\Y[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:8:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[8]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\Y[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:9:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[9]~output_o\);

-- Location: IOOBUF_X0_Y63_N23
\Y[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:10:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[10]~output_o\);

-- Location: IOOBUF_X0_Y62_N16
\Y[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:11:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[11]~output_o\);

-- Location: IOOBUF_X0_Y64_N2
\Y[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:12:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[12]~output_o\);

-- Location: IOOBUF_X0_Y65_N16
\Y[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:13:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[13]~output_o\);

-- Location: IOOBUF_X0_Y66_N16
\Y[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:14:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[14]~output_o\);

-- Location: IOOBUF_X0_Y66_N23
\Y[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:15:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[15]~output_o\);

-- Location: IOOBUF_X0_Y68_N9
\Y[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:16:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[16]~output_o\);

-- Location: IOOBUF_X5_Y73_N23
\Y[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:17:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[17]~output_o\);

-- Location: IOOBUF_X0_Y69_N9
\Y[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:18:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[18]~output_o\);

-- Location: IOOBUF_X7_Y73_N23
\Y[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:19:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[19]~output_o\);

-- Location: IOOBUF_X7_Y73_N16
\Y[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:20:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[20]~output_o\);

-- Location: IOOBUF_X16_Y73_N16
\Y[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:21:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[21]~output_o\);

-- Location: IOOBUF_X16_Y73_N23
\Y[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:22:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[22]~output_o\);

-- Location: IOOBUF_X11_Y73_N9
\Y[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:23:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[23]~output_o\);

-- Location: IOOBUF_X16_Y73_N9
\Y[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:24:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[24]~output_o\);

-- Location: IOOBUF_X85_Y73_N16
\Y[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:25:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[25]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\Y[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:26:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[26]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\Y[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:27:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[27]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\Y[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:28:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[28]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\Y[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:29:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[29]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\Y[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:30:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[30]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\Y[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:31:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[31]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\Y[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~0_combout\,
	devoe => ww_devoe,
	o => \Y[32]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\Y[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~1_combout\,
	devoe => ww_devoe,
	o => \Y[33]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\Y[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~2_combout\,
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
	i => \output~3_combout\,
	devoe => ww_devoe,
	o => \Y[35]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\Y[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~4_combout\,
	devoe => ww_devoe,
	o => \Y[36]~output_o\);

-- Location: IOOBUF_X27_Y73_N16
\Y[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~5_combout\,
	devoe => ww_devoe,
	o => \Y[37]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\Y[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~6_combout\,
	devoe => ww_devoe,
	o => \Y[38]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\Y[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~7_combout\,
	devoe => ww_devoe,
	o => \Y[39]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\Y[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~8_combout\,
	devoe => ww_devoe,
	o => \Y[40]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\Y[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~9_combout\,
	devoe => ww_devoe,
	o => \Y[41]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\Y[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~10_combout\,
	devoe => ww_devoe,
	o => \Y[42]~output_o\);

-- Location: IOOBUF_X27_Y0_N9
\Y[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~11_combout\,
	devoe => ww_devoe,
	o => \Y[43]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\Y[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~12_combout\,
	devoe => ww_devoe,
	o => \Y[44]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\Y[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~13_combout\,
	devoe => ww_devoe,
	o => \Y[45]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\Y[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~14_combout\,
	devoe => ww_devoe,
	o => \Y[46]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\Y[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~15_combout\,
	devoe => ww_devoe,
	o => \Y[47]~output_o\);

-- Location: IOOBUF_X81_Y73_N9
\Y[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~16_combout\,
	devoe => ww_devoe,
	o => \Y[48]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\Y[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~17_combout\,
	devoe => ww_devoe,
	o => \Y[49]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\Y[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~18_combout\,
	devoe => ww_devoe,
	o => \Y[50]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\Y[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~19_combout\,
	devoe => ww_devoe,
	o => \Y[51]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\Y[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~20_combout\,
	devoe => ww_devoe,
	o => \Y[52]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\Y[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~21_combout\,
	devoe => ww_devoe,
	o => \Y[53]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\Y[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~22_combout\,
	devoe => ww_devoe,
	o => \Y[54]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\Y[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~23_combout\,
	devoe => ww_devoe,
	o => \Y[55]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\Y[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~24_combout\,
	devoe => ww_devoe,
	o => \Y[56]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\Y[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~25_combout\,
	devoe => ww_devoe,
	o => \Y[57]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\Y[58]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~26_combout\,
	devoe => ww_devoe,
	o => \Y[58]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\Y[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~27_combout\,
	devoe => ww_devoe,
	o => \Y[59]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\Y[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~28_combout\,
	devoe => ww_devoe,
	o => \Y[60]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\Y[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~29_combout\,
	devoe => ww_devoe,
	o => \Y[61]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\Y[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~30_combout\,
	devoe => ww_devoe,
	o => \Y[62]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\Y[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~31_combout\,
	devoe => ww_devoe,
	o => \Y[63]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:63:RippleAdder|Cout~0_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\Ovfl~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \internalOvfl~2_combout\,
	devoe => ww_devoe,
	o => \Ovfl~output_o\);

-- Location: IOOBUF_X3_Y73_N2
\Zero~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~21_combout\,
	devoe => ww_devoe,
	o => \Zero~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\AltB~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AltB~0_combout\,
	devoe => ww_devoe,
	o => \AltB~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\AltBu~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:63:RippleAdder|ALT_INV_Cout~0_combout\,
	devoe => ww_devoe,
	o => \AltBu~output_o\);

-- Location: IOIBUF_X0_Y16_N15
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X0_Y19_N1
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X0_Y48_N8
\NotA~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NotA,
	o => \NotA~input_o\);

-- Location: LCCOMB_X1_Y16_N0
\add|rippleAdder:0:RippleAdder|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:0:RippleAdder|S~0_combout\ = \A[0]~input_o\ $ (\B[0]~input_o\ $ (\NotA~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \NotA~input_o\,
	combout => \add|rippleAdder:0:RippleAdder|S~0_combout\);

-- Location: IOIBUF_X0_Y18_N22
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X0_Y29_N22
\AddnSub~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddnSub,
	o => \AddnSub~input_o\);

-- Location: LCCOMB_X1_Y16_N20
\b1[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[1]~0_combout\ = \B[1]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \b1[1]~0_combout\);

-- Location: IOIBUF_X0_Y15_N22
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X1_Y16_N2
\add|rippleAdder:0:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:0:RippleAdder|Cout~0_combout\ = (\B[0]~input_o\ & (\A[0]~input_o\ $ (((\NotA~input_o\))))) # (!\B[0]~input_o\ & (((\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \NotA~input_o\,
	datad => \B[0]~input_o\,
	combout => \add|rippleAdder:0:RippleAdder|Cout~0_combout\);

-- Location: LCCOMB_X1_Y16_N22
\add|rippleAdder:1:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:1:RippleAdder|S~combout\ = \b1[1]~0_combout\ $ (\A[1]~input_o\ $ (\NotA~input_o\ $ (\add|rippleAdder:0:RippleAdder|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1[1]~0_combout\,
	datab => \A[1]~input_o\,
	datac => \NotA~input_o\,
	datad => \add|rippleAdder:0:RippleAdder|Cout~0_combout\,
	combout => \add|rippleAdder:1:RippleAdder|S~combout\);

-- Location: LCCOMB_X1_Y16_N24
\add|rippleAdder:1:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:1:RippleAdder|Cout~0_combout\ = (\b1[1]~0_combout\ & ((\add|rippleAdder:0:RippleAdder|Cout~0_combout\) # (\A[1]~input_o\ $ (\NotA~input_o\)))) # (!\b1[1]~0_combout\ & (\add|rippleAdder:0:RippleAdder|Cout~0_combout\ & (\A[1]~input_o\ $ 
-- (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1[1]~0_combout\,
	datab => \A[1]~input_o\,
	datac => \NotA~input_o\,
	datad => \add|rippleAdder:0:RippleAdder|Cout~0_combout\,
	combout => \add|rippleAdder:1:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X0_Y19_N8
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X0_Y20_N15
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X1_Y16_N18
\b1[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[2]~1_combout\ = \B[2]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \b1[2]~1_combout\);

-- Location: LCCOMB_X1_Y16_N28
\add|rippleAdder:2:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:2:RippleAdder|S~combout\ = \NotA~input_o\ $ (\add|rippleAdder:1:RippleAdder|Cout~0_combout\ $ (\A[2]~input_o\ $ (\b1[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \add|rippleAdder:1:RippleAdder|Cout~0_combout\,
	datac => \A[2]~input_o\,
	datad => \b1[2]~1_combout\,
	combout => \add|rippleAdder:2:RippleAdder|S~combout\);

-- Location: IOIBUF_X0_Y14_N8
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X1_Y16_N16
\b1[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[3]~2_combout\ = \AddnSub~input_o\ $ (\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[3]~input_o\,
	combout => \b1[3]~2_combout\);

-- Location: LCCOMB_X1_Y16_N14
\add|rippleAdder:2:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:2:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:1:RippleAdder|Cout~0_combout\ & ((\b1[2]~1_combout\) # (\NotA~input_o\ $ (\A[2]~input_o\)))) # (!\add|rippleAdder:1:RippleAdder|Cout~0_combout\ & (\b1[2]~1_combout\ & (\NotA~input_o\ $ 
-- (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \add|rippleAdder:1:RippleAdder|Cout~0_combout\,
	datac => \A[2]~input_o\,
	datad => \b1[2]~1_combout\,
	combout => \add|rippleAdder:2:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X0_Y15_N15
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X1_Y16_N26
\add|rippleAdder:3:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:3:RippleAdder|S~combout\ = \NotA~input_o\ $ (\b1[3]~2_combout\ $ (\add|rippleAdder:2:RippleAdder|Cout~0_combout\ $ (\A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \b1[3]~2_combout\,
	datac => \add|rippleAdder:2:RippleAdder|Cout~0_combout\,
	datad => \A[3]~input_o\,
	combout => \add|rippleAdder:3:RippleAdder|S~combout\);

-- Location: LCCOMB_X1_Y16_N4
\add|rippleAdder:3:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:3:RippleAdder|Cout~0_combout\ = (\b1[3]~2_combout\ & ((\add|rippleAdder:2:RippleAdder|Cout~0_combout\) # (\NotA~input_o\ $ (\A[3]~input_o\)))) # (!\b1[3]~2_combout\ & (\add|rippleAdder:2:RippleAdder|Cout~0_combout\ & (\NotA~input_o\ $ 
-- (\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \b1[3]~2_combout\,
	datac => \add|rippleAdder:2:RippleAdder|Cout~0_combout\,
	datad => \A[3]~input_o\,
	combout => \add|rippleAdder:3:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X0_Y16_N22
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X1_Y16_N30
\b1[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[4]~3_combout\ = \AddnSub~input_o\ $ (\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[4]~input_o\,
	combout => \b1[4]~3_combout\);

-- Location: IOIBUF_X0_Y13_N8
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X1_Y16_N8
\add|rippleAdder:4:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:4:RippleAdder|S~combout\ = \NotA~input_o\ $ (\add|rippleAdder:3:RippleAdder|Cout~0_combout\ $ (\b1[4]~3_combout\ $ (\A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \add|rippleAdder:3:RippleAdder|Cout~0_combout\,
	datac => \b1[4]~3_combout\,
	datad => \A[4]~input_o\,
	combout => \add|rippleAdder:4:RippleAdder|S~combout\);

-- Location: LCCOMB_X1_Y16_N10
\add|rippleAdder:4:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:4:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:3:RippleAdder|Cout~0_combout\ & ((\b1[4]~3_combout\) # (\NotA~input_o\ $ (\A[4]~input_o\)))) # (!\add|rippleAdder:3:RippleAdder|Cout~0_combout\ & (\b1[4]~3_combout\ & (\NotA~input_o\ $ 
-- (\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \add|rippleAdder:3:RippleAdder|Cout~0_combout\,
	datac => \b1[4]~3_combout\,
	datad => \A[4]~input_o\,
	combout => \add|rippleAdder:4:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X0_Y34_N15
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X1_Y34_N8
\b1[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[5]~4_combout\ = \AddnSub~input_o\ $ (\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[5]~input_o\,
	combout => \b1[5]~4_combout\);

-- Location: IOIBUF_X0_Y33_N15
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X1_Y34_N18
\add|rippleAdder:5:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:5:RippleAdder|S~combout\ = \NotA~input_o\ $ (\add|rippleAdder:4:RippleAdder|Cout~0_combout\ $ (\b1[5]~4_combout\ $ (\A[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \add|rippleAdder:4:RippleAdder|Cout~0_combout\,
	datac => \b1[5]~4_combout\,
	datad => \A[5]~input_o\,
	combout => \add|rippleAdder:5:RippleAdder|S~combout\);

-- Location: IOIBUF_X0_Y42_N1
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X1_Y34_N14
\b1[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[6]~5_combout\ = \AddnSub~input_o\ $ (\B[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[6]~input_o\,
	combout => \b1[6]~5_combout\);

-- Location: LCCOMB_X1_Y34_N4
\add|rippleAdder:5:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:5:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:4:RippleAdder|Cout~0_combout\ & ((\b1[5]~4_combout\) # (\NotA~input_o\ $ (\A[5]~input_o\)))) # (!\add|rippleAdder:4:RippleAdder|Cout~0_combout\ & (\b1[5]~4_combout\ & (\NotA~input_o\ $ 
-- (\A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \add|rippleAdder:4:RippleAdder|Cout~0_combout\,
	datac => \b1[5]~4_combout\,
	datad => \A[5]~input_o\,
	combout => \add|rippleAdder:5:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X0_Y32_N15
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X1_Y34_N16
\add|rippleAdder:6:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:6:RippleAdder|S~combout\ = \NotA~input_o\ $ (\b1[6]~5_combout\ $ (\add|rippleAdder:5:RippleAdder|Cout~0_combout\ $ (\A[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \b1[6]~5_combout\,
	datac => \add|rippleAdder:5:RippleAdder|Cout~0_combout\,
	datad => \A[6]~input_o\,
	combout => \add|rippleAdder:6:RippleAdder|S~combout\);

-- Location: IOIBUF_X0_Y34_N1
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X1_Y34_N20
\b1[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[7]~6_combout\ = \AddnSub~input_o\ $ (\B[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[7]~input_o\,
	combout => \b1[7]~6_combout\);

-- Location: IOIBUF_X0_Y35_N8
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X1_Y34_N10
\add|rippleAdder:6:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:6:RippleAdder|Cout~0_combout\ = (\b1[6]~5_combout\ & ((\add|rippleAdder:5:RippleAdder|Cout~0_combout\) # (\NotA~input_o\ $ (\A[6]~input_o\)))) # (!\b1[6]~5_combout\ & (\add|rippleAdder:5:RippleAdder|Cout~0_combout\ & (\NotA~input_o\ $ 
-- (\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \b1[6]~5_combout\,
	datac => \add|rippleAdder:5:RippleAdder|Cout~0_combout\,
	datad => \A[6]~input_o\,
	combout => \add|rippleAdder:6:RippleAdder|Cout~0_combout\);

-- Location: LCCOMB_X1_Y34_N30
\add|rippleAdder:7:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:7:RippleAdder|S~combout\ = \NotA~input_o\ $ (\b1[7]~6_combout\ $ (\A[7]~input_o\ $ (\add|rippleAdder:6:RippleAdder|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \b1[7]~6_combout\,
	datac => \A[7]~input_o\,
	datad => \add|rippleAdder:6:RippleAdder|Cout~0_combout\,
	combout => \add|rippleAdder:7:RippleAdder|S~combout\);

-- Location: LCCOMB_X1_Y34_N0
\add|rippleAdder:7:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:7:RippleAdder|Cout~0_combout\ = (\b1[7]~6_combout\ & ((\add|rippleAdder:6:RippleAdder|Cout~0_combout\) # (\NotA~input_o\ $ (\A[7]~input_o\)))) # (!\b1[7]~6_combout\ & (\add|rippleAdder:6:RippleAdder|Cout~0_combout\ & (\NotA~input_o\ $ 
-- (\A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \b1[7]~6_combout\,
	datac => \A[7]~input_o\,
	datad => \add|rippleAdder:6:RippleAdder|Cout~0_combout\,
	combout => \add|rippleAdder:7:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X0_Y34_N8
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X1_Y34_N26
\b1[8]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[8]~7_combout\ = \AddnSub~input_o\ $ (\B[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[8]~input_o\,
	combout => \b1[8]~7_combout\);

-- Location: IOIBUF_X0_Y34_N22
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X1_Y34_N28
\add|rippleAdder:8:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:8:RippleAdder|S~combout\ = \NotA~input_o\ $ (\add|rippleAdder:7:RippleAdder|Cout~0_combout\ $ (\b1[8]~7_combout\ $ (\A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \add|rippleAdder:7:RippleAdder|Cout~0_combout\,
	datac => \b1[8]~7_combout\,
	datad => \A[8]~input_o\,
	combout => \add|rippleAdder:8:RippleAdder|S~combout\);

-- Location: IOIBUF_X0_Y35_N15
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X1_Y34_N22
\add|rippleAdder:8:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:8:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:7:RippleAdder|Cout~0_combout\ & ((\b1[8]~7_combout\) # (\NotA~input_o\ $ (\A[8]~input_o\)))) # (!\add|rippleAdder:7:RippleAdder|Cout~0_combout\ & (\b1[8]~7_combout\ & (\NotA~input_o\ $ 
-- (\A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \add|rippleAdder:7:RippleAdder|Cout~0_combout\,
	datac => \b1[8]~7_combout\,
	datad => \A[8]~input_o\,
	combout => \add|rippleAdder:8:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X0_Y35_N1
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LCCOMB_X1_Y34_N24
\b1[9]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[9]~8_combout\ = \B[9]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \b1[9]~8_combout\);

-- Location: LCCOMB_X1_Y34_N2
\add|rippleAdder:9:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:9:RippleAdder|S~combout\ = \NotA~input_o\ $ (\A[9]~input_o\ $ (\add|rippleAdder:8:RippleAdder|Cout~0_combout\ $ (\b1[9]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \A[9]~input_o\,
	datac => \add|rippleAdder:8:RippleAdder|Cout~0_combout\,
	datad => \b1[9]~8_combout\,
	combout => \add|rippleAdder:9:RippleAdder|S~combout\);

-- Location: IOIBUF_X0_Y61_N22
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X1_Y34_N12
\add|rippleAdder:9:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:9:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:8:RippleAdder|Cout~0_combout\ & ((\b1[9]~8_combout\) # (\NotA~input_o\ $ (\A[9]~input_o\)))) # (!\add|rippleAdder:8:RippleAdder|Cout~0_combout\ & (\b1[9]~8_combout\ & (\NotA~input_o\ $ 
-- (\A[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \A[9]~input_o\,
	datac => \add|rippleAdder:8:RippleAdder|Cout~0_combout\,
	datad => \b1[9]~8_combout\,
	combout => \add|rippleAdder:9:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X0_Y58_N15
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LCCOMB_X1_Y59_N16
\b1[10]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[10]~9_combout\ = \AddnSub~input_o\ $ (\B[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \B[10]~input_o\,
	combout => \b1[10]~9_combout\);

-- Location: LCCOMB_X1_Y59_N10
\add|rippleAdder:10:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:10:RippleAdder|S~combout\ = \NotA~input_o\ $ (\A[10]~input_o\ $ (\add|rippleAdder:9:RippleAdder|Cout~0_combout\ $ (\b1[10]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \A[10]~input_o\,
	datac => \add|rippleAdder:9:RippleAdder|Cout~0_combout\,
	datad => \b1[10]~9_combout\,
	combout => \add|rippleAdder:10:RippleAdder|S~combout\);

-- Location: LCCOMB_X1_Y59_N12
\add|rippleAdder:10:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:10:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:9:RippleAdder|Cout~0_combout\ & ((\b1[10]~9_combout\) # (\NotA~input_o\ $ (\A[10]~input_o\)))) # (!\add|rippleAdder:9:RippleAdder|Cout~0_combout\ & (\b1[10]~9_combout\ & (\NotA~input_o\ $ 
-- (\A[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \A[10]~input_o\,
	datac => \add|rippleAdder:9:RippleAdder|Cout~0_combout\,
	datad => \b1[10]~9_combout\,
	combout => \add|rippleAdder:10:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X0_Y59_N15
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LCCOMB_X1_Y59_N30
\b1[11]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[11]~10_combout\ = \AddnSub~input_o\ $ (\B[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datad => \B[11]~input_o\,
	combout => \b1[11]~10_combout\);

-- Location: IOIBUF_X0_Y57_N15
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LCCOMB_X1_Y59_N0
\add|rippleAdder:11:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:11:RippleAdder|S~combout\ = \NotA~input_o\ $ (\add|rippleAdder:10:RippleAdder|Cout~0_combout\ $ (\b1[11]~10_combout\ $ (\A[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \add|rippleAdder:10:RippleAdder|Cout~0_combout\,
	datac => \b1[11]~10_combout\,
	datad => \A[11]~input_o\,
	combout => \add|rippleAdder:11:RippleAdder|S~combout\);

-- Location: LCCOMB_X1_Y59_N18
\add|rippleAdder:11:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:11:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:10:RippleAdder|Cout~0_combout\ & ((\b1[11]~10_combout\) # (\NotA~input_o\ $ (\A[11]~input_o\)))) # (!\add|rippleAdder:10:RippleAdder|Cout~0_combout\ & (\b1[11]~10_combout\ & 
-- (\NotA~input_o\ $ (\A[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \add|rippleAdder:10:RippleAdder|Cout~0_combout\,
	datac => \b1[11]~10_combout\,
	datad => \A[11]~input_o\,
	combout => \add|rippleAdder:11:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X0_Y55_N22
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LCCOMB_X1_Y59_N28
\b1[12]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[12]~11_combout\ = \AddnSub~input_o\ $ (\B[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datad => \B[12]~input_o\,
	combout => \b1[12]~11_combout\);

-- Location: IOIBUF_X0_Y62_N22
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X1_Y59_N6
\add|rippleAdder:12:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:12:RippleAdder|S~combout\ = \NotA~input_o\ $ (\add|rippleAdder:11:RippleAdder|Cout~0_combout\ $ (\b1[12]~11_combout\ $ (\A[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \add|rippleAdder:11:RippleAdder|Cout~0_combout\,
	datac => \b1[12]~11_combout\,
	datad => \A[12]~input_o\,
	combout => \add|rippleAdder:12:RippleAdder|S~combout\);

-- Location: IOIBUF_X0_Y57_N22
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LCCOMB_X1_Y59_N2
\b1[13]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[13]~12_combout\ = \AddnSub~input_o\ $ (\B[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datad => \B[13]~input_o\,
	combout => \b1[13]~12_combout\);

-- Location: LCCOMB_X1_Y59_N8
\add|rippleAdder:12:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:12:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:11:RippleAdder|Cout~0_combout\ & ((\b1[12]~11_combout\) # (\NotA~input_o\ $ (\A[12]~input_o\)))) # (!\add|rippleAdder:11:RippleAdder|Cout~0_combout\ & (\b1[12]~11_combout\ & 
-- (\NotA~input_o\ $ (\A[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \add|rippleAdder:11:RippleAdder|Cout~0_combout\,
	datac => \b1[12]~11_combout\,
	datad => \A[12]~input_o\,
	combout => \add|rippleAdder:12:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X0_Y59_N22
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LCCOMB_X1_Y59_N4
\add|rippleAdder:13:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:13:RippleAdder|S~combout\ = \NotA~input_o\ $ (\b1[13]~12_combout\ $ (\add|rippleAdder:12:RippleAdder|Cout~0_combout\ $ (\A[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \b1[13]~12_combout\,
	datac => \add|rippleAdder:12:RippleAdder|Cout~0_combout\,
	datad => \A[13]~input_o\,
	combout => \add|rippleAdder:13:RippleAdder|S~combout\);

-- Location: IOIBUF_X0_Y60_N15
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LCCOMB_X1_Y59_N22
\add|rippleAdder:13:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:13:RippleAdder|Cout~0_combout\ = (\b1[13]~12_combout\ & ((\add|rippleAdder:12:RippleAdder|Cout~0_combout\) # (\NotA~input_o\ $ (\A[13]~input_o\)))) # (!\b1[13]~12_combout\ & (\add|rippleAdder:12:RippleAdder|Cout~0_combout\ & 
-- (\NotA~input_o\ $ (\A[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \b1[13]~12_combout\,
	datac => \add|rippleAdder:12:RippleAdder|Cout~0_combout\,
	datad => \A[13]~input_o\,
	combout => \add|rippleAdder:13:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X0_Y55_N8
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X1_Y59_N24
\b1[14]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[14]~13_combout\ = \AddnSub~input_o\ $ (\B[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \B[14]~input_o\,
	combout => \b1[14]~13_combout\);

-- Location: LCCOMB_X1_Y59_N26
\add|rippleAdder:14:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:14:RippleAdder|S~combout\ = \NotA~input_o\ $ (\A[14]~input_o\ $ (\add|rippleAdder:13:RippleAdder|Cout~0_combout\ $ (\b1[14]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \A[14]~input_o\,
	datac => \add|rippleAdder:13:RippleAdder|Cout~0_combout\,
	datad => \b1[14]~13_combout\,
	combout => \add|rippleAdder:14:RippleAdder|S~combout\);

-- Location: IOIBUF_X1_Y73_N15
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X1_Y59_N20
\add|rippleAdder:14:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:14:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:13:RippleAdder|Cout~0_combout\ & ((\b1[14]~13_combout\) # (\NotA~input_o\ $ (\A[14]~input_o\)))) # (!\add|rippleAdder:13:RippleAdder|Cout~0_combout\ & (\b1[14]~13_combout\ & 
-- (\NotA~input_o\ $ (\A[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \A[14]~input_o\,
	datac => \add|rippleAdder:13:RippleAdder|Cout~0_combout\,
	datad => \b1[14]~13_combout\,
	combout => \add|rippleAdder:14:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X0_Y67_N15
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LCCOMB_X1_Y69_N24
\b1[15]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[15]~14_combout\ = \AddnSub~input_o\ $ (\B[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[15]~input_o\,
	combout => \b1[15]~14_combout\);

-- Location: LCCOMB_X1_Y69_N2
\add|rippleAdder:15:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:15:RippleAdder|S~combout\ = \A[15]~input_o\ $ (\add|rippleAdder:14:RippleAdder|Cout~0_combout\ $ (\NotA~input_o\ $ (\b1[15]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \add|rippleAdder:14:RippleAdder|Cout~0_combout\,
	datac => \NotA~input_o\,
	datad => \b1[15]~14_combout\,
	combout => \add|rippleAdder:15:RippleAdder|S~combout\);

-- Location: IOIBUF_X1_Y73_N1
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LCCOMB_X1_Y69_N6
\b1[16]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[16]~15_combout\ = \AddnSub~input_o\ $ (\B[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[16]~input_o\,
	combout => \b1[16]~15_combout\);

-- Location: LCCOMB_X1_Y69_N20
\add|rippleAdder:15:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:15:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:14:RippleAdder|Cout~0_combout\ & ((\b1[15]~14_combout\) # (\A[15]~input_o\ $ (\NotA~input_o\)))) # (!\add|rippleAdder:14:RippleAdder|Cout~0_combout\ & (\b1[15]~14_combout\ & 
-- (\A[15]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \add|rippleAdder:14:RippleAdder|Cout~0_combout\,
	datac => \NotA~input_o\,
	datad => \b1[15]~14_combout\,
	combout => \add|rippleAdder:15:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X3_Y73_N22
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: LCCOMB_X1_Y69_N16
\add|rippleAdder:16:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:16:RippleAdder|S~combout\ = \b1[16]~15_combout\ $ (\add|rippleAdder:15:RippleAdder|Cout~0_combout\ $ (\NotA~input_o\ $ (\A[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1[16]~15_combout\,
	datab => \add|rippleAdder:15:RippleAdder|Cout~0_combout\,
	datac => \NotA~input_o\,
	datad => \A[16]~input_o\,
	combout => \add|rippleAdder:16:RippleAdder|S~combout\);

-- Location: IOIBUF_X0_Y68_N1
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: LCCOMB_X1_Y69_N18
\add|rippleAdder:16:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:16:RippleAdder|Cout~0_combout\ = (\b1[16]~15_combout\ & ((\add|rippleAdder:15:RippleAdder|Cout~0_combout\) # (\NotA~input_o\ $ (\A[16]~input_o\)))) # (!\b1[16]~15_combout\ & (\add|rippleAdder:15:RippleAdder|Cout~0_combout\ & 
-- (\NotA~input_o\ $ (\A[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1[16]~15_combout\,
	datab => \add|rippleAdder:15:RippleAdder|Cout~0_combout\,
	datac => \NotA~input_o\,
	datad => \A[16]~input_o\,
	combout => \add|rippleAdder:16:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X1_Y73_N22
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: LCCOMB_X1_Y69_N12
\b1[17]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[17]~16_combout\ = \AddnSub~input_o\ $ (\B[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[17]~input_o\,
	combout => \b1[17]~16_combout\);

-- Location: LCCOMB_X1_Y69_N14
\add|rippleAdder:17:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:17:RippleAdder|S~combout\ = \A[17]~input_o\ $ (\add|rippleAdder:16:RippleAdder|Cout~0_combout\ $ (\NotA~input_o\ $ (\b1[17]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \add|rippleAdder:16:RippleAdder|Cout~0_combout\,
	datac => \NotA~input_o\,
	datad => \b1[17]~16_combout\,
	combout => \add|rippleAdder:17:RippleAdder|S~combout\);

-- Location: IOIBUF_X0_Y68_N15
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: LCCOMB_X1_Y69_N8
\add|rippleAdder:17:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:17:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:16:RippleAdder|Cout~0_combout\ & ((\b1[17]~16_combout\) # (\A[17]~input_o\ $ (\NotA~input_o\)))) # (!\add|rippleAdder:16:RippleAdder|Cout~0_combout\ & (\b1[17]~16_combout\ & 
-- (\A[17]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \add|rippleAdder:16:RippleAdder|Cout~0_combout\,
	datac => \NotA~input_o\,
	datad => \b1[17]~16_combout\,
	combout => \add|rippleAdder:17:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X0_Y67_N22
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: LCCOMB_X1_Y69_N10
\b1[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[18]~17_combout\ = \AddnSub~input_o\ $ (\B[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[18]~input_o\,
	combout => \b1[18]~17_combout\);

-- Location: LCCOMB_X1_Y69_N28
\add|rippleAdder:18:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:18:RippleAdder|S~combout\ = \A[18]~input_o\ $ (\add|rippleAdder:17:RippleAdder|Cout~0_combout\ $ (\NotA~input_o\ $ (\b1[18]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \add|rippleAdder:17:RippleAdder|Cout~0_combout\,
	datac => \NotA~input_o\,
	datad => \b1[18]~17_combout\,
	combout => \add|rippleAdder:18:RippleAdder|S~combout\);

-- Location: LCCOMB_X1_Y69_N30
\add|rippleAdder:18:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:18:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:17:RippleAdder|Cout~0_combout\ & ((\b1[18]~17_combout\) # (\A[18]~input_o\ $ (\NotA~input_o\)))) # (!\add|rippleAdder:17:RippleAdder|Cout~0_combout\ & (\b1[18]~17_combout\ & 
-- (\A[18]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \add|rippleAdder:17:RippleAdder|Cout~0_combout\,
	datac => \NotA~input_o\,
	datad => \b1[18]~17_combout\,
	combout => \add|rippleAdder:18:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X3_Y73_N8
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: LCCOMB_X1_Y69_N0
\b1[19]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[19]~18_combout\ = \AddnSub~input_o\ $ (\B[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[19]~input_o\,
	combout => \b1[19]~18_combout\);

-- Location: IOIBUF_X1_Y73_N8
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LCCOMB_X1_Y69_N26
\add|rippleAdder:19:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:19:RippleAdder|S~combout\ = \add|rippleAdder:18:RippleAdder|Cout~0_combout\ $ (\b1[19]~18_combout\ $ (\NotA~input_o\ $ (\A[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:18:RippleAdder|Cout~0_combout\,
	datab => \b1[19]~18_combout\,
	datac => \NotA~input_o\,
	datad => \A[19]~input_o\,
	combout => \add|rippleAdder:19:RippleAdder|S~combout\);

-- Location: IOIBUF_X13_Y73_N8
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: LCCOMB_X1_Y69_N4
\add|rippleAdder:19:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:19:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:18:RippleAdder|Cout~0_combout\ & ((\b1[19]~18_combout\) # (\NotA~input_o\ $ (\A[19]~input_o\)))) # (!\add|rippleAdder:18:RippleAdder|Cout~0_combout\ & (\b1[19]~18_combout\ & 
-- (\NotA~input_o\ $ (\A[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:18:RippleAdder|Cout~0_combout\,
	datab => \b1[19]~18_combout\,
	datac => \NotA~input_o\,
	datad => \A[19]~input_o\,
	combout => \add|rippleAdder:19:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X11_Y73_N22
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: LCCOMB_X12_Y69_N0
\b1[20]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[20]~19_combout\ = \AddnSub~input_o\ $ (\B[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[20]~input_o\,
	combout => \b1[20]~19_combout\);

-- Location: LCCOMB_X12_Y69_N10
\add|rippleAdder:20:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:20:RippleAdder|S~combout\ = \A[20]~input_o\ $ (\NotA~input_o\ $ (\add|rippleAdder:19:RippleAdder|Cout~0_combout\ $ (\b1[20]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \NotA~input_o\,
	datac => \add|rippleAdder:19:RippleAdder|Cout~0_combout\,
	datad => \b1[20]~19_combout\,
	combout => \add|rippleAdder:20:RippleAdder|S~combout\);

-- Location: IOIBUF_X13_Y73_N1
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: IOIBUF_X16_Y73_N1
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: LCCOMB_X12_Y69_N30
\b1[21]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[21]~20_combout\ = \AddnSub~input_o\ $ (\B[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[21]~input_o\,
	combout => \b1[21]~20_combout\);

-- Location: LCCOMB_X12_Y69_N20
\add|rippleAdder:20:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:20:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:19:RippleAdder|Cout~0_combout\ & ((\b1[20]~19_combout\) # (\A[20]~input_o\ $ (\NotA~input_o\)))) # (!\add|rippleAdder:19:RippleAdder|Cout~0_combout\ & (\b1[20]~19_combout\ & 
-- (\A[20]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \NotA~input_o\,
	datac => \add|rippleAdder:19:RippleAdder|Cout~0_combout\,
	datad => \b1[20]~19_combout\,
	combout => \add|rippleAdder:20:RippleAdder|Cout~0_combout\);

-- Location: LCCOMB_X12_Y69_N24
\add|rippleAdder:21:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:21:RippleAdder|S~combout\ = \A[21]~input_o\ $ (\NotA~input_o\ $ (\b1[21]~20_combout\ $ (\add|rippleAdder:20:RippleAdder|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \NotA~input_o\,
	datac => \b1[21]~20_combout\,
	datad => \add|rippleAdder:20:RippleAdder|Cout~0_combout\,
	combout => \add|rippleAdder:21:RippleAdder|S~combout\);

-- Location: LCCOMB_X12_Y69_N26
\add|rippleAdder:21:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:21:RippleAdder|Cout~0_combout\ = (\b1[21]~20_combout\ & ((\add|rippleAdder:20:RippleAdder|Cout~0_combout\) # (\A[21]~input_o\ $ (\NotA~input_o\)))) # (!\b1[21]~20_combout\ & (\add|rippleAdder:20:RippleAdder|Cout~0_combout\ & 
-- (\A[21]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \NotA~input_o\,
	datac => \b1[21]~20_combout\,
	datad => \add|rippleAdder:20:RippleAdder|Cout~0_combout\,
	combout => \add|rippleAdder:21:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X11_Y73_N15
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: IOIBUF_X11_Y73_N1
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: LCCOMB_X12_Y69_N12
\b1[22]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[22]~21_combout\ = \AddnSub~input_o\ $ (\B[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[22]~input_o\,
	combout => \b1[22]~21_combout\);

-- Location: LCCOMB_X12_Y69_N6
\add|rippleAdder:22:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:22:RippleAdder|S~combout\ = \add|rippleAdder:21:RippleAdder|Cout~0_combout\ $ (\NotA~input_o\ $ (\A[22]~input_o\ $ (\b1[22]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:21:RippleAdder|Cout~0_combout\,
	datab => \NotA~input_o\,
	datac => \A[22]~input_o\,
	datad => \b1[22]~21_combout\,
	combout => \add|rippleAdder:22:RippleAdder|S~combout\);

-- Location: IOIBUF_X13_Y73_N22
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: LCCOMB_X12_Y69_N18
\b1[23]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[23]~22_combout\ = \AddnSub~input_o\ $ (\B[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[23]~input_o\,
	combout => \b1[23]~22_combout\);

-- Location: LCCOMB_X12_Y69_N8
\add|rippleAdder:22:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:22:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:21:RippleAdder|Cout~0_combout\ & ((\b1[22]~21_combout\) # (\NotA~input_o\ $ (\A[22]~input_o\)))) # (!\add|rippleAdder:21:RippleAdder|Cout~0_combout\ & (\b1[22]~21_combout\ & 
-- (\NotA~input_o\ $ (\A[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:21:RippleAdder|Cout~0_combout\,
	datab => \NotA~input_o\,
	datac => \A[22]~input_o\,
	datad => \b1[22]~21_combout\,
	combout => \add|rippleAdder:22:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X13_Y73_N15
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: LCCOMB_X12_Y69_N4
\add|rippleAdder:23:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:23:RippleAdder|S~combout\ = \NotA~input_o\ $ (\b1[23]~22_combout\ $ (\add|rippleAdder:22:RippleAdder|Cout~0_combout\ $ (\A[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \b1[23]~22_combout\,
	datac => \add|rippleAdder:22:RippleAdder|Cout~0_combout\,
	datad => \A[23]~input_o\,
	combout => \add|rippleAdder:23:RippleAdder|S~combout\);

-- Location: IOIBUF_X9_Y73_N8
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LCCOMB_X12_Y69_N22
\add|rippleAdder:23:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:23:RippleAdder|Cout~0_combout\ = (\b1[23]~22_combout\ & ((\add|rippleAdder:22:RippleAdder|Cout~0_combout\) # (\NotA~input_o\ $ (\A[23]~input_o\)))) # (!\b1[23]~22_combout\ & (\add|rippleAdder:22:RippleAdder|Cout~0_combout\ & 
-- (\NotA~input_o\ $ (\A[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \b1[23]~22_combout\,
	datac => \add|rippleAdder:22:RippleAdder|Cout~0_combout\,
	datad => \A[23]~input_o\,
	combout => \add|rippleAdder:23:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X9_Y73_N1
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: LCCOMB_X12_Y69_N16
\b1[24]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[24]~23_combout\ = \B[24]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[24]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \b1[24]~23_combout\);

-- Location: LCCOMB_X12_Y69_N2
\add|rippleAdder:24:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:24:RippleAdder|S~combout\ = \A[24]~input_o\ $ (\NotA~input_o\ $ (\add|rippleAdder:23:RippleAdder|Cout~0_combout\ $ (\b1[24]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \NotA~input_o\,
	datac => \add|rippleAdder:23:RippleAdder|Cout~0_combout\,
	datad => \b1[24]~23_combout\,
	combout => \add|rippleAdder:24:RippleAdder|S~combout\);

-- Location: LCCOMB_X12_Y69_N28
\add|rippleAdder:24:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:24:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:23:RippleAdder|Cout~0_combout\ & ((\b1[24]~23_combout\) # (\A[24]~input_o\ $ (\NotA~input_o\)))) # (!\add|rippleAdder:23:RippleAdder|Cout~0_combout\ & (\b1[24]~23_combout\ & 
-- (\A[24]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \NotA~input_o\,
	datac => \add|rippleAdder:23:RippleAdder|Cout~0_combout\,
	datad => \b1[24]~23_combout\,
	combout => \add|rippleAdder:24:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X72_Y73_N15
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: LCCOMB_X61_Y69_N8
\b1[25]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[25]~24_combout\ = \B[25]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[25]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \b1[25]~24_combout\);

-- Location: IOIBUF_X65_Y73_N15
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LCCOMB_X61_Y69_N10
\add|rippleAdder:25:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:25:RippleAdder|S~combout\ = \add|rippleAdder:24:RippleAdder|Cout~0_combout\ $ (\NotA~input_o\ $ (\b1[25]~24_combout\ $ (\A[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:24:RippleAdder|Cout~0_combout\,
	datab => \NotA~input_o\,
	datac => \b1[25]~24_combout\,
	datad => \A[25]~input_o\,
	combout => \add|rippleAdder:25:RippleAdder|S~combout\);

-- Location: IOIBUF_X65_Y73_N8
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: IOIBUF_X72_Y73_N8
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: LCCOMB_X61_Y69_N30
\b1[26]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[26]~25_combout\ = \AddnSub~input_o\ $ (\B[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datad => \B[26]~input_o\,
	combout => \b1[26]~25_combout\);

-- Location: LCCOMB_X61_Y69_N28
\add|rippleAdder:25:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:25:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:24:RippleAdder|Cout~0_combout\ & ((\b1[25]~24_combout\) # (\NotA~input_o\ $ (\A[25]~input_o\)))) # (!\add|rippleAdder:24:RippleAdder|Cout~0_combout\ & (\b1[25]~24_combout\ & 
-- (\NotA~input_o\ $ (\A[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:24:RippleAdder|Cout~0_combout\,
	datab => \NotA~input_o\,
	datac => \b1[25]~24_combout\,
	datad => \A[25]~input_o\,
	combout => \add|rippleAdder:25:RippleAdder|Cout~0_combout\);

-- Location: LCCOMB_X61_Y69_N0
\add|rippleAdder:26:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:26:RippleAdder|S~combout\ = \A[26]~input_o\ $ (\NotA~input_o\ $ (\b1[26]~25_combout\ $ (\add|rippleAdder:25:RippleAdder|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \NotA~input_o\,
	datac => \b1[26]~25_combout\,
	datad => \add|rippleAdder:25:RippleAdder|Cout~0_combout\,
	combout => \add|rippleAdder:26:RippleAdder|S~combout\);

-- Location: IOIBUF_X69_Y73_N15
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: IOIBUF_X72_Y73_N22
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: LCCOMB_X61_Y69_N20
\b1[27]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[27]~26_combout\ = \AddnSub~input_o\ $ (\B[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datad => \B[27]~input_o\,
	combout => \b1[27]~26_combout\);

-- Location: LCCOMB_X61_Y69_N26
\add|rippleAdder:26:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:26:RippleAdder|Cout~0_combout\ = (\b1[26]~25_combout\ & ((\add|rippleAdder:25:RippleAdder|Cout~0_combout\) # (\A[26]~input_o\ $ (\NotA~input_o\)))) # (!\b1[26]~25_combout\ & (\add|rippleAdder:25:RippleAdder|Cout~0_combout\ & 
-- (\A[26]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \NotA~input_o\,
	datac => \b1[26]~25_combout\,
	datad => \add|rippleAdder:25:RippleAdder|Cout~0_combout\,
	combout => \add|rippleAdder:26:RippleAdder|Cout~0_combout\);

-- Location: LCCOMB_X61_Y69_N6
\add|rippleAdder:27:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:27:RippleAdder|S~combout\ = \A[27]~input_o\ $ (\b1[27]~26_combout\ $ (\add|rippleAdder:26:RippleAdder|Cout~0_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \b1[27]~26_combout\,
	datac => \add|rippleAdder:26:RippleAdder|Cout~0_combout\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:27:RippleAdder|S~combout\);

-- Location: IOIBUF_X69_Y73_N22
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: IOIBUF_X62_Y73_N15
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: LCCOMB_X61_Y69_N18
\b1[28]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[28]~27_combout\ = \AddnSub~input_o\ $ (\B[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datad => \B[28]~input_o\,
	combout => \b1[28]~27_combout\);

-- Location: LCCOMB_X61_Y69_N16
\add|rippleAdder:27:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:27:RippleAdder|Cout~0_combout\ = (\b1[27]~26_combout\ & ((\add|rippleAdder:26:RippleAdder|Cout~0_combout\) # (\A[27]~input_o\ $ (\NotA~input_o\)))) # (!\b1[27]~26_combout\ & (\add|rippleAdder:26:RippleAdder|Cout~0_combout\ & 
-- (\A[27]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \b1[27]~26_combout\,
	datac => \add|rippleAdder:26:RippleAdder|Cout~0_combout\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:27:RippleAdder|Cout~0_combout\);

-- Location: LCCOMB_X61_Y69_N4
\add|rippleAdder:28:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:28:RippleAdder|S~combout\ = \A[28]~input_o\ $ (\b1[28]~27_combout\ $ (\add|rippleAdder:27:RippleAdder|Cout~0_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \b1[28]~27_combout\,
	datac => \add|rippleAdder:27:RippleAdder|Cout~0_combout\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:28:RippleAdder|S~combout\);

-- Location: IOIBUF_X60_Y73_N1
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: IOIBUF_X29_Y73_N1
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: LCCOMB_X28_Y65_N24
\b1[29]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[29]~28_combout\ = \AddnSub~input_o\ $ (\B[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datad => \B[29]~input_o\,
	combout => \b1[29]~28_combout\);

-- Location: LCCOMB_X61_Y69_N22
\add|rippleAdder:28:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:28:RippleAdder|Cout~0_combout\ = (\b1[28]~27_combout\ & ((\add|rippleAdder:27:RippleAdder|Cout~0_combout\) # (\A[28]~input_o\ $ (\NotA~input_o\)))) # (!\b1[28]~27_combout\ & (\add|rippleAdder:27:RippleAdder|Cout~0_combout\ & 
-- (\A[28]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \b1[28]~27_combout\,
	datac => \add|rippleAdder:27:RippleAdder|Cout~0_combout\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:28:RippleAdder|Cout~0_combout\);

-- Location: LCCOMB_X60_Y69_N0
\add|rippleAdder:29:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:29:RippleAdder|S~combout\ = \NotA~input_o\ $ (\A[29]~input_o\ $ (\b1[29]~28_combout\ $ (\add|rippleAdder:28:RippleAdder|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \A[29]~input_o\,
	datac => \b1[29]~28_combout\,
	datad => \add|rippleAdder:28:RippleAdder|Cout~0_combout\,
	combout => \add|rippleAdder:29:RippleAdder|S~combout\);

-- Location: IOIBUF_X87_Y73_N15
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: LCCOMB_X60_Y69_N10
\b1[30]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[30]~29_combout\ = \AddnSub~input_o\ $ (\B[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datad => \B[30]~input_o\,
	combout => \b1[30]~29_combout\);

-- Location: LCCOMB_X61_Y69_N24
\add|rippleAdder:29:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:29:RippleAdder|Cout~0_combout\ = (\b1[29]~28_combout\ & ((\add|rippleAdder:28:RippleAdder|Cout~0_combout\) # (\A[29]~input_o\ $ (\NotA~input_o\)))) # (!\b1[29]~28_combout\ & (\add|rippleAdder:28:RippleAdder|Cout~0_combout\ & 
-- (\A[29]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \NotA~input_o\,
	datac => \b1[29]~28_combout\,
	datad => \add|rippleAdder:28:RippleAdder|Cout~0_combout\,
	combout => \add|rippleAdder:29:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X83_Y73_N15
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: LCCOMB_X60_Y69_N28
\add|rippleAdder:30:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:30:RippleAdder|S~combout\ = \b1[30]~29_combout\ $ (\add|rippleAdder:29:RippleAdder|Cout~0_combout\ $ (\NotA~input_o\ $ (\A[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1[30]~29_combout\,
	datab => \add|rippleAdder:29:RippleAdder|Cout~0_combout\,
	datac => \NotA~input_o\,
	datad => \A[30]~input_o\,
	combout => \add|rippleAdder:30:RippleAdder|S~combout\);

-- Location: IOIBUF_X72_Y73_N1
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: LCCOMB_X60_Y69_N8
\b1[31]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[31]~30_combout\ = \B[31]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[31]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \b1[31]~30_combout\);

-- Location: LCCOMB_X60_Y69_N14
\add|rippleAdder:30:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:30:RippleAdder|Cout~0_combout\ = (\b1[30]~29_combout\ & ((\add|rippleAdder:29:RippleAdder|Cout~0_combout\) # (\NotA~input_o\ $ (\A[30]~input_o\)))) # (!\b1[30]~29_combout\ & (\add|rippleAdder:29:RippleAdder|Cout~0_combout\ & 
-- (\NotA~input_o\ $ (\A[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1[30]~29_combout\,
	datab => \add|rippleAdder:29:RippleAdder|Cout~0_combout\,
	datac => \NotA~input_o\,
	datad => \A[30]~input_o\,
	combout => \add|rippleAdder:30:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X81_Y73_N1
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: LCCOMB_X60_Y69_N18
\add|rippleAdder:31:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:31:RippleAdder|S~combout\ = \NotA~input_o\ $ (\b1[31]~30_combout\ $ (\add|rippleAdder:30:RippleAdder|Cout~0_combout\ $ (\A[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \b1[31]~30_combout\,
	datac => \add|rippleAdder:30:RippleAdder|Cout~0_combout\,
	datad => \A[31]~input_o\,
	combout => \add|rippleAdder:31:RippleAdder|S~combout\);

-- Location: IOIBUF_X85_Y73_N22
\B[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(32),
	o => \B[32]~input_o\);

-- Location: LCCOMB_X60_Y69_N22
\b1[32]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[32]~31_combout\ = \B[32]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[32]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \b1[32]~31_combout\);

-- Location: IOIBUF_X56_Y73_N1
\A[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(32),
	o => \A[32]~input_o\);

-- Location: LCCOMB_X60_Y69_N12
\add|rippleAdder:31:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:31:RippleAdder|Cout~0_combout\ = (\b1[31]~30_combout\ & ((\add|rippleAdder:30:RippleAdder|Cout~0_combout\) # (\NotA~input_o\ $ (\A[31]~input_o\)))) # (!\b1[31]~30_combout\ & (\add|rippleAdder:30:RippleAdder|Cout~0_combout\ & 
-- (\NotA~input_o\ $ (\A[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \b1[31]~30_combout\,
	datac => \add|rippleAdder:30:RippleAdder|Cout~0_combout\,
	datad => \A[31]~input_o\,
	combout => \add|rippleAdder:31:RippleAdder|Cout~0_combout\);

-- Location: LCCOMB_X60_Y69_N24
\add|rippleAdder:32:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:32:RippleAdder|S~combout\ = \b1[32]~31_combout\ $ (\A[32]~input_o\ $ (\NotA~input_o\ $ (\add|rippleAdder:31:RippleAdder|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1[32]~31_combout\,
	datab => \A[32]~input_o\,
	datac => \NotA~input_o\,
	datad => \add|rippleAdder:31:RippleAdder|Cout~0_combout\,
	combout => \add|rippleAdder:32:RippleAdder|S~combout\);

-- Location: IOIBUF_X56_Y73_N8
\ExtWord~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExtWord,
	o => \ExtWord~input_o\);

-- Location: LCCOMB_X60_Y69_N2
\output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~0_combout\ = (\ExtWord~input_o\ & (\add|rippleAdder:31:RippleAdder|S~combout\)) # (!\ExtWord~input_o\ & ((\add|rippleAdder:32:RippleAdder|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:31:RippleAdder|S~combout\,
	datab => \add|rippleAdder:32:RippleAdder|S~combout\,
	datac => \ExtWord~input_o\,
	combout => \output~0_combout\);

-- Location: IOIBUF_X60_Y73_N8
\B[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(33),
	o => \B[33]~input_o\);

-- Location: LCCOMB_X60_Y69_N30
\b1[33]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[33]~32_combout\ = \AddnSub~input_o\ $ (\B[33]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[33]~input_o\,
	combout => \b1[33]~32_combout\);

-- Location: LCCOMB_X60_Y69_N20
\add|rippleAdder:32:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:32:RippleAdder|Cout~0_combout\ = (\b1[32]~31_combout\ & ((\add|rippleAdder:31:RippleAdder|Cout~0_combout\) # (\A[32]~input_o\ $ (\NotA~input_o\)))) # (!\b1[32]~31_combout\ & (\add|rippleAdder:31:RippleAdder|Cout~0_combout\ & 
-- (\A[32]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1[32]~31_combout\,
	datab => \A[32]~input_o\,
	datac => \NotA~input_o\,
	datad => \add|rippleAdder:31:RippleAdder|Cout~0_combout\,
	combout => \add|rippleAdder:32:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X67_Y73_N1
\A[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(33),
	o => \A[33]~input_o\);

-- Location: LCCOMB_X60_Y69_N16
\add|rippleAdder:33:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:33:RippleAdder|S~combout\ = \b1[33]~32_combout\ $ (\add|rippleAdder:32:RippleAdder|Cout~0_combout\ $ (\NotA~input_o\ $ (\A[33]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1[33]~32_combout\,
	datab => \add|rippleAdder:32:RippleAdder|Cout~0_combout\,
	datac => \NotA~input_o\,
	datad => \A[33]~input_o\,
	combout => \add|rippleAdder:33:RippleAdder|S~combout\);

-- Location: LCCOMB_X60_Y69_N26
\output~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~1_combout\ = (\ExtWord~input_o\ & (\add|rippleAdder:31:RippleAdder|S~combout\)) # (!\ExtWord~input_o\ & ((\add|rippleAdder:33:RippleAdder|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:31:RippleAdder|S~combout\,
	datab => \add|rippleAdder:33:RippleAdder|S~combout\,
	datac => \ExtWord~input_o\,
	combout => \output~1_combout\);

-- Location: LCCOMB_X60_Y69_N4
\add|rippleAdder:33:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:33:RippleAdder|Cout~0_combout\ = (\b1[33]~32_combout\ & ((\add|rippleAdder:32:RippleAdder|Cout~0_combout\) # (\NotA~input_o\ $ (\A[33]~input_o\)))) # (!\b1[33]~32_combout\ & (\add|rippleAdder:32:RippleAdder|Cout~0_combout\ & 
-- (\NotA~input_o\ $ (\A[33]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1[33]~32_combout\,
	datab => \add|rippleAdder:32:RippleAdder|Cout~0_combout\,
	datac => \NotA~input_o\,
	datad => \A[33]~input_o\,
	combout => \add|rippleAdder:33:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X58_Y73_N15
\B[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(34),
	o => \B[34]~input_o\);

-- Location: LCCOMB_X55_Y69_N16
\b1[34]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[34]~33_combout\ = \AddnSub~input_o\ $ (\B[34]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datad => \B[34]~input_o\,
	combout => \b1[34]~33_combout\);

-- Location: IOIBUF_X56_Y73_N15
\A[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(34),
	o => \A[34]~input_o\);

-- Location: LCCOMB_X55_Y69_N10
\add|rippleAdder:34:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:34:RippleAdder|S~combout\ = \add|rippleAdder:33:RippleAdder|Cout~0_combout\ $ (\b1[34]~33_combout\ $ (\A[34]~input_o\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:33:RippleAdder|Cout~0_combout\,
	datab => \b1[34]~33_combout\,
	datac => \A[34]~input_o\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:34:RippleAdder|S~combout\);

-- Location: LCCOMB_X55_Y69_N12
\output~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~2_combout\ = (\ExtWord~input_o\ & ((\add|rippleAdder:31:RippleAdder|S~combout\))) # (!\ExtWord~input_o\ & (\add|rippleAdder:34:RippleAdder|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:34:RippleAdder|S~combout\,
	datab => \ExtWord~input_o\,
	datac => \add|rippleAdder:31:RippleAdder|S~combout\,
	combout => \output~2_combout\);

-- Location: LCCOMB_X55_Y69_N6
\add|rippleAdder:34:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:34:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:33:RippleAdder|Cout~0_combout\ & ((\b1[34]~33_combout\) # (\A[34]~input_o\ $ (\NotA~input_o\)))) # (!\add|rippleAdder:33:RippleAdder|Cout~0_combout\ & (\b1[34]~33_combout\ & 
-- (\A[34]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:33:RippleAdder|Cout~0_combout\,
	datab => \b1[34]~33_combout\,
	datac => \A[34]~input_o\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:34:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X56_Y73_N22
\B[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(35),
	o => \B[35]~input_o\);

-- Location: LCCOMB_X55_Y69_N0
\b1[35]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[35]~34_combout\ = \AddnSub~input_o\ $ (\B[35]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datad => \B[35]~input_o\,
	combout => \b1[35]~34_combout\);

-- Location: IOIBUF_X58_Y73_N1
\A[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(35),
	o => \A[35]~input_o\);

-- Location: LCCOMB_X55_Y69_N2
\add|rippleAdder:35:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:35:RippleAdder|S~combout\ = \add|rippleAdder:34:RippleAdder|Cout~0_combout\ $ (\b1[35]~34_combout\ $ (\A[35]~input_o\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:34:RippleAdder|Cout~0_combout\,
	datab => \b1[35]~34_combout\,
	datac => \A[35]~input_o\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:35:RippleAdder|S~combout\);

-- Location: LCCOMB_X55_Y69_N4
\output~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~3_combout\ = (\ExtWord~input_o\ & (\add|rippleAdder:31:RippleAdder|S~combout\)) # (!\ExtWord~input_o\ & ((\add|rippleAdder:35:RippleAdder|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:31:RippleAdder|S~combout\,
	datab => \add|rippleAdder:35:RippleAdder|S~combout\,
	datac => \ExtWord~input_o\,
	combout => \output~3_combout\);

-- Location: LCCOMB_X55_Y69_N30
\add|rippleAdder:35:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:35:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:34:RippleAdder|Cout~0_combout\ & ((\b1[35]~34_combout\) # (\A[35]~input_o\ $ (\NotA~input_o\)))) # (!\add|rippleAdder:34:RippleAdder|Cout~0_combout\ & (\b1[35]~34_combout\ & 
-- (\A[35]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:34:RippleAdder|Cout~0_combout\,
	datab => \b1[35]~34_combout\,
	datac => \A[35]~input_o\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:35:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X83_Y73_N22
\B[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(36),
	o => \B[36]~input_o\);

-- Location: LCCOMB_X55_Y69_N8
\b1[36]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[36]~35_combout\ = \AddnSub~input_o\ $ (\B[36]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \B[36]~input_o\,
	combout => \b1[36]~35_combout\);

-- Location: IOIBUF_X85_Y73_N1
\A[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(36),
	o => \A[36]~input_o\);

-- Location: LCCOMB_X55_Y69_N18
\add|rippleAdder:36:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:36:RippleAdder|S~combout\ = \add|rippleAdder:35:RippleAdder|Cout~0_combout\ $ (\NotA~input_o\ $ (\b1[36]~35_combout\ $ (\A[36]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:35:RippleAdder|Cout~0_combout\,
	datab => \NotA~input_o\,
	datac => \b1[36]~35_combout\,
	datad => \A[36]~input_o\,
	combout => \add|rippleAdder:36:RippleAdder|S~combout\);

-- Location: LCCOMB_X55_Y69_N20
\output~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~4_combout\ = (\ExtWord~input_o\ & (\add|rippleAdder:31:RippleAdder|S~combout\)) # (!\ExtWord~input_o\ & ((\add|rippleAdder:36:RippleAdder|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:31:RippleAdder|S~combout\,
	datab => \add|rippleAdder:36:RippleAdder|S~combout\,
	datac => \ExtWord~input_o\,
	combout => \output~4_combout\);

-- Location: IOIBUF_X25_Y73_N22
\A[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(37),
	o => \A[37]~input_o\);

-- Location: IOIBUF_X20_Y73_N1
\B[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(37),
	o => \B[37]~input_o\);

-- Location: LCCOMB_X26_Y69_N24
\b1[37]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[37]~36_combout\ = \AddnSub~input_o\ $ (\B[37]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[37]~input_o\,
	combout => \b1[37]~36_combout\);

-- Location: LCCOMB_X55_Y69_N22
\add|rippleAdder:36:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:36:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:35:RippleAdder|Cout~0_combout\ & ((\b1[36]~35_combout\) # (\NotA~input_o\ $ (\A[36]~input_o\)))) # (!\add|rippleAdder:35:RippleAdder|Cout~0_combout\ & (\b1[36]~35_combout\ & 
-- (\NotA~input_o\ $ (\A[36]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:35:RippleAdder|Cout~0_combout\,
	datab => \NotA~input_o\,
	datac => \b1[36]~35_combout\,
	datad => \A[36]~input_o\,
	combout => \add|rippleAdder:36:RippleAdder|Cout~0_combout\);

-- Location: LCCOMB_X25_Y69_N0
\add|rippleAdder:37:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:37:RippleAdder|S~combout\ = \A[37]~input_o\ $ (\b1[37]~36_combout\ $ (\NotA~input_o\ $ (\add|rippleAdder:36:RippleAdder|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[37]~input_o\,
	datab => \b1[37]~36_combout\,
	datac => \NotA~input_o\,
	datad => \add|rippleAdder:36:RippleAdder|Cout~0_combout\,
	combout => \add|rippleAdder:37:RippleAdder|S~combout\);

-- Location: LCCOMB_X25_Y69_N2
\output~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~5_combout\ = (\ExtWord~input_o\ & ((\add|rippleAdder:31:RippleAdder|S~combout\))) # (!\ExtWord~input_o\ & (\add|rippleAdder:37:RippleAdder|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add|rippleAdder:37:RippleAdder|S~combout\,
	datac => \add|rippleAdder:31:RippleAdder|S~combout\,
	datad => \ExtWord~input_o\,
	combout => \output~5_combout\);

-- Location: LCCOMB_X25_Y69_N4
\add|rippleAdder:37:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:37:RippleAdder|Cout~0_combout\ = (\b1[37]~36_combout\ & ((\add|rippleAdder:36:RippleAdder|Cout~0_combout\) # (\A[37]~input_o\ $ (\NotA~input_o\)))) # (!\b1[37]~36_combout\ & (\add|rippleAdder:36:RippleAdder|Cout~0_combout\ & 
-- (\A[37]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[37]~input_o\,
	datab => \b1[37]~36_combout\,
	datac => \NotA~input_o\,
	datad => \add|rippleAdder:36:RippleAdder|Cout~0_combout\,
	combout => \add|rippleAdder:37:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X20_Y73_N22
\B[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(38),
	o => \B[38]~input_o\);

-- Location: LCCOMB_X25_Y69_N14
\b1[38]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[38]~37_combout\ = \AddnSub~input_o\ $ (\B[38]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[38]~input_o\,
	combout => \b1[38]~37_combout\);

-- Location: IOIBUF_X23_Y73_N15
\A[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(38),
	o => \A[38]~input_o\);

-- Location: LCCOMB_X25_Y69_N24
\add|rippleAdder:38:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:38:RippleAdder|S~combout\ = \NotA~input_o\ $ (\add|rippleAdder:37:RippleAdder|Cout~0_combout\ $ (\b1[38]~37_combout\ $ (\A[38]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \add|rippleAdder:37:RippleAdder|Cout~0_combout\,
	datac => \b1[38]~37_combout\,
	datad => \A[38]~input_o\,
	combout => \add|rippleAdder:38:RippleAdder|S~combout\);

-- Location: LCCOMB_X25_Y69_N26
\output~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~6_combout\ = (\ExtWord~input_o\ & ((\add|rippleAdder:31:RippleAdder|S~combout\))) # (!\ExtWord~input_o\ & (\add|rippleAdder:38:RippleAdder|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add|rippleAdder:38:RippleAdder|S~combout\,
	datac => \add|rippleAdder:31:RippleAdder|S~combout\,
	datad => \ExtWord~input_o\,
	combout => \output~6_combout\);

-- Location: IOIBUF_X25_Y73_N15
\B[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(39),
	o => \B[39]~input_o\);

-- Location: LCCOMB_X25_Y69_N30
\b1[39]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[39]~38_combout\ = \B[39]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[39]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \b1[39]~38_combout\);

-- Location: IOIBUF_X20_Y73_N15
\A[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(39),
	o => \A[39]~input_o\);

-- Location: LCCOMB_X25_Y69_N20
\add|rippleAdder:38:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:38:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:37:RippleAdder|Cout~0_combout\ & ((\b1[38]~37_combout\) # (\NotA~input_o\ $ (\A[38]~input_o\)))) # (!\add|rippleAdder:37:RippleAdder|Cout~0_combout\ & (\b1[38]~37_combout\ & 
-- (\NotA~input_o\ $ (\A[38]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \add|rippleAdder:37:RippleAdder|Cout~0_combout\,
	datac => \b1[38]~37_combout\,
	datad => \A[38]~input_o\,
	combout => \add|rippleAdder:38:RippleAdder|Cout~0_combout\);

-- Location: LCCOMB_X25_Y69_N8
\add|rippleAdder:39:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:39:RippleAdder|S~combout\ = \b1[39]~38_combout\ $ (\A[39]~input_o\ $ (\NotA~input_o\ $ (\add|rippleAdder:38:RippleAdder|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1[39]~38_combout\,
	datab => \A[39]~input_o\,
	datac => \NotA~input_o\,
	datad => \add|rippleAdder:38:RippleAdder|Cout~0_combout\,
	combout => \add|rippleAdder:39:RippleAdder|S~combout\);

-- Location: LCCOMB_X25_Y69_N10
\output~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~7_combout\ = (\ExtWord~input_o\ & ((\add|rippleAdder:31:RippleAdder|S~combout\))) # (!\ExtWord~input_o\ & (\add|rippleAdder:39:RippleAdder|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add|rippleAdder:39:RippleAdder|S~combout\,
	datac => \add|rippleAdder:31:RippleAdder|S~combout\,
	datad => \ExtWord~input_o\,
	combout => \output~7_combout\);

-- Location: IOIBUF_X23_Y73_N22
\B[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(40),
	o => \B[40]~input_o\);

-- Location: LCCOMB_X25_Y69_N22
\b1[40]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[40]~39_combout\ = \AddnSub~input_o\ $ (\B[40]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[40]~input_o\,
	combout => \b1[40]~39_combout\);

-- Location: LCCOMB_X25_Y69_N28
\add|rippleAdder:39:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:39:RippleAdder|Cout~0_combout\ = (\b1[39]~38_combout\ & ((\add|rippleAdder:38:RippleAdder|Cout~0_combout\) # (\A[39]~input_o\ $ (\NotA~input_o\)))) # (!\b1[39]~38_combout\ & (\add|rippleAdder:38:RippleAdder|Cout~0_combout\ & 
-- (\A[39]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1[39]~38_combout\,
	datab => \A[39]~input_o\,
	datac => \NotA~input_o\,
	datad => \add|rippleAdder:38:RippleAdder|Cout~0_combout\,
	combout => \add|rippleAdder:39:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X27_Y73_N22
\A[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(40),
	o => \A[40]~input_o\);

-- Location: LCCOMB_X25_Y69_N16
\add|rippleAdder:40:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:40:RippleAdder|S~combout\ = \b1[40]~39_combout\ $ (\add|rippleAdder:39:RippleAdder|Cout~0_combout\ $ (\NotA~input_o\ $ (\A[40]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1[40]~39_combout\,
	datab => \add|rippleAdder:39:RippleAdder|Cout~0_combout\,
	datac => \NotA~input_o\,
	datad => \A[40]~input_o\,
	combout => \add|rippleAdder:40:RippleAdder|S~combout\);

-- Location: LCCOMB_X25_Y69_N18
\output~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~8_combout\ = (\ExtWord~input_o\ & ((\add|rippleAdder:31:RippleAdder|S~combout\))) # (!\ExtWord~input_o\ & (\add|rippleAdder:40:RippleAdder|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add|rippleAdder:40:RippleAdder|S~combout\,
	datac => \add|rippleAdder:31:RippleAdder|S~combout\,
	datad => \ExtWord~input_o\,
	combout => \output~8_combout\);

-- Location: IOIBUF_X52_Y0_N15
\A[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(41),
	o => \A[41]~input_o\);

-- Location: IOIBUF_X52_Y73_N8
\B[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(41),
	o => \B[41]~input_o\);

-- Location: LCCOMB_X52_Y69_N8
\b1[41]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[41]~40_combout\ = \AddnSub~input_o\ $ (\B[41]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \B[41]~input_o\,
	combout => \b1[41]~40_combout\);

-- Location: LCCOMB_X25_Y69_N12
\add|rippleAdder:40:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:40:RippleAdder|Cout~0_combout\ = (\b1[40]~39_combout\ & ((\add|rippleAdder:39:RippleAdder|Cout~0_combout\) # (\NotA~input_o\ $ (\A[40]~input_o\)))) # (!\b1[40]~39_combout\ & (\add|rippleAdder:39:RippleAdder|Cout~0_combout\ & 
-- (\NotA~input_o\ $ (\A[40]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1[40]~39_combout\,
	datab => \add|rippleAdder:39:RippleAdder|Cout~0_combout\,
	datac => \NotA~input_o\,
	datad => \A[40]~input_o\,
	combout => \add|rippleAdder:40:RippleAdder|Cout~0_combout\);

-- Location: LCCOMB_X52_Y69_N10
\add|rippleAdder:41:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:41:RippleAdder|S~combout\ = \NotA~input_o\ $ (\A[41]~input_o\ $ (\b1[41]~40_combout\ $ (\add|rippleAdder:40:RippleAdder|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \A[41]~input_o\,
	datac => \b1[41]~40_combout\,
	datad => \add|rippleAdder:40:RippleAdder|Cout~0_combout\,
	combout => \add|rippleAdder:41:RippleAdder|S~combout\);

-- Location: LCCOMB_X52_Y69_N4
\output~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~9_combout\ = (\ExtWord~input_o\ & ((\add|rippleAdder:31:RippleAdder|S~combout\))) # (!\ExtWord~input_o\ & (\add|rippleAdder:41:RippleAdder|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:41:RippleAdder|S~combout\,
	datab => \add|rippleAdder:31:RippleAdder|S~combout\,
	datad => \ExtWord~input_o\,
	combout => \output~9_combout\);

-- Location: IOIBUF_X52_Y73_N22
\B[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(42),
	o => \B[42]~input_o\);

-- Location: LCCOMB_X52_Y69_N0
\b1[42]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[42]~41_combout\ = \AddnSub~input_o\ $ (\B[42]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datad => \B[42]~input_o\,
	combout => \b1[42]~41_combout\);

-- Location: LCCOMB_X52_Y69_N14
\add|rippleAdder:41:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:41:RippleAdder|Cout~0_combout\ = (\b1[41]~40_combout\ & ((\add|rippleAdder:40:RippleAdder|Cout~0_combout\) # (\NotA~input_o\ $ (\A[41]~input_o\)))) # (!\b1[41]~40_combout\ & (\add|rippleAdder:40:RippleAdder|Cout~0_combout\ & 
-- (\NotA~input_o\ $ (\A[41]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \A[41]~input_o\,
	datac => \b1[41]~40_combout\,
	datad => \add|rippleAdder:40:RippleAdder|Cout~0_combout\,
	combout => \add|rippleAdder:41:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X52_Y73_N15
\A[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(42),
	o => \A[42]~input_o\);

-- Location: LCCOMB_X52_Y69_N2
\add|rippleAdder:42:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:42:RippleAdder|S~combout\ = \NotA~input_o\ $ (\b1[42]~41_combout\ $ (\add|rippleAdder:41:RippleAdder|Cout~0_combout\ $ (\A[42]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \b1[42]~41_combout\,
	datac => \add|rippleAdder:41:RippleAdder|Cout~0_combout\,
	datad => \A[42]~input_o\,
	combout => \add|rippleAdder:42:RippleAdder|S~combout\);

-- Location: LCCOMB_X52_Y69_N20
\output~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~10_combout\ = (\ExtWord~input_o\ & ((\add|rippleAdder:31:RippleAdder|S~combout\))) # (!\ExtWord~input_o\ & (\add|rippleAdder:42:RippleAdder|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \add|rippleAdder:42:RippleAdder|S~combout\,
	datad => \add|rippleAdder:31:RippleAdder|S~combout\,
	combout => \output~10_combout\);

-- Location: LCCOMB_X52_Y69_N22
\add|rippleAdder:42:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:42:RippleAdder|Cout~0_combout\ = (\b1[42]~41_combout\ & ((\add|rippleAdder:41:RippleAdder|Cout~0_combout\) # (\NotA~input_o\ $ (\A[42]~input_o\)))) # (!\b1[42]~41_combout\ & (\add|rippleAdder:41:RippleAdder|Cout~0_combout\ & 
-- (\NotA~input_o\ $ (\A[42]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \b1[42]~41_combout\,
	datac => \add|rippleAdder:41:RippleAdder|Cout~0_combout\,
	datad => \A[42]~input_o\,
	combout => \add|rippleAdder:42:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X58_Y73_N8
\B[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(43),
	o => \B[43]~input_o\);

-- Location: LCCOMB_X52_Y69_N16
\b1[43]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[43]~42_combout\ = \AddnSub~input_o\ $ (\B[43]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datad => \B[43]~input_o\,
	combout => \b1[43]~42_combout\);

-- Location: IOIBUF_X52_Y73_N1
\A[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(43),
	o => \A[43]~input_o\);

-- Location: LCCOMB_X52_Y69_N18
\add|rippleAdder:43:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:43:RippleAdder|S~combout\ = \add|rippleAdder:42:RippleAdder|Cout~0_combout\ $ (\b1[43]~42_combout\ $ (\NotA~input_o\ $ (\A[43]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:42:RippleAdder|Cout~0_combout\,
	datab => \b1[43]~42_combout\,
	datac => \NotA~input_o\,
	datad => \A[43]~input_o\,
	combout => \add|rippleAdder:43:RippleAdder|S~combout\);

-- Location: LCCOMB_X32_Y4_N24
\output~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~11_combout\ = (\ExtWord~input_o\ & ((\add|rippleAdder:31:RippleAdder|S~combout\))) # (!\ExtWord~input_o\ & (\add|rippleAdder:43:RippleAdder|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add|rippleAdder:43:RippleAdder|S~combout\,
	datac => \add|rippleAdder:31:RippleAdder|S~combout\,
	datad => \ExtWord~input_o\,
	combout => \output~11_combout\);

-- Location: IOIBUF_X81_Y73_N22
\B[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(44),
	o => \B[44]~input_o\);

-- Location: LCCOMB_X52_Y69_N30
\b1[44]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[44]~43_combout\ = \B[44]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[44]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \b1[44]~43_combout\);

-- Location: LCCOMB_X52_Y69_N28
\add|rippleAdder:43:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:43:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:42:RippleAdder|Cout~0_combout\ & ((\b1[43]~42_combout\) # (\NotA~input_o\ $ (\A[43]~input_o\)))) # (!\add|rippleAdder:42:RippleAdder|Cout~0_combout\ & (\b1[43]~42_combout\ & 
-- (\NotA~input_o\ $ (\A[43]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:42:RippleAdder|Cout~0_combout\,
	datab => \b1[43]~42_combout\,
	datac => \NotA~input_o\,
	datad => \A[43]~input_o\,
	combout => \add|rippleAdder:43:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X79_Y73_N1
\A[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(44),
	o => \A[44]~input_o\);

-- Location: LCCOMB_X52_Y69_N24
\add|rippleAdder:44:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:44:RippleAdder|S~combout\ = \b1[44]~43_combout\ $ (\add|rippleAdder:43:RippleAdder|Cout~0_combout\ $ (\NotA~input_o\ $ (\A[44]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1[44]~43_combout\,
	datab => \add|rippleAdder:43:RippleAdder|Cout~0_combout\,
	datac => \NotA~input_o\,
	datad => \A[44]~input_o\,
	combout => \add|rippleAdder:44:RippleAdder|S~combout\);

-- Location: LCCOMB_X52_Y69_N26
\output~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~12_combout\ = (\ExtWord~input_o\ & ((\add|rippleAdder:31:RippleAdder|S~combout\))) # (!\ExtWord~input_o\ & (\add|rippleAdder:44:RippleAdder|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \add|rippleAdder:44:RippleAdder|S~combout\,
	datad => \add|rippleAdder:31:RippleAdder|S~combout\,
	combout => \output~12_combout\);

-- Location: IOIBUF_X47_Y0_N1
\A[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(45),
	o => \A[45]~input_o\);

-- Location: IOIBUF_X52_Y0_N8
\B[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(45),
	o => \B[45]~input_o\);

-- Location: LCCOMB_X46_Y4_N24
\b1[45]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[45]~44_combout\ = \AddnSub~input_o\ $ (\B[45]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datad => \B[45]~input_o\,
	combout => \b1[45]~44_combout\);

-- Location: LCCOMB_X52_Y69_N12
\add|rippleAdder:44:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:44:RippleAdder|Cout~0_combout\ = (\b1[44]~43_combout\ & ((\add|rippleAdder:43:RippleAdder|Cout~0_combout\) # (\NotA~input_o\ $ (\A[44]~input_o\)))) # (!\b1[44]~43_combout\ & (\add|rippleAdder:43:RippleAdder|Cout~0_combout\ & 
-- (\NotA~input_o\ $ (\A[44]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1[44]~43_combout\,
	datab => \add|rippleAdder:43:RippleAdder|Cout~0_combout\,
	datac => \NotA~input_o\,
	datad => \A[44]~input_o\,
	combout => \add|rippleAdder:44:RippleAdder|Cout~0_combout\);

-- Location: LCCOMB_X46_Y4_N10
\add|rippleAdder:45:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:45:RippleAdder|S~combout\ = \A[45]~input_o\ $ (\b1[45]~44_combout\ $ (\NotA~input_o\ $ (\add|rippleAdder:44:RippleAdder|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[45]~input_o\,
	datab => \b1[45]~44_combout\,
	datac => \NotA~input_o\,
	datad => \add|rippleAdder:44:RippleAdder|Cout~0_combout\,
	combout => \add|rippleAdder:45:RippleAdder|S~combout\);

-- Location: LCCOMB_X46_Y4_N28
\output~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~13_combout\ = (\ExtWord~input_o\ & ((\add|rippleAdder:31:RippleAdder|S~combout\))) # (!\ExtWord~input_o\ & (\add|rippleAdder:45:RippleAdder|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datac => \add|rippleAdder:45:RippleAdder|S~combout\,
	datad => \add|rippleAdder:31:RippleAdder|S~combout\,
	combout => \output~13_combout\);

-- Location: IOIBUF_X49_Y0_N15
\B[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(46),
	o => \B[46]~input_o\);

-- Location: LCCOMB_X46_Y4_N8
\b1[46]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[46]~45_combout\ = \AddnSub~input_o\ $ (\B[46]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datad => \B[46]~input_o\,
	combout => \b1[46]~45_combout\);

-- Location: LCCOMB_X46_Y4_N14
\add|rippleAdder:45:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:45:RippleAdder|Cout~0_combout\ = (\b1[45]~44_combout\ & ((\add|rippleAdder:44:RippleAdder|Cout~0_combout\) # (\A[45]~input_o\ $ (\NotA~input_o\)))) # (!\b1[45]~44_combout\ & (\add|rippleAdder:44:RippleAdder|Cout~0_combout\ & 
-- (\A[45]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[45]~input_o\,
	datab => \b1[45]~44_combout\,
	datac => \NotA~input_o\,
	datad => \add|rippleAdder:44:RippleAdder|Cout~0_combout\,
	combout => \add|rippleAdder:45:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X49_Y0_N1
\A[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(46),
	o => \A[46]~input_o\);

-- Location: LCCOMB_X46_Y4_N26
\add|rippleAdder:46:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:46:RippleAdder|S~combout\ = \NotA~input_o\ $ (\b1[46]~45_combout\ $ (\add|rippleAdder:45:RippleAdder|Cout~0_combout\ $ (\A[46]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \b1[46]~45_combout\,
	datac => \add|rippleAdder:45:RippleAdder|Cout~0_combout\,
	datad => \A[46]~input_o\,
	combout => \add|rippleAdder:46:RippleAdder|S~combout\);

-- Location: LCCOMB_X46_Y4_N20
\output~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~14_combout\ = (\ExtWord~input_o\ & ((\add|rippleAdder:31:RippleAdder|S~combout\))) # (!\ExtWord~input_o\ & (\add|rippleAdder:46:RippleAdder|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datac => \add|rippleAdder:46:RippleAdder|S~combout\,
	datad => \add|rippleAdder:31:RippleAdder|S~combout\,
	combout => \output~14_combout\);

-- Location: LCCOMB_X46_Y4_N22
\add|rippleAdder:46:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:46:RippleAdder|Cout~0_combout\ = (\b1[46]~45_combout\ & ((\add|rippleAdder:45:RippleAdder|Cout~0_combout\) # (\NotA~input_o\ $ (\A[46]~input_o\)))) # (!\b1[46]~45_combout\ & (\add|rippleAdder:45:RippleAdder|Cout~0_combout\ & 
-- (\NotA~input_o\ $ (\A[46]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \b1[46]~45_combout\,
	datac => \add|rippleAdder:45:RippleAdder|Cout~0_combout\,
	datad => \A[46]~input_o\,
	combout => \add|rippleAdder:46:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X42_Y0_N15
\B[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(47),
	o => \B[47]~input_o\);

-- Location: LCCOMB_X46_Y4_N0
\b1[47]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[47]~46_combout\ = \AddnSub~input_o\ $ (\B[47]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \B[47]~input_o\,
	combout => \b1[47]~46_combout\);

-- Location: IOIBUF_X47_Y0_N8
\A[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(47),
	o => \A[47]~input_o\);

-- Location: LCCOMB_X46_Y4_N18
\add|rippleAdder:47:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:47:RippleAdder|S~combout\ = \add|rippleAdder:46:RippleAdder|Cout~0_combout\ $ (\b1[47]~46_combout\ $ (\NotA~input_o\ $ (\A[47]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:46:RippleAdder|Cout~0_combout\,
	datab => \b1[47]~46_combout\,
	datac => \NotA~input_o\,
	datad => \A[47]~input_o\,
	combout => \add|rippleAdder:47:RippleAdder|S~combout\);

-- Location: LCCOMB_X46_Y4_N4
\output~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~15_combout\ = (\ExtWord~input_o\ & (\add|rippleAdder:31:RippleAdder|S~combout\)) # (!\ExtWord~input_o\ & ((\add|rippleAdder:47:RippleAdder|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:31:RippleAdder|S~combout\,
	datab => \add|rippleAdder:47:RippleAdder|S~combout\,
	datad => \ExtWord~input_o\,
	combout => \output~15_combout\);

-- Location: LCCOMB_X46_Y4_N30
\add|rippleAdder:47:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:47:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:46:RippleAdder|Cout~0_combout\ & ((\b1[47]~46_combout\) # (\NotA~input_o\ $ (\A[47]~input_o\)))) # (!\add|rippleAdder:46:RippleAdder|Cout~0_combout\ & (\b1[47]~46_combout\ & 
-- (\NotA~input_o\ $ (\A[47]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:46:RippleAdder|Cout~0_combout\,
	datab => \b1[47]~46_combout\,
	datac => \NotA~input_o\,
	datad => \A[47]~input_o\,
	combout => \add|rippleAdder:47:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X49_Y0_N8
\B[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(48),
	o => \B[48]~input_o\);

-- Location: LCCOMB_X46_Y4_N16
\b1[48]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[48]~47_combout\ = \AddnSub~input_o\ $ (\B[48]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \B[48]~input_o\,
	combout => \b1[48]~47_combout\);

-- Location: IOIBUF_X52_Y0_N22
\A[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(48),
	o => \A[48]~input_o\);

-- Location: LCCOMB_X46_Y4_N2
\add|rippleAdder:48:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:48:RippleAdder|S~combout\ = \add|rippleAdder:47:RippleAdder|Cout~0_combout\ $ (\b1[48]~47_combout\ $ (\NotA~input_o\ $ (\A[48]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:47:RippleAdder|Cout~0_combout\,
	datab => \b1[48]~47_combout\,
	datac => \NotA~input_o\,
	datad => \A[48]~input_o\,
	combout => \add|rippleAdder:48:RippleAdder|S~combout\);

-- Location: LCCOMB_X55_Y69_N24
\output~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~16_combout\ = (\ExtWord~input_o\ & (\add|rippleAdder:31:RippleAdder|S~combout\)) # (!\ExtWord~input_o\ & ((\add|rippleAdder:48:RippleAdder|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:31:RippleAdder|S~combout\,
	datab => \ExtWord~input_o\,
	datac => \add|rippleAdder:48:RippleAdder|S~combout\,
	combout => \output~16_combout\);

-- Location: IOIBUF_X0_Y45_N15
\A[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(49),
	o => \A[49]~input_o\);

-- Location: LCCOMB_X46_Y4_N12
\add|rippleAdder:48:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:48:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:47:RippleAdder|Cout~0_combout\ & ((\b1[48]~47_combout\) # (\NotA~input_o\ $ (\A[48]~input_o\)))) # (!\add|rippleAdder:47:RippleAdder|Cout~0_combout\ & (\b1[48]~47_combout\ & 
-- (\NotA~input_o\ $ (\A[48]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:47:RippleAdder|Cout~0_combout\,
	datab => \b1[48]~47_combout\,
	datac => \NotA~input_o\,
	datad => \A[48]~input_o\,
	combout => \add|rippleAdder:48:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X35_Y73_N15
\B[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(49),
	o => \B[49]~input_o\);

-- Location: LCCOMB_X36_Y69_N0
\b1[49]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[49]~48_combout\ = \B[49]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[49]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \b1[49]~48_combout\);

-- Location: LCCOMB_X36_Y69_N18
\add|rippleAdder:49:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:49:RippleAdder|S~combout\ = \A[49]~input_o\ $ (\NotA~input_o\ $ (\add|rippleAdder:48:RippleAdder|Cout~0_combout\ $ (\b1[49]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[49]~input_o\,
	datab => \NotA~input_o\,
	datac => \add|rippleAdder:48:RippleAdder|Cout~0_combout\,
	datad => \b1[49]~48_combout\,
	combout => \add|rippleAdder:49:RippleAdder|S~combout\);

-- Location: LCCOMB_X55_Y69_N26
\output~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~17_combout\ = (\ExtWord~input_o\ & (\add|rippleAdder:31:RippleAdder|S~combout\)) # (!\ExtWord~input_o\ & ((\add|rippleAdder:49:RippleAdder|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:31:RippleAdder|S~combout\,
	datab => \ExtWord~input_o\,
	datac => \add|rippleAdder:49:RippleAdder|S~combout\,
	combout => \output~17_combout\);

-- Location: IOIBUF_X33_Y73_N8
\B[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(50),
	o => \B[50]~input_o\);

-- Location: LCCOMB_X36_Y69_N30
\b1[50]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[50]~49_combout\ = \AddnSub~input_o\ $ (\B[50]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[50]~input_o\,
	combout => \b1[50]~49_combout\);

-- Location: IOIBUF_X33_Y73_N1
\A[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(50),
	o => \A[50]~input_o\);

-- Location: LCCOMB_X36_Y69_N12
\add|rippleAdder:49:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:49:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:48:RippleAdder|Cout~0_combout\ & ((\b1[49]~48_combout\) # (\A[49]~input_o\ $ (\NotA~input_o\)))) # (!\add|rippleAdder:48:RippleAdder|Cout~0_combout\ & (\b1[49]~48_combout\ & 
-- (\A[49]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[49]~input_o\,
	datab => \NotA~input_o\,
	datac => \add|rippleAdder:48:RippleAdder|Cout~0_combout\,
	datad => \b1[49]~48_combout\,
	combout => \add|rippleAdder:49:RippleAdder|Cout~0_combout\);

-- Location: LCCOMB_X36_Y69_N16
\add|rippleAdder:50:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:50:RippleAdder|S~combout\ = \b1[50]~49_combout\ $ (\NotA~input_o\ $ (\A[50]~input_o\ $ (\add|rippleAdder:49:RippleAdder|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1[50]~49_combout\,
	datab => \NotA~input_o\,
	datac => \A[50]~input_o\,
	datad => \add|rippleAdder:49:RippleAdder|Cout~0_combout\,
	combout => \add|rippleAdder:50:RippleAdder|S~combout\);

-- Location: LCCOMB_X36_Y69_N2
\output~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~18_combout\ = (\ExtWord~input_o\ & ((\add|rippleAdder:31:RippleAdder|S~combout\))) # (!\ExtWord~input_o\ & (\add|rippleAdder:50:RippleAdder|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add|rippleAdder:50:RippleAdder|S~combout\,
	datac => \add|rippleAdder:31:RippleAdder|S~combout\,
	datad => \ExtWord~input_o\,
	combout => \output~18_combout\);

-- Location: IOIBUF_X38_Y73_N8
\B[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(51),
	o => \B[51]~input_o\);

-- Location: LCCOMB_X36_Y69_N22
\b1[51]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[51]~50_combout\ = \AddnSub~input_o\ $ (\B[51]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[51]~input_o\,
	combout => \b1[51]~50_combout\);

-- Location: LCCOMB_X36_Y69_N4
\add|rippleAdder:50:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:50:RippleAdder|Cout~0_combout\ = (\b1[50]~49_combout\ & ((\add|rippleAdder:49:RippleAdder|Cout~0_combout\) # (\NotA~input_o\ $ (\A[50]~input_o\)))) # (!\b1[50]~49_combout\ & (\add|rippleAdder:49:RippleAdder|Cout~0_combout\ & 
-- (\NotA~input_o\ $ (\A[50]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1[50]~49_combout\,
	datab => \NotA~input_o\,
	datac => \A[50]~input_o\,
	datad => \add|rippleAdder:49:RippleAdder|Cout~0_combout\,
	combout => \add|rippleAdder:50:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X38_Y73_N22
\A[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(51),
	o => \A[51]~input_o\);

-- Location: LCCOMB_X36_Y69_N24
\add|rippleAdder:51:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:51:RippleAdder|S~combout\ = \b1[51]~50_combout\ $ (\NotA~input_o\ $ (\add|rippleAdder:50:RippleAdder|Cout~0_combout\ $ (\A[51]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1[51]~50_combout\,
	datab => \NotA~input_o\,
	datac => \add|rippleAdder:50:RippleAdder|Cout~0_combout\,
	datad => \A[51]~input_o\,
	combout => \add|rippleAdder:51:RippleAdder|S~combout\);

-- Location: LCCOMB_X36_Y69_N10
\output~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~19_combout\ = (\ExtWord~input_o\ & ((\add|rippleAdder:31:RippleAdder|S~combout\))) # (!\ExtWord~input_o\ & (\add|rippleAdder:51:RippleAdder|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add|rippleAdder:51:RippleAdder|S~combout\,
	datac => \add|rippleAdder:31:RippleAdder|S~combout\,
	datad => \ExtWord~input_o\,
	combout => \output~19_combout\);

-- Location: IOIBUF_X31_Y73_N8
\A[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(52),
	o => \A[52]~input_o\);

-- Location: IOIBUF_X38_Y73_N1
\B[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(52),
	o => \B[52]~input_o\);

-- Location: LCCOMB_X36_Y69_N14
\b1[52]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[52]~51_combout\ = \B[52]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[52]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \b1[52]~51_combout\);

-- Location: LCCOMB_X36_Y69_N20
\add|rippleAdder:51:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:51:RippleAdder|Cout~0_combout\ = (\b1[51]~50_combout\ & ((\add|rippleAdder:50:RippleAdder|Cout~0_combout\) # (\NotA~input_o\ $ (\A[51]~input_o\)))) # (!\b1[51]~50_combout\ & (\add|rippleAdder:50:RippleAdder|Cout~0_combout\ & 
-- (\NotA~input_o\ $ (\A[51]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1[51]~50_combout\,
	datab => \NotA~input_o\,
	datac => \add|rippleAdder:50:RippleAdder|Cout~0_combout\,
	datad => \A[51]~input_o\,
	combout => \add|rippleAdder:51:RippleAdder|Cout~0_combout\);

-- Location: LCCOMB_X36_Y69_N8
\add|rippleAdder:52:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:52:RippleAdder|S~combout\ = \A[52]~input_o\ $ (\NotA~input_o\ $ (\b1[52]~51_combout\ $ (\add|rippleAdder:51:RippleAdder|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[52]~input_o\,
	datab => \NotA~input_o\,
	datac => \b1[52]~51_combout\,
	datad => \add|rippleAdder:51:RippleAdder|Cout~0_combout\,
	combout => \add|rippleAdder:52:RippleAdder|S~combout\);

-- Location: LCCOMB_X36_Y69_N26
\output~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~20_combout\ = (\ExtWord~input_o\ & ((\add|rippleAdder:31:RippleAdder|S~combout\))) # (!\ExtWord~input_o\ & (\add|rippleAdder:52:RippleAdder|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add|rippleAdder:52:RippleAdder|S~combout\,
	datac => \add|rippleAdder:31:RippleAdder|S~combout\,
	datad => \ExtWord~input_o\,
	combout => \output~20_combout\);

-- Location: IOIBUF_X49_Y73_N22
\A[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(53),
	o => \A[53]~input_o\);

-- Location: LCCOMB_X36_Y69_N28
\add|rippleAdder:52:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:52:RippleAdder|Cout~0_combout\ = (\b1[52]~51_combout\ & ((\add|rippleAdder:51:RippleAdder|Cout~0_combout\) # (\A[52]~input_o\ $ (\NotA~input_o\)))) # (!\b1[52]~51_combout\ & (\add|rippleAdder:51:RippleAdder|Cout~0_combout\ & 
-- (\A[52]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[52]~input_o\,
	datab => \NotA~input_o\,
	datac => \b1[52]~51_combout\,
	datad => \add|rippleAdder:51:RippleAdder|Cout~0_combout\,
	combout => \add|rippleAdder:52:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X42_Y0_N22
\B[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(53),
	o => \B[53]~input_o\);

-- Location: LCCOMB_X43_Y69_N24
\b1[53]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[53]~52_combout\ = \AddnSub~input_o\ $ (\B[53]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \B[53]~input_o\,
	combout => \b1[53]~52_combout\);

-- Location: LCCOMB_X43_Y69_N18
\add|rippleAdder:53:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:53:RippleAdder|S~combout\ = \A[53]~input_o\ $ (\NotA~input_o\ $ (\add|rippleAdder:52:RippleAdder|Cout~0_combout\ $ (\b1[53]~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[53]~input_o\,
	datab => \NotA~input_o\,
	datac => \add|rippleAdder:52:RippleAdder|Cout~0_combout\,
	datad => \b1[53]~52_combout\,
	combout => \add|rippleAdder:53:RippleAdder|S~combout\);

-- Location: LCCOMB_X43_Y69_N4
\output~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~21_combout\ = (\ExtWord~input_o\ & (\add|rippleAdder:31:RippleAdder|S~combout\)) # (!\ExtWord~input_o\ & ((\add|rippleAdder:53:RippleAdder|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datac => \add|rippleAdder:31:RippleAdder|S~combout\,
	datad => \add|rippleAdder:53:RippleAdder|S~combout\,
	combout => \output~21_combout\);

-- Location: LCCOMB_X43_Y69_N6
\add|rippleAdder:53:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:53:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:52:RippleAdder|Cout~0_combout\ & ((\b1[53]~52_combout\) # (\A[53]~input_o\ $ (\NotA~input_o\)))) # (!\add|rippleAdder:52:RippleAdder|Cout~0_combout\ & (\b1[53]~52_combout\ & 
-- (\A[53]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[53]~input_o\,
	datab => \NotA~input_o\,
	datac => \add|rippleAdder:52:RippleAdder|Cout~0_combout\,
	datad => \b1[53]~52_combout\,
	combout => \add|rippleAdder:53:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X38_Y73_N15
\A[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(54),
	o => \A[54]~input_o\);

-- Location: IOIBUF_X47_Y73_N15
\B[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(54),
	o => \B[54]~input_o\);

-- Location: LCCOMB_X43_Y69_N0
\b1[54]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[54]~53_combout\ = \AddnSub~input_o\ $ (\B[54]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[54]~input_o\,
	combout => \b1[54]~53_combout\);

-- Location: LCCOMB_X43_Y69_N26
\add|rippleAdder:54:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:54:RippleAdder|S~combout\ = \add|rippleAdder:53:RippleAdder|Cout~0_combout\ $ (\NotA~input_o\ $ (\A[54]~input_o\ $ (\b1[54]~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:53:RippleAdder|Cout~0_combout\,
	datab => \NotA~input_o\,
	datac => \A[54]~input_o\,
	datad => \b1[54]~53_combout\,
	combout => \add|rippleAdder:54:RippleAdder|S~combout\);

-- Location: LCCOMB_X55_Y69_N28
\output~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~22_combout\ = (\ExtWord~input_o\ & (\add|rippleAdder:31:RippleAdder|S~combout\)) # (!\ExtWord~input_o\ & ((\add|rippleAdder:54:RippleAdder|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:31:RippleAdder|S~combout\,
	datab => \add|rippleAdder:54:RippleAdder|S~combout\,
	datac => \ExtWord~input_o\,
	combout => \output~22_combout\);

-- Location: LCCOMB_X43_Y69_N12
\add|rippleAdder:54:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:54:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:53:RippleAdder|Cout~0_combout\ & ((\b1[54]~53_combout\) # (\NotA~input_o\ $ (\A[54]~input_o\)))) # (!\add|rippleAdder:53:RippleAdder|Cout~0_combout\ & (\b1[54]~53_combout\ & 
-- (\NotA~input_o\ $ (\A[54]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:53:RippleAdder|Cout~0_combout\,
	datab => \NotA~input_o\,
	datac => \A[54]~input_o\,
	datad => \b1[54]~53_combout\,
	combout => \add|rippleAdder:54:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X40_Y73_N8
\B[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(55),
	o => \B[55]~input_o\);

-- Location: LCCOMB_X43_Y69_N14
\b1[55]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[55]~54_combout\ = \AddnSub~input_o\ $ (\B[55]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \B[55]~input_o\,
	combout => \b1[55]~54_combout\);

-- Location: IOIBUF_X45_Y73_N8
\A[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(55),
	o => \A[55]~input_o\);

-- Location: LCCOMB_X43_Y69_N16
\add|rippleAdder:55:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:55:RippleAdder|S~combout\ = \add|rippleAdder:54:RippleAdder|Cout~0_combout\ $ (\NotA~input_o\ $ (\b1[55]~54_combout\ $ (\A[55]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:54:RippleAdder|Cout~0_combout\,
	datab => \NotA~input_o\,
	datac => \b1[55]~54_combout\,
	datad => \A[55]~input_o\,
	combout => \add|rippleAdder:55:RippleAdder|S~combout\);

-- Location: LCCOMB_X43_Y69_N2
\output~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~23_combout\ = (\ExtWord~input_o\ & (\add|rippleAdder:31:RippleAdder|S~combout\)) # (!\ExtWord~input_o\ & ((\add|rippleAdder:55:RippleAdder|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datac => \add|rippleAdder:31:RippleAdder|S~combout\,
	datad => \add|rippleAdder:55:RippleAdder|S~combout\,
	combout => \output~23_combout\);

-- Location: IOIBUF_X47_Y73_N1
\B[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(56),
	o => \B[56]~input_o\);

-- Location: LCCOMB_X43_Y69_N30
\b1[56]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[56]~55_combout\ = \AddnSub~input_o\ $ (\B[56]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[56]~input_o\,
	combout => \b1[56]~55_combout\);

-- Location: IOIBUF_X45_Y73_N1
\A[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(56),
	o => \A[56]~input_o\);

-- Location: LCCOMB_X43_Y69_N20
\add|rippleAdder:55:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:55:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:54:RippleAdder|Cout~0_combout\ & ((\b1[55]~54_combout\) # (\NotA~input_o\ $ (\A[55]~input_o\)))) # (!\add|rippleAdder:54:RippleAdder|Cout~0_combout\ & (\b1[55]~54_combout\ & 
-- (\NotA~input_o\ $ (\A[55]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:54:RippleAdder|Cout~0_combout\,
	datab => \NotA~input_o\,
	datac => \b1[55]~54_combout\,
	datad => \A[55]~input_o\,
	combout => \add|rippleAdder:55:RippleAdder|Cout~0_combout\);

-- Location: LCCOMB_X43_Y69_N8
\add|rippleAdder:56:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:56:RippleAdder|S~combout\ = \b1[56]~55_combout\ $ (\NotA~input_o\ $ (\A[56]~input_o\ $ (\add|rippleAdder:55:RippleAdder|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1[56]~55_combout\,
	datab => \NotA~input_o\,
	datac => \A[56]~input_o\,
	datad => \add|rippleAdder:55:RippleAdder|Cout~0_combout\,
	combout => \add|rippleAdder:56:RippleAdder|S~combout\);

-- Location: LCCOMB_X43_Y69_N10
\output~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~24_combout\ = (\ExtWord~input_o\ & ((\add|rippleAdder:31:RippleAdder|S~combout\))) # (!\ExtWord~input_o\ & (\add|rippleAdder:56:RippleAdder|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add|rippleAdder:56:RippleAdder|S~combout\,
	datac => \add|rippleAdder:31:RippleAdder|S~combout\,
	datad => \ExtWord~input_o\,
	combout => \output~24_combout\);

-- Location: IOIBUF_X27_Y0_N22
\A[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(57),
	o => \A[57]~input_o\);

-- Location: IOIBUF_X27_Y73_N8
\B[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(57),
	o => \B[57]~input_o\);

-- Location: LCCOMB_X28_Y65_N18
\b1[57]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[57]~56_combout\ = \AddnSub~input_o\ $ (\B[57]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datad => \B[57]~input_o\,
	combout => \b1[57]~56_combout\);

-- Location: LCCOMB_X43_Y69_N28
\add|rippleAdder:56:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:56:RippleAdder|Cout~0_combout\ = (\b1[56]~55_combout\ & ((\add|rippleAdder:55:RippleAdder|Cout~0_combout\) # (\NotA~input_o\ $ (\A[56]~input_o\)))) # (!\b1[56]~55_combout\ & (\add|rippleAdder:55:RippleAdder|Cout~0_combout\ & 
-- (\NotA~input_o\ $ (\A[56]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1[56]~55_combout\,
	datab => \NotA~input_o\,
	datac => \A[56]~input_o\,
	datad => \add|rippleAdder:55:RippleAdder|Cout~0_combout\,
	combout => \add|rippleAdder:56:RippleAdder|Cout~0_combout\);

-- Location: LCCOMB_X32_Y4_N10
\add|rippleAdder:57:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:57:RippleAdder|S~combout\ = \A[57]~input_o\ $ (\b1[57]~56_combout\ $ (\NotA~input_o\ $ (\add|rippleAdder:56:RippleAdder|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[57]~input_o\,
	datab => \b1[57]~56_combout\,
	datac => \NotA~input_o\,
	datad => \add|rippleAdder:56:RippleAdder|Cout~0_combout\,
	combout => \add|rippleAdder:57:RippleAdder|S~combout\);

-- Location: LCCOMB_X32_Y4_N28
\output~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~25_combout\ = (\ExtWord~input_o\ & ((\add|rippleAdder:31:RippleAdder|S~combout\))) # (!\ExtWord~input_o\ & (\add|rippleAdder:57:RippleAdder|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:57:RippleAdder|S~combout\,
	datac => \add|rippleAdder:31:RippleAdder|S~combout\,
	datad => \ExtWord~input_o\,
	combout => \output~25_combout\);

-- Location: IOIBUF_X33_Y0_N1
\A[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(58),
	o => \A[58]~input_o\);

-- Location: LCCOMB_X32_Y4_N14
\add|rippleAdder:57:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:57:RippleAdder|Cout~0_combout\ = (\b1[57]~56_combout\ & ((\add|rippleAdder:56:RippleAdder|Cout~0_combout\) # (\A[57]~input_o\ $ (\NotA~input_o\)))) # (!\b1[57]~56_combout\ & (\add|rippleAdder:56:RippleAdder|Cout~0_combout\ & 
-- (\A[57]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[57]~input_o\,
	datab => \b1[57]~56_combout\,
	datac => \NotA~input_o\,
	datad => \add|rippleAdder:56:RippleAdder|Cout~0_combout\,
	combout => \add|rippleAdder:57:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X29_Y73_N8
\B[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(58),
	o => \B[58]~input_o\);

-- Location: LCCOMB_X28_Y65_N20
\b1[58]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[58]~57_combout\ = \AddnSub~input_o\ $ (\B[58]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[58]~input_o\,
	combout => \b1[58]~57_combout\);

-- Location: LCCOMB_X32_Y4_N0
\add|rippleAdder:58:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:58:RippleAdder|S~combout\ = \A[58]~input_o\ $ (\NotA~input_o\ $ (\add|rippleAdder:57:RippleAdder|Cout~0_combout\ $ (\b1[58]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[58]~input_o\,
	datab => \NotA~input_o\,
	datac => \add|rippleAdder:57:RippleAdder|Cout~0_combout\,
	datad => \b1[58]~57_combout\,
	combout => \add|rippleAdder:58:RippleAdder|S~combout\);

-- Location: LCCOMB_X32_Y4_N26
\output~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~26_combout\ = (\ExtWord~input_o\ & ((\add|rippleAdder:31:RippleAdder|S~combout\))) # (!\ExtWord~input_o\ & (\add|rippleAdder:58:RippleAdder|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add|rippleAdder:58:RippleAdder|S~combout\,
	datac => \add|rippleAdder:31:RippleAdder|S~combout\,
	datad => \ExtWord~input_o\,
	combout => \output~26_combout\);

-- Location: IOIBUF_X35_Y0_N15
\B[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(59),
	o => \B[59]~input_o\);

-- Location: LCCOMB_X32_Y4_N22
\b1[59]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[59]~58_combout\ = \AddnSub~input_o\ $ (\B[59]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[59]~input_o\,
	combout => \b1[59]~58_combout\);

-- Location: IOIBUF_X33_Y0_N8
\A[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(59),
	o => \A[59]~input_o\);

-- Location: LCCOMB_X32_Y4_N12
\add|rippleAdder:58:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:58:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:57:RippleAdder|Cout~0_combout\ & ((\b1[58]~57_combout\) # (\A[58]~input_o\ $ (\NotA~input_o\)))) # (!\add|rippleAdder:57:RippleAdder|Cout~0_combout\ & (\b1[58]~57_combout\ & 
-- (\A[58]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[58]~input_o\,
	datab => \NotA~input_o\,
	datac => \add|rippleAdder:57:RippleAdder|Cout~0_combout\,
	datad => \b1[58]~57_combout\,
	combout => \add|rippleAdder:58:RippleAdder|Cout~0_combout\);

-- Location: LCCOMB_X32_Y4_N8
\add|rippleAdder:59:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:59:RippleAdder|S~combout\ = \b1[59]~58_combout\ $ (\A[59]~input_o\ $ (\NotA~input_o\ $ (\add|rippleAdder:58:RippleAdder|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1[59]~58_combout\,
	datab => \A[59]~input_o\,
	datac => \NotA~input_o\,
	datad => \add|rippleAdder:58:RippleAdder|Cout~0_combout\,
	combout => \add|rippleAdder:59:RippleAdder|S~combout\);

-- Location: LCCOMB_X32_Y4_N2
\output~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~27_combout\ = (\ExtWord~input_o\ & ((\add|rippleAdder:31:RippleAdder|S~combout\))) # (!\ExtWord~input_o\ & (\add|rippleAdder:59:RippleAdder|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add|rippleAdder:59:RippleAdder|S~combout\,
	datac => \add|rippleAdder:31:RippleAdder|S~combout\,
	datad => \ExtWord~input_o\,
	combout => \output~27_combout\);

-- Location: IOIBUF_X38_Y0_N1
\B[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(60),
	o => \B[60]~input_o\);

-- Location: LCCOMB_X32_Y4_N30
\b1[60]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[60]~59_combout\ = \AddnSub~input_o\ $ (\B[60]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[60]~input_o\,
	combout => \b1[60]~59_combout\);

-- Location: LCCOMB_X32_Y4_N4
\add|rippleAdder:59:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:59:RippleAdder|Cout~0_combout\ = (\b1[59]~58_combout\ & ((\add|rippleAdder:58:RippleAdder|Cout~0_combout\) # (\A[59]~input_o\ $ (\NotA~input_o\)))) # (!\b1[59]~58_combout\ & (\add|rippleAdder:58:RippleAdder|Cout~0_combout\ & 
-- (\A[59]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1[59]~58_combout\,
	datab => \A[59]~input_o\,
	datac => \NotA~input_o\,
	datad => \add|rippleAdder:58:RippleAdder|Cout~0_combout\,
	combout => \add|rippleAdder:59:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X29_Y0_N22
\A[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(60),
	o => \A[60]~input_o\);

-- Location: LCCOMB_X32_Y4_N16
\add|rippleAdder:60:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:60:RippleAdder|S~combout\ = \b1[60]~59_combout\ $ (\NotA~input_o\ $ (\add|rippleAdder:59:RippleAdder|Cout~0_combout\ $ (\A[60]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1[60]~59_combout\,
	datab => \NotA~input_o\,
	datac => \add|rippleAdder:59:RippleAdder|Cout~0_combout\,
	datad => \A[60]~input_o\,
	combout => \add|rippleAdder:60:RippleAdder|S~combout\);

-- Location: LCCOMB_X32_Y4_N18
\output~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~28_combout\ = (\ExtWord~input_o\ & ((\add|rippleAdder:31:RippleAdder|S~combout\))) # (!\ExtWord~input_o\ & (\add|rippleAdder:60:RippleAdder|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add|rippleAdder:60:RippleAdder|S~combout\,
	datac => \add|rippleAdder:31:RippleAdder|S~combout\,
	datad => \ExtWord~input_o\,
	combout => \output~28_combout\);

-- Location: LCCOMB_X32_Y4_N20
\add|rippleAdder:60:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:60:RippleAdder|Cout~0_combout\ = (\b1[60]~59_combout\ & ((\add|rippleAdder:59:RippleAdder|Cout~0_combout\) # (\NotA~input_o\ $ (\A[60]~input_o\)))) # (!\b1[60]~59_combout\ & (\add|rippleAdder:59:RippleAdder|Cout~0_combout\ & 
-- (\NotA~input_o\ $ (\A[60]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1[60]~59_combout\,
	datab => \NotA~input_o\,
	datac => \add|rippleAdder:59:RippleAdder|Cout~0_combout\,
	datad => \A[60]~input_o\,
	combout => \add|rippleAdder:60:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X18_Y0_N1
\B[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(61),
	o => \B[61]~input_o\);

-- Location: IOIBUF_X13_Y0_N22
\A[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(61),
	o => \A[61]~input_o\);

-- Location: LCCOMB_X17_Y4_N16
\add|rippleAdder:61:RippleAdder|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:61:RippleAdder|S~0_combout\ = \AddnSub~input_o\ $ (\NotA~input_o\ $ (\B[61]~input_o\ $ (\A[61]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \NotA~input_o\,
	datac => \B[61]~input_o\,
	datad => \A[61]~input_o\,
	combout => \add|rippleAdder:61:RippleAdder|S~0_combout\);

-- Location: LCCOMB_X17_Y4_N2
\output~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~29_combout\ = (\ExtWord~input_o\ & (((\add|rippleAdder:31:RippleAdder|S~combout\)))) # (!\ExtWord~input_o\ & (\add|rippleAdder:60:RippleAdder|Cout~0_combout\ $ ((\add|rippleAdder:61:RippleAdder|S~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:60:RippleAdder|Cout~0_combout\,
	datab => \add|rippleAdder:61:RippleAdder|S~0_combout\,
	datac => \add|rippleAdder:31:RippleAdder|S~combout\,
	datad => \ExtWord~input_o\,
	combout => \output~29_combout\);

-- Location: IOIBUF_X18_Y0_N8
\B[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(62),
	o => \B[62]~input_o\);

-- Location: IOIBUF_X11_Y0_N1
\A[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(62),
	o => \A[62]~input_o\);

-- Location: LCCOMB_X17_Y4_N0
\add|rippleAdder:62:RippleAdder|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:62:RippleAdder|S~0_combout\ = \AddnSub~input_o\ $ (\NotA~input_o\ $ (\B[62]~input_o\ $ (\A[62]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \NotA~input_o\,
	datac => \B[62]~input_o\,
	datad => \A[62]~input_o\,
	combout => \add|rippleAdder:62:RippleAdder|S~0_combout\);

-- Location: LCCOMB_X17_Y4_N20
\b1[61]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[61]~60_combout\ = \AddnSub~input_o\ $ (\B[61]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[61]~input_o\,
	combout => \b1[61]~60_combout\);

-- Location: LCCOMB_X17_Y4_N14
\add|rippleAdder:61:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:61:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:60:RippleAdder|Cout~0_combout\ & ((\b1[61]~60_combout\) # (\A[61]~input_o\ $ (\NotA~input_o\)))) # (!\add|rippleAdder:60:RippleAdder|Cout~0_combout\ & (\b1[61]~60_combout\ & 
-- (\A[61]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:60:RippleAdder|Cout~0_combout\,
	datab => \A[61]~input_o\,
	datac => \NotA~input_o\,
	datad => \b1[61]~60_combout\,
	combout => \add|rippleAdder:61:RippleAdder|Cout~0_combout\);

-- Location: LCCOMB_X17_Y4_N26
\output~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~30_combout\ = (\ExtWord~input_o\ & (\add|rippleAdder:31:RippleAdder|S~combout\)) # (!\ExtWord~input_o\ & ((\add|rippleAdder:62:RippleAdder|S~0_combout\ $ (\add|rippleAdder:61:RippleAdder|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:31:RippleAdder|S~combout\,
	datab => \add|rippleAdder:62:RippleAdder|S~0_combout\,
	datac => \add|rippleAdder:61:RippleAdder|Cout~0_combout\,
	datad => \ExtWord~input_o\,
	combout => \output~30_combout\);

-- Location: LCCOMB_X17_Y4_N4
\b1[62]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[62]~61_combout\ = \B[62]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[62]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \b1[62]~61_combout\);

-- Location: LCCOMB_X17_Y4_N22
\add|rippleAdder:62:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:62:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:61:RippleAdder|Cout~0_combout\ & ((\b1[62]~61_combout\) # (\A[62]~input_o\ $ (\NotA~input_o\)))) # (!\add|rippleAdder:61:RippleAdder|Cout~0_combout\ & (\b1[62]~61_combout\ & 
-- (\A[62]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[62]~input_o\,
	datab => \add|rippleAdder:61:RippleAdder|Cout~0_combout\,
	datac => \b1[62]~61_combout\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:62:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X20_Y0_N8
\A[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(63),
	o => \A[63]~input_o\);

-- Location: IOIBUF_X20_Y0_N22
\B[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(63),
	o => \B[63]~input_o\);

-- Location: LCCOMB_X17_Y4_N24
\add|rippleAdder:63:RippleAdder|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:63:RippleAdder|S~0_combout\ = \A[63]~input_o\ $ (\NotA~input_o\ $ (\AddnSub~input_o\ $ (\B[63]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \NotA~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[63]~input_o\,
	combout => \add|rippleAdder:63:RippleAdder|S~0_combout\);

-- Location: LCCOMB_X17_Y4_N18
\output~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~31_combout\ = (\ExtWord~input_o\ & (((\add|rippleAdder:31:RippleAdder|S~combout\)))) # (!\ExtWord~input_o\ & (\add|rippleAdder:62:RippleAdder|Cout~0_combout\ $ ((\add|rippleAdder:63:RippleAdder|S~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:62:RippleAdder|Cout~0_combout\,
	datab => \add|rippleAdder:63:RippleAdder|S~0_combout\,
	datac => \add|rippleAdder:31:RippleAdder|S~combout\,
	datad => \ExtWord~input_o\,
	combout => \output~31_combout\);

-- Location: LCCOMB_X17_Y4_N12
\b1[63]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[63]~62_combout\ = \AddnSub~input_o\ $ (\B[63]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[63]~input_o\,
	combout => \b1[63]~62_combout\);

-- Location: LCCOMB_X17_Y4_N6
\add|rippleAdder:63:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:63:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:62:RippleAdder|Cout~0_combout\ & ((\b1[63]~62_combout\) # (\NotA~input_o\ $ (\A[63]~input_o\)))) # (!\add|rippleAdder:62:RippleAdder|Cout~0_combout\ & (\b1[63]~62_combout\ & 
-- (\NotA~input_o\ $ (\A[63]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:62:RippleAdder|Cout~0_combout\,
	datab => \NotA~input_o\,
	datac => \A[63]~input_o\,
	datad => \b1[63]~62_combout\,
	combout => \add|rippleAdder:63:RippleAdder|Cout~0_combout\);

-- Location: LCCOMB_X17_Y4_N30
\internalOvfl~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \internalOvfl~2_combout\ = (\add|rippleAdder:62:RippleAdder|Cout~0_combout\ & (!\b1[63]~62_combout\ & (\NotA~input_o\ $ (!\A[63]~input_o\)))) # (!\add|rippleAdder:62:RippleAdder|Cout~0_combout\ & (\b1[63]~62_combout\ & (\NotA~input_o\ $ 
-- (\A[63]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:62:RippleAdder|Cout~0_combout\,
	datab => \NotA~input_o\,
	datac => \A[63]~input_o\,
	datad => \b1[63]~62_combout\,
	combout => \internalOvfl~2_combout\);

-- Location: LCCOMB_X25_Y69_N6
\Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~11_combout\ = (!\add|rippleAdder:40:RippleAdder|S~combout\ & (!\add|rippleAdder:37:RippleAdder|S~combout\ & (!\add|rippleAdder:39:RippleAdder|S~combout\ & !\add|rippleAdder:38:RippleAdder|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:40:RippleAdder|S~combout\,
	datab => \add|rippleAdder:37:RippleAdder|S~combout\,
	datac => \add|rippleAdder:39:RippleAdder|S~combout\,
	datad => \add|rippleAdder:38:RippleAdder|S~combout\,
	combout => \Equal0~11_combout\);

-- Location: LCCOMB_X52_Y69_N6
\Equal0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~12_combout\ = (!\add|rippleAdder:41:RippleAdder|S~combout\ & (!\add|rippleAdder:42:RippleAdder|S~combout\ & (!\add|rippleAdder:43:RippleAdder|S~combout\ & !\add|rippleAdder:44:RippleAdder|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:41:RippleAdder|S~combout\,
	datab => \add|rippleAdder:42:RippleAdder|S~combout\,
	datac => \add|rippleAdder:43:RippleAdder|S~combout\,
	datad => \add|rippleAdder:44:RippleAdder|S~combout\,
	combout => \Equal0~12_combout\);

-- Location: LCCOMB_X46_Y4_N6
\Equal0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~13_combout\ = (!\add|rippleAdder:45:RippleAdder|S~combout\ & (!\add|rippleAdder:47:RippleAdder|S~combout\ & (!\add|rippleAdder:46:RippleAdder|S~combout\ & !\add|rippleAdder:48:RippleAdder|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:45:RippleAdder|S~combout\,
	datab => \add|rippleAdder:47:RippleAdder|S~combout\,
	datac => \add|rippleAdder:46:RippleAdder|S~combout\,
	datad => \add|rippleAdder:48:RippleAdder|S~combout\,
	combout => \Equal0~13_combout\);

-- Location: LCCOMB_X55_Y69_N14
\Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (!\add|rippleAdder:34:RippleAdder|S~combout\ & (!\add|rippleAdder:36:RippleAdder|S~combout\ & (!\add|rippleAdder:35:RippleAdder|S~combout\ & !\add|rippleAdder:33:RippleAdder|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:34:RippleAdder|S~combout\,
	datab => \add|rippleAdder:36:RippleAdder|S~combout\,
	datac => \add|rippleAdder:35:RippleAdder|S~combout\,
	datad => \add|rippleAdder:33:RippleAdder|S~combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X4_Y69_N10
\Equal0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~14_combout\ = (\Equal0~11_combout\ & (\Equal0~12_combout\ & (\Equal0~13_combout\ & \Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~11_combout\,
	datab => \Equal0~12_combout\,
	datac => \Equal0~13_combout\,
	datad => \Equal0~10_combout\,
	combout => \Equal0~14_combout\);

-- Location: LCCOMB_X1_Y34_N6
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\add|rippleAdder:6:RippleAdder|S~combout\ & (!\add|rippleAdder:8:RippleAdder|S~combout\ & (!\add|rippleAdder:7:RippleAdder|S~combout\ & !\add|rippleAdder:5:RippleAdder|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:6:RippleAdder|S~combout\,
	datab => \add|rippleAdder:8:RippleAdder|S~combout\,
	datac => \add|rippleAdder:7:RippleAdder|S~combout\,
	datad => \add|rippleAdder:5:RippleAdder|S~combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X1_Y64_N24
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\add|rippleAdder:12:RippleAdder|S~combout\ & (!\add|rippleAdder:11:RippleAdder|S~combout\ & (!\add|rippleAdder:9:RippleAdder|S~combout\ & !\add|rippleAdder:10:RippleAdder|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:12:RippleAdder|S~combout\,
	datab => \add|rippleAdder:11:RippleAdder|S~combout\,
	datac => \add|rippleAdder:9:RippleAdder|S~combout\,
	datad => \add|rippleAdder:10:RippleAdder|S~combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X1_Y16_N12
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\add|rippleAdder:2:RippleAdder|S~combout\ & (!\add|rippleAdder:4:RippleAdder|S~combout\ & (!\add|rippleAdder:3:RippleAdder|S~combout\ & !\add|rippleAdder:1:RippleAdder|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:2:RippleAdder|S~combout\,
	datab => \add|rippleAdder:4:RippleAdder|S~combout\,
	datac => \add|rippleAdder:3:RippleAdder|S~combout\,
	datad => \add|rippleAdder:1:RippleAdder|S~combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X1_Y68_N16
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\add|rippleAdder:13:RippleAdder|S~combout\ & (!\add|rippleAdder:15:RippleAdder|S~combout\ & (!\add|rippleAdder:16:RippleAdder|S~combout\ & !\add|rippleAdder:14:RippleAdder|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:13:RippleAdder|S~combout\,
	datab => \add|rippleAdder:15:RippleAdder|S~combout\,
	datac => \add|rippleAdder:16:RippleAdder|S~combout\,
	datad => \add|rippleAdder:14:RippleAdder|S~combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X1_Y64_N2
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\ & (\Equal0~2_combout\ & (\Equal0~0_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X4_Y69_N16
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!\add|rippleAdder:20:RippleAdder|S~combout\ & (!\add|rippleAdder:19:RippleAdder|S~combout\ & (!\add|rippleAdder:17:RippleAdder|S~combout\ & !\add|rippleAdder:18:RippleAdder|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:20:RippleAdder|S~combout\,
	datab => \add|rippleAdder:19:RippleAdder|S~combout\,
	datac => \add|rippleAdder:17:RippleAdder|S~combout\,
	datad => \add|rippleAdder:18:RippleAdder|S~combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X61_Y69_N2
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!\add|rippleAdder:27:RippleAdder|S~combout\ & (!\add|rippleAdder:26:RippleAdder|S~combout\ & (!\add|rippleAdder:28:RippleAdder|S~combout\ & !\add|rippleAdder:25:RippleAdder|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:27:RippleAdder|S~combout\,
	datab => \add|rippleAdder:26:RippleAdder|S~combout\,
	datac => \add|rippleAdder:28:RippleAdder|S~combout\,
	datad => \add|rippleAdder:25:RippleAdder|S~combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X60_Y69_N6
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!\add|rippleAdder:31:RippleAdder|S~combout\ & (!\add|rippleAdder:32:RippleAdder|S~combout\ & (!\add|rippleAdder:30:RippleAdder|S~combout\ & !\add|rippleAdder:29:RippleAdder|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:31:RippleAdder|S~combout\,
	datab => \add|rippleAdder:32:RippleAdder|S~combout\,
	datac => \add|rippleAdder:30:RippleAdder|S~combout\,
	datad => \add|rippleAdder:29:RippleAdder|S~combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X12_Y69_N14
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!\add|rippleAdder:22:RippleAdder|S~combout\ & (!\add|rippleAdder:24:RippleAdder|S~combout\ & (!\add|rippleAdder:23:RippleAdder|S~combout\ & !\add|rippleAdder:21:RippleAdder|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:22:RippleAdder|S~combout\,
	datab => \add|rippleAdder:24:RippleAdder|S~combout\,
	datac => \add|rippleAdder:23:RippleAdder|S~combout\,
	datad => \add|rippleAdder:21:RippleAdder|S~combout\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X13_Y69_N16
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~5_combout\ & (\Equal0~7_combout\ & (\Equal0~8_combout\ & \Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~7_combout\,
	datac => \Equal0~8_combout\,
	datad => \Equal0~6_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X17_Y4_N8
\Equal0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~18_combout\ = (\add|rippleAdder:60:RippleAdder|Cout~0_combout\ & (\add|rippleAdder:61:RippleAdder|S~0_combout\ & (\add|rippleAdder:61:RippleAdder|Cout~0_combout\ $ (!\add|rippleAdder:62:RippleAdder|S~0_combout\)))) # 
-- (!\add|rippleAdder:60:RippleAdder|Cout~0_combout\ & (!\add|rippleAdder:61:RippleAdder|S~0_combout\ & (\add|rippleAdder:61:RippleAdder|Cout~0_combout\ $ (!\add|rippleAdder:62:RippleAdder|S~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:60:RippleAdder|Cout~0_combout\,
	datab => \add|rippleAdder:61:RippleAdder|S~0_combout\,
	datac => \add|rippleAdder:61:RippleAdder|Cout~0_combout\,
	datad => \add|rippleAdder:62:RippleAdder|S~0_combout\,
	combout => \Equal0~18_combout\);

-- Location: LCCOMB_X17_Y4_N10
\Equal0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~19_combout\ = (!\add|rippleAdder:0:RippleAdder|S~0_combout\ & (\Equal0~18_combout\ & (\add|rippleAdder:62:RippleAdder|Cout~0_combout\ $ (!\add|rippleAdder:63:RippleAdder|S~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:0:RippleAdder|S~0_combout\,
	datab => \Equal0~18_combout\,
	datac => \add|rippleAdder:62:RippleAdder|Cout~0_combout\,
	datad => \add|rippleAdder:63:RippleAdder|S~0_combout\,
	combout => \Equal0~19_combout\);

-- Location: LCCOMB_X32_Y4_N6
\Equal0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~17_combout\ = (!\add|rippleAdder:57:RippleAdder|S~combout\ & (!\add|rippleAdder:60:RippleAdder|S~combout\ & (!\add|rippleAdder:59:RippleAdder|S~combout\ & !\add|rippleAdder:58:RippleAdder|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:57:RippleAdder|S~combout\,
	datab => \add|rippleAdder:60:RippleAdder|S~combout\,
	datac => \add|rippleAdder:59:RippleAdder|S~combout\,
	datad => \add|rippleAdder:58:RippleAdder|S~combout\,
	combout => \Equal0~17_combout\);

-- Location: LCCOMB_X43_Y69_N22
\Equal0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~16_combout\ = (!\add|rippleAdder:54:RippleAdder|S~combout\ & (!\add|rippleAdder:55:RippleAdder|S~combout\ & (!\add|rippleAdder:56:RippleAdder|S~combout\ & !\add|rippleAdder:53:RippleAdder|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:54:RippleAdder|S~combout\,
	datab => \add|rippleAdder:55:RippleAdder|S~combout\,
	datac => \add|rippleAdder:56:RippleAdder|S~combout\,
	datad => \add|rippleAdder:53:RippleAdder|S~combout\,
	combout => \Equal0~16_combout\);

-- Location: LCCOMB_X36_Y69_N6
\Equal0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~15_combout\ = (!\add|rippleAdder:49:RippleAdder|S~combout\ & (!\add|rippleAdder:50:RippleAdder|S~combout\ & (!\add|rippleAdder:52:RippleAdder|S~combout\ & !\add|rippleAdder:51:RippleAdder|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:49:RippleAdder|S~combout\,
	datab => \add|rippleAdder:50:RippleAdder|S~combout\,
	datac => \add|rippleAdder:52:RippleAdder|S~combout\,
	datad => \add|rippleAdder:51:RippleAdder|S~combout\,
	combout => \Equal0~15_combout\);

-- Location: LCCOMB_X28_Y65_N14
\Equal0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~20_combout\ = (\Equal0~19_combout\ & (\Equal0~17_combout\ & (\Equal0~16_combout\ & \Equal0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~19_combout\,
	datab => \Equal0~17_combout\,
	datac => \Equal0~16_combout\,
	datad => \Equal0~15_combout\,
	combout => \Equal0~20_combout\);

-- Location: LCCOMB_X4_Y69_N4
\Equal0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~21_combout\ = (\Equal0~14_combout\ & (\Equal0~4_combout\ & (\Equal0~9_combout\ & \Equal0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~14_combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~20_combout\,
	combout => \Equal0~21_combout\);

-- Location: LCCOMB_X17_Y4_N28
\AltB~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AltB~0_combout\ = \add|rippleAdder:63:RippleAdder|Cout~0_combout\ $ (\add|rippleAdder:62:RippleAdder|Cout~0_combout\ $ (\output~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:63:RippleAdder|Cout~0_combout\,
	datac => \add|rippleAdder:62:RippleAdder|Cout~0_combout\,
	datad => \output~31_combout\,
	combout => \AltB~0_combout\);

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

ww_Cout <= \Cout~output_o\;

ww_Ovfl <= \Ovfl~output_o\;

ww_Zero <= \Zero~output_o\;

ww_AltB <= \AltB~output_o\;

ww_AltBu <= \AltBu~output_o\;
END structure;


