library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_MISC.ALL;

Entity SRA64 is
Generic ( N : natural := 64 );
Port ( X : in std_logic_vector( N-1 downto 0 );
	Y : out std_logic_vector( N-1 downto 0 );
	ShiftCount : in unsigned( integer(ceil(log2(real(N))))-1 downto 0 ) );
End Entity SRA64;

Architecture rtl of SRL64 is 
	signal Y1, Y2, Y3 : std_logic_vector(N-1 downto 0);
	signal signExt: std_logic_vector(N-1 downto 0);
Begin
	signExt(31 downto 0) <= s1(31 downto 0);
  	signExt(N-1 downto 32) <= (N-1 downto 32 => s1(31));

	signExt(N-1 downto 47) <= X(N-1)
	
	Y1 <= 	"0000000000000000" & X(N-1 downto 16) when ShiftCount(5 downto 4) = "01" else 
		"00000000000000000000000000000000" & X(N-1 downto 32) when ShiftCount(5 downto 4) = "10" else 
		"000000000000000000000000000000000000000000000000" & X(N-1 downto 48) when ShiftCount(5 downto 4) = "11" else 
		X;
	Y2 <= 	"0000" & Y1(N-1 downto 4) when ShiftCount(3 downto 2) = "01" else 
		"00000000" & Y1(N-1 downto 8)  when ShiftCount(3 downto 2) = "10" else 
		"000000000000" & Y1(N-1 downto 12) when ShiftCount(3 downto 2) = "11" else 
		Y1;
	Y3 <= 	"0" & Y2(N-1 downto 1) when ShiftCount(1 downto 0) = "01" else 
		"00" & Y2(N-1 downto 2) when ShiftCount(1 downto 0) = "10" else 
		"000" & Y2(N-1 downto 3) when ShiftCount(1 downto 0) = "11" else 
		Y2;
	signExt(N-ShiftCount downto 0) <= Y3(N-ShiftCount downto 0); 
	signExt(N-1 downto N-ShiftCount+1) <= (N-1 downto N-ShiftCount+1 => Y3(N-ShiftCount));
	Y <= signExt;
End Architecture rtl;