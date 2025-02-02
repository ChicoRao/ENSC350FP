Library ieee;
Use ieee.std_logic_1164.all;
Use ieee.numeric_std.all;

Entity LogicUnit is
Generic (N: natural := 64);
Port( 	A, B: in std_logic_vector(N-1 downto 0);
      	Y: out std_logic_vector(N-1 downto 0);
	LogicFN: in std_logic_vector(1 downto 0));
End Entity LogicUnit;

Architecture rtl of LogicUnit is 
	Signal q1, q2, q3: std_logic_vector(N-1 downto 0);
Begin
Logic:
	for i in 0 to N-1 generate
		q1(i) <= A(i) XOR B(i);
		q2(i) <= A(i) OR B(i);
		q3(i) <= A(i) AND B(i);
	end generate Logic;

	Y <= 	q1 when LogicFN = "01" else 
		q2 when LogicFN = "10" else 
		q3 when LogicFN = "11" else
		B;
End Architecture rtl;
