library IEEE;
use IEEE.std_logic_1164.ALL;

entity portaand is
	port (i1,i2: in std_logic;
			o_and: out std_logic);
end portaand;

architecture fluxo_de_dados of portaand is begin
	o_and <= i1 and i2;
end fluxo_de_dados;