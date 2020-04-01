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

architecture rtl of ArithUnit is 
	signal a1, b1, s1: std_logic_vector(N-1 downto 0);
	signal cout1, cout2: std_logic;
	signal internalOvfl:std_logic;
begin
	--MUX for B
	b1 <= NOT B when AddnSub = '1' else
	      B;
	--MUX for A
	a1 <= NOT A when NotA = '1' else
	      A;
	-- 64-bit Ripple Adder
	add: entity Work.rippleadder port map ( a1, b1, AddnSub, s1, cout1, cout2);
	Cout <= cout1;

	--NOR
	Zero <= '1' when s1 = x"0000000000000000" else '0';
	
	--Overflow
	internalOvfl <= cout1 XOR cout2;
	Ovfl <= internalOvfl;
	
	--MUX for ExtWord
	Y <=  sxt(s1, N-1) when ExtWord = '1' else
	      s1;
	
	--AltB and AltBu
	AltBu <= NOT cout1;
	AltB <=  s1(N-1) XOR internalOvfl;
	
end architecture rtl;