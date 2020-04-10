library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_MISC.ALL;

Entity ShiftUnit is operation
Generic ( N : natural := 64 );
Port ( A, B, C : in std_logic_vector( N-1 downto 0 );
	Y : out std_logic_vector( N-1 downto 0 );
	ShiftFN : in std_logic_vector( 1 downto 0 );
	ExtWord : in std_logic );
End Entity ShiftUnit;


Architecture rtl of ShiftUnit is 
	Signal: sll64, srl64, sra64 
	Signal: s1
	Signal Y1
Begin
	s1 <= ShiftFn(1) AND ExtWord
	Y1 <= 
	



	Y <= 	q1 when ShiftFn = "01" else 
		q2 when ShiftFn = "10" else 
		q3 when ShiftFn = "11" else
		B;
End Architecture rtl;