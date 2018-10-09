library IEEE;
use IEEE.std_logic_1164.ALL;

entity portaor is
	port (j1,j2: in std_logic;
			o_or: out std_logic);
end portaor;

architecture fluxo_de_dados of portaor is begin
	o_or <= j1 OR j2;
end fluxo_de_dados;