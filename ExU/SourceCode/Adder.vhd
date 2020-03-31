library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity RippleAdder is
	generic ( width : integer := 16 );
	port(
		Xin,Yin	:	in std_logic_vector(width-1 downto 0);
		Cin	:	in std_logic;
		S	:	out std_logic_vector(width-1 downto 0);
		Cout	: 	out std_logic);
end RippleAdder;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity FullAdder is
     
     port (
          X, Y     :     in     std_logic;
          Cin      :     in     std_logic;
          S        :     out    std_logic;
	  Cout	   :	 out	std_logic);
end entity FullAdder;


architecture rtl of RippleAdder is
	signal internalC:std_logic_vector (width downto 0);
begin
	internalC(0) <= Cin;
     		rippleAdder: for i in 0 to width-1
		generate
		begin
          		RippleAdder: entity Work.FullAdder port map ( Xin(i), Yin(i), internalC(i), S(i), internalC(i+1));
		end generate rippleAdder;
end architecture rtl;

Architecture rtl of FullAdder is
BEGIN
	S <= X XOR Y XOR Cin;
	Cout <= (X AND Y) OR (Cin AND (X OR Y));
END rtl;
