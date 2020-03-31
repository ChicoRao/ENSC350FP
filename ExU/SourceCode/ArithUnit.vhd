library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

Entity ArithUnit is
	Generic ( N : natural := 64 );
	Port ( 
		A, B : in std_logic_vector( N-1 downto 0 );
		Y : out std_logic_vector( N-1 downto 0 );
		-- Control signals
		NotA, AddnSub, ExtWord : in std_logic := '0';
		-- Status signals
		Cout, Ovfl, Zero, AltB, AltBu : out std_logic );
End Entity ArithUnit;