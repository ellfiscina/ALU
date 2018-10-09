library IEEE;
use IEEE.std_logic_1164.ALL;

entity portaand4 is
	port (i6,i7,i8,i9: in std_logic;
			o_and4: out std_logic);
end portaand4;

architecture fluxo_de_dados of portaand4 is begin
	o_and4 <= i6 and i7 and i8 and i9;
end fluxo_de_dados;