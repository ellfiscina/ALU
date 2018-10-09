library IEEE;
use IEEE.std_logic_1164.ALL;

entity portaor4 is
	port (j3,j4,j5,j6: in std_logic;
			o_or4: out std_logic);
end portaor4;

architecture fluxo_de_dados of portaor4 is begin
	o_or4 <= j3 OR j4 OR j5 OR j6;
end fluxo_de_dados;