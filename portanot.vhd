library IEEE;
use IEEE.std_logic_1164.ALL;

entity portanot is
	port (i: in std_logic;
			o_not: out std_logic);
end portanot;

architecture fluxo_de_dados of portanot is begin
	o_not <= not i;
end fluxo_de_dados;
