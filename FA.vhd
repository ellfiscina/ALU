library IEEE;
use IEEE.std_logic_1164.all;

entity FA is
	port (l1, l2, Cin: in std_logic;
			Cout, Sum: out std_logic);
end FA;

architecture fluxo_de_dados of FA is begin
	Sum <= Cin XOR (l1 XOR l2);
	Cout <= (l1 AND l2) OR (l1 AND Cin) OR (l2 AND Cin);
end fluxo_de_dados;