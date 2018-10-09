library IEEE;
use IEEE.std_logic_1164.ALL;

entity portaand3 is
	port (i3,i4,i5: in std_logic;
			o_and3: out std_logic);
end portaand3;

architecture fluxo_de_dados of portaand3 is begin
	o_and3 <= i3 and i4 and i5;
end fluxo_de_dados;